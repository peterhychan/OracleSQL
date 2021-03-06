set echo on
set feedback 1
set pagesize 999
set trimspool on
set linesize 200
set tab off
clear columns

Column "Book_Title" format A25 truncated


/* Ho Yeung Chan */

/*  TASK 00 */
SELECT user, sysdate 
FROM dual;

/*  TASK 01 */
SELECT ROW_NUMBER() OVER (ORDER BY LIST_PRICE) AS "ListPrice Order"
, BOOK_ID AS "Book ID"
, TITLE AS "Book_Title"
, PUBL_ID AS "Publ"
, TO_CHAR(LIST_PRICE, '999.99') AS "Price"
FROM BK_BOOKS
ORDER BY LIST_PRICE 
;

/*  TASK 02  */

WITH AFTER_2005 AS 
	(SELECT * 
	FROM BK_BOOKS 
	WHERE YEAR_PUBLD > '2005')
SELECT DENSE_RANK() OVER (ORDER BY PUBL_ID, LIST_PRICE DESC) AS "Publ-ListPrice Order"
, PUBL_ID AS "Publ"
, TO_CHAR(LIST_PRICE, '999.99') AS "Price"
, BOOK_ID AS "Book ID"
, TITLE AS "Book_Title"
FROM AFTER_2005
ORDER BY PUBL_ID
, LIST_PRICE DESC
;

/*  TASK 03 */
WITH BOOK_ORDER_QUANTITY AS 
	(SELECT BOOK_ID
	, ROUND(SUM(NVL(QUANTITY, 0)), -1) AS QUANTITY_OF_BOOKS
	FROM BK_ORDER_DETAILS
	GROUP BY BOOK_ID)
, BOOK_SALES AS 
	(SELECT RANK() OVER (ORDER BY QUANTITY_OF_BOOKS DESC) AS SALES_RANKING
	, BOOK_ID
	, TITLE
	, QUANTITY_OF_BOOKS
	FROM BK_BOOKS
	JOIN BOOK_ORDER_QUANTITY USING (BOOK_ID))
SELECT SALES_RANKING AS "Sales Ranking"
, BOOK_ID AS "Book ID"
, TITLE AS "Book_Title"
, TO_CHAR(QUANTITY_OF_BOOKS, '999,999,999') AS "TotQuantSale"
FROM BOOK_SALES 
WHERE SALES_RANKING <= 15
ORDER BY 1
;


/*  TASK 04 */ 
COLUMN "RunningSalesByCustomer" FORMAT 999,999.99

WITH ANNUAL_SALES AS
	(SELECT CUST_ID
	, TO_CHAR(ORDER_DATE, 'YYYY-MM-DD') AS DATE_OF_ORDERS 
	, SUM(NVL(QUANTITY, 0) * NVL(ORDER_PRICE, 0)) AS SALES_BY_DAY
	FROM BK_ORDER_HEADERS 
	JOIN BK_ORDER_DETAILS USING (ORDER_ID)
	WHERE EXTRACT(YEAR FROM ORDER_DATE) = EXTRACT(YEAR FROM SYSDATE)
	GROUP BY CUST_ID
	, TO_CHAR(ORDER_DATE
	, 'YYYY-MM-DD'))
SELECT CUST_ID AS "cust_id"
, DATE_OF_ORDERS AS "order_date"
, TO_CHAR(SALES_BY_DAY, '999,999.99') AS "SalesByDay"
, SUM(SALES_BY_DAY) OVER (PARTITION BY CUST_ID ORDER BY DATE_OF_ORDERS) AS "RunningSalesByCustomer"
FROM ANNUAL_SALES 
WHERE CUST_ID < 220000
ORDER BY CUST_ID
, DATE_OF_ORDERS
;

/*  TASK 05 */
COLUMN "Quantity" FORMAT 999,999

WITH SALES_TABLE AS
	(SELECT AUTHOR_ID
	, BOOK_ID
	, SUM(QUANTITY) AS TOTAL_QUANTITY
	, SUM(QUANTITY * ORDER_PRICE) AS SALES_IN_TOTAL
	FROM BK_BOOK_AUTHORS
	JOIN BK_BOOKS USING (BOOK_ID)
	LEFT OUTER JOIN BK_ORDER_DETAILS USING (BOOK_ID)
	WHERE  AUTHOR_ID < 'J'
	AND AUTHOR_SEQUENCE =1
	GROUP BY  AUTHOR_ID
	, BOOK_ID)
SELECT AUTHOR_ID AS "Author ID"
, DECODE(BOOK_ID, NULL, '  Total', BOOK_ID) AS "Book ID"
, SUM(NVL(TOTAL_QUANTITY, 0)) AS "Quantity"
, DECODE(SUM(SALES_IN_TOTAL), NULL, 'No sales', TO_CHAR(SUM(SALES_IN_TOTAL), '999,999.99')) AS "Total Sales"
, DECODE (AUTHOR_ID, NULL, 'Grand Total', AUTHOR_ID) AS "Author ID"
FROM SALES_TABLE
GROUP BY  ROLLUP(AUTHOR_ID, BOOK_ID)
;

/*  TASK 06 */
COLUMN "TotalSales" FORMAT 999,999.99

DEFINE START_DATE = "'2016-03-01'"
DEFINE DAYS_IN_CAL = "31"

WITH CALENDAR AS
	(SELECT TO_DATE(&START_DATE, 'YYYY-MM-DD') - 1 + ROWNUM AS CAL_DATE
	FROM BK_ORDER_DETAILS
	WHERE rownum <= &DAYS_IN_CAL)
, DAILY_SALES_RECORDS AS
	(select CAL_DATE AS ORD_DATE
	, SUM(nvl(QUANTITY, 0) * nvl(ORDER_PRICE, 0)) AS TOTALSALES
	FROM CALENDAR CAL
	LEFT JOIN BK_ORDER_HEADERS ORH ON (CAL.CAL_DATE = trunc(ORH.ORDER_DATE))  
	LEFT JOIN BK_ORDER_DETAILS ORD ON (ORH.ORDER_ID = ORD.ORDER_ID)
	GROUP BY CAL_DATE)
SELECT TO_CHAR(ORD_DATE, 'DD-Mon-YYYY') AS "Date"
, TOTALSALES AS "TotalSales"
, TO_CHAR(SUM(TOTALSALES) OVER (ORDER BY ORD_DATE ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING), '999,999.99') AS "5 DaySUM"
, TO_CHAR(AVG(TOTALSALES) OVER (ORDER BY ORD_DATE ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING), '999,999.99') AS "5 DayAvg"
FROM DAILY_SALES_RECORDS 
ORDER BY 1
;



