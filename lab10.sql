/*	Jonathan Rumley
	CIS_243 K. Wujcik
	04/27/2021
	LAB #10

-- Write a script that creates and calls a stored procedure named LA_10_test
    - Should declare a variable and set it to the count of all products in the Products table
    - If count is >= to 7, stored procedure message = 'The number of products is greater than or equal to 7'
    - Otherwise, stored procedure message = 'The number of products is less than 7'
*/

-- Select my_guitar_shop database
USE my_guitar_shop;

-- Make sure prodecure doesn't exist
DROP PROCEDURE IF EXISTS LA_10_test

DELIMITER //

CREATE PROCEDURE LA_10_test
BEGIN
    DECLARE sum_all_products_var INT;
    
    SELECT SUM(product_id)
    INTO sum_all_products_var
    FROM products;
    
    IF sum_all_products_var >= 7 THEN
        SELECT 'The number of products is greather than or equal to 7' AS 'Message';
    ELSE
        SELECT 'The number of products is less than 7' AS 'Message';
    END IF;
END//

-- Call procedure LA_10_test
CALL LA_10_test