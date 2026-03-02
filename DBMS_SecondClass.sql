
CREATE DATABASE student_db;

use student_db;
-- Current date in MySQL (Oracle: SELECT SYSDATE FROM DUAL)
SELECT SYSDATE();
-- or
SELECT NOW();

select curdate();

-- Create Table
CREATE TABLE student (
    s_roll BIGINT primary key,
    s_name VARCHAR(20),
    s_dept VARCHAR(10),
    s_dob DATE,
    s_mob BIGINT
);

-- Describe table
DESCRIBE student;

drop table student;

-- MySQL does NOT support ROWID
-- Instead you normally use PRIMARY KEY
SELECT s_roll FROM student;

-- Insert Records (Date format changed to YYYY-MM-DD)
INSERT INTO student (s_roll, s_name, s_dept, s_dob, s_mob)
VALUES (100,'ANUSHMITA DUBEY','IT','2005-09-15',9800763305);

INSERT INTO student (s_roll, s_name, s_dept, s_dob, s_mob)
VALUES (101,'SHREYA SAHA','IT','2004-01-02',7478310152);

-- Remove all rows
TRUNCATE TABLE student;

SELECT * FROM student;


-- Insert Multiple Records
INSERT INTO student VALUES
(102,'RIYA DAS','CSE','2005-03-11',9123456780),
(103,'ARJUN ROY','ECE','2004-07-22',9234567811),
(104,'NEHA SEN','IT','2005-12-05',9345678122),
(105,'RAHUL DEY','ME','2003-09-18',9456781233),
(106,'PRIYA PAL','CE','2004-01-27',9567812344),
(107,'AMIT GHOSH','CSE','2005-06-14',9678123455),
(108,'SOUMYA MITRA','ECE','2004-11-03',9781234566),
(109,'TINA KAR','IT','2005-08-29',9892345677),
(110,'ROHAN SAHA','ME','2004-02-16',9903456788),
(111,'ANANYA DUTTA','CE','2005-05-09',9014567899),
(112,'SAGNIK PAUL','CSE','2003-10-21',9125678901),
(113,'MOUMITA ROY','IT','2005-04-30',9236789012),
(114,'DEBASISH DAS','ECE','2004-12-12',9347890123),
(115,'SNEHA BISWAS','ME','2003-07-07',9458901234),
(116,'KUNAL MONDAL','CE','2004-03-25',9569012345),
(117,'SUBHAM MONDAL','CE','2004-03-25',9569012345),
(118,'RAMPY MONDAL','CE','2004-03-25',9569012345),
(119,'SHYAM MONDALAM','CE','2004-03-25',9569012345);


SELECT * FROM student;

-- Projection
SELECT s_roll, s_name FROM student;

-- Exact match for the roll number
SELECT * FROM student WHERE s_roll IN (102,110);

-- WHERE with IN
select * from student where s_roll between 102 and 110;

-- Exact match
SELECT * FROM student WHERE s_name = 'SNEHA BISWAS';

-- LIKE queries
SELECT * FROM student WHERE s_name LIKE 'R%';
SELECT * FROM student WHERE s_name LIKE '%M';
SELECT * FROM student WHERE s_name LIKE '%S%';
SELECT * FROM student WHERE s_name LIKE '_A%';
SELECT * FROM student WHERE s_name LIKE '__M%';

-- Add marks column (Oracle NUMBER → MySQL INT)
ALTER TABLE student 
ADD marks INT;

-- Update marks

UPDATE student 
SET marks = 92 WHERE s_roll IN (102,103);
UPDATE student 
SET marks = 55 WHERE s_roll IN (104,105);
UPDATE student 
SET marks = 75 WHERE s_roll = 106;
UPDATE student 
SET marks = 65 WHERE s_roll = 107;
UPDATE student 
SET marks = 55 WHERE s_roll = 108;
UPDATE student 
SET marks = 85 WHERE s_roll = 109;
UPDATE student 
SET marks = 75 WHERE s_roll = 110;
UPDATE student 
SET marks = 55 WHERE s_roll = 111;
UPDATE student 
SET marks = 95 WHERE s_roll = 112;
UPDATE student 
SET marks = 25 WHERE s_roll = 113;
UPDATE student 
SET marks = 45 WHERE s_roll = 114;
UPDATE student 
SET marks = 25 WHERE s_roll = 115;
UPDATE student 
SET marks = 35 WHERE s_roll = 116;

-- Conditional Queries
SELECT * FROM student WHERE marks > 60;
SELECT * FROM student WHERE marks < 60;
SELECT * FROM student WHERE marks != 60;
SELECT * FROM student WHERE marks BETWEEN 75 AND 90;

-- DISTINCT
SELECT DISTINCT s_name FROM student;
SELECT COUNT(DISTINCT s_name) FROM student;

-- Aggregate Functions
SELECT MIN(marks) FROM student;
SELECT MAX(marks) FROM student;
SELECT round(AVG(marks),2) FROM student;
SELECT SUM(marks) FROM student;

-- Create new table from SELECT
CREATE TABLE student_result AS
SELECT s_roll, s_name, marks FROM student;

-- Describe new table
DESCRIBE student_result;

SELECT * FROM student_result;

drop table student_result;