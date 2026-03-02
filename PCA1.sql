create database company_db;
use company_db;

create table employee (
    emp_id int primary key,
    joining_date date,
    emp_fname varchar(30),
    emp_lname varchar(30),
    gender varchar(10),
    department_id int,
    contact_no varchar(15),
    email_id varchar(50),
    manager_id int,
    salary decimal(10,2),
    department_name varchar(30),
    department_offday varchar(15),
    department_manager_id int
);

insert into employee values
(1,'2017-03-12','Rahul','Sharma','male',null,'9876543210','rahul@company.com',null,25000,'hr','sunday',1),
(2,'2022-06-15','Amit','Roy','male',1,'9123456780','amit@company.com',1,15000,'hr','sunday',1),
(3,'2023-01-20','Arun','Sen','male',1,'9988776655','arun@company.com',1,12000,'hr','sunday',1),
(4,'2019-11-10','Rina','Das','female',null,'9090909090','rina@company.com',null,30000,'it','saturday',4),
(5,'2021-12-05','Ishan','Ghosh','male',4,'8888888888','ishan@company.com',4,18000,'it','saturday',4),
(6,'2016-05-18','Anjan','Paul','male',4,'7777777777','anjan@company.com',4,9000,'it','saturday',4),
(7,'2024-02-01','Aman','Khan','male',null,'6666666666','aman@company.com',null,10000,'finance','sunday',7),
(8,'2020-08-25','Priya','Nair','female',7,'9555555555','priya@company.com',7,22000,'finance','sunday',7),
(9,'2018-09-14','Arjun','Dutta','male',4,'9444444444','arjun@company.com',4,17000,'support','saturday',4),
(10,'2022-04-19','Riya','Singh','female',1,'9333333333','riya@company.com',1,14000,'marketing','sunday',1),
(11,'2015-01-10','Milan','Gupta','male',7,'9222222222','milan@company.com',7,28000,'finance','sunday',7),
(12,'2023-07-11','Aryan','Mehta','male',1,'9111111111','aryan@company.com',1,16000,'marketing','sunday',1),
(13,'2021-03-03','Tina','Roy','female',4,'9000000001','tina@company.com',4,13000,'support','saturday',4),
(14,'2019-12-22','Vikas','Rana','male',7,'9000000002','vikas@company.com',7,21000,'finance','sunday',7),
(15,'2024-01-15','Arivan','Das','male',1,'9000000003','arivan@company.com',1,11000,'hr','sunday',1);

select * from employee;

select * from employee
where emp_fname not like '%ban%';

select timestampdiff(year,joining_date,curdate()) as experience 
from employee;

select * from employee
where salary between 5000 and 10000;

-- hello debanjan das your salary is 50k and departement is IT

select concat('hello ',emp_fname,' ',emp_lname,' your salary is ',salary,' and department is ',department_name) 
as statement_message 
from employee;

select min(salary) from employee;

update employee
set salary=case
     when salary<10000
     then salary*1.05
     else salary
     end;
     
     
























