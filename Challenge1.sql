-- Creating the testDB database --
CREATE DATABASE testDB;

-- Drop testDB database --
DROP DATABASE testDB;

-- Creating the testDB database --
CREATE DATABASE testDB;


USE testDB;

-- Create Persons table --
CREATE TABLE persons (
	PersonID int PRIMARY KEY,
    LastName TEXT,
    FirstName TEXT,
    Address TEXT,
    City TEXT 
    );
    

-- Add Birthday Column to Persons Table --
ALTER TABLE persons
ADD Birthday DATE;


-- Delete Birthday Column
ALTER TABLE persons
DROP COLUMN Birthday;

-- Enter two records into the persons table --
INSERT INTO persons VALUES (1, 'Frimpong', 'Ebenezer', 'Lashibi', 'Accra'), (2, 'Adu', 'Emmanuella', 'Trassaco', 'Accra');
 
-- Truncate persons table --
TRUNCATE TABLE persons;


-- Delete persons table --
DROP TABLE persons;





    