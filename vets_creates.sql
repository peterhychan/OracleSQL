--  tables for cs 151A vets create tables




-- remove any prior version of tables
drop table vt_exam_details;
drop table vt_exam_headers;
drop table vt_animals;
drop table vt_clients;
drop table vt_animal_types;
drop table vt_services;
drop table vt_staff_pay;
drop table vt_staff;




create table vt_staff (
    stf_id          number(6,0)  
	   constraint vt_staff_pk       primary key
  , stf_name_last   varchar2(25)    not null
  , stf_name_first  varchar2(25)    not null
  , stf_job_title   varchar2(25)    not null
  , constraint stf_id_range         check (stf_id > 0)
  , constraint job_title_values 
	   check ( stf_job_title in ('vet', 'vet assnt', 'clerical', 'kennel'))
);

create table vt_staff_pay (
    stf_id          number(6,0) 
	  constraint vt_staff_pay_pk    primary key
  , stf_ssn         char(9)         not null  
  , stf_salary      number(8,2)     not null 
  , stf_hire_date   date            not null
  , constraint vt_staff_pay_staff_fk foreign key(stf_id) references vt_staff(stf_id)
  , constraint stf_id2_range        check (stf_id > 0)
  , constraint ssn_un               unique (stf_ssn)
  , constraint stf_salary_range     check (stf_salary >= 0)
  , constraint stf_hire_date_range  check (stf_hire_date >= date '1995-01-01')
  , constraint stf_hire_date_ck     check (trunc(stf_hire_date) = stf_hire_date)
);


create table vt_services(
    srv_id          number(6,0)  
	  constraint vt_services_pk     primary key
  , srv_list_price  number(6,2)     not null 
  , srv_desc        varchar2(50)    not null Unique
  , srv_type        varchar2(25)    not null
  , constraint srv_id_range         check (srv_id >0)
  , constraint srv_list_price_range check (srv_list_price >= 0)
  , constraint srv_type_values  
	     check (srv_type in ('office visit', 'consult', 'medicine', 'treatment'))
);

create table vt_animal_types(
    an_type         varchar2(25)    constraint vt_animal_types_pk primary key
);


create table vt_clients(
    cl_id           number(6,0)     constraint vt_clients_pk primary key
  , cl_name_last    varchar2(25)    not null
  , cl_name_first   varchar2(25)    null
  , cl_address      varchar2(25)    not null
  , cl_city         varchar2(25)    not null
  , cl_state        char(2)         not null
  , cl_postal_code  varchar2(12)    not null
  , cl_phone        varchar2(12)    null
  , constraint cl_id_range          check (cl_id > 100)
);


create table vt_animals(
    an_id           number(6,0)     constraint vt_animals_pk primary key
  , an_type         varchar2(25)    not null   
  , an_name         varchar2(25)    null
  , an_dob          date            not null
  , cl_id           number(6,0)     not null  
  ,  constraint vt_animals_animal_types_fk foreign key(an_type)  references vt_animal_types
  ,  constraint vt_animals_clients_fk foreign key (cl_id) references vt_clients
  ,  constraint an_id_range         check (an_id > 0)
  ,  constraint an_dob_ck           check (trunc(an_dob) = an_dob)
  );

  
create table vt_exam_headers(
    ex_id           number(6,0)     constraint vt_exam_headers_pk primary key
  , an_id           number(6,0)     not null  
  , stf_id          number(6,0)     not null  
  , ex_date         date            not null
  , constraint vt_exam_headers_animal_fk  foreign key(an_id) references vt_animals
  , constraint vt_exam_headers_staff_fk   foreign key(stf_id) references vt_staff
  , constraint ex_id_range          check (ex_id > 0)
  , constraint exam_date_range      check (ex_date >= date '2010-01-01')
  );

create table vt_exam_details(
    ex_id           number(6,0)     not null  
  , line_item       number(6,0)     not null  
  , srv_id          number(6,0)     not null  
  , ex_fee          number(6,2)     not null
  , ex_desc         varchar2(50)    not null
  , constraint evt_exam_details_pk  primary key (ex_id, line_item ) 
  , constraint evt_exam_details_headers_fk foreign key (ex_id) references vt_exam_headers (ex_id)
  , constraint evt_exam_details_services_fk foreign key (srv_id) references vt_services (srv_id)
  , constraint line_item_range      check (line_item > 0)
  , constraint ex_fee_range         check (ex_fee  >= 0)
);
