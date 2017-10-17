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
FROM vt_clients
LEFT JOIN vt_animals USING (cl_id)
WHERE an_id IS NULL;

/*  TASK 02  */
SELECT cl_id
, cl_name_last
FROM vt_clients
WHERE cl_id NOT IN(
	SELECT cl_id FROM vt_animals
);

/*  TASK 03 */
SELECT cl_id
, cl_name_last
FROM vt_clients
WHERE cl_id NOT IN(
	SELECT cl_id FROM vt_animals
	WHERE an_type NOT IN ('snake', 'chelonian', 'crocodilian','lizard')
);

/*  TASK 04 */
SELECT cl_id
, cl_name_last
, CASE
WHEN (an_name IS NULL AND an_type IS NOT NULL) THEN 'no name'
WHEN (an_name IS NULL AND an_type IS NULL) THEN 'no animals'
ELSE an_name
END AS AN_NAME
, CASE 
WHEN (an_type IS NULL AND an_name IS NULL) THEN 'no animals'
ELSE an_type
END AS AN_TYPE
FROM vt_clients
LEFT JOIN vt_animals USING (cl_id)
;

/*  TASK 05 */
SELECT cl_id
, cl_name_last
, an_id
, an_name
, an_type
FROM vt_animals
LEFT JOIN vt_clients USING (cl_id)
FULL JOIN vt_exam_headers USING (an_id)
WHERE ex_id IS NULL
ORDER BY cl_id, an_id
;

/*  TASK 06 */
SELECT cl_id
, cl_name_last
, an_id
, an_name
, an_type
FROM vt_clients
LEFT JOIN vt_animals USING (cl_id)
FULL JOIN vt_exam_headers USING (an_id)
WHERE ex_id IS NULL;

/*  TASK 07 */
SELECT cl_id
, cl_name_last
, an_id
, an_name
, an_dob
FROM vt_clients
JOIN vt_animals USING (cl_id)
WHERE cl_state IN ('MA', 'NY')
AND an_type NOT IN ('dog', 'cat','bird')
;

/*  TASK 08 */
SELECT an_id
, an_name
FROM vt_animals
JOIN vt_exam_headers USING (an_id)
WHERE EXTRACT(YEAR FROM ex_date) = EXTRACT(YEAR FROM sysdate)
;

/*  TASK 09 */
SELECT *
FROM vt_services
FULL JOIN vt_exam_details USING (srv_id)
WHERE srv_list_price >=100
AND ex_id IS NULL
;
