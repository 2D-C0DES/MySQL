CREATE TABLE EMPLOYEE (
    Emp_id              NUMBER(5)       PRIMARY KEY,
    Joining_Date        DATE,
    Emp_FName           VARCHAR2(20),
    Emp_LName           VARCHAR2(20),
    Gender              CHAR(1),
    Department_id       NUMBER(5),
    Contact_no          VARCHAR2(15),
    Email_id            VARCHAR2(50),
    Manager_id          NUMBER(5),
    Salary              NUMBER(10,2),
    Department_name     VARCHAR2(30),
    Department_offday   VARCHAR2(15),
    Department_Manager_id NUMBER(5)
);

INSERT INTO EMPLOYEE VALUES (1, TO_DATE('12-03-2018','DD-MM-YYYY'), 'Rahul',   'Sharma',  'M', 10, '9876543210', 'Rahul@company.com',    NULL, 15000, 'HR',      'Sunday',   1);
INSERT INTO EMPLOYEE VALUES (2, TO_DATE('05-06-2020','DD-MM-YYYY'), 'Ankan',   'Roy',     'M', 20, '9123456780', 'Ankan@company.com',    1,    9000,  'Finance', 'Sunday',   2);
INSERT INTO EMPLOYEE VALUES (3, TO_DATE('20-02-2022','DD-MM-YYYY'), 'Priya',   'Das',     'F', 10, '9000011112', 'Priya@company.com',    1,    12000, 'HR',      'Sunday',   1);
INSERT INTO EMPLOYEE VALUES (4, TO_DATE('15-08-2019','DD-MM-YYYY'), 'Amit',    'Roy',     'M', 30, '9988776655', 'Amit@company.com',     2,    75000, 'IT',      'Saturday', 4);
INSERT INTO EMPLOYEE VALUES (5, TO_DATE('01-01-2021','DD-MM-YYYY'), 'Arian',   'Khan',    'M', 20, '9871234560', 'Arian@company.com',    2,    18000, 'Finance', 'Sunday',   2);
INSERT INTO EMPLOYEE VALUES (6, TO_DATE('10-11-2023','DD-MM-YYYY'), 'Sneha',   'Gupta',   'F', 30, '9090909090', 'Sneha@company.com',    4,    22000, 'IT',      'Saturday', 4);
INSERT INTO EMPLOYEE VALUES (7, TO_DATE('03-07-2016','DD-MM-YYYY'), 'Arjun',   'Mehta',   'M', 10, '8800880088', 'Arjun@company.com',    1,    30000, 'HR',      'Sunday',   1);
INSERT INTO EMPLOYEE VALUES (8, TO_DATE('22-09-2021','DD-MM-YYYY'), 'Kritika', 'Singh',   'F', 30, '7700770077', 'Kritika@company.com',  4,    17000, 'IT',      'Saturday', 4);
INSERT INTO EMPLOYEE VALUES (9, TO_DATE('14-04-2015','DD-MM-YYYY'), 'Irfan',   'Ali',     'M', 20, '9600096000', 'Irfan@company.com',    2,    40000, 'Finance', 'Sunday',   2);
INSERT INTO EMPLOYEE VALUES (10,TO_DATE('30-12-2022','DD-MM-YYYY'), 'Arun',    'Bose',    'M', 10, '9500095000', 'arun@company.com',     1,    11000, 'HR',      'Sunday',   1);
INSERT INTO EMPLOYEE VALUES (11,TO_DATE('07-03-2020','DD-MM-YYYY'), 'Divya',   'Nair',    'F', 30, '9400094000', 'Divya@company.com',    4,    19000, 'IT',      'Saturday', 4);
INSERT INTO EMPLOYEE VALUES (12,TO_DATE('18-06-2017','DD-MM-YYYY'), 'Aaron',   'Dsouza',  'M', 20, '9300093000', 'Aaron@company.com',    2,    28000, 'Finance', 'Sunday',   2);
INSERT INTO EMPLOYEE VALUES (13,TO_DATE('25-01-2023','DD-MM-YYYY'), 'Meena',   'Tiwari',  'F', 10, '9200092000', 'Meena@company.com',    1,    13000, 'HR',      'Sunday',   1);
INSERT INTO EMPLOYEE VALUES (14,TO_DATE('11-05-2014','DD-MM-YYYY'), 'Rohan',   'Joshi',   'M', 30, '9100091000', 'Rohan@company.com',    4,    55000, 'IT',      'Saturday', 4);
INSERT INTO EMPLOYEE VALUES (15,TO_DATE('09-08-2021','DD-MM-YYYY'), 'Arun',    'Kapoor',  'M', 20, '9000090000', 'arun2@company.com',    2,    16000, 'Finance', 'Sunday',   2);
COMMIT;

SELECT * FROM EMPLOYEE WHERE UPPER(Emp_FName) LIKE 'A%N';

SELECT * FROM EMPLOYEE WHERE Joining_Date > TO_DATE('01-JAN-2021','DD-MON-YYYY');

SELECT Emp_FName || ' ' || Emp_LName AS Full_Name FROM EMPLOYEE WHERE Salary BETWEEN 8000 AND 20000;

SELECT Department_name, AVG(Salary) AS Avg_Salary
FROM EMPLOYEE
GROUP BY Department_name
HAVING AVG(Salary) = (
    SELECT MAX(AVG(Salary))
    FROM EMPLOYEE
    GROUP BY Department_name
);

SELECT Emp_id, SUBSTR(Email_id, 1, INSTR(Email_id, '@') - 1) AS Email_Username FROM EMPLOYEE;

SELECT Emp_id, Emp_FName, Email_id
FROM EMPLOYEE
WHERE LOWER(SUBSTR(Email_id, 1, INSTR(Email_id, '@') - 1)) = LOWER(Emp_FName);

UPDATE EMPLOYEE
SET Salary = CASE
    WHEN MONTHS_BETWEEN(SYSDATE, Joining_Date) / 12 > 5 THEN ROUND(Salary * 1.15, 2)
    ELSE ROUND(Salary * 1.08, 2)
END;
COMMIT;

SELECT 'Hello ' || Emp_FName || ' ' || Emp_LName || ', your joining date is ' ||
       TO_CHAR(Joining_Date, 'DD-MM-YYYY') || ' and your department is ' ||
       Department_name AS Statement
FROM EMPLOYEE;

SELECT Emp_FName, Emp_LName FROM EMPLOYEE WHERE LOWER(Emp_FName) NOT LIKE '%e%';

SELECT Emp_FName, Emp_LName FROM EMPLOYEE WHERE LOWER(SUBSTR(Emp_FName, 2, 1)) IN ('r', 'i');

SELECT 'Hello ' || Emp_FName || ' ' || Emp_LName || ', your professional tax is Rs. ' ||
       TO_CHAR(ROUND(Salary * 0.02), 'FM99999') AS Tax_Statement
FROM EMPLOYEE;

SELECT Manager_id, COUNT(DISTINCT Department_id) AS Dept_Count
FROM EMPLOYEE
WHERE Manager_id IS NOT NULL
GROUP BY Manager_id
HAVING COUNT(DISTINCT Department_id) > 1;
