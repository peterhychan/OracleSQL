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
/* REMARK: COALESCE and NVL are doing the same thing here. */
, COALESCE(cl_name_first, '') AS CL_NAME_FIRST
, NVL (cl_phone, 'No phone number') AS CL_PHONE
FROM vt_clients;

/*  TASK 02  */ 
SELECT cl_id || ' ' ||cl_name_last 
||NVL2(cl_name_first, ', '||cl_name_first, '')
||': '||NVL2(cl_phone, 'Phone: ' ||cl_phone,'No phone')
AS CLIENT 
FROM vt_clients;

/*  TASK 03 */
SELECT srv_id
, TO_CHAR(srv_list_price, '999.99') AS PRICE
, TO_CHAR(ROUND(srv_list_price ,-1), '999.99') AS TO_TENS
, TO_CHAR(ROUND(CEIL(srv_list_price),'999.99') AS UPTO_DLR
FROM vt_services
WHERE srv_id BETWEEN 500 AND 599;

/*  TASK 04 */ 
SELECT *
FROM vt_services 
WHERE INSTR(lower(srv_desc),'dental')>0 
AND INSTR(lower(srv_desc),'feline')=0;

/*  TASK 05 */
SELECT ex_id
, ex_date AS EXAMDATE1
, TO_CHAR(ex_date, 'YYYY-MM-DD') AS EXAMDATE2
, TO_CHAR(ex_date, 'MON DD, YYYY') AS EXAMDATE3
, TO_CHAR(ex_date, 'fmMonth DD, yyyy') AS EXAMDATE4
FROM vt_exam_headers 
WHERE rownum <= 10;

/*  TASK 06 */
SELECT DISTINCT an_id
, an_name
FROM vt_animals
JOIN vt_exam_headers  USING (an_id)
/* REMARK: To ensure the inclusion of exams on June 30 you should check for < '7/1/2015'. 
This is because Oracle stores the time with the date and the default time is 12:00AM */
WHERE vt_exam_headers.ex_date BETWEEN '01-JAN-15' AND '1-JULY-15';

/*  TASK 07 */
SELECT an_id
, an_name 
FROM vt_animals
JOIN vt_exam_headers USING (an_id)
WHERE TO_CHAR(vt_exam_headers.ex_date, 'MM-YYYY') = TO_CHAR(Add_Months(sysdate, -1),'MM-YYYY');

/*  TASK 08 */
SELECT an_id
, an_name
, vt_exam_headers.ex_date
FROM vt_animals
JOIN vt_exam_headers USING (an_id)
WHERE vt_exam_headers.ex_date  = LAST_DAY(vt_exam_headers.ex_date);

/*  TASK 09 */
VARIABLE random number 
BEGIN
	:random := Floor(dbms_random.value(10,26));
END;
/
SELECT :random FROM dual;

SELECT DISTINCT ex_id
, srv_id
, ex_fee
FROM vt_exam_details
WHERE rownum <= :random;

/*  TASK 10 */
SELECT an_id 
, an_type
, CASE WHEN an_type IN ('snake', 'chelonian', 'crocodilian', 'lizard') THEN 'Reptile'
	   WHEN an_type IN ('hamster', 'capybara', 'porcupine', 'dormouse') THEN 'Rodent'
	   WHEN an_type IN ('cat', 'dog') THEN 'Cat/Dog'
	   ELSE an_type
	   END "AN_CATEGORY"
FROM vt_animals ;
