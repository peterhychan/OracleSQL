set echo on
set feedback 1
set pagesize 999
set trimspool on
set lINesize 200
set tab off
clear columns

set Long 999999

column BookID format A10
column Title format A35
column Price format 9,990.00
column AuthorList format A50
column Subject format A15
column AvgPrice format 9,990.00

/* Ho Yeung Chan */

/*  TASK 00 */
SELECT user, sysdate 
FROM dual;

/*  TASK 01 */
with XML_Table as 
	(select extractvalue(OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(OBJECT_VALUE, '/book/bk_price') as Price 
	, extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject 
	from xml_A13_books)
select BookID as "BookID"
, Title as "Title"
, cast(Price as number) as "Price"
, Subject as "Subject"
from XML_Table
;

/*  TASK 02  */
with XML_Table as 
	(select extractvalue(OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(OBJECT_VALUE, '/book/bk_price') as Price 
	, extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject
	, extract(OBJECT_VALUE, '/book/bk_authors') as AuthorList
	from xml_A13_books)
select BookID as "BookID"
, Title as "Title"
, cast(Price as number) as "Price"
, AuthorList as "AuthorList"
from XML_Table
where Price > 30 
and Subject = 'Fiction'
;

/*  TASK 03 */
with XML_Table as 
	(select extractvalue(OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject
	, extractvalue(OBJECT_VALUE, '/book/bk_price') as Price 
	, extract(OBJECT_VALUE, '/book/bk_authors') as AuthorList
	from xml_A13_books
	where existsnode(OBJECT_VALUE, '/book [bk_price > 30]') = 1
	and existsnode(OBJECT_VALUE, '/book [bk_subject="Fiction"]') = 1)
select BookID as "BookID"
, Title as "Title"
, cast(Price as number) as "Price"
, AuthorList as "AuthorList"
from XML_Table
;

/*  TASK 04 */ 
select extractvalue(object_value, '//bk_id') "BookID"
, extractvalue(object_value, '//bk_title') "Title"
, extract(object_value, '//author') "AuthorList"
from xml_A13_books
where existsNode(object_value, '//bk_authors[author="Martin"]')=1
;

/*  TASK 05 */
select extractvalue(object_value, '//bk_id') "BookID"
, extractvalue(object_value, '//bk_title') "Title"
, extract(object_value, '//author') "AuthorList"
from xml_A13_books
where extractvalue(object_value, '//author[1]') = 'Martin'
;

/*  TASK 06 */
select
  extractvalue(object_value, '//bk_id') "BookID"
, extractvalue(object_value, '//bk_title') "Title"
, extract(object_value, '//author') "AuthorList"
from xml_A13_books
where existsNode(object_value, '//bk_authors[author="Martin"]')=0
;


/*  TASK 07 */
select
  extractvalue(object_value, '//bk_id') BookID
, extractvalue(object_value, '//bk_title') Title
from xml_A13_books
where existsNode(object_value, '//author[4]')=1    --- at least 4 authors
and   existsNode(object_value, '//author[11]')=0   --- no more than 10 authors
;

/*  TASK 08 */
with XML_Table as 
	(select 1 as Grouping 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_title') as Title 
	, cast(extractvalue(A14.OBJECT_VALUE, '/book/bk_price') as number) as Price 
	from xml_A13_books A14)
select BookID as "BookID"
, Title as "Title"
, Price as "Price"
, dense_rank() over (partition by Grouping order by nvl(Price, -1) desc) as "PRICERANK"
from XML_Table
;

/*  TASK 09 */
with XML_Table as 
	(select extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject
	, cast(extractvalue(OBJECT_VALUE, '/book/bk_price') as number) as Price 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	from xml_A13_books A14)
	, TMP as(select Subject 
			, nvl(avg(Price), 0.00) as AvgPrice
			, count(BookID) as NumberBooks
			from XML_Table
			group by Subject)
	(select Subject as "Subject"
	, NumberBooks as "Number Books"
	, to_char(AvgPrice, '9,990.00') as "Avg Price"
from TMP)
union all
(select 'SUMMARY' as "Subject"
, sum(NumberBooks) as "Number Books"
, to_char(avg(AvgPrice), '9,990.00') as "Avg Price"
from TMP)
;

/*  TASK 10 */
select
  round(avg( 
    case when subject='SQL' then price end ), 2) "AvgPrice_SQL"
, round(avg( 
    case when subject!='SQL' then price end ), 2) "AvgPrice_Other"
from(
  select
    extractvalue(object_value, '//bk_subject') Subject
  , extractvalue(object_value, '//bk_price') Price
  from xml_A13_books
);


/*
Another method for task 10:

With XML_Table as
(select extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject
, cast(extractvalue(OBJECT_VALUE, '/book/bk_price') as number) as Price
, extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID
from xml_A13_books A14)
, TMP1 as
(select nvl(avg(Price), 0.00) as AvgPrice
from XML_Table
where Subject = 'SQL')
, TMP2 as
(select nvl(avg(Price), 0.00) as AvgPrice
from XML_Table
where Subject != 'SQL')
select to_char(TMP1.AvgPrice, '999,999,999.99') as "AvgPrice_SQL"
, to_char(TMP2.AvgPrice, '999,999,999.99') as "AvgPrice_Other"
from TMP1, TMP2
;
 */



