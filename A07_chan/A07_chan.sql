set echo on
set feedback 1
set pagesize 999
set trimspool on
set linesize 200
set tab off
clear columns


/* Ho Yeung Chan */

/*  TASK 00 */
select user, sysdate 
from dual;

/*  TASK 01 */
SELECT cl_id
, cl_name_last
, an_id
, an_type
, an_name
FROM vt_clients
LEFT JOIN vt_animals USING (cl_id)
;

/*  TASK 02  */ 
SELECT an_id
, an_type
, an_name
, ex_id
, EXTRACT(YEAR FROM ex_date) AS ex_year
, srv_id
FROM vt_animals
LEFT JOIN vt_exam_headers USING (an_id)
LEFT JOIN vt_exam_details USING (ex_id)
;

/*  TASK 03 */
SELECT DISTINCT cl_id
, cl_name_last
FROM vt_clients
JOIN vt_animals using (cl_id) 
WHERE an_type NOT IN ('snake','chelonian','crocodilian','lizard');

/*  TASK 04 */ 
WITH owns_dog AS
	(SELECT cl_id
	, cl_name_last
	FROM vt_clients
	JOIN vt_animals using (cl_id) 
	WHERE an_type IN ('dog')
)
, owns_reptile AS
	(SELECT cl_id
	, cl_name_last
	FROM vt_clients
	JOIN vt_animals using (cl_id) 
	WHERE an_type IN ('snake','chelonian','crocodilian','lizard')
)
SELECT owns_dog.cl_id
, cl_name_last 
FROM owns_dog
INNER JOIN owns_reptile USING (cl_name_last)
;

/* TASK 05 */
SELECT cl_id
, cl_name_last
FROM vt_clients
WHERE cl_id IN (
	SELECT cl_id
	FROM vt_animals
	WHERE an_type = 'dog')
AND cl_id NOT IN (
	SELECT cl_id
	FROM vt_animals
	WHERE an_type = any ('snake', 'chelonian', 'crocodilian', 'lizard'))
;


/*  TASK 06 */
SELECT  an_id
, an_name
FROM vt_animals
WHERE an_id IN(
	SELECT an_id
	FROM vt_exam_headers)
AND an_id NOT IN(
	SELECT an_id
	FROM vt_exam_headers
	JOIN vt_exam_headers USING (an_id)
	JOIN vt_exam_details USING (ex_id)
	WHERE srv_id IN (104,105,106,108))
;

/*  TASK 07 */

WITH condition_one AS
	(SELECT an_id
	, an_name
	, an_type
	, cl_id
	FROM vt_animals
	JOIN vt_exam_headers USING (an_id)
	WHERE EXTRACT(YEAR FROM ex_date) = 2015
)
, condition_two AS
	(SELECT an_id
	, an_name
	, an_type
	, cl_id
	FROM vt_animals
	JOIN vt_exam_headers USING (an_id)
	WHERE EXTRACT(YEAR FROM ex_date) = 2016
), combination AS 
	(SELECT an_id
	, condition_one.an_name
	, condition_one.an_type
	, condition_one.cl_id
	FROM condition_one
	INNER JOIN condition_two USING (an_id)
	WHERE condition_one.cl_id = condition_two.cl_id
)
SELECT DISTINCT an_id
, an_name 
, an_type
, cl_id 
FROM combination
;

/*  TASK 08 */
WITH cond_one AS
	(SELECT an_id
	, an_name
	, an_type
	, cl_id
	FROM vt_animals
	JOIN vt_exam_headers USING (an_id)
	WHERE EXTRACT(YEAR FROM ex_date) = EXTRACT(YEAR FROM sysdate)-1
	AND an_type IN ('snake','chelonian','crocodilian','lizard')
)
, cond_two AS
	(SELECT an_id
	, an_name
	, an_type
	, cl_id
	FROM vt_animals
	JOIN vt_exam_headers USING (an_id)
	WHERE EXTRACT(YEAR from ex_date) NOT IN (EXTRACT(YEAR FROM sysdate))
	AND an_type IN ('snake','chelonian','crocodilian','lizard')
), combination AS
	(SELECT an_id
	, cond_one.an_name
	, cond_one.an_type
	, cond_one.cl_id
	FROM cond_one
	INNER JOIN cond_two USING (an_id)
)
SELECT DISTINCT an_id
, an_name 
, an_type
, cl_id
FROM combination
;
