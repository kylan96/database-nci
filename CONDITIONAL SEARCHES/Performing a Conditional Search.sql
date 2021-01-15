-- Lesson 5: Performing a Conditional Search

SELECT * FROM product 

-- Multiple Search Condition with multiple operators
-- Returns all products whose manufacturer is Apple AND cost is more than $1,200
SELECT product_name, product_price 
FROM product 
WHERE product_manufacturer = 'Apple' AND product_price > 1200

-- Returns all products whose manufacturer is Apple OR cost is more than $1,200
SELECT product_name, product_price 
FROM product 
WHERE product_manufacturer = 'Apple' OR product_price > 1200

-- TRUE AND TRUE => TRUE
-- TRUE AND FALSE => FALSE
-- FALSE AND FALSE => FALSE
-- TRUE OR FALSE => TRUE
-- TRUE OR TRUE => TRUE
-- FALSE OR FALSE => FALSE


-- Arithmetic Operators
-- Returns Product Name, Items Purchased, Subtotal, Taxes, and Grand Total
SELECT product_name AS "Product Name", '2' AS "Items Purchased", 
product_price * 2 AS "Subtotal", 
ROUND(product_price * 0.07, 2) AS Taxes,
ROUND(product_price * 2 + product_price * 0.07, 2) AS "Grand Total"
FROM product

-- Returns all products whose price + 200 is greater than $1,600
SELECT * FROM product 
WHERE product_price + 200 > 1600


-- Query order of execution
-- FROM and JOIN s. The FROM clause, and subsequent JOIN s are first executed to determine the total working set of data that is being queried. ...
-- WHERE. ...
-- GROUP BY. ...
-- HAVING. ...
-- SELECT. ...
-- DISTINCT. ...
-- ORDER BY. ...

-- NOT Operator
-- Returns products whose manufacturer is not Apple
SELECT * FROM product 
WHERE NOT product_manufacturer = 'Apple'

-- REturns products whose price is more than $1,000 but the manufacturer is not Apple
SELECT * FROM product 
WHERE product_price > 1000 AND NOT product_manufacturer = 'Apple'
-- ---------------------

-- AND and OR Operators ------
-- Returns all products with a price > 1000, but basically returns all products BUT Apple products
SELECT * FROM product 
WHERE NOT product_manufacturer = 'Apple' OR product_name = 'Dell' AND product_price > 1600

-- Returns all products, except for Apple or Dell, with price greater than $1,600
SELECT * FROM product 
WHERE NOT (product_manufacturer = 'Apple' OR product_name = 'Dell') AND product_price > 1600

-- Returns all products,either Apple or Dell, with price greater than $1,600
SELECT * FROM product 
WHERE (product_manufacturer = 'Apple' OR product_name = 'Dell') AND product_price > 1600
-- -----------------------------


-- BETWEEN Operations
-- Returns all products whose price is between $1,300 and $1,700
SELECT * FROM product 
WHERE product_price BETWEEN 1300 AND 1700

-- Returns all products whose price is NOT between $1,300 and $1,700
SELECT * FROM product 
WHERE NOT product_price BETWEEN 1300 AND 1700
-- -------------------------

CREATE TABLE citizen
(
	citizen_id INT PRIMARY KEY AUTO_INCREMENT,
	citizen_firstname VARCHAR(10) NOT NULL,
	citizen_lastname VARCHAR(10) NOT NULL,
	citizen_city VARCHAR(15) NOT NULL,
	citizen_state VARCHAR(20) NOT NULL,
	citizen_retirement_date DATE,
	citizen_year_of_birth VARCHAR(5) NOT NULL
)

DROP TABLE citizen

INSERT INTO citizen (citizen_firstname, citizen_lastname, citizen_city, citizen_state, citizen_retirement_date, citizen_year_of_birth) VALUES
('Pushpa', 'Munagala', 'Ashburn', 'VA', '2020-12-10', 1980),
('Aicha', 'Diallo', 'Ashburn', 'VA', '2015-01-10', 1995),
('Dunieski','Otano', 'Miami', 'FL', NULL, 1976),
('Megan', 'Kumar', 'Houston', 'TX', NULL, 2001),
('Yanet', 'Perez', 'Miami', 'FL', NULL, 2000),
('Gayle', 'Jones', 'Bowie', 'MD', '2012-10-10', 1985),
('Sheila', 'McCustion', 'Tupelo', 'MS', '2016-09-09', 1990),
('Daniel', 'Caccavelli', 'Dry Fork', 'VA', NULL, 1992)

SELECT * FROM citizen 


-- IN Operator
-- Returns only the citizens that live in FL and VA
SELECT * FROM citizen 
WHERE citizen_state IN ('FL', 'VA')

-- IS NULL Clause
SELECT * FROM citizen 
WHERE citizen_city = 'Miami' AND citizen_retirement_date IS NULL 

-- IS NOT NULL Clause
SELECT * FROM citizen 
WHERE citizen_retirement_date IS NOT NULL 


-- LIKE Operator
-- Returns all cities that start with M
SELECT * FROM citizen 
WHERE citizen_city LIKE 'M%'

-- Returns all cities that ends with i
SELECT * FROM citizen 
WHERE citizen_city LIKE '%i'

-- Returns all cities that contain 'iam'
SELECT * FROM citizen 
WHERE citizen_city LIKE '%iam%'

-- Returns all last name that contain 'cca'
SELECT * FROM citizen 
WHERE citizen_lastname LIKE '%cca%'

-- Returns all first names that start with P
SELECT * FROM citizen 
WHERE citizen_firstname LIKE 'P%'

-- Returns all first names that start with p using the LOWER() function
SELECT * FROM citizen 
WHERE LOWER(citizen_firstname) LIKE 'p%'


-- Returns all first name whose second letter is 'u', the (_) wildcard while represents a single character
SELECT * FROM citizen 
WHERE citizen_firstname LIKE '_u%'

-- Regular Expressions to find matches 
SELECT * FROM citizen             
WHERE citizen_year_of_birth REGEXP '^...[0-9]$'





 



