/*	Jonathan Rumley
	CIS_243 K. Wujcik
	02/10/2021
	LAB #3
*/

-- 1
SELECT *
FROM categories;

INSERT INTO categories (category_id, category_name)
    VALUES (DEFAULT, 'Brass');

-- 2
UPDATE categories
SET category_name = 'Woodwinds'
WHERE category_id = '5';

-- 3
DELETE FROM categories
WHERE category_id ='5';

-- 4
SELECT *
FROM products;

INSERT INTO products (products_id, category_id, product_code, prodcut_name, description, list_price, discount_percent, date_added)
    VALUES (DEFAULT, '4', 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'LONG description to come', 799.99, 0, '2021-02-11');
    
-- 5
UPDATE products
SET discount_percent = 35
WHERE product_id = '11';

-- 6
SELECT * 
FROM categories AND products;

DELETE FROM categories
WHERE category_name = 'Keyboards';

DELETE FROM products
WHERE category_id = '4';

-- 7
SELECT *
FROM customers;

INSERT INTO customers (email_address, password, first_name, last_name)
    VALUES ('rick@raven.com','','Rick','Raven');
    
-- 8
UPDATE customers
SET password = 'secret'
WHERE email_address = 'rick@ravenn.com'

-- 9
UPDATE customers
SET password = 'reset'
    -- WHERE customer_id IS NOT null;
LIMIT 100;
