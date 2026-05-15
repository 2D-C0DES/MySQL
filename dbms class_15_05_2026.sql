CREATE TABLE employee (
    Emp_id            NUMBER(15)      PRIMARY KEY,
    Joining_Date      DATE,
    Emp_FName         VARCHAR2(20),
    Emp_LName         VARCHAR2(20),
    Gender            VARCHAR2(10),
    Department_id     NUMBER(15),
    Contact_no        NUMBER(15),
    Email_id          VARCHAR2(50),
    Manager_id        NUMBER(15),
    Salary            NUMBER(15),
    Department_name   VARCHAR2(30),
    Department_offday VARCHAR2(15),
    Department_Manager_id NUMBER(15),
    CONSTRAINT fk_dept FOREIGN KEY (Department_id) REFERENCES employee(Emp_id)
);

--DESC employee;

ALTER TABLE employee DISABLE CONSTRAINT fk_dept;

INSERT INTO employee VALUES (101, TO_DATE('12-03-2018','DD-MM-YYYY'), 'Rahul',     'Sharma',    'Male',   10, 9831012345, 'rahul123@hrmail.com',       NULL, 45000, 'HR',      'Sunday',   101);
INSERT INTO employee VALUES (102, TO_DATE('05-07-2019','DD-MM-YYYY'), 'Amit',      'Roy',        'Male',   20, 9831022222, 'amit@techcorp.com',      101,  75000, 'IT',      'Sunday',   102);
INSERT INTO employee VALUES (105, TO_DATE('14-02-2022','DD-MM-YYYY'), 'Anish',     'Seal',       'Male',   30, 9948967636, 'anish567@finance.com',      NULL, 48000, 'Finance', 'Saturday', 105);
INSERT INTO employee VALUES (106, TO_DATE('30-11-2020','DD-MM-YYYY'), 'Raktim',    'Das',        'Male',   30, 9948953360, 'raktim@finance.com',     105,  51000, 'Finance', 'Saturday', 105);
INSERT INTO employee VALUES (107, TO_DATE('01-03-2016','DD-MM-YYYY'), 'Swapnil',   'Mondal',     'Male',   40, 8729353360, 'swapnil@ops.com',        NULL, 82000, 'Ops',     'Sunday',   107);
INSERT INTO employee VALUES (108, TO_DATE('19-09-2023','DD-MM-YYYY'), 'Arin',      'Mukherjee',  'Male',   20, 9729353360, 'arin@techcorp.com',      102,   9500, 'IT',      'Sunday',   102);
INSERT INTO employee VALUES (109, TO_DATE('25-06-2015','DD-MM-YYYY'), 'Subham',    'Biswas',     'Male',   40, 7729353360, 'subham66@ops.com',         107,  91000, 'Ops',     'Sunday',   107);
INSERT INTO employee VALUES (110, TO_DATE('11-04-2021','DD-MM-YYYY'), 'Shivaditya','Acharya',    'Male',   10, 9647676960, 'shivaditya@hrmail.com',  101,  15000, 'HR',      'Sunday',   101);
INSERT INTO employee VALUES (111, TO_DATE('03-08-2022','DD-MM-YYYY'), 'Mousumi',   'Nag',        'Female', 30, 7647976960, 'mousumi456@finance.com',    105,  18500, 'Finance', 'Saturday', 105);
INSERT INTO employee VALUES (112, TO_DATE('17-12-2019','DD-MM-YYYY'), 'Minerva',   'Chowdhury',  'Female', 20, 8647976960, 'minerva@techcorp.com',   102,  67000, 'IT',      'Sunday',   102);
INSERT INTO employee VALUES (113, TO_DATE('04-09-2018','DD-MM-YYYY'), 'Shaili',    'Ghosh',      'Female', 40, 9647993766, 'shaili45@ops.com',         107,  73000, 'Ops',     'Sunday',   107);
INSERT INTO employee VALUES (114, TO_DATE('11-09-2021','DD-MM-YYYY'), 'Jayati',    'Sarkar',     'Female', 10, 8358462367, 'jayati@hrmail.com',      101,  12000, 'HR',      'Sunday',   101);
INSERT INTO employee VALUES (115, TO_DATE('12-09-2013','DD-MM-YYYY'), 'Tamoghna',  'Lahiri',     'Male',   30, 7826384734, 'tamoghna@finance.com',   105,  95000, 'Finance', 'Saturday', 105);
-- Extra rows for specific query coverage
INSERT INTO employee VALUES (116, TO_DATE('01-06-2024','DD-MM-YYYY'), 'Arjun',     'Sen',        'Male',   20, 9012345678, 'arjun4566@techcorp.com',     102,   8500, 'IT',      'Sunday',   102);
-- Row whose email username == first name  (Query 6)
INSERT INTO employee VALUES (117, TO_DATE('15-01-2020','DD-MM-YYYY'), 'Alan',      'Kapoor',     'Male',   40, 9112345678, 'alan4589@ops.com',           107,  19000, 'Ops',     'Sunday',   107);

-- Change Department_id values to match real Emp_ids (e.g., the manager's id)
UPDATE employee SET Department_id = 101 WHERE Department_name = 'HR';
UPDATE employee SET Department_id = 102 WHERE Department_name = 'IT';
UPDATE employee SET Department_id = 105 WHERE Department_name = 'Finance';
UPDATE employee SET Department_id = 107 WHERE Department_name = 'Ops';
COMMIT;

ALTER TABLE employee ENABLE CONSTRAINT fk_dept;

COMMIT;

UPDATE employee 
SET Department_Manager_id = 101 
WHERE Department_name = 'Finance';
COMMIT;

SELECT * FROM employee;
DESC employee;

drop table employee;

-- PL/SQL CODE

SET SERVEROUTPUT ON;
DECLARE
    var_first_name   employee.Emp_FName%TYPE;
    var_last_name    employee.Emp_LName%TYPE;
    con_flag         CONSTANT NUMBER := 0;
    var_emp_id       employee.Emp_id%TYPE := 101; -- change employee id here

BEGIN
    SELECT Emp_FName, Emp_LName
    INTO var_first_name, var_last_name
    FROM employee
    WHERE Emp_id = var_emp_id;

    DBMS_OUTPUT.PUT_LINE(
        'Employee Name: ' || var_first_name || ' ' || var_last_name
    );

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'No Employee Found with ID ' || var_emp_id
        );

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: ' || SQLERRM
        );
END;
/

