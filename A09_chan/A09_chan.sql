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
SELECT SUM(quantity * order_price) AS AMTDUE
FROM bk_order_details
WHERE book_id = '1108'
;

/*  TASK 02  */ 
SELECT COUNT(order_id) AS NUMBEROFORDERS
FROM bk_order_details
JOIN bk_order_headers USING (order_id)
WHERE book_id = '1108'
AND EXTRACT(year FROM order_date) = EXTRACT(year FROM sysdate)-1
;

/*  TASK 03 */
SELECT cust_id AS CUSTID
, cust_name_last AS CUSTNAME
, COALESCE( TO_CHAR( SUM( quantity ) ), 'NULL' ) AS BOOKTOTAL
, COALESCE( TO_CHAR( SUM( 
      CASE WHEN EXTRACT( YEAR FROM sysdate ) =EXTRACT( YEAR FROM order_date ) 
      THEN quantity ELSE NULL  END ) ), 'NULL' ) AS CURRENTYEARBOOKTOTAL
FROM bk_customers
LEFT JOIN bk_order_headers USING (cust_id)
LEFT JOIN bk_order_details USING (order_id)
GROUP BY cust_id, cust_name_last
;


/*  TASK 04 */ 
SELECT COUNT(order_id) AS NUMBEROFORDERS
, COUNT(CASE WHEN quantity >0 THEN cust_id ELSE NULL END) AS NUM_OVER_ONE_ORDER
FROM bk_order_headers
JOIN bk_order_details USING (order_id)
WHERE to_char(order_date,'q') = to_char(add_months(sysdate,-3),'q')
;

/* TASK 05 */
SELECT book_id
, title
FROM bk_books
WHERE book_id =(
	SELECT STATS_MODE(order_id) AS ORDER_MODE
	FROM bk_order_details
	JOIN bk_books USING (book_id)
	JOIN bk_book_topics USING (book_id)
	WHERE topic_id IN ('NOSQL', 'XML','DB')	
	AND book_id=(
		SELECT STATS_MODE(order_id) AS ORDER_MODE
		FROM bk_order_details
		JOIN bk_books USING (book_id)
		JOIN bk_book_topics USING (book_id)
		WHERE topic_id IN ('NOSQL', 'XML','DB')	
	))
;

/*  TASK 06 */
SELECT 
COUNT(CASE WHEN topic_id= 'SCI' 
	THEN book_id ELSE NULL END) AS SCIENCE
,COUNT(CASE WHEN topic_id IN ('DB','SQL','SSRV','MySQL','ORA','ADO') 
	THEN book_id ELSE NULL END) AS DATABASE_SYSTEMS
,COUNT(CASE WHEN topic_id IN('NOSQL', 'XML','DB') 
	THEN book_id ELSE NULL END) AS DATA_STORAGE_TECHNIQUES
,COUNT(book_id) AS ALL_BOOKS
FROM bk_book_topics
;

/*  TASK 07 */
SELECT cust_id AS CUSTID
, cust_name_last AS CUSTOMER
, COALESCE(MAX(TO_CHAR(order_date,'YYYY-MM-DD')), 'No Orders') AS MOSTRECENT
FROM bk_customers
LEFT JOIN bk_order_headers USING (cust_id)
GROUP BY cust_id, cust_name_last
;


/*  TASK 08 */
SELECT cust_id, cust_name_last
FROM bk_customers
WHERE cust_id IN(
    SELECT cust_id
    FROM bk_order_headers
    JOIN bk_order_details USING( order_id )
    JOIN bk_book_topics USING( book_id )
    WHERE topic_id = 'SQL' 
    GROUP BY cust_id
    HAVING SUM( order_price * quantity ) > 500
)
AND cust_id NOT IN (
    SELECT cust_id
    FROM bk_order_details
    JOIN bk_order_headers USING( order_id )
    WHERE book_id = '1142'
);

