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
where Price >= 30 
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
with XML_Table as 
	(select extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_price') as Price 		, extract(A14.OBJECT_VALUE, '/book/bk_authors') as AuthorList
	from xml_A13_books A14
	where A14.OBJECT_VALUE.extract('//bk_authors').getStringVal() like '%>Martin<%')
select	BookID as "BookID"
, Title as "Title"
, AuthorList as "AuthorList"
from XML_Table
;

/*  TASK 05 */
with XML_Table as 
	(select extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_price') as Price
	, extract(A14.OBJECT_VALUE, '/book/bk_authors') as AuthorList
	from xml_A13_books A14
	where A14.OBJECT_VALUE.extract('//author[1]/text()').getStringVal() = 'Martin')
select BookID as "BookID"
, Title as "Title"
, AuthorList as "AuthorList"
from XML_Table
;

/*  TASK 06 */
with XML_Table as 
	(select extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_title') as Title 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_price') as Price 
	, extract(A14.OBJECT_VALUE, '/book/bk_authors') as AuthorList
	from xml_A13_books A14
	where A14.OBJECT_VALUE.extract('//bk_authors').getStringVal() not like '%>Martin<%')
select BookID as "BookID"
, Title as "Title"
, AuthorList as "AuthorList"
from XML_Table
;

/*  TASK 07 */
with XML_Table as 
	(select extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_title') as Title 
	, extract(A14.OBJECT_VALUE, '/book/bk_authors') as AuthorList
	, (select count(*)
	   from table(xmlsequence(extract(A14.OBJECT_VALUE, '/book/bk_authors/author')))) 
	   as NumberOfAuthors
	from xml_A13_books A14)
select BookID as "BookID"
, Title as "Title"
from XML_Table
where NumberOfAuthors between 4 and 10
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
with XML_Table as 
	(select extractvalue(OBJECT_VALUE, '/book/bk_subject') as Subject
	, cast(extractvalue(OBJECT_VALUE, '/book/bk_price') as number) as Price 
	, extractvalue(A14.OBJECT_VALUE, '/book/bk_id') as BookID 
	from xml_A13_books A14)
, TMP as 
	(select Subject 
	, nvl(avg(Price), 0.00) as AvgPrice
	from XML_Table
	group by Subject)
select (
  select to_char(avg(AvgPrice), '999,999,999.99')  
  from TMP 
  where subject = 'SQL') as "AvgPrice_SQL"
, (select to_char(avg(AvgPrice), '999,999,999.99') 
from TMP 
where Subject != 'SQL') as "AvgPrice_Other"
from dual
;

