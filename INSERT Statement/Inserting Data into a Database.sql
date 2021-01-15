-- Lesson 3: Inserting Data into a Database
-- DDL Commands ---

-- Creates table named products
CREATE TABLE IF NOT EXISTS products
(
	product_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR(20) NOT NULL,
	product_price DECIMAL(9,2) NOT NULL,
	product_type VARCHAR(15) NOT NULL,
	product_color VARCHAR(10) NOT NULL,
	product_size VARCHAR(10) NOT NULL,
	product_origin VARCHAR(20) NOT NULL,   
	product_quantity INT NOT NULL
)

-- Add a colum to the table products
ALTER TABLE products 
ADD COLUMN product_purchase_date VARCHAR(10) 

-- Remove a colum from the table products
ALTER TABLE products 
DROP COLUMN product_purchase_date

-- Modify a colum in the table products
ALTER TABLE products 
RENAME COLUMN product_quantity TO product_qty 

-- Change the name of the table product to products
ALTER TABLE product 
RENAME TO products

-- Empty the table, but not drop it
TRUNCATE TABLE products

-- Display Table fields, types, key, contraints
DESCRIBE products -- products is the name of the table
-- End of DDL Commands

-- DML Commands
INSERT INTO products (product_name, product_price, product_type, product_color, product_size, product_origin, product_quantity, product_purchase_date) VALUES
('MacBook Pro', 4500.99, 'Laptop', 'Silver', '15 Inch', 'USA', 450, '2020-10-10'),
('MacBook Air', 1500.99, 'Laptop', 'Space Gray', '11 Inch', 'USA', 0, '2017-10-10'),
('iPad Pro', 1200.99, 'iPad', 'Silver', '12 Inch', 'USA', 250, '2010-01-01'),
('Data Center', 1453200.99, 'iPad', 'Silver', '12 Inch', 'USA', 250, NULL)

-- This is JUST a result set
SELECT product_id AS ID, product_name AS Name, product_price AS Price, product_type AS "Type", product_color AS Color, product_size AS "Size", product_origin "Country Origin", 
product_quantity AS Quantity
FROM product

SELECT * FROM products 

-- Returns product name of products where the purchase date is NULL in the table
SELECT product_name FROM products WHERE product_purchase_date IS NULL

-- Returns all fields of products table where the purchase price is less than $2000
SELECT * FROM products WHERE product_price < 2000

-- End of DML Commands







