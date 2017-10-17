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
insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Sam', 'Giraffe', 5000.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Dan', 'Giraffe', 5500.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Ben', 'Giraffe', 6000.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Sin', 'Gira', 6000.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Wia', 'Gira', 6500.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

insert into zoo_2016 (z_id, z_name, z_type, z_cost, z_dob, z_acquired) values
(123, 'Poe', 'Affe', 7000.00
, to_date('2017-09-01', 'YYYY-MM-DD'), date '2017-09-01');

/*  TASK 02  */
SELECT z_id
, z_name
, z_type
, z_cost
, z_dob
, z_acquired 
FROM zoo_2016;

/*  TASK 03 */
SELECT
z_type
, z_name
, z_cost
FROM zoo_2016
ORDER BY z_type
, z_name;

/*  TASK 04 */
SELECT 
z_id
, z_name
, z_dob
FROM zoo_2016
WHERE z_type ='Zebra'
ORDER BY z_dob DESC;

/*  TASK 05 */
SELECT tname FROM tab;

/*  TASK 06 */
DESC zoo_2016

