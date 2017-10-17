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
FROM dual;

/*  TASK 01 */
SELECT stf_name_first
, stf_name_lASt
, stf_job_title
FROM vt_staff;

/*  TASK 02  */
SELECT an_id AS "ID"
, an_name AS "NAME"
, an_type AS "ANIMAL TYPE"
, an_dob AS "BIRTHDATE"
FROM vt_animals
ORDER BY an_dob;

/*  TASK 03 */
select DISTINCT an_type 
FROM vt_animals;

/*  TASK 04 */
select srv_type
, srv_desc 
FROM vt_services 
ORDER BY srv_type
, srv_list_price;

/*  TASK 05 */
select ex_id AS "EXAM_ID"
, srv_id AS "SERVICE"
, ex_fee AS "FEE_CHARGED"
FROM vt_exam_details 
ORDER BY ex_id
, ex_fee;

/*  TASK 06 */
select DISTINCT an_name, 
an_type, 
an_dob 
FROM vt_animals 
ORDER BY an_type
, an_name;

/*  TASK 07 */
select DISTINCT an_id AS "ANIMAL", 
ex_date AS "EXAM DATE"
, stf_id AS "STAFF"
FROM vt_exam_headers 
ORDER BY stf_id
, ex_date;


/*  TASK 08 */
 select DISTINCT cl_state
 , cl_city 
 FROM vt_clients 
 ORDER BY cl_state
 , cl_city;
