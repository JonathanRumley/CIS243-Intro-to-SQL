/*	Jonathan Rumley
	CIS_243 K. Wujcik
	02/02/2021
	LAB #1
*/

-- 1
SELECT product_code, product_name, list_price, discount_percent
FROM products
ORDER BY list_price DESC;

-- 2
SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM customers
WHERE last_name > 'M'
ORDER BY last_name ASC;

-- 3
SELECT product_name, list_price, date_added
FROM products
WHERE (list_price > 500 AND list_price < 2000)
ORDER BY date_added DESC;

-- 4
SELECT product_name, list_price, discount_percent,
	ROUND(list_price * discount_percent *.01, 2) AS discount_amount,
	list_price - ROUND(list_price * discount_percent * .01, 2) AS discount_price
FROM products
ORDER BY discount_percent DESC
LIMIT 5;

-- 5
SELECT item_id, item_price,discount_amount,quantity,
	(item_price * quantity) AS price_total,
	(discount_amount * quantity) AS discount_total,
	(item_price - discount_amount) * quantity AS item_total
FROM order_items
WHERE ((item_price - discount_amount) * quantity) > 500
ORDER BY item_total DESC;

-- 6
SELECT order_id, order_date, shit_date
FROM orders
WHERE ship_date IS NULL;
