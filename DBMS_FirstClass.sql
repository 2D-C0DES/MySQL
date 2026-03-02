CREATE DATABASE DEBANJAN;

-- Create table
CREATE TABLE student (
    s_roll BIGINT,
    s_name VARCHAR(20),
    s_dept VARCHAR(10),
    s_dob DATE,
    s_mob BIGINT
);

-- Describe table
DESCRIBE student;

-- Insert records
INSERT INTO student (s_roll, s_name, s_dept, s_dob, s_mob)
VALUES (101, 'Debanjan Das', 'IT', '2005-06-07', 4455662233);

INSERT INTO student (s_roll, s_name, s_dept, s_dob, s_mob)
VALUES (10, 'Aditya Biswas', 'IT', '2003-12-12', 4477556622);

-- View table data
SELECT * FROM student;

-- Describe again
DESCRIBE student;

-- Add new column
ALTER TABLE student 
ADD s_city VARCHAR(15);

-- Modify column size
ALTER TABLE student 
MODIFY s_city VARCHAR(25);

-- Remove all records (structure remains)
TRUNCATE TABLE student;

-- Delete table completely
DROP TABLE student;
