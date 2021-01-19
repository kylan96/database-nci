-- Lesson 10: Updating/Deleting Tables

-- • A - Atomic: Makes sure all operations are successful
-- • C - Consistent: Confirms the database correctly changes states after a transaction has
--   been effectively committed
-- • I - Isolated: Allows transactions to function autonomously of and visible to each other
-- • D - Durable (ACID)

START TRANSACTION;
CREATE TABLE computer
(
	computerId VARCHAR(10) PRIMARY KEY NOT NULL,
	computer_type VARCHAR(20) NOT NULL,
	computer_manufacturer VARCHAR(20) NOT NULL,
	computer_country_of_origin VARCHAR(15) NOT NULL
);

INSERT INTO computer (computerId, computer_type, computer_manufacturer, computer_country_of_origin) VALUES
('TD-001', 'Apple', 'Apple', 'China'),
('TD-002', 'Dell', 'Dell', 'Bangladesh');
SELECT * FROM computer;
COMMIT;

DROP TABLE IF EXISTS computer -- will delete the table if it exists and data permanently

TRUNCATE TABLE computer -- will delete the data only (empty the table)\

DESCRIBE computer 


-- DML
-- UPDATES only one field
UPDATE computer SET computer_type = 'Toshiba'
WHERE computerId = 'TD-002'

-- UPDATES several fields at the same time
UPDATE computer SET 

	computer_type = 'Apple', 
	computer_manufacturer = 'Apple',
	computer_country_of_origin = 'Cuba'
	
WHERE computerId = 'TD-002'

-- DELETES a records found by Id
DELETE FROM computer 
WHERE computerId = 'TD-002'

SELECT * FROM computer;






