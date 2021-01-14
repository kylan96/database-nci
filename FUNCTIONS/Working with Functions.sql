-- WORKING WITH FUNCTIONS

-- TABLE CREATION SECTION 
CREATE TABLE product 
(
 	product_id INT PRIMARY KEY AUTO_INCREMENT,
 	product_name VARCHAR(20) NOT NULL,
 	product_manufacturer VARCHAR(10) NOT NULL,
 	product_price DECIMAL(10,2) NOT NULL	
)

CREATE TABLE time_test 
(
	purchase_date TIMESTAMP not null,
	post_date DATE not null
)

-- END OF TABLE CREATION SECTION 

-- INSERT DATA SECTION 
INSERT INTO product (product_name, product_manufacturer, product_price) VALUES
('MacBook Pro', 'Apple', 4500.99),
('MacBook Air', 'Apple', 1500.99),
('iPad Pro', 'Apple', 1200.99),
('Microsoft Surface', 'Microsoft', 1400.99),
('Dell', 'Dell', 1600.99),
('HP XPS360', 'HP', 2400.99),
('Lenovo', 'Lenovo', 2000.99)

INSERT INTO time_test (purchase_date, post_date) VALUES
(CURDATE(), '2020-10-20')
-- END OF INSERT DATA SECTION


-- MANIPULATE DATE FROM TABLE product

-- This returns number of products (rows) with function COUNT()
SELECT COUNT(product_name) AS "No of Products" FROM product 

-- Returns average of prices with functions AVG() and ROUND()
SELECT ROUND(AVG(product_price), 2) AS "Product Price Average" FROM product

-- Returns product with the highest price with function MAX()
SELECT MAX(product_price) AS "Product with the highest price" FROM product 

-- Returns product with the lowest price with function MIN()
SELECT MIN(product_price) AS "Product with the lowest price" FROM product

-- Returns the total of prices with function SUM()
SELECT SUM(product_price) AS "Total Price" FROM product 

SELECT CONCAT(product_name, ' ', '$', product_price , ' * 2 = ', '$',product_price * 2) FROM product

-- Returns unique values with the DISTINCT Keyword
SELECT DISTINCT product_name, product_price , product_manufacturer FROM product

-- Returns number of uniques rows
SELECT COUNT(DISTINCT product_name) FROM product

-- Returns all products manufactured by Apple
SELECT * FROM product WHERE product_manufacturer = 'Apple'
 
-- Returns all the lengths of product names with LENGTH() function
SELECT LENGTH(product_name) FROM product

SELECT CONCAT(product_name, ' name has a length of ', LENGTH(product_name), ' characters') FROM product 

-- Returns all names in all uppercase with UPPER() function
SELECT UPPER(product_name) FROM product 

-- Returns all names in all lowercase LOWER() function
SELECT LOWER(product_name) FROM product

-- Returns just a portion of name, starting character (1), ending character (10) with function SUBSTRING()
SELECT product_name, SUBSTRING(product_name, 1, 10) FROM product

-- Returns initial of every name with starting character (1), ending character (1) with function SUBSTRING()
SELECT CONCAT(product_name, ' starts with ', SUBSTRING(product_name, 1, 1)) FROM product

-- END of MANIPULATE DATE FROM TABLE product

-- Manipulate date from time_test table

-- Returns the year portion of purchase_date
SELECT EXTRACT(YEAR FROM purchase_date) FROM time_test

-- Returns the subtraction of today's date minus 7 days
SELECT DATE_SUB(purchase_date, INTERVAL 7 day) FROM time_test

-- Removes trailing spaces with function RTRIM()
SELECT CONCAT(RTRIM('Cuba '), ' is great')

-- Removes leading spaces with function LTRIM()
SELECT CONCAT(LTRIM(' Cuba '), ' is great')

-- Removes all spaces with function TRIM()
SELECT CONCAT('-', TRIM(' Cuba '), '-')

-- Similar to UPPER()
SELECT UCASE('cuba')

-- Capitalize the first letter of the word cuba
SELECT CONCAT(UCASE(SUBSTRING('cuba', 1, 1)), (SUBSTRING('cuba', 2, LENGTH('cuba')))) AS "Cuba - first letter capitalized"

-- Adds 1 day to today's date with function DATE_ADD(), DATE(), and NOW()
SELECT DATE_ADD(DATE(NOW()), INTERVAL 1 DAY)  
-- Adds 1 month to today's date with functions DATE_ADD(), CURDATE()
SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH) 

-- Returns today's date
SELECT CURDATE() AS "Purchase Date" 

-- Returns differnce between two dates with function DATEDIFF()
SELECT DATEDIFF(CURDATE(),'2019-01-14') AS "Difference in Days"

-- Nested functions with functions DATE() and NOW()
SELECT DATE(NOW())




