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
select cl_id
, vt_animals.an_id
, vt_animals.an_type
, vt_animals.an_name
from vt_clients
JOIN vt_animals USING (cl_id)
where vt_animals.an_type in ('dog', 'cat')
and vt_animals.an_dob < date '2010-01-01';

/*  TASK 02  */
select ex_id
, ex_date
, vt_exam_details.srv_id
, vt_exam_details.ex_fee
from vt_exam_headers 
JOIN vt_exam_details USING (ex_id)
JOIN vt_animals USING (an_id)
where vt_animals.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by ex_id , srv_id;

/*  TASK 03 */
select DISTINCT stf_id
, stf_name_first || ' '|| stf_name_last as STAFF
, vt_exam_headers.ex_date
from vt_staff
JOIN vt_exam_headers USING (stf_id)
JOIN vt_animals USING (an_id)
where vt_animals.an_type NOT in ('snake' ,'chelonian', 'crocodilian','lizard', 'bird')
order by vt_exam_headers.ex_date;

/*  TASK 04 */
select cl_id
, ex_id
, vt_exam_headers.ex_date
, vt_exam_details.srv_id
, vt_exam_details.ex_fee
from vt_animals
JOIN vt_exam_headers USING (an_id)
JOIN vt_exam_details USING (ex_id)
where vt_exam_details.ex_fee < 25
or vt_exam_details.ex_fee >200
order by vt_exam_headers.ex_date , vt_exam_details.srv_id;

/*  TASK 05 */
select * 
from vt_services 
where srv_desc like '%Feline%'
and srv_desc not like '%Dental%'
order by srv_type , srv_id;

/*  TASK 06 */
select distinct cl_id
, vt_clients.cl_name_last
from vt_clients 
JOIN vt_animals USING (cl_id)
where vt_animals.an_type in ('dog')
order by cl_id;

/*  TASK 07 */
select distinct cl_id
, vt_clients.cl_name_last
from vt_clients
JOIN vt_animals USING (cl_id)
where vt_animals.an_type not in ('dog')
order by cl_id;

/*  TASK 08 */
select distinct cl_id
, vt_clients.cl_name_last
from vt_clients
JOIN vt_animals USING (cl_id)
where vt_animals.an_type in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by cl_id;

/*  TASK 09 */
select distinct cl_id
, vt_clients.cl_name_last
from vt_clients
JOIN vt_animals USING (cl_id)
where vt_animals.an_type not in ('hamster', 'capybara', 'porcupine', 'dormouse')
order by cl_id;

