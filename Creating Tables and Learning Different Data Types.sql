
-- This creates a table named employee

--  Beginning of Table Creation ------
CREATE TABLE IF NOT EXISTS employee
(
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
	firstname VARCHAR(10) NOT NULL,
	lastname VARCHAR(10) NOT NULL,
	phone VARCHAR(10) NOT NULL,
	salary DECIMAL(18,2) NOT NULL
)

CREATE TABLE IF NOT EXISTS nci_student
(
	std_id VARCHAR(10) PRIMARY KEY,
	firstname VARCHAR(20) NOT NULL,
	lastname VARCHAR(20) NOT NULL,
	class VARCHAR(20) NOT NULL,
	phone VARCHAR(10) NOT NULL,
	email VARCHAR(25) NOT NULL,
	address VARCHAR(100) NOT NULL,
	start_time TIMESTAMP not null,
	end_time TIMESTAMP not null
)
--  End of Table Creation ------------


-- Insert Data Section
INSERT INTO employee (firstname, lastname, phone, salary) VALUES
('Dunieski', 'Otano', 1234567890, 12345.99)

INSERT INTO nci_student (std_id, firstname, lastname, class, phone, email, address) VALUES
('NCI001', 'Dunieski', 'Otano', 're/Start', '1234567890', 'example@example.com', '1234 SW 4th Ave Miami, FL 33122'),
('NCI002', 'Mtaghi', 'Gui', 'AWS Practitioner','911911911', 'USA@USA@.com', '911 Street, USA'),
('NCI003', 'Bayrakdar', 'Omer', 're/Start', '2026765848', 'hellooo@gmail.com', '3345 Wilson Blvd. #1340, Alexandria, VA, 22201'),
('NCI004', 'Daniel', 'Caccavelli', 're/Start', '4348675309', 'this@that.com', '1234 Main St. Danville VA 24541'),
('NCI005', 'Joven', 'Poblete', 're/Start', '123456789', 'email@gmail.com', '0987 East St, Washington, DC 20002'),
('NCI006', 'Yasin', 'Tasasiz', 're/Start', '135792468', 'yasin@mail.com', '1234 West St. Ashburn VA 20148'),
('NCI007','Jing', 'wang',  're/Start', '7033896293',  'janeff1110@gmail.com','12311 Field Lark Ct. ,Fairfax, VA22033'),
('NCI008', 'Joe', 'Mitchell', 're/Start', '5555555556', 'seequill@email.com', '245 Street Rd City, Maine 64334'),
('NCI009','Rufina', 'Kim', 're/Start','3451230987','testdb@email.com','2585 Freedom sq Chantilly VA 20169'),
('NCI010', 'Pushpa', 'Munagala', 're/Start', '123987675', 'pushpa@pushpa.com', '7689 liberty sq, Ny, 30939'),
('NCI011', 'Andrew', 'Hopkins', 're/start', '0987654321' , 'Database@data.com' , '543 South Liberty Akron, OH'),
('NCI012', 'Andres', 'Mejia', 're/start', '5435454354', 'Dres@email.com', '12345 Bushtower st, Aldie, VA')

---- End of Insert Data Section

-- Select is used to read from the table employee
SELECT employee_id AS ID, firstname AS "First Name", lastname AS "Last Name", CONCAT('$', salary)
AS Salary FROM employee

SELECT * FROM nci_student

-- This prints all records starting at 5 (offset) and only print 10 records (limit)
SELECT CONCAT('OH ', firstname, '. I know where you live now. You dont believe me. It is here @ ', address) FROM nci_student LIMIT 10 OFFSET 4
-- The above returns:

-- OH Joven. I know where you live now. You dont believe me. It is here @ 0987 East St, Washington, DC 20002
-- OH Yasin. I know where you live now. You dont believe me. It is here @ 1234 West St. Ashburn VA 20148
-- OH Jing. I know where you live now. You dont believe me. It is here @ 12311 Field Lark Ct. ,Fairfax, VA22033
-- OH Joe. I know where you live now. You dont believe me. It is here @ 245 Street Rd City, Maine 64334
-- OH Rufina. I know where you live now. You dont believe me. It is here @ 2585 Freedom sq Chantilly VA 20169
-- OH Pushpa. I know where you live now. You dont believe me. It is here @ 7689 liberty sq, Ny, 30939
-- OH Andrew. I know where you live now. You dont believe me. It is here @ 543 South Liberty Akron, OH
-- OH Andres. I know where you live now. You dont believe me. It is here @ 12345 Bushtower st, Aldie, VA


-- Info on Data Types


-- TINYINT => 1 byte, 0 to 255
-- SMALLINT => 2 bytes, -215 (-32,768) to 215-1 (32,767)
-- INT => 4 bytes, -231 (-2,147,483,648) to 231-1 (2,147,483,647
-- BIGINT => 8 bytes, -263 (-9,223,372,036,854,775,808) to 263-1 (9,223,372,036,854,775,807)

-- DECIMAL(18,2) => Precision: 18, scale: 2 => 12345678.89 => Precision: 10
-- VARCHAR(10), TEXT

-- DATE
-- TIMESTAMP
SELECT '2020-01-13' + INTERVAL 1 day -- returns 2020-01-14
SELECT '2020-01-13' + INTERVAL -1 day -- returns 2020-01-12

-- Adding Intervals using function DATE_ADD(), and subtracting intervals using function DATE_SUB()
SELECT DATE(NOW()) AS "Today's date", DATE_ADD(DATE(NOW()), INTERVAL 1 MONTH) AS "1 Month later",
DATE_SUB('2020-01-13', INTERVAL 1 MONTH) AS "1 Month Before", DATE_ADD(DATE(NOW()), INTERVAL 1 YEAR) AS "1 year later",
DATE_ADD(DATE(NOW()), INTERVAL 3 YEAR) AS "3 Years later"

SELECT CONCAT('Hey, Sir, What is it?', ' It is ', TIME(NOW()))


SELECT NOW() as "Now", DATE(NOW()) AS "Date Portion", TIME(NOW()) AS "Time Portion"
-- This returns:
--     Now               Date Portion     Time Portion
-- 2021-01-13 18:21:21	   2021-01-13	   18:21:21
