-- Print today's date
SELECT DATE(NOW())

-- Extracts date's portion of NOW(), year, month, day
SELECT DATE(NOW()) AS "Today's date", EXTRACT(YEAR FROM DATE(NOW())) AS "Year", EXTRACT(MONTH FROM DATE(NOW())) AS "Month", EXTRACT(DAY FROM DATE(NOW())) AS "Day"

-- Extracts time's portion of NOW(), hour, minute, second
SELECT TIME(NOW()), EXTRACT(HOUR FROM NOW()), EXTRACT(MINUTE FROM NOW()), EXTRACT(SECOND FROM NOW())

-- hey sir, what time is it?, asked the boy. It is 02 17 05 PM
SELECT CONCAT('hey sir, what time is it?, asked the boy. It is ', TIME_FORMAT('14:17:05',  "%h %i %s %p"))

-- Concatenation = join elements in the function concat()
SELECT CONCAT('N-', 5)

SELECT CAST(125 AS CHAR)

-- Cast is turn a type into another, CHAR to TIME
SELECT CAST('14:06:10' AS TIME)

-- Sample table to test concat() function
CREATE TABLE users
(
  	firstname TEXT NOT NULL,
  	lastname TEXT NOT NULL
)

INSERT INTO users (firstname, lastname) VALUES ('Pushpa', 'Munagala'), ('Aicha', 'Diallo')

SELECT * FROM users

SELECT CONCAT(firstname,' ', lastname) AS "Full Name" FROM users ORDER BY firstname DESC
-- end of sample table function test ----


CREATE TABLE player
(
	playerId INT PRIMARY KEY AUTO_INCREMENT,
	playerName VARCHAR(10) NOT NULL,
	playerScore SMALLINT NOT NULL,
	playerLastDatePlayed DATE NOT NULL,
	playerTShirtNumber TINYINT NOT NULL,
	playerStatus VARCHAR(10) NOT NULL
)


INSERT INTO player (playerName,	playerScore, playerLastDatePlayed, playerTShirtNumber, playerStatus) VALUES
('Pushpa', 1000, '2020-12-31', 10, 'active'),
('Omer', 999, '2021-01-13', 12, 'active'),
('Aicha', 800, '2021-01-07', 14, 'active'),
('Daniel', 1100, '2012-01-25', 9, 'retired'),
('Byron', 1500, '2015-11-20', 9, 'retired'),
('Mtagui', 3000, '2017-11-20', 9, 'unknown')

-- Returns list of scores from highest to lowest in descending order -- By default is ASC
SELECT playerScore FROM player ORDER BY playerScore DESC

SELECT * FROM player WHERE playerScore > 1000 ORDER BY playerName 

SELECT * FROM player WHERE playerScore BETWEEN 1000 AND 1500

SELECT SUM(playerScore) AS Total, ROUND(AVG(playerScore),2) AS "Average Score" FROM player


SELECT COUNT(playerStatus), playerStatus, playerScore
FROM player 
GROUP BY playerStatus
HAVING playerScore > 1000


SELECT YEAR('2020-01-01')

-- Returns records with a date after or in 2015
SELECT * FROM player 
WHERE YEAR(playerLastDatePlayed) >= 2015
ORDER BY playerLastDatePlayed 

-- 1. FROM and JOINs
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT 
-- 6. DISTINCT
-- 7. ORDER BY
-- 8. LIMIT / OFFSET


-- Returns only active players
SELECT * FROM player WHERE playerStatus = 'active'

-- single line comment
/* multiple
lines comment
here*/

CREATE TABLE cohort2
(
   studentName VARCHAR(10) NOT NULL,
   grade DECIMAL(4,2) NOT NULL
)  

INSERT INTO cohort2 (studentName, grade) VALUES ('Dunieski', 98.55), ('Pushpa', 99.5), ('Aicha', 99.7)

-- Returns average of grades with function AVG()
SELECT AVG(grade) FROM cohort2

-- Returns average of grades with functions SUM() and COUNT()
SELECT AVG(grade) AS "Using function AVG()", SUM(grade)/COUNT(grade) AS "Using functions SUM() and COUNT()" FROM cohort2