/* cs 151A Oracle */


--  ---------- clear  earlier versions
delete from vt_exam_details;
delete from vt_exam_headers;
delete from vt_animals;
delete from vt_clients;
delete from vt_animal_types;
delete from vt_services;
delete from vt_staff_pay;
delete from vt_staff;


--  ---------- staff inserts

insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (30, 'Wasilewski', 'Marcin', 'vet');
  
insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (15, 'Dolittle', 'Eliza', 'vet');

insert into vt_staff (stf_id, stf_name_last, stf_name_first, stf_job_title)
  values (20, 'Horn', 'Shirley', 'clerical');

insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (25, 'Wilkommen', 'Bridgette', 'vet');

insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (29, 'Helfen', 'Sandy', 'vet assnt');
  
insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (43,  'Halvers', 'Pat', 'kennel');  
  
insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (37,  'Webster', 'Brenda', 'vet assnt');
  
insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (38,  'Wabich', 'Rhoda', 'vet');
  
insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (52,  'Gordon', 'Dexter', 'vet assnt'); 
  
insert into vt_staff (stf_id,  stf_name_last, stf_name_first, stf_job_title)
  values (55,  'Helfen', 'Sandy', 'vet assnt');
  
--  ---------- staff pay inserts

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (30,  '323445996', 99000,  date '1995-01-06');
  
insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (15, '123456789', 40000,  date '2005-06-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (20,  '398678765', 35000, date '2005-08-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (25,  '876582345',65000,  date '2011-06-01');

insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (43,  '325771545', 15500,  date '2011-08-12');  
  
insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (37,  '323458945', 20000,  date '2013-01-13'); 

 insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (38,  '322588945', 20000,  date '2013-01-13'); 
  
insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (52,  '325778945', 20000,  date '2014-08-12');  
  
insert into vt_staff_pay (stf_id, stf_ssn, stf_salary, stf_hire_date)
  values (55,  '323438454', 37500,  date '2014-09-26');
  
commit;
--  ---------- services inserts
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (101, 50.00, 'Dental Cleaning-Canine', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (105, 80.00, 'Routine Exam-Canine', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (110, 100.00, 'Dental Cleaning-Other', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (225, 75.00, 'Feline PCR Series', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (102, 45.00, 'Dental Cleaning-Feline', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (398, 35.00, 'Followup Exam-Canine', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (400, 10.50, 'Hazardous Materials Disposal', 'treatment');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (106, 75.00, 'Routine Exam-Bird', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (306, 32.00, 'Followup Exam-Bird', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (108, 80.00, 'Routine Exam-Feline', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (308, 45.00, 'Followup Exam-Feline', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (104, 60.00, 'Routine Exam-Reptile', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (341, 25.00, 'Followup Exam-Reptile', 'office visit');
  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (523, 60.00, 'Routine Exam-Small Mammal', 'office visit');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (524, 25.00, 'Followup Exam-Small Mammal', 'office visit');    
  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (551, 35.50, 'First Feline PCR', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (552, 25.15, 'Second Feline PCR', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (553, 25.85, 'Third Feline PCR', 'medicine');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (112, 25.33, 'Scaly Mite Powder', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (113, 26.00, 'Intestinal Parasite Screen', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (461, 275.00, 'Feline Behaviour Modification Consultation', 'treatment');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (687, 45.99, 'Vitamin E- Concentrated', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (748, 29.50, 'Preds-liver', 'medicine');
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (749, 29.50, 'Preds-chicken', 'medicine');

insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (602, 222.00, 'General Anethesia 1 hour', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (603, 78.00, 'Feline Dental X_ray', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (604, 109.00, 'Dental Scaling', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (605, 535.00, 'Tooth extraction Level 1', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (606, 40.00, 'Tooth extraction Level 2', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (607, 57.00, 'Tooth extraction Level 3', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (612, 25.91, 'Buprenex oral drops 1 ml', 'medicine');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (613, 47.00, 'Hospital stay- short', 'treatment');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (615, 78.30, 'antibiotics', 'medicine');  
insert into vt_services (srv_id, srv_list_price, srv_desc, srv_type) 
  values (625, 155, 'CBC and scan', 'treatment');
commit;  
--  ----------  animal type inserts
insert into vt_animal_types (an_type) 
  values ('bird');
  insert into vt_animal_types (an_type) 
  values ('capybara');
insert into vt_animal_types (an_type) 
  values ('cat');
insert into vt_animal_types (an_type) 
  values ('crocodilian');   
insert into vt_animal_types (an_type) 
  values ('dog');
insert into vt_animal_types (an_type) 
  values ('dormouse'); 
insert into vt_animal_types (an_type) 
  values ('hamster');    
insert into vt_animal_types (an_type) 
  values ('hedgehog');
insert into vt_animal_types (an_type) 
  values ('olinguito');
insert into vt_animal_types (an_type) 
  values ('lizard');  
insert into vt_animal_types (an_type) 
  values ('porcupine');
insert into vt_animal_types (an_type) 
  values ('snake');
insert into vt_animal_types (an_type) 
  values ('turtle');
  
commit;  
--  ----------  clients inserts
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (254, 'Boston', 'Edger', 'POB 2', 'Boston', 'MA', '21555', null); 

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (411, 'Carter', 'James', '2 Marshall Ave', 'Big Rock', 'AR', '71601', '510.258.4546'); 
  
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (1825, 'Harris', 'Eddie', '2 Marshall Ave', 'Big Rock', 'AR', '71601', null);

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (1852, 'Dalrymple', 'Jack', '2 Marshall Ave', 'Big Rock', 'ND', '58503', '701.328.2725');
 
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (3423, 'Hawkins', 'Coleman', '23 Ruby Lane', 'Springfield', 'OH', '45502', '937.258.5645');   

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone) 
  values (3560, 'Monk', 'Theo', '345 Post Street', 'New York', 'NY', '10006', '212.582.6245');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone) 
  values (3561, 'Pickett', 'Wilson', 'POB 397', 'New York', 'NY', '10006', '212.584.9871');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (4087, 'Turrentine', 'Stanley', '2920 Zoo Drive', 'San Diego', 'CA', '92101', '619.231.1515');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (4534, 'Montgomery', 'Wes', 'POB 345', 'Dayton', 'OH', '45402', null);
  
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5686, 'Biederbecke', null, '50 Phelan Ave', 'Springfield', 'IL', '62701', '217.239.6945');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5689, 'Biederbecke', null, '50 Phelan Ave', 'San Francisco', 'CA', '94112', '415.239.6945');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5698, 'Biederbecke', 'Sue', '50 Phelan Ave', 'Springfield', 'IL', '62701', '217.239.6875');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (5699, 'Biederbecke', 'Sam', '549 Market Ave', 'San Francisco', 'CA', '94101', '415.239.6875');
  
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (6426, 'Hawkins', 'Coleman', '26 Ruby Lane', 'Springfield', 'OH', '45502', null) ; 
 
insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)  
  values (6897, 'Drake', 'Donald', '50 Phelan Ave', 'Springfield', 'MO', '65802', null);

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (7152, 'Brubeck', 'Dave', '50 Green St', 'Spring Valley', 'MA', '21579', '258.257.2727');

insert into vt_clients (cl_id, cl_name_last, cl_name_first, cl_address, cl_city, cl_state, cl_postal_code, cl_phone)
  values (7212, 'Davis', 'Donald', '124 Fifth', 'San Francisco', 'NM', '87801', null);
  
commit;
  --  ----------  animal inserts
  
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (10002, 3560, 'Gutsy', 'cat', date '2010-04-15' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (11015, 3560, 'Kenny', 'bird', date '2012-02-23' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (11025, 3560, null, 'bird', date '2012-02-01' );
 insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (11028, 3560, null, 'bird', date '2015-10-01' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (11029, 3560, null, 'bird', date '2015-10-01' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (12035, 3560, 'Mr Peanut', 'bird', date '1995-02-28' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (12038, 3560, 'Gutsy', 'porcupine', date '2012-04-29' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (15001, 3561, 'Big Mike', 'turtle', date '2010-02-02' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (15002, 5699, 'George', 'turtle', date '1998-02-02' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (15165,  411, 'Burgess', 'dog', date '2005-11-20' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (15401,  411, 'Pinkie', 'lizard', date '2010-03-15' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (16002, 3423, 'Fritz', 'porcupine', date '2015-05-25' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (16003, 1825, 'Ursula', 'cat', date '2013-02-06' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (16043, 1825, 'Ursula', 'dog', date '2014-06-06' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (16044, 1825, 'Triton', 'dog', date '2014-06-06' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (17002, 5699, 'Fritzchen', 'porcupine', date '2012-06-02' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (17025, 3561, '25', 'lizard', date '2013-01-10' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (17026, 7152, '3P#_26', 'lizard', date '2010-01-10' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (17027, 7152, '3P#_25', 'lizard', date '2010-01-10' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (19845, 6426, 'Pinkie', 'dog', date '2009-02-02' ) ;
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21001,  411, 'Yoggie', 'hedgehog', date '2009-05-22' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21002, 1825, 'Edger', 'hedgehog', date '2002-10-02' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21003, 6426, 'Calvin Coolidge', 'dog', date '2014-06-18' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21004, 3561, 'Gutsy', 'snake', date '2011-05-12' );   
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21005, 3423, 'Koshka', 'dormouse', date '2011-03-06' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21006, 3423, 'Koshka', 'hamster', date '2011-06-06' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21007, 1852, 'Pop 22', 'snake', date '2010-06-12' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21205, 5689, 'Manfried', 'dog', date '2015-03-30' ); 
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21305, 4087, 'Spot', 'dog', date '2014-07-27' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21306, 4087, 'Shadow', 'dog', date '2014-07-27' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21307, 4087, 'Buddy', 'dog', date '2014-07-27' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21314, 4087, 'Adalwine', 'cat', date '2013-06-11' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21315, 4534, 'Baldric', 'cat', date '2013-06-11' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21316, 5698, 'Etta', 'cat', date '2010-06-11' );  
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21317, 5698, 'Manfried', 'cat', date '2011-06-11' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values(21318, 5698, 'Waldrom', 'cat', date '2012-06-11' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21320, 1852, 'Morris', 'olinguito',  date '2014-06-11' );
insert into vt_animals ( an_id, cl_id, an_name, an_type, an_dob)
  values (21321, 1852, 'Morton', 'olinguito',  date '2014-06-03' );
 

commit;

    
--  ----------  exam inserts 
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2228, 21306, 38, TO_DATE('2015-04-04 12:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2228, 1, 398, 30.00, 'Follow-up exam' );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2205, 21307, 38, TO_DATE('2015-04-08 10:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2205, 1, 105, 75.00, 'Routine exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (2205, 2, 101, 50.00, 'Dental' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (2205, 3, 602, 200.00, 'Anaesthesia' );
         
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2289, 21320, 38, TO_DATE('2015-04-11 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2289, 1, 523, 75.00, 'Routine exam' );
	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2290, 21320, 38, TO_DATE('2015-04-11 17:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2290, 1, 524, 75.00, 'Follow-up exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values(2290, 2, 613, 41.00, 'Overnight observation' );
	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2300, 21316, 38, TO_DATE('2015-05-08 09:15', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2300, 1, 108, 75.00, 'Routine exam' );
	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2352, 10002, 38, TO_DATE('2015-05-12 09:15', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2352, 1, 108, 75.00, 'Routine exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values(2352, 2, 615, 75.00, 'Antibiotics' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2389, 21006, 38, TO_DATE('2015-05-20 09:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2389, 1, 523, 60.00, 'Initial exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (2389, 5, 110, 50.00, 'Dental');
	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (2400, 12038, 38, TO_DATE('2015-06-02 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (2400, 1, 461, 275.00, 'Aggressive behaviour' );
	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3002, 11028, 38, TO_DATE('2015-10-02 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3002, 1, 106, 60.00, 'Initial exam' );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3003, 11029, 38, TO_DATE('2015-10-02 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3003, 1, 106, 60.00, 'Initial exam' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4243, 16002, 38, TO_DATE('2015-06-08 15:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4243, 1, 461, 275.00, 'Aggressive behaviour' );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4255, 16002, 38, TO_DATE('2015-07-08 15:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4255, 1, 461, 275.00, 'Aggressive behaviour' );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4612, 21317, 15, TO_DATE('2015-07-23 08:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values  (4612, 1, 602, 222.00, 'Dental anaesthesia'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4612, 2, 603,  78.00, 'Dental'  )  ;  
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4612, 3, 606,  40.00, 'Dental tooth 1'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values(4612, 4, 612,  25.91, 'As needed at home'  );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4514, 15002, 29, TO_DATE('2015-08-10 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4514, 1, 104, 30.00, 'Routine exam'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4514, 2, 112, 15.00, 'Mite infection'  );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4514, 3, 113, 25.00, 'Parasite screen'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4203, 16002, 29,  TO_DATE('2015-08-03 14:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4203, 1, 524, 20.00, 'Follow-up on parasites');    

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4282, 21001, 15, TO_DATE('2015-08-23 10:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4282, 1, 523, 60.00, 'Yearly checkup');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4282, 2, 110, 50.00, 'Minor buildup')  ; 
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4282, 3, 615, 25.25, 'Antibiotic half dosage');  
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4233, 16002, 29,  TO_DATE('2015-09-03 14:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4233, 1, 524, 20.00, 'Follow-up on parasites');    
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3105, 17002, 29, TO_DATE('2015-10-10 9:15', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3105, 1, 523,  50.50, 'Checkup');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3105, 2, 110, 150.00, 'Dental');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3010, 17026, 29, TO_DATE('2015-10-22 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3010, 1, 104,  25.00, 'Routine exam');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3010, 2, 605, 535.00, 'Tooth extraction');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3001, 17027, 29, TO_DATE('2015-10-24 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3001, 1, 104, 25.00, 'Routine exam');    
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3202, 17025, 29, TO_DATE('2015-10-03 14:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3202, 1, 341, 20.00, 'Follow-up on parasites');
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3513, 15401, 15, TO_DATE('2015-11-06 10:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3513, 1, 104, 30.00, 'Yearly checkup');
   insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3513, 2, 110, 75.00, 'Repeat treatment');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3552, 16003, 15, TO_DATE('2015-11-10 10:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3552, 1, 308,  2.25, 'Dental follow-up- phone');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3552, 3, 615, 25.25, 'Antibiotic half dosage'); 
  
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3304, 17027, 15, TO_DATE('2015-11-06 10:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3304, 1, 341, 25.00, 'Yearly checkup');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3304, 2, 113, 25.00, 'Test for repeat infection');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3306, 17025, 29, TO_DATE('2015-11-06 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3306, 1, 104,  30.00, 'Routine exam');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3306, 2, 687,  45.00, 'Liquid form');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3306, 3, 112,  25.00, 'Parasite external');
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3390, 19845, 15, TO_DATE('2015-11-22 09:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3390, 1, 105, 55.00, 'Yearly checkup');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values(3390, 2, 101, 70.00, 'Major build-up');
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3411, 17025, 29, TO_DATE('2015-12-29 14:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3411, 1, 341, 20.00, 'Follow-up on parasites');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3412, 17025, 29, TO_DATE('2015-12-30 14:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3412, 1, 341, 20.00, 'Follow-up on parasites');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3413, 16003, 15, TO_DATE('2015-12-01 16:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3413, 1, 308, 5.00, 'Follow-up checkup');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3612, 16003, 15, TO_DATE('2015-12-23 08:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3612, 1, 602, 222.00,  'Dental anaesthesia');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 2, 603,  78.00,  'Dental');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 3, 604, 109.00,  'Dental- mild');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 4, 625, 155.00,  'Dental -pre tests') ;     
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 5, 606,  40.00,  'Dental tooth 1');
    insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values(3612, 6, 607,  57.00,  'Dental tooth 2');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 7, 612,  25.91,  'As needed at home');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 8, 613,  47.00,  'Feline cage');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3612, 9, 615,  78.30,  'In-patient');
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3392, 21003, 15, TO_DATE('2015-12-26 09:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3392, 1, 398, 30.00, 'Weight loss follow-up');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3392, 2, 400, 21.00, 'Discard first sample');
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3392, 3, 113, 45.00, 'Retest for parasites'  );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3393, 16002, 29, TO_DATE('2015-12-23 12:15', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3393, 1, 748, 29.50, 'Rat ulcer recurrence') ; 
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3393, 3, 749,  0.00, 'Rat ulcer recurrence'); 

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3409, 17027, 29, TO_DATE('2015-12-27 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3409, 1, 104, 25.00, 'Routine exam');
    
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3486, 21005, 15, TO_DATE('2015-12-31 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3486, 1, 461, 275.00, 'Aggressive behaviour' );
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4101, 15001, 15, TO_DATE('2016-01-02 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4101, 1, 104, 60.00, 'Regular exam' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (4101, 2, 615, 75.00, 'possible infection' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4102, 15002, 15, TO_DATE('2016-01-08 13:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4102,  1, 104, 60.00, 'Regular exam' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (4103, 16002, 38, TO_DATE('2016-01-08 15:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (4103, 1, 461, 275.00, 'Aggressive behaviour' );

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3104, 12035, 38, TO_DATE('2016-01-09 16:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3104, 1, 106, 75.00, 'Moult' );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3104, 2, 613, 47.00, 'Confine for the first molt' );    
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3325, 17026, 29, TO_DATE('2016-01-15 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3325, 1, 104, 25.00, 'Routine exam');
   insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3325, 2, 604, 59.00, 'Dental');	

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3420, 16003, 15, TO_DATE('2016-01-01 16:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3420, 1, 108, 80.00, 'Yearly checkup');
 
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3494, 15001, 25, TO_DATE('2016-01-22 09:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3494, 1, 104, 30, 'Follow-up checkup'); 
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3288, 15001, 25, TO_DATE('2016-01-31 09:00', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3288, 1, 104, 30.00, 'Checkup');
   insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3288, 2, 112, 25.00, 'Mite infestation');
    insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3288, 3, 687, 45.00, 'Shell softening');     
	
insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3322, 16002, 29, TO_DATE('2016-02-10 9:15', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3322, 1, 748, 29.50, 'Rat ulcer recurrence');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3321, 16002, 29, TO_DATE('2016-02-17 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3321, 1, 748, 0.00, 'Rat ulcer recurrence');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3324, 17025, 29, TO_DATE('2016-02-25 10:45', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc)
    values (3324, 1, 104, 30.00, 'Routine exam');
   insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3324, 2, 687, 45.00, 'Liquid form');
   insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3324, 3, 112, 25.00, 'Parasite external');

insert into vt_exam_headers(ex_id, an_id, stf_id, ex_date)
  values (3323, 16002, 29, TO_DATE('2016-02-25 14:30', 'YYYY-MM-DD HH24:MI') );
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3323, 1, 524, 20.00, 'Follow-up on parasites'); 
  insert into vt_exam_details(ex_id, line_item, srv_id, ex_fee, ex_desc) 
    values (3323, 3, 687, 45.00, 'Follow-up on parasites'); 		

commit;