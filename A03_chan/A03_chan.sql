set echo on
set feedback 1
set pagesize 999
set trimspool on
set linesize 200
set tab off
clear columns


/* Ho Yeung Chan */

/*  TASK 00 */
SELECT user, sysdate 
FROM dual;

/*  TASK 01 */
SELECT DISTINCT cl_id || ': '||cl_city || ' '||cl_state AS "LOCATION"
FROM vt_clients 
WHERE cl_state IN ('CA', 'NV');

/*  TASK 02  */
SELECT cl_name_first
, cl_name_lASt
, cl_phone 
FROM vt_clients
WHERE cl_phone IS NOT NULL
ORDER BY cl_id;

/*  TASK 03 */
SELECT distinct srv_id 
FROM vt_exam_details
WHERE ex_fee >=75;

/*  TASK 04 */
SELECT stf_name_first || ' '|| stf_name_lASt AS "STAFF"
, stf_id
, stf_job_title
FROM vt_staff
WHERE stf_job_title NOT IN ('vet', 'vet assnt');

/*  TASK 05 */
SELECT srv_id AS "SERVICE ID"
, srv_type AS "SERVICE TYPE"
, srv_desc AS "DESCRIPTION"
, srv_list_price AS "CURR PRICE"
, srv_list_price *1.15 AS "INCR PRICE"
FROM vt_services
WHERE srv_type NOT IN ('office visits')
ORDER BY srv_id
;

/*  TASK 06 */
SELECT cl_id
, an_id
, an_name
FROM vt_animals
WHERE an_type
IN ('hamster', 'capybara', 'porcupine', 'dormouse')
ORDER BY cl_id, an_id;

/*  TASK 07 */
SELECT DISTINCT cl_id
, an_type 
FROM vt_animals
WHERE an_type 
IN ('snake', 'chelonian', 'crocodilian', 'lizard')
ORDER BY cl_id;

/*  TASK 08 */
SELECT cl_id
, an_id
, an_name
, an_dob
FROM vt_animals
WHERE an_type NOT IN ('snake', 'chelonian', 'crocodilian'
, 'lizard', 'hamster', 'capybara', 'porcupine', 'dormouse')
ORDER BY an_dob desc;

