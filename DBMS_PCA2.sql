CREATE SEQUENCE custid
MINVALUE 100
START WITH 100
INCREMENT BY 1;

create table customer1(customer_id number(10),customer_name varchar2(20));

begin
insert into customer1(customer_id,customer_name) values (custid.nextval,'Rakesh');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Suresh');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Dipti');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Kuntal');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Rohan');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Prakash');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Nayan');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Tanmoy');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Pritam');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Tania');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Disha');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Shrabani');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Soumili');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Poulami');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Ayanika');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Antara');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Niladri');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Barsha');
insert into customer1(customer_id,customer_name) values (custid.nextval,'Souvik');
end;
/


CREATE TABLE CUSTOMER
( CUSTOMER_ID NUMBER,
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE,
REGION VARCHAR2(10)
);

CREATE TABLE PRODUCT
( PRODUCT_ID NUMBER,
PRODUCT_NAME VARCHAR2(100),
STANDARD_COST NUMBER(10,2),
COLOR VARCHAR2(20),
LIST_PRICE NUMBER(10,2),
PRODUCT_SIZE NUMBER(8,2),
WEIGHT NUMBER(10,2),
PRODUCT_CATEGORY VARCHAR2(20)
);

CREATE TABLE SALES
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);

CREATE TABLE SALES_HISTORY
( SALES_DATE DATE,
ORDER_ID NUMBER,
PRODUCT_ID NUMBER,
CUSTOMER_ID NUMBER(5,0),
SALESPERSON_ID NUMBER(5,0),
QUANTITY NUMBER(4,0),
UNIT_PRICE NUMBER(10,2),
SALES_AMOUNT NUMBER(10,2),
TAX_AMOUNT NUMBER(10,2),
TOTAL_AMOUNT NUMBER(10,2)
);

CREATE TABLE SALESPERSON
( SALESPERSON_ID NUMBER,
JOB_TITLE VARCHAR2(80),
FIRST_NAME VARCHAR2(50),
LAST_NAME VARCHAR2(50),
MIDDLE_NAME VARCHAR2(50),
ADDRESS_LINE1 VARCHAR2(80),
ADDRESS_LINE2 VARCHAR2(80),
CITY VARCHAR2(40),
COUNTRY VARCHAR2(50),
DATE_ADDED DATE,
MANAGER VARCHAR2(20)
);

-- Data insertion into customer table
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(10,'JOHN','AMIRTHRAJ','T','2345 PETERDRIVE',null,'Atlanta','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(11,'TOM','JOSEPH','A','123SANDY DRIVE',null,'New York','USA',
to_date('12-JAN-15','DD-MON-YY'),'SOUTH');
Insert into CUSTOMER
(CUSTOMER_ID,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,ADDRESS_LINE2,CITY,
COUNTRY,DATE_ADDED,REGION) values
(12,'PETER','MANN','J','3456 GATES DRIVE',null,'Washington','USA',
to_date('13-JAN-15','DD-MON-YY'),'NORTH');
COMMIT;

select *from CUSTOMER;



-- data insertion into product table
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (100,'Mobile Cover',30,null,35,10,100,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (200,'Samsung F7100',80,'BLACK',35,6,50,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (105,'HTC 7800',70,'BLACK',80,6,40,'Mobile');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (106,'Microsoft Keyboard 7865',50,'BLACK',60,3,20,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (501,'Microsoft Mouse 7863',30,'GREY',40,1,25,'Computer');
Insert into PRODUCT
(PRODUCT_ID,PRODUCT_NAME,STANDARD_COST,COLOR,LIST_PRICE,PRODUCT_SIZE,WEIGHT,
PRODUCT_CATEGORY)
values (101,'iPhone',500,'GOLD',600,6,20,'Mobile');
COMMIT;

--data insertion into sales table
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1560,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-JAN-15','DD-MON-RR'),1561,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-JAN-15','DD-MON-RR'),1563,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1562,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1565,101,12,1000,20,20,400,40,440);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-FEB-15','DD-MON-RR'),1269,200,12,1000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-FEB-15','DD-MON-RR'),1269,200,12,1000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-JAN-15','DD-MON-RR'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-JAN-15','DD-MON-RR'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-JAN-15','DD-MON-RR'),1268,100,11,2000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-FEB-15','DD-MON-RR'),1270,105,10,3000,20,70,1400,140,1540);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-FEB-15','DD-MON-RR'),1270,106,10,3000,10,50,500,50,550);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-FEB-15','DD-MON-RR'),1271,101,10,3000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1272,200,12,4000,4,80,320,32,352);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1273,200,12,5000,6,80,480,48,528);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1274,100,10,6000,8,20,160,16,176);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-FEB-15','DD-MON-RR'),1275,101,10,7000,10,30,300,30,330);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-FEB-15','DD-MON-RR'),1276,100,11,8000,12,30,360,36,396);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1277,105,10,9000,14,70,980,98,1078);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1278,106,10,10000,16,50,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1279,101,10,11000,18,30,540,54,594);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-FEB-15','DD-MON-RR'),1280,100,12,12000,20,80,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('20-FEB-15','DD-MON-RR'),1281,105,12,1000,22,80,1760,176,1936);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('21-FEB-15','DD-MON-RR'),1282,106,10,1000,24,20,480,48,528);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('22-FEB-15','DD-MON-RR'),1283,101,10,1000,26,30,780,78,858);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-FEB-15','DD-MON-RR'),1284,100,11,2000,28,30,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-FEB-15','DD-MON-RR'),1285,105,10,3000,30,70,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1286,100,10,3000,32,50,1600,160,1760);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1287,105,10,3000,34,30,1020,102,1122);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-FEB-15','DD-MON-RR'),1288,106,12,9000,36,80,2880,288,3168);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('28-FEB-15','DD-MON-RR'),1289,101,12,10000,38,80,3040,304,3344);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-MAR-15','DD-MON-RR'),1290,101,10,11000,40,20,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('02-MAR-15','DD-MON-RR'),1291,100,10,12000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1292,105,11,1000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1293,106,10,1000,46,70,3220,322,3542);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-MAR-15','DD-MON-RR'),1294,101,10,2000,48,50,2400,240,2640);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('06-MAR-15','DD-MON-RR'),1295,100,10,3000,50,30,1500,150,1650);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('07-MAR-15','DD-MON-RR'),1296,105,12,9000,52,80,4160,416,4576);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1297,106,12,10000,54,80,4320,432,4752);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-MAR-15','DD-MON-RR'),1298,101,10,11000,28,20,560,56,616);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1299,100,10,12000,30,30,900,90,990);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1300,100,11,1000,32,30,960,96,1056);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1301,105,10,1000,34,70,2380,238,2618);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-MAR-15','DD-MON-RR'),1302,106,10,1000,36,50,1800,180,1980);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('14-MAR-15','DD-MON-RR'),1303,101,10,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-MAR-15','DD-MON-RR'),1304,101,10,2000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-MAR-15','DD-MON-RR'),1305,100,12,3000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('17-MAR-15','DD-MON-RR'),1306,105,12,3000,44,20,880,88,968);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-MAR-15','DD-MON-RR'),1307,106,10,3000,46,30,1380,138,1518);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1308,105,10,1000,48,30,1440,144,1584);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1309,106,11,2000,50,70,3500,350,3850);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1310,101,12,3000,52,50,2600,260,2860);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('19-MAR-15','DD-MON-RR'),1311,101,12,9000,54,30,1620,162,1782);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-MAR-15','DD-MON-RR'),1312,100,10,10000,34,80,2720,272,2992);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-MAR-15','DD-MON-RR'),1313,105,10,1000,36,80,2880,288,3168);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('25-MAR-15','DD-MON-RR'),1314,106,11,1000,38,20,760,76,836);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('26-MAR-15','DD-MON-RR'),1315,101,10,1000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1316,100,10,1000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1317,105,10,2000,44,70,3080,308,3388);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1318,106,10,3000,38,50,1900,190,2090);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-MAR-15','DD-MON-RR'),1319,101,10,3000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('31-MAR-15','DD-MON-RR'),1320,100,11,3000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-APR-15','DD-MON-RR'),1321,100,10,1000,38,80,3040,304,3344);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('02-APR-15','DD-MON-RR'),1322,105,10,1000,40,20,800,80,880);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('03-APR-15','DD-MON-RR'),1323,106,10,1000,42,30,1260,126,1386);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1324,101,12,1000,46,30,1380,138,1518);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1325,101,12,2000,48,70,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1326,101,10,3000,50,50,2500,250,2750);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('04-APR-15','DD-MON-RR'),1327,101,10,3000,52,30,1560,156,1716);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('08-APR-15','DD-MON-RR'),1328,101,11,3000,54,80,4320,432,4752);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('09-APR-15','DD-MON-RR'),1329,101,10,3000,28,80,2240,224,2464);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1330,101,10,9000,30,20,600,60,660);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('11-APR-15','DD-MON-RR'),1331,101,10,10000,32,30,960,96,1056);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1332,101,12,1000,34,30,1020,102,1122);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1333,100,12,1000,36,70,2520,252,2772);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('10-APR-15','DD-MON-RR'),1334,100,10,1000,38,50,1900,190,2090);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('15-APR-15','DD-MON-RR'),1335,100,10,1000,40,30,1200,120,1320);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('16-APR-15','DD-MON-RR'),1336,100,11,2000,42,80,3360,336,3696);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('17-APR-15','DD-MON-RR'),1337,100,10,3000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1338,101,12,3000,42,20,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values
(to_date('18-APR-15','DD-MON-RR'),1339,101,12,3000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1340,101,10,12000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('18-APR-15','DD-MON-RR'),1341,101,10,12000,40,70,2800,280,3080);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('22-APR-15','DD-MON-RR'),1342,101,12,12000,42,50,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('23-APR-15','DD-MON-RR'),1343,101,12,12000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('24-APR-15','DD-MON-RR'),1344,101,10,12000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('25-APR-15','DD-MON-RR'),1345,100,10,12000,40,80,3200,320,3520);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('26-APR-15','DD-MON-RR'),1346,100,11,12000,42,20,840,84,924);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1347,100,12,1000,44,30,1320,132,1452);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1348,100,12,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('27-APR-15','DD-MON-RR'),1349,100,10,1000,40,70,2800,280,3080);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('30-APR-15','DD-MON-RR'),1350,100,10,1000,42,50,2100,210,2310);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('01-MAY-15','DD-MON-RR'),1351,100,11,1000,38,30,1140,114,1254);
Insert into SALES
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT) values
(to_date('12-JAN-15','DD-MON-RR'),1589,101,12,1000,20,20,400,40,440);
COMMIT;

--data insertion into sales_history table
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,100,10,1000,2,20,40,4,44);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('01-JAN-15','DD-MON-YY'),1267,101,10,1000,2,30,60,6,66);
Insert into SALES_HISTORY
(SALES_DATE,ORDER_ID,PRODUCT_ID,CUSTOMER_ID,SALESPERSON_ID,QUANTITY,UNIT_PRICE,
SALES_AMOUNT,TAX_AMOUNT,TOTAL_AMOUNT)
values (to_date('07-JAN-15','DD-MON-YY'),1268,100,11,2000,10,30,300,30,330);
COMMIT;

--data insertion into salesperson table
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(1000,'Supervisor','Peter','Mann','R','4567 ashfordroad',null,'Atlanta','USA',
to_date('12-JAN-14','DD-MON-RR'),'Tom');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(2000,'Supervisor','John','King','A','67 dunwoody road',null,'Las Vegas','USA',
to_date('14-JAN-14','DD-MON-RR'),'Tom');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(3000,'Supervisor','Bob','Moris','A','679 glendrigedr',null,'Orlando','USA',
to_date('14-FEB-14','DD-MON-RR'),'Raj');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(4000,'President','Jeff','Afonso','B','234 peachtreetree st',null,'California','USA',
to_date('14-FEB-14','DD-MON-RR'),null);
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(5000,'Manager','Raj','Kishore','J','456 walTers cir',null,'Miami','USA',
to_date('15-FEB-14','DD-MON-RR'),'Jeff');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(6000,'Entry Level','Sonu','Agarwal','I','458+ gandhi road',null,'New York','USA',
to_date('16-FEB-14','DD-MON-RR'),'Peter');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(7000,'Supervisor','Greg','Chappel','U','345 seneca ct',null,'Boston','USA',
to_date('17-FEB-14','DD-MON-RR'),'Raj');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(8000,'Entry Level','Rehman','Ahmed','E','908 peter drive',null,'Atlanta','USA',
to_date('18-FEB-14','DD-MON-RR'),'Bob');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(9000,'Entry Level','Patel','Hari',null,'47890 hammond dr',null,'Orlando','USA',
to_date('19-FEB-14','DD-MON-RR'),'Peter');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(10000,'Manager','Tom','Joseph','O','789 califooor st',null,'California','USA',
to_date('20-FEB-14','DD-MON-RR'),'Jeff');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(11000,'Entry Level','Anil','Krishna','P','2354 king st',null,'Miami','USA',
to_date('21-FEB-14','DD-MON-RR'),'Greg');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(12000,'Entry Level','James','Gavin','W','456 chris ave',null,'New York','USA',
to_date('22-FEB-14','DD-MON-RR'),'John');
Insert into SALESPERSON
(SALESPERSON_ID,JOB_TITLE,FIRST_NAME,LAST_NAME,MIDDLE_NAME,ADDRESS_LINE1,
ADDRESS_LINE2,CITY,COUNTRY,DATE_ADDED,MANAGER) values
(13000,'Entry Level','Sara','K','E','678 larawd st',null,'Mississippi','USA',
to_date('23-FEB-14','DD-MON-RR'),'Bob');
COMMIT; 

--For each product, display month-wise total sales amount and calculate the month-overmonth growth percentage. [Use OVER() and LAG(). Display: Product ID,Month,Monthly
--Sales,Previous Month Sales,Growth %]

SELECT
    product_id,
    TO_CHAR(months, 'MON-YYYY') AS month,
    monthly_sales,
    previous_month_sales,
    
    ROUND(
        (
            (monthly_sales - previous_month_sales)
            / previous_month_sales
        ) * 100,
        2
    ) AS growth_percentage

FROM
(
    SELECT
        product_id,
        TRUNC(sales_date, 'MM') AS months,
        
        SUM(total_amount) AS monthly_sales,

        LAG(SUM(total_amount))
        OVER
        (
            PARTITION BY product_id
            ORDER BY TRUNC(sales_date, 'MM')
        ) AS previous_month_sales

    FROM sales

    GROUP BY
        product_id,
        TRUNC(sales_date, 'MM')
)

ORDER BY
    product_id,
    months;
    
    
--Find the top 3 customers from each region based on total purchase amount. [Use
--RANK() or DENSE_RANK(). Use PARTITION BY REGION (Display: Region,Customer
--ID,Customer Name,Total Purchase,Rank)]

SELECT
    region,
    customer_id,
    customer_name,
    total_purchase,
    customer_rank
FROM
(
    SELECT
        c.region,
        c.customer_id,
        c.first_name || ' ' || c.last_name AS customer_name,

        SUM(s.total_amount) AS total_purchase,

        DENSE_RANK() OVER
        (
            PARTITION BY c.region
            ORDER BY SUM(s.total_amount) DESC
        ) AS customer_rank

    FROM customer c
    JOIN sales s
    ON c.customer_id = s.customer_id

    GROUP BY
        c.region,
        c.customer_id,
        c.first_name,
        c.last_name
)
WHERE customer_rank <= 3
ORDER BY
    region,
    customer_rank;
    
    
--For every salesperson, compare current day sales with previous day sales and next day
--sales.
--[Use LAG() and LEAD() [Show:Salesperson ID,Sales Date,Current Day Sales,Previous Day
--Sales,Next Day Sales]]


SELECT
    salesperson_id,
    sales_date,
    current_day_sales,

    LAG(current_day_sales)
    OVER
    (
        PARTITION BY salesperson_id
        ORDER BY sales_date
    ) AS previous_day_sales,

    LEAD(current_day_sales)
    OVER
    (
        PARTITION BY salesperson_id
        ORDER BY sales_date
    ) AS next_day_sales

FROM
(
    SELECT
        salesperson_id,
        sales_date,
        SUM(total_amount) AS current_day_sales

    FROM sales

    GROUP BY
        salesperson_id,
        sales_date
)

ORDER BY
    salesperson_id,
    sales_date;

--Divide products into 4 quartiles based on total revenue generated. [Use
--NTILE(4). Display: Product ID,Product Name,Total Revenue,Quartile Number]

SELECT
    product_id,
    product_name,
    total_revenue,

    NTILE(4)
    OVER
    (
        ORDER BY total_revenue DESC
    ) AS quartile_number

FROM
(
    SELECT
        p.product_id,
        p.product_name,

        SUM(s.total_amount) AS total_revenue

    FROM product p
    JOIN sales s
    ON p.product_id = s.product_id

    GROUP BY
        p.product_id,
        p.product_name
)

ORDER BY
    quartile_number,
    total_revenue DESC;
    
--Display the organizational hierarchy of salespersons. [Use CONNECT BY PRIOR.Start
--from top-level manager. Display hierarchy level using LEVEL. Display the full reporting
--path for every salesperson. Use SYS_CONNECT_BY_PATH]

SELECT
    LEVEL AS hierarchy_level,

    salesperson_id,

    first_name || ' ' || last_name AS salesperson_name,

    manager,

    SYS_CONNECT_BY_PATH
    (
        first_name || ' ' || last_name,
        ' -> '
    ) AS reporting_path

FROM salesperson

START WITH manager IS NULL

CONNECT BY PRIOR first_name = manager;

--Generate sales summary at: Region level,Country level,Grand total. [Use
--ROLLUP]

SELECT
    NVL(region, 'GRAND TOTAL') AS region,

    NVL(country, 'REGION TOTAL') AS country,

    SUM(total_amount) AS total_sales

FROM
(
    SELECT
        c.region,
        c.country,
        s.total_amount

    FROM customer c
    JOIN sales s
    ON c.customer_id = s.customer_id
)

GROUP BY ROLLUP(region, country)

ORDER BY
    region,
    country;
    
--Generate total sales amount for combinations of: Product Category, Region [Use CUBE]

SELECT
    NVL(product_category, 'ALL CATEGORIES') AS product_category,

    NVL(region, 'ALL REGIONS') AS region,

    SUM(total_amount) AS total_sales

FROM
(
    SELECT
        p.product_category,
        c.region,
        s.total_amount

    FROM sales s
    JOIN product p
    ON s.product_id = p.product_id

    JOIN customer c
    ON s.customer_id = c.customer_id
)

GROUP BY CUBE(product_category, region)

ORDER BY
    product_category,
    region;
    
--Write a PL/SQL block to classify customers based on total purchase amount.
--Rules
--Above 5,00,000 → Platinum
--Above 2,00,000 → Gold
--Above 50,000 → Silver
--Otherwise → Bronze
--[Use: Variables,IF-ELSIF,Cursor]

SET SERVEROUTPUT ON;

DECLARE

    v_customer_id      customer.customer_id%TYPE;
    v_customer_name    VARCHAR2(100);
    v_total_purchase   NUMBER(12,2);
    v_category         VARCHAR2(20);

    CURSOR cust_cursor IS
        SELECT
            c.customer_id,
            c.first_name || ' ' || c.last_name AS customer_name,
            SUM(s.total_amount) AS total_purchase

        FROM customer c
        JOIN sales s
        ON c.customer_id = s.customer_id

        GROUP BY
            c.customer_id,
            c.first_name,
            c.last_name;

BEGIN

    OPEN cust_cursor;

    LOOP

        FETCH cust_cursor INTO
            v_customer_id,
            v_customer_name,
            v_total_purchase;

        EXIT WHEN cust_cursor%NOTFOUND;

        IF v_total_purchase > 500000 THEN
            v_category := 'Platinum';

        ELSIF v_total_purchase > 200000 THEN
            v_category := 'Gold';

        ELSIF v_total_purchase > 50000 THEN
            v_category := 'Silver';

        ELSE
            v_category := 'Bronze';

        END IF;

        DBMS_OUTPUT.PUT_LINE
        (
            'Customer ID : ' || v_customer_id ||
            ' | Name : ' || v_customer_name ||
            ' | Total Purchase : ' || v_total_purchase ||
            ' | Category : ' || v_category
        );

    END LOOP;

    CLOSE cust_cursor;

END;
/

--Write a PL/SQL program using explicit cursor to display:
--Customer Name,Total Orders,Total Purchase Amount,
--for customers having purchase amount greater than average purchase amount.

SET SERVEROUTPUT ON;

DECLARE

    v_customer_name      VARCHAR2(100);
    v_total_orders       NUMBER;
    v_total_purchase     NUMBER(12,2);
    v_avg_purchase       NUMBER(12,2);

    CURSOR cust_cursor IS

        SELECT
            c.first_name || ' ' || c.last_name AS customer_name,

            COUNT(DISTINCT s.order_id) AS total_orders,

            SUM(s.total_amount) AS total_purchase

        FROM customer c
        JOIN sales s
        ON c.customer_id = s.customer_id

        GROUP BY
            c.first_name,
            c.last_name

        HAVING SUM(s.total_amount) >
        (
            SELECT AVG(total_purchase)
            FROM
            (
                SELECT SUM(total_amount) AS total_purchase
                FROM sales
                GROUP BY customer_id
            )
        );

BEGIN

    SELECT AVG(total_purchase)
    INTO v_avg_purchase
    FROM
    (
        SELECT SUM(total_amount) AS total_purchase
        FROM sales
        GROUP BY customer_id
    );

    DBMS_OUTPUT.PUT_LINE
    (
        'Average Purchase Amount : ' || ROUND(v_avg_purchase,2)
    );

    DBMS_OUTPUT.PUT_LINE
    (
        '-----------------------------------------------------'
    );

    OPEN cust_cursor;

    LOOP

        FETCH cust_cursor INTO
            v_customer_name,
            v_total_orders,
            v_total_purchase;

        EXIT WHEN cust_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE
        (
            'Customer Name : ' || v_customer_name ||
            ' | Total Orders : ' || v_total_orders ||
            ' | Total Purchase : ' || v_total_purchase
        );

    END LOOP;

    CLOSE cust_cursor;

END;
/

--Create a trigger such that whenever a row is deleted from SALES, the deleted record is
--inserted into SALES_HISTORY.

CREATE OR REPLACE TRIGGER trg_sales_delete

AFTER DELETE
ON sales

FOR EACH ROW

BEGIN

    INSERT INTO sales_history
    (
        sales_date,
        order_id,
        product_id,
        customer_id,
        salesperson_id,
        quantity,
        unit_price,
        sales_amount,
        tax_amount,
        total_amount
    )

    VALUES
    (
        :OLD.sales_date,
        :OLD.order_id,
        :OLD.product_id,
        :OLD.customer_id,
        :OLD.salesperson_id,
        :OLD.quantity,
        :OLD.unit_price,
        :OLD.sales_amount,
        :OLD.tax_amount,
        :OLD.total_amount
    );

END;
/

--Create a trigger to automatically calculate following before inserting into SALES.
--TAX_AMOUNT = SALES_AMOUNT * 0.18
--TOTAL_AMOUNT = SALES_AMOUNT + TAX_AMOUNT

CREATE OR REPLACE TRIGGER trg_sales_calc

BEFORE INSERT
ON sales

FOR EACH ROW

BEGIN

    -- Calculate TAX_AMOUNT as 18% of SALES_AMOUNT
    :NEW.tax_amount := :NEW.sales_amount * 0.18;

    -- Calculate TOTAL_AMOUNT = SALES_AMOUNT + TAX_AMOUNT
    :NEW.total_amount := :NEW.sales_amount + :NEW.tax_amount;

END;
/

--Create a trigger that prevents insertion or update of products where: LIST_PRICE <
--STANDARD_COST.

CREATE OR REPLACE TRIGGER trg_product_price_check

BEFORE INSERT OR UPDATE
ON product

FOR EACH ROW

BEGIN

    IF :NEW.list_price < :NEW.standard_cost THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'LIST_PRICE cannot be less than STANDARD_COST'
        );
    END IF;

END;
/

--Write a PL/SQL block which identify products whose sales increased continuously for at
--least 3 consecutive months.

SET SERVEROUTPUT ON;

DECLARE

    CURSOR prod_cursor IS

        WITH monthly_sales AS
        (
            SELECT
                product_id,

                TO_CHAR(sales_date, 'YYYY-MM') AS sales_month,

                SUM(total_amount) AS monthly_total

            FROM sales

            GROUP BY
                product_id,
                TO_CHAR(sales_date, 'YYYY-MM')
        ),

        sales_growth AS
        (
            SELECT
                product_id,
                sales_month,
                monthly_total,

                LAG(monthly_total,1) OVER
                (
                    PARTITION BY product_id
                    ORDER BY sales_month
                ) AS prev_1,

                LAG(monthly_total,2) OVER
                (
                    PARTITION BY product_id
                    ORDER BY sales_month
                ) AS prev_2

            FROM monthly_sales
        )

        SELECT
            product_id,
            sales_month,
            monthly_total,
            prev_1,
            prev_2

        FROM sales_growth

        WHERE
            monthly_total > prev_1
            AND prev_1 > prev_2;

    v_product_id      NUMBER;
    v_sales_month     VARCHAR2(20);
    v_monthly_total   NUMBER;
    v_prev_1          NUMBER;
    v_prev_2          NUMBER;

BEGIN

    OPEN prod_cursor;

    LOOP

        FETCH prod_cursor INTO
            v_product_id,
            v_sales_month,
            v_monthly_total,
            v_prev_1,
            v_prev_2;

        EXIT WHEN prod_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE
        (
            'Product ID : ' || v_product_id ||
            ' | Month : ' || v_sales_month ||
            ' | Previous 2nd Month Sales : ' || v_prev_2 ||
            ' | Previous Month Sales : ' || v_prev_1 ||
            ' | Current Month Sales : ' || v_monthly_total
        );

    END LOOP;

    CLOSE prod_cursor;

END;
/

-- Write a PL/SQL block to calculate bonus for each salesperson.
--Rules
--Total Sales > 10,00,000 → Bonus = 20,000
--Total Sales > 5,00,000 → Bonus = 10,000
--Otherwise → Bonus = 5,000
--Display:
--Salesperson ID
--Name
--Total Sales
--Bonus

SET SERVEROUTPUT ON;

DECLARE

    v_salesperson_id    salesperson.salesperson_id%TYPE;
    v_name              VARCHAR2(100);
    v_total_sales       NUMBER(12,2);
    v_bonus             NUMBER(12,2);

    CURSOR sales_cursor IS

        SELECT
            sp.salesperson_id,

            sp.first_name || ' ' || sp.last_name AS salesperson_name,

            SUM(s.total_amount) AS total_sales

        FROM salesperson sp
        JOIN sales s
        ON sp.salesperson_id = s.salesperson_id

        GROUP BY
            sp.salesperson_id,
            sp.first_name,
            sp.last_name;

BEGIN

    OPEN sales_cursor;

    LOOP

        FETCH sales_cursor INTO
            v_salesperson_id,
            v_name,
            v_total_sales;

        EXIT WHEN sales_cursor%NOTFOUND;

        IF v_total_sales > 1000000 THEN

            v_bonus := 20000;

        ELSIF v_total_sales > 500000 THEN

            v_bonus := 10000;

        ELSE

            v_bonus := 5000;

        END IF;

        DBMS_OUTPUT.PUT_LINE
        (
            'Salesperson ID : ' || v_salesperson_id ||
            ' | Name : ' || v_name ||
            ' | Total Sales : ' || v_total_sales ||
            ' | Bonus : ' || v_bonus
        );

    END LOOP;

    CLOSE sales_cursor;

END;
/

--Create a trigger that stores old and new LIST_PRICE whenever product price is updated.

CREATE TABLE product_price_history
(
    product_id       NUMBER,
    product_name     VARCHAR2(100),
    old_list_price   NUMBER(10,2),
    new_list_price   NUMBER(10,2),
    updated_date     DATE
);

--Creating trigger

CREATE OR REPLACE TRIGGER trg_product_price_audit

AFTER UPDATE OF list_price
ON product

FOR EACH ROW

BEGIN

    INSERT INTO product_price_history
    (
        product_id,
        product_name,
        old_list_price,
        new_list_price,
        updated_date
    )

    VALUES
    (
        :OLD.product_id,
        :OLD.product_name,
        :OLD.list_price,
        :NEW.list_price,
        SYSDATE
    );

END;
/