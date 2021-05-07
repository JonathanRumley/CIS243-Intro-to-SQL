/*	Jonathan Rumley
	CIS_243 K. Wujcik
	03//02/2021
	LAB #6
*/

-- 1
SELECT *
FROM products;

SELECT list_price,
    FORMAT(list_price, 1) AS format_list_price,
    CONVERT(list_price, SIGNED) AS convert_list_price
    CAST(list_price AS SIGNED) AS cast_list_price
FROM products;

-- 2
SELECT date_added AS 'Date Added',
    CAST(date_added AS DATE) AS 'Year-Month-Day',
    CAST(date_added AS CHAR(7)) AS 'Year-Month',
    CAST(date_added AS TIME) AS 'Timestamp'
FROM products;