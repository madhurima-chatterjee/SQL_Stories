-- Creating Database
create database school_1;
use school_1;
drop database school_1;
use master;
drop database school_1;

   -- Show all the database names
select name 
from sys.databases;
select name from sys.databases;
select name from sys.tables;

create database madhurima;
select name from sys.databases;
DRop database madhurima;    -- Delete database,table 
select name from sys.databases;
use school_1;              -- Using the particular database
create database sevenmentor;
select name from sys.databases;
use sevenmentor;
drop database sevenmentor;
use madhurima;
use school_1;
create database employee;
select name from sys.databases;
use employee;
select name from sys.databases;
create database aarete_Exponential;
use aarete_Exponential;
use master;
drop database aarete_exponential;

-- Rename Database 
create database Glass;
alter database Glass
modify name= Class;

-- Schema
create schema IT;

create table IT.HR(id int, name varchar(10));
select * from IT.HR;
drop table IT.HR;

create table IT.Finance(id int, name varchar(10));

create schema Highersecondarystudent;
create table  Highersecondarystudent.student(id int, name varchar(10));

drop schema Highersecondarystudent;
select * from Highersecondarystudent.student; -- Full Confined Name

-- Creating Table 
create table employee_details(Emp_id int,Emp_name varchar(50), Emp_Salary float);

select name from sys.tables;   -- It shows all the tables 
EXEC sp_help 'employee_details';     --  Table syntax 
select * from employee_details;  -- To fetch data from table

-- Insert records in table
insert into employee_details(Emp_id,emp_name,emp_salary) 
values(101,'Madhurima C',336000);

use school_1;

select DATALENGTH(emp_name) from employee_details;
select * from employee_details;
select name from sys.tables;
-- Insert multiple records in table
insert into employee_details(Emp_id,emp_name,emp_salary)
values(106,'Pandurang Wadekar',500000),
(110,'Prashant Shinde',450000),
(112,'Suraj Date',535000);

select * from employee_details;

-- Insert record in specific columns
insert into employee_details(emp_id,emp_salary)
values(102,250000);

select * from employee_details;

-- Insert record without specifying column
insert into employee_details values(120,'Ankul Tekade',620000);
select * from employee_details;

-- Using Single Quote problem 
insert into employee_details values(121,'k''Venkatesh',530000);
insert into employee_details values(125,'Venkatesh''s',530000);

select * from Employee_details;

--Column Selection 
select emp_id,emp_salary from employee_details;
select emp_name,emp_salary from employee_details;

-- Alias 
select emp_id as Employee_ID,emp_salary from employee_details;
select emp_id as 'Employee ID',emp_salary from employee_details;
select emp_id 'Employee_id',emp_salary from employee_details;
select * from employee_details EMP;

-- Distinct
select distinct Emp_id from employee_details;
select count(distinct Emp_id) from employee_details;
select distinct Emp_id,emp_name from employee_details;

-- String Operators

create database string_DB;
use string_DB;
create table Char_tab(id int,name char(10),salary float, date_doj date);
insert into Char_tab values(1,'Mukesh',10000,'2024-06-11');
select name,len(name)as Char_length,DATALENGTH(name) as Data_length from Char_tab;

create table Char_tab2(id int,name Varchar(10),salary float, date_doj date);
insert into Char_tab2 values(1,'Mukesh',10000,'2024-06-11');
select name,len(name)as Char_length,DATALENGTH(name) as Data_length from Char_tab2;

create table Char_tab3(id int,name nchar(10),salary float, date_doj date);
insert into Char_tab3 values(1,'Mukesh',10000,'2024-06-11');
select name,len(name)as Char_length,DATALENGTH(name) as Data_length from Char_tab3;

create table Char_tab4(id int,name nvarchar(10),salary float, date_doj date);
insert into Char_tab4 values(1,'Madhu',10000,'2024-06-11');
select name,len(name)as Char_length,DATALENGTH(name) as Data_length from Char_tab4;

-- Arithmetic operator
-- + / * -

select emp_id,emp_name,emp_salary+1 as EMPLOYEE_updated_Salary from employee_details;
select * from employee_details;
select emp_name,emp_salary,emp_id -2 as New_ID from employee_details;
select emp_name,emp_salary,emp_id/2 as New_ID from employee_details;
select emp_name,emp_salary,emp_id*5 as New_ID from employee_details;

select name from sys.databases;

use world;
select name from sys.tables;
select * from city;
select * from country;
select * from countrylanguage;

-- Fetch Africa continent from table country
select * from country where continent='Africa';
select * from country where continent!='Africa';  -- Not equal to

-- Q.fetch name,population,region from country table 
-- for Western europe
select name,population,region from country 
where region='Western Europe';

-- Q. fetch name,population,continent records from country table 
-- where population >1 crore
select name,continent,population from country
where population>'10000000';

-- india with population
select name,population from country 
where name='India';

-- all records where lifeexpectancy>=80 
select * from country 
where lifeexpectancy>='80';

 -- Q Display countries which got independance after 1945
 select name from country 
 where Indepyear>1945;
 
 -- Q display all records 
-- where continent is asia and lifeexpectancy>=70
use world;
select * from country
where continent='Asia' and lifeexpectancy>=70;

-- fetch records from asia continent  where population>1cr
select * from country 
where continent='asia' and population>10000000;

-- fetch records from asia continent where 
-- lifeexpectancy is between 60 to 70;
select * from country
where continent='asia' and lifeexpectancy>60 and lifeexpectancy<=70;

-- fetch records of countries whose poulation is between 
-- 1 cr to 5 cr
select * from country
where population>=10000000 and population<=50000000;

-- display records of countries of india ,brazil,bangladesh
select * from country
where name='India' or name='brazil' or name='bangladesh';

-- display record of country which is not having india 
select * from country
where name!='India';

select * from country
where not name='India';

-- show continent='asia' and LifeExpectancy>70 or population>1000000
select * from country
where continent='Asia' and (lifeexpectancy>70 or population>1000000);   -- Using both and ,or function

-- display all the records for india, south africa, bagladesh.
select * from country
where name= 'India' or name='South africa' or name='Bangladesh';

select * from country
where name IN('india','South Africa','Bangladesh'); -- IN can be used instead of multiple OR

-- display all the records except india, south africa, bagladesh.
select * from country
where name not in('India','South Africa','Bangladesh');

-- fetch records of countries whose poulation is between 
-- 1 cr to 5 cr
select * from country
where population >=10000000 and population<=50000000;

select * from country
where population between 10000000 and 50000000; -- Between can be used for multiple and 

-- Text 
select * from country
where name between 'A' and 'C';  

select * from country where name='Canada';

-- DATE

create database date_db;
use date_db;
create table date_Tb(id int,date_dob date);
insert into date_Tb values(1,'2020-10-02'),(2,'2010-03-05'),(5,'2001-06-16'),(6,'2006-11-20');
select * from date_Tb
where date_dob='2020-10-02';

select * from date_Tb
where date_dob='2020-10-02' or date_dob='2001-06-16';

select * from date_Tb
where date_dob in ('2020-10-02','2001-06-16');

select * from date_Tb
where date_dob between '2005-01-01' and'2015-12-31';

select * from date_tb
where date_dob<'2020-01-01';

use world;
-- display all countries from asia and africa 
-- and population between >1 cr and 7cr
select * from country
where region IN('Asia','Africa') and (population between 10000000 and 70000000);

-- display records of countries from middle east and lifeexpectancy
-- in between 50 to 70
select * from country
where region='Middle East' and (lifeexpectancy between 50 and 70);

select * from country
where population not between 10000000 and 50000000;

 -- IS NULL ..to check null values
-- IS NOT NULL..to check actual true values

select name,lifeexpectancy from country
where lifeexpectancy is null;

SELECT name,lifeexpectancy FROM country 
WHERE lifeexpectancy IS NOT NULL;

-- LIKE 
-- NOT LIKE
-- use to find pattern from string/text


-- Q. display countries which are starting 'T'
select * from country 
where name like 'T%';

-- Q. display countries which are ends  'I';
select * from country
where name like '%I';

-- Q.display name,continent,population of countries
-- which are starting with I and ending with A ;
select name,continent,population from country
where name like 'I%A';

 -- Q.display records of continent where first character is A 
 -- and third 
-- character is R
select * from country
where name like 'A_R%';

-- display records of countries which contain 'stan'
select * from country
where name like '%stan%';

-- LIMIT
-- used to select n number of top rows 
-- select * from country limit 4;
SELECT TOP 4 *
FROM country;


-- ORDER BY 
-- used to sort data in ascending or descending order 

select * from country 
order by population desc;

select top 5* from country
where lifeexpectancy is not null
order by lifeexpectancy;

--select * from country
--where lifeexpectancy is not null
--order by lifeexpectancy
--limit 5;

-- top 2 most populated countries 
select top 2* from country
order by population desc;

-- top 2 least populated countries 
select top 2* from country
where population>0
order by population asc;  -- order by population -- By default asc

-- order by using number
select name,region,population from country
order by 3;

-- DISPLAY TOP 10 RICH NATIONS
select top 10 name, gnp from country
order by gnp desc;

-- DISPLAY TOP 10 RICH NATIONS of asia continent
select top 10 name,gnp from country
where continent='Asia'
order by gnp desc;

-- DISPLAY 3 POOREST NATIONS IN EUROPE
select top 3 name,gnp from country
where continent='Europe' and gnp>0
order by gnp ;

-- DISPLAY 3 COUNTRIES WITH LOWEST LIFEEXPECTANCY
select top 3 name from country
where lifeexpectancy>0
order by lifeexpectancy;

-- Display max(gnp) of 3rd most country
-- Using Offset-Fetch
use world;
select name,max(gnp)as Rich 
from country
group by name
order by Rich desc
offset 2 rows
fetch next 1 rows only;


use world;
select name from sys.tables;
select * from country;

select name,population from country
where name='India';


-- Constraints
-- Constraints in SQL are rules or conditions applied to a table or a 
-- column that enforce data integrity and ensure the consistency 


-- 1. Not Null

create database constraints_db;
use constraints_db;

create table emp1(Emp_id int not null,Emp_name varchar(30),Mob_no bigint);
insert into emp1 values(10,'Madhu',8308890011);
insert into emp1 (emp_name,mob_no) values ('Ankul',9373174669);   -- It will show error because emp_id not specified
insert into emp1 values(NULL,'Pandurang',9373174669);  -- It will show error that emp_id cannot be null

-- 2. Default
use employee;
create table emp2(Emp_id int,emp_name varchar(30),current_status varchar(20) default 'Active',award int default 0);
exec sp_help 'emp2';
insert into emp2(emp_id,emp_name,award) values (121,'Madhu',15);
select * from emp2;
insert into emp2 values (150,'Ankul Tekade',Null,10);
insert into emp2 values (150,'Ankul Tekade',Null,null);
select * from emp2;

-- 3.CHECK 
-- A check constraint is used to define a condition that 
-- the values in a column must satisfy.

create table emp3(emp_id int,emp_name varchar(20), Age int check(age>18));
insert into emp3 values(32,'Madhu',15);   -- It will show error that constraint is violated
insert into emp3 values(54,'Ankul',19);
select * from emp3;

-- 4.UNIQUE KEY/UNIQUE
-- used to set column with unique values

create table emp4(emp_id int unique ,emp_name varchar(30),mob_no bigint unique);
insert into emp4 values(101,'Suraj',8308890011);
insert into emp4 values(101,'Ankul',9373116712);  -- It will give error as duplicate entry '101'

insert into emp4(emp_name,mob_no) values ('Ankul',738);
select * from emp4;

-- 5. PRIMARY KEY [unique+not null]
-- UNIQUE values and not null
-- PRIMARY KEY Constraint:

create table emp5(emp_id int primary key,emp_name varchar(30),mob_no bigint);
insert into emp5 values(101,'Madhu',8308890011);
insert into emp5 values(null,'Madhu',8308890011);   -- It will give error as , Primary key can not be null 

create table emp6(emp_id int,emp_name varchar(30),mob_no bigint,primary key(emp_id),unique(mob_no));  -- It can be written in this format also
insert into emp6 values(151,'Ankul Tekade',8308890011);
insert into emp6 values(151,'Ankul Tekade',9373116712);
insert into emp6 values(152,'Ankul Tekade',7020247546);
insert into emp6 values(153,'Ankul Tekade',null);       
select * from emp6;

select 'My salary is '+cast(5000 as varchar(30)) ;
select concat('My salary is ',5000) ;
select conc

-- 6. AUTO INCREMENT
-- used to generate unique number in a sequence
create table emp7(emp_id int Identity(1,1),emp_name varchar(30),salary float,primary key(emp_id));  -- Identity=Auto increment
Set Identity_Insert emp7 ON;
insert into emp7(emp_id ,emp_name ,salary) values(101,'Madhu',500000);
insert into emp7 (emp_id ,emp_name ,salary)values(null,'Madhu',700000); -- it will give 102 as emp_id as auto increament is there
Set Identity_Insert emp7 OFF;
INSERT INTO emp7 (emp_name, salary)
VALUES ('Mukesh', 700000);

select * from emp7;
insert into emp7 (emp_name,salary) values('Ankul Tekade',450000),('Pandurang',630000);
select * from emp7;

-- 7. COMPOSITY KEY
-- In MySQL, a composite key is a key that consists of two or more 
-- columns in a table.

create table emp8(emp_id int,department_id varchar(30),name varchar(30),position varchar(30),primary key(emp_id,department_id)); -- any one entity must follow primary key
insert into emp8 values
	(1, 100, 'John Doe', 'Software Engineer'),
    (2, 100, 'Jane Smith', 'Project Manager'),
    (3, 200, 'Bob Johnson', 'QA Engineer'),
    (1, 200, 'Alice Brown', 'Systems Analyst');
    
SELECT * FROM emp8;
    
INSERT INTO emp8 (emp_id, department_id, name, position)
VALUES(3, 100, 'Charlie Wilson', 'Database Administrator'); -- It will give error as duplicate entry of both the primary key

SELECT * FROM emp8 WHERE 
emp_id = 1 AND department_id = 100;

set identity_insert employee_tb off;
create table employee_tb(Sr_no int identity(1,1),Emp_id int unique not null,Dept_id int unique not null,Emp_name varchar(30) default 'Active',Gender varchar(10) not null,Age int check (Age>18),salary float not null,mob_no bigint unique not null,Awards_recieved int default 0,primary key(emp_id,Dept_id),check(len(mob_no)=10),check(gender in('Male','Female')));
insert into employee_tb (Emp_id,Dept_id,Emp_name,Gender,Age ,salary ,mob_no ,Awards_recieved)values(101,5,'Madhu','Male',23,20000,1234567809,2);
select * from employee_tb;

set identity_insert employee_tb2 on;
create table employee_tb2(Sr_no int identity(1,1),Emp_id int unique not null,Dept_id int unique not null,Emp_name varchar(30) default 'Active',Gender varchar(10) not null,Age int check (Age>18),salary float not null,mob_no bigint unique not null,Awards_recieved int default 0,primary key(emp_id,Dept_id),check(len(mob_no)=10),check(gender in('Male','Female')));
insert into employee_tb2 (Sr_no,Emp_id,Dept_id,Emp_name,Gender,Age ,salary ,mob_no ,Awards_recieved)values(1001,101,5,'Madhu','Female',23,20000,1234567809,2);
set identity_insert employee_tb2 off;
select * from employee_tb2;

-- 8) FOREIGN KEY

create database data_type_db;
use data_type_db;

CREATE TABLE sample1(
id INT PRIMARY KEY,
name VARCHAR(40),
age INT,
height FLOAT,
is_active BIT,
birth_date DATE,
registration_time DATETIME,
profile_image VARBINARY(MAX),
email VARCHAR(100),
salary DECIMAL(10,2),
description TEXT
);
exec sp_help sample1;
select cast(Getdate() as Date);

use data_type_db;

INSERT INTO sample1 VALUES(11,'avi',23,5.6,1,'2022-05-01',
'2024-01-29 04:22:03',NULL,'surajkale99@gmail.com',34599.45,
'software testing 4-5 years experience');

SELECT * FROM sample1;

-- SET ENUM

CREATE TABLE sample2
(
emp_id INT PRIMARY KEY,
gender varchar(10) check(gender in('Male','Female')),
hobbies varchar(30)
);
drop table sample2;
-- id: An integer column representing the primary key.
-- gender: An ENUM column to store gender information. 
-- It allows only one value from the provided 
-- list ('Male', 'Female', or 'Other').
-- hobbies: A SET column to store multiple hobbies. 
-- It allows zero or more values from the provided list 
-- ('Reading', 'Traveling', 'Sports', 'Music').

INSERT INTO sample2 VALUES(11,'Male','reading');
SELECT * FROM sample2;

INSERT INTO sample2 VALUES(12,'Male','reading,cricket');
SELECT * FROM sample2;

-- function
-- which perform specific task

-- Types of function
-- 1) built in function
-- 2) user defined function

 --coulmn opeartion

 --1) built in function
 --aggregate function

-- aggregate function
-- Functions to perform calculations on numeric data.
-- returns a single value

-- SUM(), AVG(), MIN(), MAX(), COUNT()

use world;
select name from sys.tables;
exec sp_help Country;
select * from country;

-- 1) SUM(column)

-- world's total population
alter table country
alter column [Population] Float;

select sum(population) from country;
select * from country;

-- select sum(cast((population)as bigint)) from country;


-- display worlds total surface area
select sum(population),sum(surfacearea) from country;

-- display world population density
select sum(population)/sum(surfacearea) as Total_population from country;

-- Total population of ASIA continent
select sum(population) as Total_population_Asia from country 
where continent='Asia';

-- 2) avg(column)

-- DISPLAY AVERAGE LIFEEXPECTANCY of world
select avg(lifeexpectancy) from country;

-- 3) min(coumnName)

-- dispaly minimum LifeExpectancy
select min(lifeexpectancy) from country;

-- display least populated country
select top 1 name,population from country
where population>0
order by population;

select min(population)from country where population>0;
select name from country where population=50;

select name from country
where population=(select min(population) from country where population>0);  -- Subquery 

-- 4) MAX(columnname)

-- display maximum population
select max(population) as max_population from country;

-- most populated country
select name from country 
where population =1277558000;

-- name who has got independance lastly
select max(indepyear) from country;
select name from country 
where indepyear=1994;

select name from country 
where indepyear=(select max(indepyear) from country); -- Subquery

select top 1 name from country
order by indepyear desc;

-- display maximum LifeExpectancy
select max(lifeexpectancy) from country;
select name from country 
where lifeexpectancy= 83.5;

-- 5) count()

-- text column as well numerical column
-- returns total numbers of values in  a column

-- DISPLAY TOTAL NUMBER OF COUNTRIES IN WORLD
select count(name) from country;
select count(*) from country;

-- DISPLAY TOTAL NUMBER OF continent

select count(distinct continent) from country;
select distinct continent from country;

-- count of total countries of asia continent
select count(name) from country where continent='Asia';
select count(*) from country where continent='Asia';

-- DISPLAY TOTAL NO OF OFFICIAL LANGUAGES
select count(*) from countrylanguage;

select count(Distinct language) from countrylanguage
where isOfficial='T';

--  2) Mathematical function

-- power(),pow()  -- number to the power
select power(4,2);
select id,power(id,2) from city;

-- SQRT
select sqrt(16);
select id,sqrt(id) as Newcol from city;

-- EXP()
-- e >> 2.71
SELECT exp(1);

--  LOGARTHMATIC FUNCTION
-- log(),log2(),log10()
select log(10);
select id,log(id) as newcolumn from city;
SELECT LOG(2) / LOG(2) AS log2_result;


-- DECIMAL function >>ceil,floor,round
-- ceiling...round to next integer 
-- floor..round to previous integer 

select name,lifeexpectancy,ceiling(lifeexpectancy) from country;
select name,lifeexpectancy,floor(lifeexpectancy) from country;
select name,lifeexpectancy,lifeexpectancy/2,round(lifeexpectancy/2,0) from country;

-- ABS()..  -- Convert to numeric

SELECT abs(-3);

-- PI FUNCTION
SELECT pi();

-- TRIGNOMETRIC FUNCTION

SELECT sin(0);
SELECT cos(0);

SELECT cos(id) FROM city;

select radians(30);
select degrees(0.52);

SELECT TAN(0.5);
select cot(2);

-- STRING
-- upper(),lower(),ucase(),lcase()

select name,upper(name) from city;
select name,lower(name) from country;

-- slicing..mid ,right,left

SELECT name,SUBSTRING(name, 1, 3) AS Name_Prefix FROM country;
select name,substring(name,2,5) from country;
SELECT name,right(name,2) FROM country;
SELECT name,left(name,3) FROM country;


-- REPLACE ..case sensitive
select name,replace(name,'a','t') from country;

-- length on text/numeri
use world;
select name,len(name),population,len(population) from country;

-- ASCII()

SELECT ascii('A');
SELECT ascii('a');
SELECT ascii('1');
SELECT ASCII(' ');

--Declare 
declare @id bigint=1223344556;
select @id as ID;

declare @name varchar(10)='Mukesh';
select @name;

SELECT compatibility_level 
FROM sys.databases 
WHERE name = 'World';

use world;

exec sp_help city;
exec sp_who;
exec sp_adduser city;
EXEC sp_rename 'OldTableName', 'NewTableName';


-- CONCAT..
-- concat_ws() 
-- COMBINE MULTIPLE VALUES

select name,lifeexpectancy,concat(name,'',lifeexpectancy) from country;
select name,lifeexpectancy,concat(name,' ',lifeexpectancy) from country;
select name,lifeexpectancy,concat_ws('-',name,lifeexpectancy) from country;

-- reverse()
select name,reverse(name) from country
where continent='Asia';

--iif
select iif(5<10,'Yes','No');

-- isnull
select ISNULL(Salary,1000) from testcast;

--isnumeric
select ISNUMERIC(5);
select * from testcast
where ISNUMERIC(age)=0; -- used to find non numeric values 

--Nullif
select nullif('zcb','zcb');

use World;
select * from country
where name like 'I%';
-- DATE and time function
-- DATE-- 'YYYY-MM-DD'
-- TIME 'HH:MM:SS'
-- DATE TIME/TIMESTAMP    'YYYY-MM-DD  HH:MM:SS'

--select now();
--select current_timestamp();
SELECT GETDATE();       -- Returns current date and time (equivalent to NOW() or CURRENT_TIMESTAMP in MySQL)

--select curdate();
--select current_date();
SELECT CAST(GETDATE() AS DATE);   -- Returns current date (equivalent to CURDATE() or CURRENT_DATE)
SELECT CAST(GETDATE() AS TIME); 

--select curdate(),curtime();
--select current_user();
SELECT GETDATE();  -- Returns current date and time (equivalent to CURDATE() and CURTIME())

-- YEAR()....RETURNS YEAR FROM DATE.
-- month()
-- day()

select year('2024-12-02');
select month('2021-08-23');
select day('2022-11-12');

-- SELECT monthname('2020-03-01');
select Format(cast('2023-02-08' as date),'MMMM');
-- SELECT dayname('2020-03-01');
SELECT Format(cast('2020-03-01' as date),'dddd');

--SELECT extract(year from '2020-03-01');
select year(cast('2020-03-01' as date));

select GETDATE();
select cast(getdate() as date);
select format(cast(getdate() as date),'MMMM');
select Month(getdate());

-- DATE_ADD(DATE,INTERVAL CONSTANT FORMAT)
select DATEADD(Day,10,cast('2024-01-01'as date)) 
--SELECT date_add('2023-02-05',INTERVAL 5 day);
SELECT DATEADD(DAY, 5, CAST('2023-02-05' AS DATE)) AS NewDate;
select dateadd(Month, 5,CAST('2023-02-05' AS DATE));
select dateadd(YEAR, 5,CAST('2023-02-05' AS DATE));

SELECT DATEADD(DAY, -5, CAST('2023-02-05' AS DATE)) AS NewDate;

--SELECT datediff('2023-02-05','2023-02-12');

SELECT DATEDIFF(DAY,CAST('2023-02-05' AS DATE),CAST('2023-01-05' AS DATE)) AS DATEDIFFERENCE;

create database fun_db;
use fun_db;
create table stu1(stu_id int primary key,reg_date date);
insert into stu1 values(121,'2024-06-10');

insert into stu1 values(101,Getdate());
select * from stu1;

create table stu2(stu_id int primary key, reg_date datetime default Getdate());
insert into stu2(stu_id) values (150);
insert into stu2 values(152,'2013-12-28');
insert into stu2 values(158,'2014-07-23 22:14:25');
select * from stu2; 

-- GROUP BY ,HAVING clause
-- GROUP BY(pivot table)... is used to summerize data
-- It allows you to perform aggregate functions like COUNT(), SUM(), AVG(), MAX(), or MIN() on groups of rows rather than on the entire result set.

-- HAVING... used to filter group by result
-- The HAVING clause in SQL is used to filter the results of a GROUP BY clause based on specified conditions.
-- The HAVING clause filters groups after the GROUP BY operation.

-- difference between where and having clause
-- The WHERE clause is used to filter rows before any grouping or aggregation takes place. It operates on individual rows in the result set.
-- The HAVING clause, on the other hand, is used to filter groups of rows that result from a GROUP BY clause. It operates on aggregated data.

-- idle query

-- SELECT col1,col2
-- FROM table_name
-- WHERE condition
-- GROUP BY colname
-- HAVING condition
-- ORDER BY colname DESC/ASC
-- LIMIT n;

use world;

-- Display continent vice total population

SELECT Continent, SUM(Population) AS Total_Population
FROM country
GROUP BY Continent;


select continent,count(*) as 'Total' from country  -- here * represent name 
group by continent;

-- Display continent and the count of countries in it,which is greater than 30 in descending order.
select continent,count(name) as Total_countries from country
group by continent
having count(name) >30
order by Total_countries desc;
use world;
-- top 3 continent by suraface area
select top 3 continent,sum(surfacearea) as total_surfacearea from country
group by continent
order by total_surfacearea desc;
	
-- continet wise avg lifeexpectancy
select continent,avg(lifeexpectancy)
from country
group by continent
order by avg(lifeexpectancy) desc;

-- continet having highest avg lifeexpectancy
select top 1 continent,avg(lifeexpectancy) 
from country 
group by continent
order by avg(lifeexpectancy) desc;


-- Give top 5 least populated countries
select top 5 name,population 
from country
where population>0
order by population ;


-- DISPLAY CONINENT WISE PERCENTAGE POPULATION which is greater than 10
select continent,sum(population) as Total_population
from country
group by continent
having sum(population)>10
order by Total_population desc;


-- group by two columns
select region,continent,sum(population)
from country
group by region,continent;

-- max population countries continetwise
select continent,max(population)
from country
group by continent
order by max(population) desc;

-- per% of langauge of english
select language,sum(percentage)
from countrylanguage
group by language
having language='English';

-- display continet and sum of population greater than 1cr ,where lifeexpectancy is greater than 60 , and first 2 in ascending order
select top 2 continent,sum(population) as sum_population
from country
where lifeexpectancy>60
group by continent
having sum(population)>10000000
order by sum_population;

-- group by,order by >>> number
select top 2 continent,sum(population) as sum_population
from country 
where lifeexpectancy>60
group by continent
having sum(population) >10000000
order by sum_population desc;


-- types of command
-- DDL,DML,TCL,DQL,DCL


--           DQL - Data Query Language:
-- Meaning: DQL involves SQL commands that are used to query and 
-- retrieve data from databases. These commands allow you to 
-- specify conditions, filter data, sort results, and 
-- perform calculations on the data being retrieved.
-- Examples: SELECT

-- Description:
-- SELECT: A DQL command used to retrieve data from one or more tables 
-- based on specified conditions. It allows you to retrieve specific 
-- columns, apply filters, sort data, and perform various calculations 
-- on the data being retrieved.


--             DML - Data Manipulation Language:
-- Meaning: DML refers to a set of SQL commands that are used 
-- to manipulate the data stored in a database. 
-- These commands allow you to insert, update, and delete records 
-- in tables, as well as retrieve data from tables.
-- Examples: INSERT, UPDATE, DELETE

-- Description:
--            Data Manipulation Language (DML) Commands:
-- INSERT: A DML command used to add new records or rows of data 
-- into a table. It allows you to specify the values to be inserted 
-- into specific columns.
-- UPDATE: A DML command used to modify existing records in a table. 
-- It allows you to change the values of specific columns based on
-- certain conditions.
-- DELETE: A DML command used to remove records or rows from a table
--  based on specified conditions.


--              DDL - Data Definition Language:
-- Meaning: DDL encompasses SQL commands that 
-- are used to define, 
-- manage, and manipulate the structure of database objects. 
-- These commands help in creating, altering, and deleting database 
-- objects such as tables, indexes, and views.
-- Examples: CREATE, ALTER, DROP, TRUNCATE

-- Discription
-- CREATE: A DDL command used to create new database objects such 
-- as tables, indexes, views, or schemas. It defines the structure 
-- and properties of the object to be created.
-- ALTER: A DDL command used to modify existing database objects. 
-- It can be used to add, modify, or delete columns from a table, 
-- among other changes.
-- DROP: A DDL command used to delete or remove database objects 
-- like tables, indexes, or views from the database.
-- TRUNCATE: A DDL command used to quickly remove all rows from a 
-- table while maintaining the table's structure.

--             TCL - Transaction Control Language:
-- Meaning: TCL includes SQL commands that manage transactions, 
-- which are sequences of one or more SQL statements that are 
-- treated as a single unit of work. TCL commands control the 
-- initiation, termination, and integrity of transactions.
-- Examples: COMMIT, ROLLBACK, SAVEPOINT

-- Description
-- COMMIT: A command used to save all the changes made within 
-- the current transaction to the database, making them permanent.
-- ROLLBACK: A command used to undo changes made within the 
-- current transaction and revert the database to the state 
-- it was in before the transaction started.
-- SAVEPOINT: A command used to set a specific point within 
-- a transaction to which you can later roll back if needed.


--            DCL - Data Control Language:
-- Meaning: DCL consists of SQL commands that 
-- are used to control 
-- access to data within a database. 
-- These commands manage privileges and permissions granted to 
-- users and roles for performing various operations on database objects.
-- Examples: GRANT, REVOKE

-- Description:
-- GRANT: A DCL command used to provide specific privileges and 
-- permissions to users or roles. It allows you to define what 
-- actions users are allowed to perform on certain database objects.
-- REVOKE: A DCL command used to remove or revoke previously 
-- granted privileges from users or roles.

create database dml_db;
use dml_db;

create table student(
roll_num int primary key,
stu_name varchar(30) not null,
dept varchar(40),
marks float);

INSERT INTO student (roll_num, stu_name, dept, marks)
VALUES
    (1001, 'Amit Sharma', 'CS', 85),
    (1002, 'Priya Patel', 'EC', 92),
    (1003, 'Rahul Verma', 'ME', 39),
    (1004, 'Sneha Gupta', 'CE', 67),
    (1005, 'Neha Singh', 'CS', 91),
    (1006, 'Rajiv Kumar', 'ME', 73),
    (1007, 'Pooja Choudhary', 'EC', 44),
    (1008, 'Aarti Mehta', 'CS', 95),
    (1009, 'Vikram Yadav', 'CE', 82),
    (1010, 'Deepika Reddy', 'ME', 54);
    
select * from student;

-- update
-- update and delete>>>compulsory use primary key

-- 1) Update record
-- Syntax
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- update marks of rahul verma to 95
update student 
set marks='95' 
where roll_num=1003;

select * from student;

update student 
set marks='99',dept='ME' 
where roll_num=1004;

select * from student;

-- update all values
-- set sql_safe_updates =0; -- Safe mode is off,so all the values of a particular column can be changed at once after this

update student 
set dept='ME';

select * from student;

-- set sql_safe_updates=1; -- Safe mode is on,now all the values of a particular column can not be change at once after this
select * from student;

update student 
set marks='99'; -- It will not run ,as the safe mode is on

update student 
set marks='20' 
where roll_num=1002;

-- UPDATE WITH CASE WHEN
-- SYNTAX
-- UPDATE table_name
-- SET column_name = CASE
--     WHEN condition1 THEN value1
--     WHEN condition2 THEN value2
--     ...
--     ELSE default_value
-- END
-- WHERE some_condition;

set sql_safe_updates=0;
-- As we have to edit one complete column

# marks  70>1, 60>2 ,50>3, else 4

update student 
set marks=
case 
when marks>=70 then 1
when marks>=60 then 2
when marks>=50 then 3
else 4
end;
select * from student;

-- # DELETE
-- SYNTAX
-- DELETE FROM table_name
-- WHERE condition;

-- delete record of Neha Singh
delete from student 
where stu_name='Neha Singh'; -- delete from student where roll_num=1005;

select * from student;

--Bitwise operator
SELECT 5 ^ 3 AS Result;
SELECT 5 | 3 AS Result;
SELECT 5 & 3 AS Result;


-- DELETE ALL RECORD
-- USE SAFE MODE

DELETE FROM student;
select * from student;
--set sql_safe_updates =1;
delete from student; -- It will not run as safe mode is on

select CHARINDEX('H','MukeshSingh');
select SUBSTRING('MukeshSingh',6,13);
select SUBSTRING('MukeshSingh',CHARINDEX('h','MukeshSingh'),LEN('MukeshSingh'));  

-- COPY OLD TABLE INTO ANOTHER NEW TABLE WITHIN DATABASE

 -- SYNTAX
-- CREATE TABLE new_table LIKE old_table;
-- INSERT new_table SELECT * FROM old_table;

--create table student_new like student;
--select * from student_new;
--insert student_new select * from student;
--select * from student_new;

SELECT *
INTO student_new
FROM student
WHERE 1 = 0;
SELECT * FROM student_new;
INSERT INTO student_new
SELECT * FROM student;
SELECT * FROM student_new;


-- DDL 

-- DDL(DATA DEFINATION LANGUAGE)
-- CREATE,ALTER,DROP,TRUNCATE,INDEX,VIEW

-- ALTER...
-- THIS COMMAND IS USED TO ADD/CHANGE/MODIFY/DROP 
-- EXISTING STRUCTURE
-- OF TABLE

-- ADD COLUMN
-- ENABLE/DISABLE CONSTRAINTS
-- CHANGE COLUMN
-- MODIFY COLUMN
-- DROP COLUMN

create database ddl_db;
use ddl_db;

create table product(
product_id int primary key, 
product_name varchar(255) not null,
prize_per_quantity decimal(10,2),
quantity int);

INSERT INTO product(product_id, product_name, 
prize_per_quantity, quantity)
VALUES
    (1, 'A', 4500.00, 50),
    (2, 'B', 2350.75, 100),
    (3, 'C', 7200.25, 75),
    (4, 'D', 8560.50, 30),
    (5, 'E', 5500.00, 20),
    (6, 'F', 6800.00, 45),
    (7, 'G', 3100.25, 60),
    (8, 'H', 9200.75, 25),
    (9, 'I', 4100.50, 90),
    (10,'J', 7600.00, 15);
    
    select * from product;
    
    -- ALTER TABLE 

-- 1) ADD COLUMN WITHOUT CONSTRAINTS

USE ddl_db;

alter table product
add sales decimal(10,2);

exec sp_help product;
select * from product;

-- 2) ADD MULTIPLE COLUMNS WITHOUT CONSTRAINTS

alter table product
add  product_size int,
product_type varchar(30);

exec sp_help product;

-- 3) ADD COLUMN BY POSITION 

-- LAST(BY DEFAULT)
-- FIRST
-- AFTER

--alter table product
--add sales_date date first;

--In SQL Server, the FIRST keyword is not supported when adding a column to a table. 
--New columns are always added at the end of the table.
--If you need the column sales_date to appear first, you can achieve this by creating a new table with the desired column order and transferring the data.

create table product_new(sales_date date,product_id int primary key, 
product_name varchar(255) not null,
prize_per_quantity decimal(10,2),
quantity int);

insert into product_new(product_id , 
product_name ,prize_per_quantity,quantity)
select product_id , product_name ,prize_per_quantity,quantity
from product;

drop table product;
exec sp_rename 'product_new','product';
exec sp_help product;

--alter table product
--add sales_man varchar(200) after quantity;


-- 4) ADD COLUMN with CONSTRAINTS

alter table product
add new2 int not null default 0;

exec sp_help product;

alter table product
add new3 int unique default 0;

alter table product  -- Can also be written in this way
add new3 int ;
alter table product
drop column new3;

alter table product
add new4 int IDENTITY(1,1);

exec sp_help product;

-- ADD CONSTRAINTS INTO EXISTING COLUMN

alter table product
add constraint uq_product_name unique (product_name);

exec sp_help product;

-- CHANGE COLUMN NAME AND DATA TYPES WITHOUT CONSTRAINTS

alter database old_databasename  --Database Rename
modify name=new_database;
exec sp_rename 'product.name','New_names';  --Column Rename
exec sp_rename 'Old_tablename','New_tablename';  --Table Rename

exec sp_rename 'product.product_type','Product_Types','Column';
exec sp_rename 'product','Employee_Product';
exec sp_rename 'Employee_Product','product';
alter table product
add product_type varchar(30);

exec sp_help product;


--  MODIFY COLUMN
-- THIS IS USED TO MODIFY SIZE OF DATA TYPE OR DATA TYPE ITSELF
-- OF EXISTING COLUMN WITHOUT CHANGING COLUMN NAME

alter table product 
alter column new2 bigint; 

ALTER TABLE product
DROP CONSTRAINT DF__product__new2__3F466844; -- Replace <ConstraintName> with the actual name

exec sp_help product;

ALTER TABLE product
alter column product_id FLOAT NOT NULL;

Alter table product
drop constraint PK__product___47027DF5D075F216;

exec sp_help product;

alter table product
add new3 int;
-- DROP COLUMN 

alter table product
drop column new3;

alter table product
drop column product_type;

exec sp_help product;

create table MyTable(id int,name varchar(30));
insert into MyTable values(1,'Mukesh'),(2,'Mahesh');

BEGIN TRANSACTION;

DELETE FROM MyTable WHERE ID = 1;

-- Check the data after DELETE
SELECT * FROM MyTable;

-- Rollback to undo the DELETE
ROLLBACK;

-- Verify data is restored
SELECT * FROM MyTable;


-- TRUNCATE TABLE
-- DELETE DATA FROM INSIDE TABLE, not a structure of a table

truncate table product;
exec sp_help product;
select * from product;

-- VIEW
-- VIEW is virtual table or it is instance of a table

use world;

create view asiacan
as(select * from country where continent='asia');

select * from asiacan;
use world;
create view africacon as (select * from country where continent='Africa');
select avg(population) from africacon;

-- TCL
-- The main TCL commands are:
-- COMMIT: Saves all changes made within a transaction.
-- ROLLBACK: Undoes all changes made within a transaction.
-- SAVEPOINT: Sets a savepoint within a transaction to allow 
-- partial rollback.

-- committed (made permanent)
-- rolled back (undone).
-- savepoint..partial rollback

create database tcl_db;
use tcl_db;
drop table acc;

create table accounts(acc_no int primary key,name varchar(30),bal int);
insert into accounts values(1,'Rohit',34000),(4,'Suresh',60000),(9,'Ramesh',45000);

Begin transaction;
save transaction savepoint1;
update accounts
set bal=30000
where acc_no=4;

select * from accounts;
rollback transaction savepoint1;
commit;
select * from accounts;

Begin transaction;
save transaction savepoint2;
update accounts
set bal=30000
where acc_no=1;

select * from accounts;
commit;
rollback transaction savepoint2;
select * from accounts;

create table acc
(
acc_no INT,
name VARCHAR(40),
bal INT,
PRIMARY KEY(acc_no)
);

insert into acc values
(1101,'raj',11000),
(1102,'avi',17000),
(1103,'sana',18000),
(1104,'sam',27000),
(1105,'tanu',35000),
(1106,'raghu',24000);

SELECT * FROM acc;
drop table acc;

-- tcl commands
--1)  tcl steps
-- 1) start transaction
-- 2) transactions with savepoint
-- 3) commit/rollback;

Begin Transaction;

-- Create a savepoint
SAVE TRANSACTION Savepoint1;

-- Some SQL statements
UPDATE acc 
SET bal = bal + 100 
WHERE acc_no = 1101;

-- Rollback to savepoint if needed
ROLLBACK TRANSACTION Savepoint1;

-- Continue with other SQL statements
UPDATE acc 
SET bal = bal + 100 
WHERE acc_no = 1102;

commit;

Begin transaction;
save transaction sa1;

update acc 
set bal=13000 
where acc_no=1101;

select * from acc;

rollback transaction sa1;

select * from acc;
commit;

Begin transaction;
save transaction savepoint_s1; 
update acc 
set bal=15000 
where acc_no=1103;
select * from acc;
commit;
rollback transaction savepoint_s1;         -- It will give error as after commit ,the transaction can not be rollback
select * from acc;

-- DCL 
--  DCL - Data Control Language: Used to control the access to the data
-- Grant,Revoke
-- Meaning: DCL consists of SQL commands that 
-- are used to control the access to data of a user.
-- The GRANT command is used to give specific privileges 
-- to a user or a role in the database. 
-- Privileges can include actions like SELECT, INSERT, UPDATE, DELETE, CREATE
-- The revoke command is used to remove specific previliges from a user/role in the database

SELECT * FROM sys.database_principals WHERE name = 'Mukesh_S';
-- Create a login (if it doesn't already exist)
CREATE LOGIN Mukesh_S_login WITH PASSWORD = 'T0wn@11012001#IT';
CREATE USER Mukesh FOR LOGIN Mukesh_S_login;



use world;
GRANT SELECT ON country TO Mukesh; 
REVOKE SELECT ON country FROM Mukesh;
--show grants for Mukesh;
SELECT 
    dp.name AS UserName,
    ob.name AS ObjectName,
    p.permission_name AS Permission,
    p.state_desc AS PermissionState
FROM 
    sys.database_permissions p
JOIN 
    sys.database_principals dp ON p.grantee_principal_id = dp.principal_id
JOIN 
    sys.objects ob ON p.major_id = ob.object_id
WHERE 
    dp.name = 'Mukesh';

--SHOW GRANTS FOR 'root'@'localhost';


-- REGX
-- Regular expression

-- use to find pattern from string
-- It is same as LIKE operator ,but it can solve more complex problems 

-- how to create pattern
-- wild caharacter/special character

-- wild character
-- ^ start of string 
-- $ End of string
-- [] ...set of character
-- . matches any character
-- * 0 or more repetition
--  {}  size 
-- | OR

USE world;

-- syntax
-- select col1,col2,... from table_name where col_name regexp pattern;

-- EX-1 DISPLAY NAME,CONTINENT,POPULATION OF COUNTRIES 
-- STARTING WITH 'I'
--select name,continent,population from country 
--where name regexp '^i';

select name,continent,population from country where name like 'I%';

-- EX-2 DISPLAY record of region STARTING WITH 's'
--select * from country 
--where name regexp '^s';
select * from country
where region like 'S%';

select * from country where name like '%A';
select * from country where name like 'I_A%';
--select * from country where name regexp '^I.{3}A$';
select * from country where name like 'I__I%';
--select * from country where name regexp '^I.*A$';
select * from country where name like 'I%A';
--select * from country where name regexp '^[I,N,D]';
select * from country where name like '[I,N,D]%';
--select * from country where name regexp '[I,N,D]$';
select * from country where name like '%[I,N,D]';
--select * from country where name regexp 'I';
select * from country where name like 'I';

-- EX-3 DISPLAY ALL COUNTRIES START WITH 'IN'
select name from country
where name like 'IN%';

 -- EX-4 starting with B G I N
select * from country
where name like '[B,G,I,N]%';


-- EX-5 DISPLAY ALL COUNTRIES END WITH 'A'
select * from country
where name like '%a';

-- EX-6 DISPLAY ALL COUNTRIES END WITH 'STAN'
select * from country
where name like '%stan';

-- EX-7 DISPLAY ALL COUNTRIES THAT ARE STARTING WITH A OR B 
-- OR C OR D
select * from country
where name like '[A,B,C,D]%';

-- EX-8 DISPLAY ALL COUNTRIES WHERE NAME ENDS WITH VOEWLS(AIEOU)
select * from country
where name like '%[AEIOU]';

-- EX-9 DISPLAY ALL COUNTRIES STARTING WITH I AND ENDING WITH A
select * from country
where name like 'I%A';

-- EX-10 DISPLAY ALL COUNTRIES STARTING WITH B AND ENDING WITH H 
select * from country
where name like 'B%H';

-- EX-9 DISPLAY ALL COUNTRIES STARTING WITH I AND ENDING WITH A 
--3 char in between them
select * from country
where name like 'I%A';

select * from country
where name like 'I___A';

-- DISPLAY ALL COUNTRIES STARTING WITH A,B,C AND ENDING WITH A,I
select * from country
where name like '[A,B,C]%[A,I]';

SELECT * FROM country 
WHERE (name LIKE 'A%' OR name LIKE 'B%' OR name LIKE 'C%') 
  AND (name LIKE '%A' OR name LIKE '%I');


-- display countries that contain B 
select * from country
where name like '%b%';

use world;
select * from country;

-- Why we need multiple tables in sql

-- multiple tables in SQL databases provide a way 
-- to organize, store, and manage data efficiently, while also 
-- facilitating data integrity, performance optimization, and 
-- ease of maintenance. They enable database designers to represent 
-- complex data models and handle diverse requirements effectively.

-- Normalization: Reduces redundancy and enhances data integrity by storing data only once.
-- Data Organization: Different data types are stored in separate tables for logical organization (e.g., customers, orders, products).
-- Complex Data Models: Multiple tables enable representation of intricate data relationships and structures.
-- Scalability: Distributes data across tables and servers, enhancing performance as data volume increases.
-- Performance: Optimizes query performance through appropriate indexing and query optimization.
-- Security and Access Control: Allows granular control over data access by granting permissions on specific tables.
-- Ease of Maintenance: Facilitates updates and modifications by focusing changes on specific tables.
-- Flexibility: Adapts database structure to changing requirements and evolving data needs over time.
-- Concurrency and Locking: Manages concurrent data access and updates more efficiently in multi-user environments.



-- Relationships

-- Relationships: Foreign keys link data between two tables. Think of them as a bridge connecting information from one table to another. This connection can be one-to-one, one-to-many, or many-to-one.
-- Referencing Table: The table containing the foreign key is like the follower. It holds values that point to another table.
-- Referenced Table: This table is like the leader. It holds the primary key values that the foreign key in the referencing table refers to.
-- Referential Integrity: Foreign keys ensure that data in the referencing table matches existing data in the referenced table. This stops you from having disconnected or inconsistent data.
-- Primary Key and Unique Key: The foreign key in the referencing table typically matches the primary key or a unique key in the referenced table. This creates a direct link between the two tables.
-- Cascade Actions: Some databases support actions that automatically affect related data. For example, if you delete a row in the referenced table, you can set it up to delete corresponding rows in the referencing table.
-- Syntax: When you create a foreign key, you specify it in the table creation statement using the FOREIGN KEY keyword. You mention the column(s) in the referencing table and the table and column(s) they reference.

create database rel_db;
use rel_db;

create table Employee_Details(
id int primary key,
name varchar(30),
Salary float);

create table Employee_Department(
Dept_id int,
customer_id int,
DOJ date,
foreign key(customer_id)references Employee_Details(id) on delete cascade on update cascade);
drop table Employee_Department;

insert into Employee_Details values(18,'Kohli',34000),(45,'Rohit',23456),(10,'Sachin',50000);

insert into Employee_Department values(101,18,'2001-01-12'),(201,45,'2001-02-12'),(101,10,'2001-03-12');

select * from Employee_Details;
select * from Employee_Department;
select E2.Dept_id,E1.id,E1.name from Employee_Details E1
Inner join Employee_Department E2
on E1.id=E2.customer_id;

-- Referenced table/Parent table
create table customer(
customer_id int primary key,
customer_name varchar(40));

-- Referencing table/Child table
create table orders(
order_id int primary key,
customer_id int,
order_date date,
foreign key(customer_id) references customer(customer_id));

exec sp_help customer;
exec sp_help Orders;

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME='orders';

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Michael Brown'),
(5, 'Emily White');

INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-08-23'),
(102, 2, '2023-08-24'),
(103, 1, '2023-08-25'),
(104, 3, '2023-08-25'),
(105, 4, '2023-08-26');

select * from customer;
select * from orders;

-- rule 1 UNABLE TO DELETE PARENT TABLE
drop table customer;

-- rule 2 UNABLE TO DELETE PARENT TABLE RECORD
-- if data is not in child table then can delete it
delete from customer 
where customer_id=4;

-- rule 3 UNABLE TO UPDATE PARENT TABLE RECORD(common column)
update customer set customer_id= 10 where
customer_id=4;

update customer set customer_id=10 where
customer_id=5;

--  ----------------ON DELETE CLAUSE --------------------------
-- ON DELETE CASCADE
-- ON DELETE SET NULL
-- ON DELETE NO ACTION or ON DELETE RESTRICT

-- 1) ON DELETE CASCADE
--   Using the "ON DELETE CASCADE" option in a foreign key 
--   relationship means that when a referenced row (in the parent table) 
--   is deleted, the corresponding rows in the referencing table
--  (child table)
--  will also be automatically deleted. This can help maintain 
--  data consistency and integrity by ensuring that orphaned 
--  records are removed.

USE rel_db;
DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) 
    ON DELETE CASCADE
);

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Michael Brown'),
(5, 'Emily White');

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-08-23'),
(102, 2, '2023-08-24'),
(103, 1, '2023-08-25'),
(104, 3, '2023-08-25'),
(105, 4, '2023-08-26');

SELECT * FROM Customer;
SELECT * FROM Orders;

DELETE FROM customer WHERE customer_id=1;

SELECT * FROM Customer;
SELECT * FROM Orders;

--                "ON DELETE SET NULL"
-- Using "ON DELETE SET NULL" in a foreign key relationship 
-- means that when a referenced row (in the parent table) 
-- is deleted, the corresponding values in the referencing table 
-- (child table) will be set to NULL.
-- Create the Orders table with ON DELETE SET NULL

DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) 
    ON DELETE SET NULL
);

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Michael Brown'),
(5, 'Emily White');

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-08-23'),
(102, 2, '2023-08-24'),
(103, 1, '2023-08-25'),
(104, 3, '2023-08-25'),
(105, 4, '2023-08-26');

SELECT * FROM Customer;
SELECT * FROM Orders;

DELETE FROM customer WHERE customer_id=1;

SELECT * FROM Customer;
SELECT * FROM Orders;

-- ---------------------------------ON UPDATE CLAUSE------------------
-- ON UPDATE CASCADE
-- ON UPDATE SET NULL
-- ON UPDATE NO ACTIION or ON UPDATE RESTRICT


-- 1) ON UPDATE CASCADE
-- Using "ON UPDATE CASCADE" in a foreign key relationship means 
-- that when the referenced value (in the parent table) is updated, 
-- the corresponding values in the referencing table (child table) 
-- will be automatically updated to reflect the change. 
-- This is useful when you want to maintain consistency between 
-- related data.

DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) 
    ON UPDATE CASCADE
);

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Michael Brown'),
(5, 'Emily White');

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-08-23'),
(102, 2, '2023-08-24'),
(103, 1, '2023-08-25'),
(104, 3, '2023-08-25'),
(105, 4, '2023-08-26');

SELECT * FROM Customer;
SELECT * FROM Orders;

UPDATE customer 
SET customer_id=10 WHERE 
customer_id=4;

SELECT * FROM Customer;
SELECT * FROM Orders;

-- ON UPDATE SET NULL

DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) 
    ON UPDATE SET NULL
);

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson'),
(4, 'Michael Brown'),
(5, 'Emily White');

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(101, 1, '2023-08-23'),
(102, 2, '2023-08-24'),
(103, 1, '2023-08-25'),
(104, 3, '2023-08-25'),
(105, 4, '2023-08-26');

SELECT * FROM Customer;
SELECT * FROM Orders;

UPDATE customer SET customer_id=10 WHERE 
customer_id=4;

SELECT * FROM Customer;
SELECT * FROM Orders;

-- 3) ON UPDATE RESTRICT/NO ACTION
-- by default

--                              ~~~ JOINS in SQL ~~~
-- In SQL, the JOIN operation is used to combine 
-- rows from two or 
-- more tables based on a related column between them. 
-- This operation allows you to retrieve data from multiple tables in 
-- a single query, which is essential for querying relational databases 
-- effectively. There are several types of joins, 
-- including INNER JOIN, LEFT JOIN (or LEFT OUTER JOIN), 
-- RIGHT JOIN (or RIGHT OUTER JOIN), and FULL JOIN (or FULL OUTER JOIN). 

-- 1) INNER JOIN:
-- An INNER JOIN returns only the rows where there is a match in both 
-- the left and right tables based on the specified condition.

-- 2) LEFT JOIN/LEFT OUTER JOIN
-- A LEFT JOIN returns all the rows from the left table and 
-- the matching rows from the right table. 
-- If there is no match, the result will contain NULL values for 
-- columns from the right table.

-- 3) RIGHT JOIN (RIGHT OUTER JOIN):
-- A RIGHT JOIN is similar to a LEFT JOIN but returns all the rows 
-- from the right table and the matching rows from the left table. 
-- If there is no match, the result will contain NULL values for 
-- columns from the left table.


-- 4) FULL JOIN (FULL OUTER JOIN):
-- A FULL JOIN returns all the rows from both the left and right tables, 
-- along with matching rows from both tables. 
-- If there is no match, the result will contain NULL values for 
-- columns from the table where there is no match.


-- 1) INER JOIN
-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1 INNER JOIN table2
-- ON table1.column = table2.column;

-- 2) LEFT OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column;

-- 3) RIGHT OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;

-- 4) FULL OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- FULL JOIN table2
-- ON table1.column = table2.column;

create database join_db;
use join_db;

create table customers(
customer_id int primary key,
customer_name varchar(30),
customer_email varchar(50));

insert into customers(customer_id,customer_name,customer_email) values
	(1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com'),
    (3, 'Michael Johnson', 'michael@example.com'),
    (4, 'Emily Williams', 'emily@example.com'),
    (5, 'Sarah Brown', 'sarah@example.com'),
    (6, 'David Lee', 'david@example.com'),
    (7, 'Jessica Martinez', 'jessica@example.com');
    
    select * from customers;
    
    create table orders(
	order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
    );
    
    insert into orders values
    (101, 2, '2023-08-01', 150.00),
    (102, 1, '2023-08-02', 75.50),
    (103, 3, '2023-08-03', 200.20),
    (104, 1, '2023-08-03', 30.00),
    (105, 4, '2023-08-04', 50.75),
	(106, 3, '2023-08-05', 85.20),
    (107, 6, '2023-08-06', 120.50),
    (108, 2, '2023-08-07', 60.00),
    (109, 11, '2023-08-08', 80.75),
    (110, 12, '2023-08-08', 77.75);
    
    select * from orders;
    
    -- 1. Inner Join
  
    select c1.customer_id,c1.customer_name,o1.total_amount
    from customers c1 inner join orders o1
    on c1.customer_id=o1.customer_id;
    
    select c1.customer_id,c1.customer_name,o1.total_amount
    from customers c1 inner join orders o1
    on c1.customer_id=o1.customer_id
    order by customer_id desc;
    
    
    -- 2.Left join/left outer join
    
    select c1.customer_id,c1.customer_name,o1.total_amount
    from customers c1 left join orders o1
    on c1.customer_id=o1.customer_id;
    
    select * from customers c1 left join orders o1
    on c1.customer_id=o1.customer_id;
    
    -- 3. Right Join/Right outer join
    
     select c1.customer_id,c1.customer_name,o1.total_amount 
     from customers c1 right join orders o1
     on c1.customer_id=o1.customer_id;
    
    select * from customers c1 right join orders o1
    on c1.customer_id=o1.customer_id;
    
    -- 4. Full join
    
	select * from customers c1
	full join orders o1
    on c1.customer_id=o1.customer_id;
    
    select * from customers c left join orders o 
    on c.customer_id=o.customer_id
    union
    select * from customers c right join orders o
    on c.customer_id=o.customer_id;
    
-- 5.Cross Join

-- a cross join (also known as a Cartesian join) is a type of 
-- join that combines each row from one table with every row from 
-- another table
    
    select * from customers cross join orders;
    
    select * from customers,orders;
    
-- Natural join/INNER JOIN
-- A NATURAL JOIN in SQL is a type of join that automatically 
-- matches columns with the same name in two or more tables 
-- and returns the resulting rows. It's important to note that a 
-- NATURAL JOIN does not require specifying a specific join condition, 
-- as it relies solely on matching column names.

--select * from customers
--natural join orders;


-- Self Join

Create table Employee_datails(emp_id int, Emp_name Varchar(30),Manager_id int);
insert into Employee_datails values( 1,'Ram',2),(2,'Shlok',4),(3,'Adesh',2),(4,'Jatin',0);
select * from Employee_datails;

select t1.Emp_name as Employee,t2.Emp_name as Manager
from Employee_datails t1
inner join
Employee_datails t2
on t1.Manager_id=t2.emp_id;
 
SELECT * 
FROM customers 
INNER JOIN orders 
ON customers.customer_id = orders.customer_id;

-- SET OPERATION

-- UNION
-- In MySQL, the UNION operator is used to combine the result sets 
-- of two or more SELECT statements into a single result set. 
-- The UNION operator removes duplicate rows from the combined result 
-- set by default. 

 -- UNION ALL
-- If you want to include duplicate rows, you can use 
-- the UNION ALL operator instead.

-- SELECT column1, column2, ...
-- FROM table1
-- WHERE conditions
-- UNION
 -- SELECT column1, column2, ...
-- FROM table2
-- WHERE conditions;

create table stu(
name varchar(30),
age int,
marks float);

create table person(
name varchar(40),
age int,
adhaar_no bigint);

use join_db;
select name from sys.databases;

INSERT INTO stu VALUES
('raj',11,65),
('avi',12,67),
('sana',13,78),
('sam',14,56),
('tanu',15,78);

INSERT INTO person VALUES
('raj',11,9735776),
('jay',17,673241),
('sana',13,985632),
('tom',21,569644);

select name,age from person
union
select name,age from stu;

select name,age from person
union all
select name,age from stu;

select name,age from person
union
select name ,age from stu
order by age;

-- join practice

USE world;

-- Question 1: Retrieve a list of countries and their corresponding 
-- capital cities.

select name from sys.tables;
select * from country;
exec sp_help country;
select * from city;

select c.name,c.capital,ct.name from
country c 
inner join
city ct
on c.code=ct.countrycode
where c.capital=ct.id;

-- Question 2: Display the top 5 most populous cities along with 
-- their respective countries.

select top 5 ct.name,c.name,ct.population from
country c 
inner join
city ct
on c.code=ct.countrycode
order by ct.population desc;

-- Question 3: Display the top 5 least populous cities along with 
-- their respective countries.

select top 5 ct.name,c.name,ct.population
from country c
inner join 
city ct
on c.code=ct.countrycode
order by ct.population;

-- countriwise city count of asia continent

select * from country;
select * from city;

select c.name,count(ct.name) from
country c
inner join
city ct
on c.code=ct.countrycode
where c.continent='Asia'
group by c.name
order by count(ct.name) desc;

-- Question 4: List the languages spoken in each country, along 
-- with the country's name.

select * from countrylanguage;
select * from country;

select c.name,cl.language from
country c
inner join
countrylanguage cl
on c.code=cl.countrycode;

-- Question 5: List the languages spoken in each country, along 
-- with the country India.

select c.name,cl.language
from country c
inner join
countrylanguage cl
on c.code=cl.countrycode
where c.name='India';

-- list countries with their official language

select * from country;
select * from countrylanguage;

select c.name,cl.language from
country c
inner join
countrylanguage cl
on c.code=cl.countrycode
where cl.isOfficial='T';

-- Question 6: Retrieve the countries that have more than one 
-- official language.

select c.name,count(cl.language) from
country c
inner join
countrylanguage cl
on c.code=cl.countrycode
where cl.isofficial ='T'
group by c.name
having count(cl.language)>1;

--Sub query
--Query written in another query is a subquery
--syntax
--SELECT col1,col2,... FROM table1 WHERE col=(SELECT col1  FROM table2)

-- basically its a tool to join two or more table
-- SUBQUERIES WITH OPERATOR  > = ETC
-- SUBQUERIES WIH KEYWORDS IN NOT IN
-- We can use SUBQUERY for column,value,table;

-- EXP 1 DISPLAY NAME,CONTINET,POPULATION LIFEEXPECTANCY
-- OF NATION HAVING MAX LIFEEXPECTANCY

use world;
select max(lifeexpectancy) from country;

select name,continent,population,lifeexpectancy from country
where lifeexpectancy=83.5;

-- Using Group by
select top 1 name,max(lifeexpectancy)from country
group by name
order by max(lifeexpectancy) desc;


-- Using subquery
select name,continent,population,lifeexpectancy from country
where lifeexpectancy=(select max(lifeexpectancy) from country);

-- ex-2 display all cities with their population of INDIA
select ct.name,ct.population from
city ct
inner join
country c
on c.code=ct.countrycode
where c.name='India';

select name,population from city
where countrycode=(select code from country where name='India');

-- ...cities and poulation...asia continent
select name,population from city
where countrycode in(select code from country where continent='Asia');

select ct.name,ct.population
from city ct
inner join 
country c
on c.code=ct.countrycode
where continent='Asia';

-- DISPLAY all records of asian countries
-- with above average regional LIFEEXPECTANCY

select avg(lifeexpectancy) from country where continent='Asia';
select name,lifeexpectancy from country where lifeexpectancy>=67.44118 and continent='Asia';

select name,lifeexpectancy from country where
lifeexpectancy>=(select avg(lifeexpectancy) from country where continent='Asia') and
continent='Asia';

-- for column
select sum(population) as total,(select sum(population) from city) as city_total
from country;

-- using subquery display all official asian languages
select language from countrylanguage where
countrycode in(select code from country where continent='Asia') -- when = didnt work use in[my assumption]
and isofficial='T';

-- display all records of cities of 
-- non asian and non african nations
select * from city where
countrycode in(select code from country where continent!='Asia' and continent!='Africa');

select * from city where
countrycode in(select code from country where continent not in('Asia','Africa'));

-- Correlated Subquery
--When you need to compare rows with specific, related data 
--(e.g., comparing an employees salary to their departments average).

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    salary FLOAT,
    dept_id INT
);

INSERT INTO employees (emp_id, emp_name, salary, dept_id)
VALUES
(1, 'Alice', 50000, 1),
(2, 'Bob', 60000, 1),
(3, 'Charlie', 55000, 2),
(4, 'Daisy', 70000, 2),
(5, 'Eve', 48000, 1);

SELECT e1.dept_id,e1.emp_id, e1.emp_name
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.dept_id = e2.dept_id
);

-- Non-Correlated Subqueries
--When you are comparing rows to a single, fixed value or result 
--(e.g., checking if a salary is above the company-wide average).

SELECT emp_id, emp_name
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

Use [ComplianceProject];
select name from sys.tables;

exec sp_help accounts;

select AccountId,AccountName ,RelationshipManagerId
from accounts;

-- Non corelated Subquery
select AccountId,AccountName ,RelationshipManagerId
from accounts
where RelationshipManagerId>(select Avg(RelationshipManagerId) from accounts);

-- Correlated Subquery
select [ProjectId],[ProjectName] from [dbo].[Projects];

select T1.AccountId, T1.Accountname
from Accounts T1
where T1.AccountId>(select Avg(T2.[AccountId]) from Projects T2);

-- CTE(COMMON TABLE EXPRESSION)..WITH CLAUSE

-- -- temporary table/result that can use in query
-- subquery factoring

-- syntax
-- with cte1(col1) as (select col1,col2... from table_name) 
--   select * from table_name,cte1 ;

CREATE DATABASE cte_db;
USE cte_db;

create table employee
( emp_ID int, 
emp_NAME varchar(50),
DEPT_NAME varchar(50),
SALARY int);

insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh','Finance',5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);

SELECT * FROM employee;

-- # fetch employees who earn more than average of all employee

-- subquery

SELECT emp_name,salary FROM employee
WHERE salary>=(SELECT avg(salary) FROM employee);

-- group by
SELECT emp_name,avg(salary) FROM employee 
group by emp_name;

-- by using CTE

WITH cte1 AS (SELECT avg(salary) 'avg_sal' FROM employee)
 SELECT * FROM employee,cte1 WHERE salary>=avg_sal;

 WITH cte1 AS (SELECT avg(salary) 'avg_sal' FROM employee)
 SELECT * FROM employee e1,cte1 c1 WHERE e1.salary>=c1.avg_sal;
 
 -- method 2
 with cte1(avgvalue) AS (SELECT avg(salary)  FROM employee)
SELECT * FROM cte1 c1,employee e1 WHERE e1.salary>=c1.avgvalue;
 
-- multiple cte

with cte1 AS (SELECT avg(salary) as 'avg_sal' FROM employee),
cte2 AS (SELECT count(*) as 'total' FROM employee)
SELECT * FROM cte1,cte2;

-- Without CTE
SELECT e.Emp_ID, e.Emp_Name, e.Salary
FROM employee e
WHERE e.Salary < (
    SELECT AVG(Salary)
    FROM Employee
);

-- With CTE

WITH CompanyAvg AS (
    SELECT AVG(Salary) AS AvgSalary
    FROM Employee
)
SELECT e.Emp_ID, e.Emp_Name, e.Salary
FROM Employee e, CompanyAvg d
WHERE e.Salary < d.AvgSalary;


create table sales_table
(store_id int,
store_name varchar(50),
product varchar(50),
quantity int,
sales_amount int
);

insert into sales_table values
(1, 'Apple Originals 1','iPhone 12 Pro', 1, 1000),
(1, 'Apple Originals 1','MacBook pro 13', 3, 2000),
(1, 'Apple Originals 1','AirPods Pro', 2, 280),
(2, 'Apple Originals 2','iPhone 12 Pro', 2, 1000),
(3, 'Apple Originals 3','iPhone 12 Pro', 1, 1000),
(3, 'Apple Originals 3','MacBook pro 13', 1, 2000),
(3, 'Apple Originals 3','MacBook Air', 4, 1100),
(3, 'Apple Originals 3','iPhone 12', 2, 1000),
(3, 'Apple Originals 3','AirPods Pro', 3, 280),
(4, 'Apple Originals 4','iPhone 12 Pro', 2, 1000),
(4, 'Apple Originals 4','MacBook pro 13', 1, 2500);

select store_id,store_name,sales_amount
from sales_table
where sales_amount>(select avg(sales_amount) from sales_table);

select t1.store_id,t1.store_name,t1.sales_amount
from sales_table t1 
where t1.sales_amount>(select avg(t2.sales_amount) from sales_table t2);

with avg_sales_amount as (select avg(sales_amount)as avg_salary from sales_table)
select t1.store_id,t1.store_name,t1.sales_amount
from sales_table t1,avg_sales_amount t2 where
t1.sales_amount>t2.avg_salary;

SELECT * FROM sales_table; 


-- WINDOW FUNCTION (Analytical functions)
-- In MySQL, a window function (also known as an analytic function or a 
-- windowed function) is a function that performs a calculation across 
-- a set of rows that are related to the current row. 

-- These functions 
-- are typically used in the context of queries involving result sets
--  or tables. Window functions allow you to perform calculations 
--  and aggregations over a "window" of rows within your result 
--  set, without collapsing the result set into a single row as
--  traditional aggregate functions do.

-- Window functions are commonly used for tasks such as calculating 
-- running totals, ranking rows, calculating moving averages, and more.
--  They provide a way to perform complex calculations on subsets of
--  data within a result set.

-- Here's the basic syntax for using a window function 
-- in a MySQL query:
-- <window_function> (<expression>) OVER (
--     [PARTITION BY <partition_column(s)>]
--     [ORDER BY <order_column(s)> [ASC|DESC]]
--     [ROWS <frame_specification>]
-- ) AS <alias>

-- Let's break down the components of this syntax:

-- <window_function>: This is the window function you want to use, 
-- such as SUM, ROW_NUMBER, RANK, DENSE_RANK, AVG, etc.

-- <expression>: The expression or column on which the window 
-- function will operate.

-- PARTITION BY <partition_column(s)>: Optional clause that divides 
-- the result set into partitions or groups based on one or more columns. 
-- The window function is applied independently within each partition.

-- ORDER BY <order_column(s)> [ASC|DESC]: Optional clause that 
-- specifies the order in which rows within each partition are 
-- processed. The window function can be applied in ascending or 
-- descending order.

-- ROWS <frame_specification>: Optional clause that defines 
-- the window or frame of rows relative to the current row over
--  which the window function operates. The frame specification 
--  can include UNBOUNDED PRECEDING, n PRECEDING, CURRENT ROW, 
--  n FOLLOWING, and UNBOUNDED FOLLOWING to specify the range of rows.

-- AS <alias>: Optional alias for the result of the window function.

-- Here are a few examples of how you can use window functions in MySQL:
-- Window function
-- to create different partition of table

--1. Ranking Functions
--These functions assign a rank or a number to each row in a result set, often based on the order specified.
--Function	Description
--RANK()	Assigns ranks to rows with gaps if there are ties.
--DENSE_RANK()	Assigns ranks to rows without gaps for ties.
--ROW_NUMBER()	Assigns a unique sequential number to each row.
--NTILE(n)	Divides rows into n equal groups and assigns a group number to each row.

--2. Aggregate Functions
--These functions perform calculations like sum, average, etc., over a window of rows.

--Function	Description
--SUM()	Calculates the sum of values in the window.
--AVG()	Calculates the average of values in the window.
--MIN()	Finds the minimum value in the window.
--MAX()	Finds the maximum value in the window.
--COUNT()	Counts the number of rows in the window.

--3. Value Functions
--These functions return specific values from the window of rows.

--Function	Description
--FIRST_VALUE()	Returns the first value in the window.
--LAST_VALUE()	Returns the last value in the window.
--LAG()	Returns the value from the previous row in the window.
--LEAD()	Returns the value from the next row in the window.
--NTH_VALUE()	Returns the nth value in the window.

--4. Statistical Functions
--These functions perform statistical calculations.

--Function	Description
--PERCENT_RANK()	Calculates the relative rank of a row as a percentage.
--CUME_DIST()	Calculates the cumulative distribution of a value.

CREATE DATABASE winfun_db;
USE winfun_db;

create table employee
( emp_ID int
, emp_NAME varchar(50)
, DEPT_NAME varchar(50)
, SALARY int);

insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh','Finance',5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);

SELECT * FROM employee;

-- Q. Deptwise highest salary employee details
SELECT dept_name,max(salary) FROM employee
GROUP BY dept_name;

-- Q Deptwise 2 employees who highest salary

-- window function>> new column,
-- aggregate funtion(avg,sum,min,max,count)
-- row_number(),rank,dense_rank,,first_value,last_value,nth_value

-- max() as a window function

-- for every department employee ,show its max salary

select *,max(salary) over(partition by dept_name) as 'Highest Salary Per Department' from employee;

select *,max(salary) over (partition by dept_name order by salary desc) as 'highest salary'
from employee;

-- New column of highest salary .

select *,max(salary) over(partition by dept_name) as 'Highest Salary' from employee;

with cte1 as (select *,max(salary) over(partition by dept_name) as new1
from employee)
select * from cte1 where salary=new1;

-- min()
-- new column of min. salary 

with cte1 AS (SELECT *,min(salary) OVER(PARTITION BY DEPT_NAME)  
AS new1 FROM employee)

SELECT * FROM cte1 WHERE salary=new1;


-- fetch employee whose salary is > that departmental avg salary

with cte1 AS (SELECT *,avg(salary) OVER(PARTITION BY DEPT_NAME)   -- It is partitioned by department vice
AS new1 FROM employee)

SELECT * FROM cte1 WHERE salary>=new1;


-- fetch employee whose salary is > total avg salary

select * from employee
where SALARY>(select avg(salary) from employee);

with cte1 AS (SELECT *,avg(salary) OVER()  -- It is not partitioned, avg salary of all the rows is taken 
AS new1 FROM employee)
SELECT * FROM cte1 WHERE salary>new1;


-- row_number()
-- generates sequential number

SELECT *,row_number() OVER(partition by DEPT_NAME
ORDER BY salary DESC) AS new1 FROM employee;

-- Fetch top two employees with highest salary department vice with row number in descending order.

with cte1 AS (SELECT *,row_number() OVER(partition by 
DEPT_NAME  ORDER BY salary DESC) AS rn FROM employee)
SELECT * FROM cte1 WHERE rn<=2;

-- rank()

SELECT *,rank() OVER(partition by DEPT_NAME ORDER BY salary DESC) AS 
rank1 FROM employee;

-- Where rank is less than equal to 2
with cte1 AS (SELECT *,rank() OVER(partition by DEPT_NAME ORDER BY 
salary DESC) AS 
rank1 FROM employee)

SELECT * FROM cte1 WHERE rank1<=2;

-- dense_rank()

SELECT *,dense_rank() OVER(partition by dept_name ORDER BY salary DESC)  AS 
rank1
FROM employee;

-- assignment
-- old 2 employee of each dept

WITH cte1 AS (SELECT *,rank() OVER(partition by DEPT_NAME ORDER BY 
emp_id ) AS 
rank1 FROM employee)
SELECT * FROM cte1 WHERE rank1<=2;


 -- lead() and lag()
-- comparison with previous employee or next employee

SELECT *,lead(salary) OVER(partition by dept_name order by salary) AS 'lead_value' 
FROM employee;

SELECT *,lag(salary) OVER(partition by dept_name order by salary) AS 'lag_value' 
FROM employee;

-- first and last values
USE winfun_db;

SELECT *,first_value(salary) over(partition by dept_name
 ORDER BY salary) as first_highest_salary_employee FROM employee;
 
SELECT *, 
       LAST_VALUE(salary) OVER (PARTITION BY dept_name 
	   ORDER BY salary ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_highest_salary_employee
FROM employee;

-- nth values

WITH RankedEmployees AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY dept_name ORDER BY salary DESC) AS rn
    FROM employee
)
SELECT *
FROM RankedEmployees
WHERE rn = 2;



--  Functions

/* Functions are primarily used to calculate and return values,making them suitable for use in SQL queries and expressions. 
 Functions return a value, which can be a scalar value (e.g., integer, string) or a table result set.
 Functions can be used in SQL queries and expressions, making them suitable for calculations within SELECT, WHERE, and other clauses.
 Functions are not used for transaction control. They cannot contain transaction control statements like COMMIT or ROLLBACK.
 Functions are more reusable because they return values that can be used in various parts of an application.
 Functions are optimized for performance when used in SQL queries and expressions.
 
Stored procedures are used for encapsulating a series of actions or operations and are more versatile in terms of what they can do but are typically not used directly within SQL queries. 
Stored procedures do not return values directly. They can use output parameters to send data back to the caller,
The choice between them depends on the specific requirements of your database application.
Stored procedures are typically called using the EXECUTE or CALL statement and are not used directly within SQL queries.
Stored procedures can include transaction control statements,allowing you to manage transactions within the procedure.
Stored procedures are typically used for encapsulating business logic and may not always return values directly. They are often specific to a particular task or process.
Stored procedures may have slightly more overhead because they are designed to execute a series of operations and may not be as optimized for query-like tasks.
*/

/*
Types of function: 
1. Built in... ( SQL provides various built-in functions including aggregates (e.g., COUNT, SUM), 
scalar (e.g., UPPER, LOWER), date/time (e.g., GETDATE, DATEADD), string (e.g., CONCAT, SUBSTRING), 
mathematical (e.g., ABS, CEILING), conversion (e.g., CAST, CONVERT), logical (e.g., AND, OR), and window functions (e.g., ROW_NUMBER, RANK).
2. USER defined...can create own function
*/

--User-Defined Function (UDF) is a custom function created by the user to encapsulate reusable logic. 
--UDFs allow you to perform operations and return a value, which can be used in SQL queries. 
--They can take input parameters and return either a single value (scalar function) or a table (table-valued function).

--Types of User-Defined Functions:

--1.Scalar Functions

--Returns a single value (e.g., an integer, string, or date).
--Can accept parameters as input.
--Example Use Case: Calculate a discount or format a string.

--2.Table-Valued Functions (TVF)

--Returns a table that can be queried like a regular table.
--Inline TVF: Contains a single RETURN statement with a SELECT query.
--Multistatement TVF: Allows for more complex logic with multiple statements

-- Synatx

--Create function Function_name()
--returns datatype
--as
--begin 
--return()
--end;

use Function_dbo;

 --1.Scalar Functions
 -- Addition of two numbers

create function dbo.add_two_numbers
(
@num1 decimal(10,2),@num2 decimal(10,2)
)
returns Decimal(10,2)
as
begin
return (@num1+@num2)
end;

select  dbo.add_two_numbers(10,2) as Sum_price;

-- Create function for string Trim

create function fnTrimstring1
(
@string varchar(100)
)
returns varchar(100)
as
begin
return SUBSTRING(@string,3,len(@string))
end;

select dbo.fnTrimstring1('Mukesh');


create function fnTrimstring
(
@string varchar(100)
)
returns varchar(100)
as
begin
declare @data varchar(100)
set @data= SUBSTRING(@string,3,len(@string))
return @data
end;

select dbo.fnTrimstring('Mukesh');

-- Finding Final price after discount from MRP

create function dbo.afterdiscountprice
(
@mrp decimal(10,1), @discountrate decimal(10,1)
)
returns decimal(10,1)
as
begin
return @mrp-(@mrp*@discountrate/100);
end;

select dbo.afterdiscountprice(100,10);

-- function to gst amount ,12 % 

create function dbo.gstamount
(
@amount decimal(10,2)
)
returns decimal(10,2)
as
begin
return @amount*0.12;
end;


select dbo.gstamount(100) as GST;

--2.Inline Table-Valued Functions (TVF)

--create function for returning department specific records

create function dbo.GetEmp_details
(
@empid int
)
returns table
as
return 
(select * from employees 
where EmployeeID=@empid);

select * from dbo.GetEmp_details(2);

CREATE FUNCTION dbo.GetEmployeesByDepartment
(
    @DepartmentID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT EmployeeID, Name, JobTitle
    FROM Employees
    WHERE DepartmentID = @DepartmentID
);

SELECT * FROM dbo.GetEmployeesByDepartment (3);

create function dbo.data_by_department2(@dept_id int,@dept_id2 int)
returns table
as
return (select Top 5* from Employees
			where DepartmentID in(@dept_id,@dept_id2)
			order by DepartmentID desc);

select * from dbo.data_by_department2(1,2); 

CREATE FUNCTION dbo.GetEmployeesByDepartment1
(
    @DepartmentID1 INT,
    @DepartmentID2 INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT EmployeeID, Name, JobTitle
    FROM Employees
    WHERE DepartmentID IN (@DepartmentID1, @DepartmentID2)
);

SELECT * 
FROM dbo.GetEmployeesByDepartment1(3, 2);

--3. Multistatement Table-Valued Function 

CREATE TABLE Employees_tb
(
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    JobTitle NVARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(18, 2)
);

-- Inserting sample employee records
INSERT INTO Employees_tb (EmployeeID, Name, JobTitle, DepartmentID, Salary)
VALUES
(1, 'John Doe', 'Software Developer', 1, 60000.00),
(2, 'Jane Smith', 'Data Analyst', 2, 55000.00),
(3, 'Alice Johnson', 'HR Manager', 3, 70000.00),
(4, 'Bob Brown', 'Project Manager', 1, 80000.00),
(5, 'Charlie Davis', 'Business Analyst', 2, 65000.00),
(6, 'Eve Clark', 'Software Developer', 1, 58000.00),
(7, 'David Adams', 'Data Scientist', 2, 75000.00),
(8, 'Emma Turner', 'HR Assistant', 3, 45000.00),
(9, 'Frank King', 'Project Coordinator', 1, 52000.00),
(10, 'Grace Lee', 'Operations Manager', 3, 72000.00);

CREATE FUNCTION dbo.GetEmployeesByDepartmentWithBonus
(
    @DepartmentID INT
)
RETURNS @EmployeeList TABLE
(
    EmployeeID INT,
    Name NVARCHAR(100),
    JobTitle NVARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(18, 2),
    TotalSalary DECIMAL(18, 2)  -- Computed column for salary with bonus
)
AS
BEGIN
    -- Inserting employees from the specified department into the table variable
    INSERT INTO @EmployeeList
    SELECT EmployeeID, Name, JobTitle, DepartmentID, Salary,
           Salary * 1.10 AS TotalSalary  -- Adding 10% bonus to the salary
    FROM Employees_tb
    WHERE DepartmentID = @DepartmentID;

    -- Additional operations (if needed)
    -- For example, we can filter out employees with a low salary if necessary.
    -- (Not necessary for the current case, but added as a placeholder)
    
    -- Return the result
    RETURN;
END;

SELECT * 
FROM dbo.GetEmployeesByDepartmentWithBonus(3);

create table fun_table(id int, name varchar(30),salary int);
insert into fun_table values(101,'Mukesh',10000),(102,'Nikhil',20000); 
select * from fun_table;

create function update_salary
(
)
returns @result table
(id int, name varchar(30),salary int)
as
begin
insert into  @result
select id , name ,salary from fun_table
update @result
set salary=50000
return
end;

select * from dbo.update_salary();

--Deterministic Functions:
--A function is deterministic if it always returns the same result for the same set of input parameters. 
--In other words, its output depends solely on its input, and there are no external factors 
--(like database state or system time) that can change the result.

--Non-Deterministic Functions:
--A function is non-deterministic if it can return different results for the same set of input parameters. 
--This could be due to changes in database state, system time, or other external factors.

--In SQL Server, you do not need to explicitly specify whether a function is deterministic or
--non-deterministic in its syntax. SQL Server determines whether a function is deterministic or
--non-deterministic based on the logic and built-in functions it uses.

-- Deterministic Function

CREATE FUNCTION dbo.CalculateSquare
(
    @Number INT
)
RETURNS INT
AS
BEGIN
    RETURN @Number * @Number;
END;

select dbo.CalculateSquare(3) as Square_Values;

-- factorial of number

CREATE FUNCTION dbo.Factorial
(
    @num1 INT
)
RETURNS INT
AS
BEGIN
    DECLARE @result INT = 1;

    WHILE @num1 > 0
    BEGIN
        SET @result = @result * @num1;
        SET @num1 = @num1 - 1;
    END

    RETURN @result;
END;

select dbo.Factorial(5) as Factorial;

-- Non Deterministic Function

-- Returns the current date and time

select dbo.getcurrentdate() as curentdate

create function dbo.getcurrentdatetime()
returns datetime
as
begin
return getdate()
end;

select dbo.getcurrentdatetime()

CREATE FUNCTION dbo.GetCurrentTimestamp
()
RETURNS DATETIME
AS
BEGIN
    RETURN GETDATE(); 
END;

select dbo.GetCurrentTimestamp();

--To return random number

CREATE FUNCTION dbo.GetRandomNumber()
RETURNS nvarchar(30)
AS
BEGIN
    RETURN cast(newid() as varchar(30));
END;
GO

-- Procedure
-- Stored procedure

-- Stored procedure means precompiled sql statemnets
-- can use sp for data manipulation related task

-- function...calculation....can call function after select
-- Stored procedure...data manipulation...call anytime..CALL

-- Functions and stored procedures are both database objects used in 
-- database management systems (DBMS), such as MySQL, Oracle, SQL 
-- Server, and PostgreSQL, to perform specific tasks. However,
--  they serve different purposes and have some key differences:

-- ###################### Purpose:
-- Function:
-- A function is designed to return a single value or a table of values.
-- It is mainly used to compute and return values based on input parameters.
-- Functions are typically used in SELECT statements or within expressions.

-- Stored Procedure:
-- A stored procedure is designed to perform a set of actions or operations.
-- It can include multiple SQL statements, such as SELECT, INSERT, UPDATE, 
-- and DELETE.
-- Procedures are often used for tasks like data manipulation, validation, 
-- or complex business logic.


-- ######################### Return Type:
-- Function:
-- Functions return a value, which can be a scalar value (e.g., 
-- integer, string) or a table result set.

-- Stored Procedure:
-- Stored procedures do not return values directly. They can 
-- use output parameters to send data back to the caller, 
--but they do not have a return type like functions.

-- ######################### Usage in Queries:
-- Function:
-- Functions can be used in SQL queries and expressions, making them 
-- suitable for calculations within SELECT, WHERE, and other clauses.

-- Stored Procedure:
-- Stored procedures are typically called using the EXECUTE or CALL statement and are not used directly within SQL queries. 
-- They are more suitable for encapsulating and executing a series of SQL statements.

-- ######################## Transaction Control:
-- Function:
-- Functions are not used for transaction control. They cannot 
-- contain transaction control statements like COMMIT or ROLLBACK.
-- Stored Procedure:

-- Stored procedures can include transaction control statements, 
-- allowing you to manage transactions within the procedure.

-- ######################## Reusability:
-- Function:
-- Functions are more reusable because they return values 
-- that can be used in various parts of an application.
-- Stored Procedure:
-- Stored procedures are typically used for encapsulating business 
-- logic and may not always return values directly. They are often specific to a particular task or process.

-- ############################ Performance:
-- Function:
-- Functions are optimized for performance when used in SQL 
-- queries and expressions.

-- Stored Procedure:
-- Stored procedures may have slightly more overhead because they 
-- are designed to execute a series of operations and may not be 
-- as optimized for query-like tasks.

-- ########################## SUMMARY
-- In summary, functions are primarily used to calculate and return values, 
-- making them suitable for use in SQL queries and expressions. 
-- Stored procedures are used for encapsulating a series of actions 
-- or operations and are more versatile in terms of what they 
-- can do but are typically not used directly within SQL queries. 
-- The choice between them depends on the specific requirements 
-- of your database application.

######################### another comparison #################
#########################  Function #################################
/*
In MySQL, a function and a stored procedure are database objects 
that allow you to encapsulate a set of SQL statements for reuse. 
Here are definitions of both:

Function in MySQL:

A function in MySQL is a named database object that accepts 
one or more input parameters, performs some computation or 
operation using these parameters, and returns a single value 
as the result.
Functions are typically used to calculate and return values 
based on the input parameters.
They are defined using the CREATE FUNCTION statement and can
 be used in SQL queries and expressions.
Example of creating a simple MySQL function:
*/


CREATE DATABASE procd_db;
USE procd_db;


--Non-Parameterized Stored Procedure vs. Parameterized Stored Procedure

--1. Non-Parameterized Stored Procedure
--A non-parameterized stored procedure does not accept any parameters when called. 
--All logic and values used within the procedure are predefined inside the procedure itself.

create procedure test_sp
as
begin 
	drop table if exists Accounts_table
	create table Accounts_table(id int,name varchar(30))
	insert into accounts_table values(101,'Ashish'),(102,'Saurabh');
	select * from Accounts_table;
	end;

exec test_sp;


--2. Parameterized Stored Procedure
--A parameterized stored procedure accepts parameters when it is executed. 
--These parameters allow you to pass dynamic data to the procedure at runtime, 
--making the stored procedure more flexible and reusable.

create procedure Testparameter
(
@name varchar(30)
)
as
begin
drop table if exists dataofparameter 
create table dataofParameter(Name varchar(10))
insert into dataofParameter select @name
select * from dataofParameter;
end;

exec Testparameter @name='Suresh'

-- Default Parameter in stored procedure

create procedure default_parameter(
@id int=500,    -- By deafult id=500
@name varchar(30)
)
as
begin
drop table if exists dataofparameterdefault
create table dataofparameterdefault(id int,name varchar(30))
insert into dataofparameterdefault select @id,@name
select * from dataofparameterdefault;
end;

exec default_parameter @name='Ashish';
exec default_parameter @id=101,@name='Ashish';


CREATE TABLE EmployeeSales (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(255),
cost DECIMAL(10, 2),
emp_salary DECIMAL(10, 2),
quantity INT,
total_sales DECIMAL(12, 2)
);	

INSERT INTO EmployeeSales (emp_id, emp_name, cost, emp_salary, quantity, total_sales)
VALUES
    (1, 'John Doe', 100.50, 50000.00, 5, 2500.00),
    (2, 'Jane Smith', 75.25, 60000.00, 8, 4800.00),
    (3, 'Bob Johnson', 120.75, 55000.00, 3, 1650.00),
    (4, 'Alice Brown', 90.00, 52000.00, 6, 3120.00),
    (5, 'Charlie Wilson', 85.50, 48000.00, 4, 2040.00),
    (6, 'Eva Davis', 110.25, 65000.00, 7, 3850.00),
    (7, 'Mike Lee', 95.75, 70000.00, 9, 6412.50),
    (8, 'Lisa White', 70.00, 49000.00, 2, 980.00),
    (9, 'David Harris', 130.00, 75000.00, 10, 13000.00),
    (10, 'Sarah Jones', 105.50, 58000.00, 5, 5275.00);

SELECT * FROM EmployeeSales;
-- getmax()  ...highest salary employee details

select top 1  * from EmployeeSales 
order by emp_salary desc;

SELECT * 
FROM EmployeeSales
WHERE emp_salary = (SELECT MAX(emp_salary) FROM EmployeeSales);


-- Creating the Stored Procedure
CREATE PROCEDURE GetMaxSalaryEmployee
AS
BEGIN
    SELECT * 
    FROM EmployeeSales
    WHERE emp_salary = (SELECT MAX(emp_salary) FROM EmployeeSales);
END;
GO

EXEC GetMaxSalaryEmployee;

--The GO command is a batch separator in SQL Server, and it is used to signal the end of a batch of SQL statements to (SSMS).
--The GO command tells SSMS to treat all the statements before it as one batch and execute them together.


--  CREATE  procedure for update salary of employee 
-- emp id,salary

create procedure updated_salary
(
@id int,
@sal1 decimal(10,2)
)
as
begin
update EmployeeSales
set emp_salary=@sal1
where emp_id=@id
print'salary updated succesfully!';
end;
go

exec updated_salary @id=1,@sal1=20100;
select * from EmployeeSales;
-- max salary employee name

create procedure max_salary_employee
as
begin
select top 1 emp_name from EmployeeSales
order by emp_salary desc
end;
go

exec max_salary_employee

-- count of employee
create procedure count_employee
as
begin
select count(distinct(emp_name)) from EmployeeSales
end;
go

exec count_employee;


-- Create a function
CREATE FUNCTION dbo.SquareNumber (@num INT)
RETURNS INT
AS
BEGIN
    RETURN @num * @num; -- Function only accepts an input parameter
END;
GO

-- Use the function
SELECT dbo.SquareNumber(5) AS SquareOfFive;

-- Create a stored procedure
CREATE PROCEDURE dbo.AddNumbers
    @num1 INT,                -- Input parameter
    @num2 INT,                -- Input parameter
    @result INT OUTPUT        -- Output parameter
AS
BEGIN
    SET @result = @num1 + @num2; -- Calculating the sum
END;
GO

DECLARE @output_result INT;  -- Declare a variable to store the output

-- Execute the procedure with input values and capture the output
EXEC dbo.AddNumbers @num1 = 10, @num2 = 20, @result = @output_result OUTPUT;

-- Display the output
PRINT 'The Sum is: ' + CAST(@output_result AS VARCHAR);


--Triggers in MySQL
--A trigger is a special type of stored procedure in MySQL that automatically executes or fires in response to specific events, such as INSERT, UPDATE, or DELETE. 
--These events are triggered on a table and allow you to enforce business rules, data integrity, or audit changes automatically.

--Trigger Types:
--1. Row-Level Trigger:
--Definition: This type of trigger is activated once for each affected row in the table during an INSERT, UPDATE, or DELETE operation.
--Example: If an UPDATE statement modifies 5 rows, the row-level trigger will execute 5 times, once for each row.
--Usage: Row-level triggers are useful when you need to perform an action for each individual record, such as validating or logging each row's changes.
--Example Use Case:

--A row-level trigger could be used to update a timestamp or log each individual change in a system that tracks record modifications.
--2. Statement-Level Trigger:
--Definition: This trigger is executed once for each event that occurs on the table, regardless of how many rows are affected.
--Example: If you delete 10 rows, the statement-level trigger will fire only once, not 10 times.
--Usage: Statement-level triggers are suitable for performing tasks where the action doesn't depend on the number of rows affected, such as updating an aggregate value or logging the overall operation.
--Example Use Case:

--A statement-level trigger could be used to log the fact that a particular DELETE operation has occurred, without needing to handle each row separately.
--Types of Triggers in MySQL
--Triggers in MySQL can be classified based on the time they are fired and the type of operation that causes them:

--1. Before Insert (BEFORE INSERT):
--Fired: Before a new record is inserted into a table.
--Usage: Useful for validating data or modifying the record before it gets inserted into the table.
--Example: Automatically convert all lowercase names to uppercase before inserting a new employee.

--2. After Insert (AFTER INSERT):
--Fired: After a new record is successfully inserted into a table.
--Usage: Commonly used for logging or performing actions that depend on the inserted data.
--Example: Create a log entry after an employee's information is inserted.

--3. Before Update (BEFORE UPDATE):
--Fired: Before an existing record is updated.
--Usage: Useful for validating or modifying data before the update occurs.
--Example: Ensure that the salary field is within a valid range before updating an employee's salary.

--4. After Update (AFTER UPDATE):
--Fired: After a record has been updated.
--Usage: Used for logging, updating other related tables, or triggering additional processes after the update is completed.
--Example: Update a last_updated timestamp field after updating a product's price.

--5. Before Delete (BEFORE DELETE):
--Fired: Before a record is deleted from the table.
--Usage: Often used to check conditions before allowing deletion or to preserve data before deletion (e.g., archiving).
--Example: Prevent the deletion of an employee record if the employee has outstanding tasks.

--6. After Delete (AFTER DELETE):
--Fired: After a record is deleted from the table.
--Usage: Useful for maintaining logs, performing cleanup tasks, or updating related records after a deletion.
--Example: Delete corresponding records in an EmployeeTasks table after an employee record is deleted.

CREATE DATABASE trig_db;
USE trig_db;

CREATE TABLE person(
name varchar(45) NOT NULL,
occupation varchar(35) NOT NULL,
working_date date,
working_hours INT
);


INSERT INTO person VALUES
('Robin', 'Scientist', '2020-10-04', 12),
('Warner', 'Engineer', '2020-10-04', 10),
('Peter', 'Actor', '2020-10-04', 13),
('Marco', 'Doctor', '2020-10-04', 14),
('Brayden', 'Teacher', '2020-10-04', 12),
('Antonio', 'Business', '2020-10-04', 11);


SELECT * FROM person;
-- new  ..query values ....  
-- old ..already present


-- 1) before insert

CREATE TABLE person (
    emp_name VARCHAR(100),
    occupation VARCHAR(100),
    start_date DATE,
    working_hours INT
);

-- Create INSTEAD OF INSERT Trigger for working_hours check
CREATE TRIGGER before_insert_check_wh
ON person
INSTEAD OF INSERT
AS
BEGIN
    -- Check if working_hours is less than 0
    INSERT INTO person (emp_name, occupation, start_date, working_hours)
    SELECT 
        emp_name,
        occupation,
        start_date,
        CASE 
            WHEN working_hours < 0 THEN 0 -- Set to 0 if negative
            ELSE working_hours
        END
    FROM inserted;
END;

-- Insert a row with negative working_hours
INSERT INTO person (emp_name, occupation, start_date, working_hours)
VALUES ('abc', 'sweeper', '2024-02-02', -6);

-- Select the rows to verify that working_hours is set to 0
SELECT * FROM person;

-- Create stored procedure to insert data
CREATE PROCEDURE InsertPerson
    @emp_name VARCHAR(100),
    @occupation VARCHAR(100),
    @start_date DATE,
    @working_hours INT
AS
BEGIN
    -- Check if working_hours is less than 0, set it to 0
    IF @working_hours < 0
    BEGIN
        SET @working_hours = 0;
    END
    
    -- Insert the data into the table
    INSERT INTO person (emp_name, occupation, start_date, working_hours)
    VALUES (@emp_name, @occupation, @start_date, @working_hours);
END;

-- Insert a row with negative working_hours
EXEC InsertPerson 'abc', 'sweeper', '2024-02-02', -6;

-- Select to check the inserted data
SELECT * FROM person;

# trigger
# doctor ....engineer
USE trig_db;

CREATE TABLE person1 (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,  -- Automatically increments the employee ID
    emp_name VARCHAR(100),                 -- Employee's name
    occupation VARCHAR(50),                -- Employee's occupation (e.g., Doctor, Engineer)
    start_date DATE,                       -- Employee's start date
    working_hours INT                      -- Employee's working hours
);

-- Create an INSTEAD OF INSERT Trigger in SQL Server to modify occupation
CREATE TRIGGER before_insert_occ
ON person1
INSTEAD OF INSERT
AS
BEGIN
    -- Check if the occupation is 'Doctor'
    INSERT INTO person1 (emp_name, occupation, start_date, working_hours)
    SELECT 
        emp_name,
        CASE 
            WHEN occupation = 'Doctor' THEN 'Engineer'
            ELSE occupation
        END,
        start_date,
        working_hours
    FROM inserted;
END;
GO

INSERT INTO person1 (emp_name, occupation, start_date, working_hours)
VALUES ('xyz', 'Doctor', '2024-02-02', -6);

SELECT * FROM person1;


--Same example using procedures

CREATE PROCEDURE InsertPerson
    @emp_name VARCHAR(100),
    @occupation VARCHAR(50),
    @start_date DATE,
    @working_hours INT
AS
BEGIN
    -- If the occupation is 'Doctor', change it to 'Engineer'
    IF @occupation = 'Doctor'
    BEGIN
        SET @occupation = 'Engineer';
    END

    -- Insert the data into the person table
    INSERT INTO person (emp_name, occupation, start_date, working_hours)
    VALUES (@emp_name, @occupation, @start_date, @working_hours);
END;
GO

EXEC InsertPerson @emp_name = 'John Doe', @occupation = 'Doctor', @start_date = '2024-02-01', @working_hours = 40;
EXEC InsertPerson @emp_name = 'Jane Smith', @occupation = 'Engineer', @start_date = '2024-03-01', @working_hours = 35;

SELECT * FROM person;

-- 2) AFTER INSERT

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

CREATE TRIGGER after_insert_product_price
ON Products
AFTER INSERT
AS
BEGIN
    -- Check if the price of the product being inserted is less than 0
    IF EXISTS (SELECT 1 FROM inserted WHERE Price < 0)
    BEGIN
        -- If the price is less than 0, update the price to 0
        UPDATE Products
        SET Price = 0
        FROM Products
        INNER JOIN inserted ON Products.ProductID = inserted.ProductID
        WHERE inserted.Price < 0;
    END
END;
GO

-- Insert a product with a valid price
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (1, 'Laptop', 500);

-- Insert a product with an invalid price (less than 0)
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (2, 'Phone', -100);  -- This will be corrected by the trigger

SELECT * FROM Products;


--Same example using procedures

create procedure before_insert_rule
(
@id int,
@name varchar(30),
@salary decimal(10,2)
)
as
begin
	if @salary<0
	begin
		set @salary=0
	end
	insert into Products( ProductID,ProductName,Price)
	values(@id,@name,@salary)
end;
go

exec before_insert_rule @id=10,@name='Mukesh',@salary=200;
exec before_insert_rule @id=11,@name='Mahesh',@salary=-200;

select * from Products

-- Creating studentinfo table
CREATE TABLE studentinfo
(
    stud_id INT,
    stud_code VARCHAR(15),
    stud_name VARCHAR(40),
    subject_name VARCHAR(20),
    marks INT,
    phone VARCHAR(15),
    PRIMARY KEY(stud_id)
);

-- Creating studentdetails table
CREATE TABLE studentdetails
(
    stud_id INT,
    stud_code VARCHAR(15),
    stud_name VARCHAR(40),
    subject_name VARCHAR(20),
    marks INT,
    phone VARCHAR(15),
    reg_date DATE,
    PRIMARY KEY(stud_id)
);

-- Creating AFTER INSERT trigger to insert data into studentdetails
CREATE TRIGGER after_insert_details
ON studentinfo
AFTER INSERT
AS
BEGIN
    INSERT INTO studentdetails (stud_id, stud_code, stud_name, subject_name, marks, phone, reg_date)
    SELECT 
        stud_id, 
        stud_code, 
        stud_name, 
        subject_name, 
        marks, 
        phone, 
        GETDATE()  -- Use GETDATE() to get the current date
    FROM INSERTED;  -- INSERTED is the special table holding the new inserted row
END;
GO

-- Inserting data into studentinfo
INSERT INTO studentinfo (stud_id, stud_code, stud_name, subject_name, marks, phone)
VALUES (11, 'a21', 'abc', 'physics', 45, '56667');

-- Viewing data in studentinfo
SELECT * FROM studentinfo;

-- Viewing data in studentdetails
SELECT * FROM studentdetails;


-- 3) before update

CREATE TABLE salesinfo(
    id INT PRIMARY KEY IDENTITY(1,1),  -- Identity column for auto-increment
    product VARCHAR(100),
    quantity INT,
    fiscalyear INT,
    CONSTRAINT chk_fiscalyear CHECK(fiscalyear BETWEEN 2000 AND 2050),
    CONSTRAINT chk_quantity CHECK(quantity > 0),
    CONSTRAINT unique_product_fiscalyear UNIQUE (product, fiscalyear)
);

INSERT INTO salesinfo(product, quantity, fiscalyear) VALUES
('Phone', 12, 2020),
('Laptop', 5, 2023),
('Speaker', 45, 2021);

-- Display the data
SELECT * FROM salesinfo;

CREATE TRIGGER before_update_quantity
ON salesinfo
AFTER UPDATE
AS
BEGIN
    DECLARE @old_quantity INT, @new_quantity INT, @id INT;

    -- Get old and new quantity and id values
    SELECT @old_quantity = quantity FROM DELETED;
    SELECT @new_quantity = quantity, @id = id FROM INSERTED;

    -- If new quantity is less than the old quantity, raise an error
    IF @new_quantity < @old_quantity
    BEGIN
        RAISERROR('New quantity cannot be less than the old quantity', 16, 1);
        ROLLBACK;  -- Rollback the transaction
    END
END;
GO

-- This update will trigger the error because the new quantity is less than the old quantity
UPDATE salesinfo
SET quantity = 3
WHERE id = 1;

-- Display the data to check if the quantity has not been updated
SELECT * FROM salesinfo;

-- This update will be allowed because the new quantity is greater than the old one
UPDATE salesinfo
SET quantity = 5
WHERE id = 1;

-- Display the data again to verify the update
SELECT * FROM salesinfo;


-- 4) after update
-- studentinfo..phone number update
-- studentdetails
-- 
SELECT * FROM  studentinfo;
SELECT * FROM studentdetails ;

-- Create Trigger
CREATE TRIGGER after_update_phone
ON studentinfo
AFTER UPDATE
AS
BEGIN
    -- Check if the phone number has been updated and update studentdetails table accordingly
    IF UPDATE(phone)
    BEGIN
        UPDATE studentdetails
        SET phone = i.phone
        FROM studentdetails sd
        INNER JOIN inserted i ON sd.stud_id = i.stud_id;
    END
END;
GO

-- Update phone number in studentinfo
UPDATE studentinfo
SET phone = '9999'
WHERE stud_id = 11;

-- Select from studentinfo table
SELECT * FROM studentinfo;

-- Select from studentdetails table
SELECT * FROM studentdetails;

-- Drop the trigger
DROP TRIGGER after_update_phone;


# 5) BEFORE DELETE


CREATE TABLE salaries (
emp_num INT PRIMARY KEY,
valid_from DATE NOT NULL,
amount DEC(8 , 2 ) NOT NULL DEFAULT 0
);

INSERT INTO salaries (emp_num, valid_from, amount)
VALUES
(102, '2020-01-10', 45000),
(103, '2020-01-10', 65000),
(105, '2020-01-10', 55000),
(107, '2020-01-10', 70000);

CREATE TABLE salary_archives (
id INT PRIMARY KEY AUTO_INCREMENT,
emp_num INT,
valid_from DATE NOT NULL,
amount DEC(18 , 2 ) NOT NULL DEFAULT 0,
deleted_time TIMESTAMP DEFAULT NOW()
);

-- salaries..DELETE then insert
-- salary_archives

DELIMITER &&
CREATE TRIGGER before_delete_rec BEFORE DELETE
ON salaries FOR EACH ROW
BEGIN
INSERT INTO salary_archives(emp_num,valid_from,amount) 
VALUES(old.emp_num,old.valid_from,old.amount);
END &&
DELIMITER ;

DELETE FROM salaries WHERE emp_num=102;
SELECT * FROM salaries;
SELECT * FROM salary_archives;

-- after delete
-- AFTER DELETE
-- emp ...id name salary
-- emp_details  name... description...user(),
# name has resigned from company

CREATE TABLE emp
(
empid INT PRIMARY KEY,
empname VARCHAR(40),
salary DECIMAL(10,6)
);

CREATE TABLE emp_details
(name VARCHAR(40),
status1 VARCHAR(40)
);


INSERT INTO emp VALUES(101,'abc',450);

DELIMITER &&
CREATE TRIGGER after_delete_info AFTER DELETE
ON emp FOR EACH ROW
BEGIN
INSERT INTO emp_details VALUES(old.empname,user());
END &&
DELIMITER ;

SELECT user();

DELETE FROM emp WHERE empid=101;
select * from emp;
SELECT * FROM emp_details;

# Index Function

# An index is a data structure that allows to add 
# indexes in existing table
# used for faster retriveal of data
# create an entry for each value of indexed column
# find records quickly 

# by default special indexes primary key and unique key ...PRIMARY

# how to create index
# SYNTAX

-- CREATE TABLE newemp
-- (
-- col1 INT PRIMARY KEY,
-- col2 INT NOT NULL,
-- col3 INT NOT NULL,
-- INDEX(col2,col3)
-- );

# types of INDEXES
# storage engine   index type 
# InnoDB           BTREE
# MEMORY/HEAP      HASH BTREE
# MYISAM            BTREE

create database indexdb;
use indexdb;


CREATE TABLE emp_index
(
empid INT PRIMARY KEY,
empname VARCHAR(20) NOT NULL,
salary DECIMAL(10,6) NOT NULL,
mobno BIGINT,
);

CREATE INDEX idx_empname_mobno
ON emp_index (empname, mobno);

INSERT INTO emp_index VALUES
(1,'abc',455,8888),
(2,'raj',465,3338),
(3,'avi',955,7788),
(4,'sana',615,5988);

select empname,salary from emp_index where empid=3;
exec sp_help emp_index

create table info_details(
emp_id int primary key,emp_name varchar(30),emp_dob date);

insert into info_details values(101,'Mukesh','2001-11-10'),(102,'Rajesh','2000-08-23');
exec sp_help info_details;

create index index_1 
on info_details(emp_dob);

exec sp_help info_details;

# Extra Questions
# How will i retrive all records from employee 1,those should not be present in employee 2.
select * from employee2 minus select * from employee1;

select * from employee2 except select * from employee1;

select e1.* from empolyee e1 
left join employee e2
on e1.id=e2.id;

# select distinct record from a table
select distinct studentid from student;

# show tow ways of showing accurate count of records.
select * from record;
select count(*) from record;

# writte query to diplay current date
select curdate();
select now();

# to fetch common records from two table

select id,name from table1
where region='India'
intersect
select id,name from table2
where region='India';

select initcap(mukesh);
select concat(upper(substring('mukesh',1,1)),
lower(substring('mukesh' from 2)));

select upper('mukesh');
select lower('MUkesh');

# How to fetch alternate records from table.
select * from student
where (id%2)=1;  --- For odd number

select * from student
where (id%2)=0;  --- For even number

# how to select unique records from a table
select distinct name from table_1;

# To ftech first 5 char of the string
select substring('Mukesh',1,5) as first_5_char;
select substr('Mukesh',1,5) as first_5_char;

#How to use replace function.
select replace(name,'mukesh','Mukesh') as new_column_name
from table_name;


--Cursors 
create database cursor_db;
use cursor_db;

create table employee
( emp_ID int
, emp_NAME varchar(50)
, DEPT_NAME varchar(50)
, SALARY int);

insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh','Finance',5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);

DECLARE @emp_id INT, @new_salary DECIMAL(10, 2);

-- Declare the cursor for employees in the 'IT' department
DECLARE emp_cursor CURSOR FOR
SELECT emp_id, salary
FROM employee
WHERE DEPT_NAME = 'IT';

-- Open the cursor
OPEN emp_cursor;

-- Fetch the first row
FETCH NEXT FROM emp_cursor INTO @emp_id, @new_salary;

-- Loop through all rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Update the salary for each employee
    UPDATE employee
    SET salary = @new_salary * 1.1
    WHERE emp_id = @emp_id;

    -- Fetch the next row
    FETCH NEXT FROM emp_cursor INTO @emp_id, @new_salary;
END;

-- Close and deallocate the cursor
CLOSE emp_cursor;
DEALLOCATE emp_cursor;

-----------------------------------------------------------------------------------------------------------------------------------------------------
-- SQL Transactions: Set of rules,which is used to carry day to day work.
--Transactions follow the ACID properties: Atomicity, Consistency, Isolation, and Durability.

--Key Features of Transactions
--Atomicity:

--Ensures that all operations within a transaction are completed successfully; otherwise, none of them are applied to the database.
--Example: If transferring money between accounts, either both debit and credit operations occur, or neither does.

--Consistency:

--Guarantees that a transaction transforms the database from one valid state to another.
--Example: The total amount in both accounts before and after a transfer remains consistent.

--Isolation:

--Ensures that concurrent transactions do not interfere with each other.
--Example: If two users are updating the same record simultaneously, each transaction is isolated and does not see the intermediate states of the other.

--Durability:

--Once a transaction is committed, its changes are permanently stored in the database, even in the case of a system failure.

---------------------------------------------------------------------------------------------------------------------------------------------------------
--Explicit vs Implicit Transactions

--1. Explicit Transactions
--In explicit transactions, the user manually specifies the start and end of a transaction using BEGIN TRANSACTION, COMMIT TRANSACTION, and optionally ROLLBACK TRANSACTION.

--Key Characteristics:
--The transaction starts only when explicitly invoked with BEGIN TRANSACTION.
--Changes are not finalized (committed) until explicitly committed using COMMIT TRANSACTION.
--If an error occurs or if needed, the transaction can be undone with ROLLBACK TRANSACTION.

--2. Implicit Transactions
--In implicit transactions, the transaction is automatically started by SQL Server whenever a statement that modifies data (like INSERT, UPDATE, or DELETE) is executed. However, the user must manually commit or roll back the transaction.

--Key Characteristics:
--SQL Server starts a transaction automatically before executing any statement that modifies data.
--The user must manually commit or roll back the transaction.
--It is controlled by enabling the IMPLICIT_TRANSACTIONS setting.
--Must be enabled using SET IMPLICIT_TRANSACTIONS ON.

--Compilation in SQL Server (or in general for any programming language) is a process 
--where the system checks the code for syntactical errors and binds the code with the 
--necessary database objects, such as tables and columns.

--------------------------------------------------------------------------------------------------------------------------------------
-- Exceptional Handling

--Exception handling in SQL Server allows you to manage errors and handle unexpected conditions in your T-SQL code. 
--It ensures that your application can respond gracefully to runtime errors. 
--SQL Server provides mechanisms like TRY...CATCH blocks for handling exceptions.

--TRY: Contains the code that might throw an error.
--CATCH: Contains the code to handle the error if one occurs.

--BEGIN TRY
--    -- Code that might throw an error
--END TRY
--BEGIN CATCH
--    -- Error handling code
--    SELECT 
--        ERROR_MESSAGE() AS ErrorMessage,
--        ERROR_NUMBER() AS ErrorNumber,
--        ERROR_SEVERITY() AS ErrorSeverity,
--        ERROR_STATE() AS ErrorState,
--        ERROR_LINE() AS ErrorLine,
--        ERROR_PROCEDURE() AS ErrorProcedure;
--END CATCH;

BEGIN TRY
    -- Attempt to divide by zero
    DECLARE @result INT;
    SET @result = 10 / 0;
END TRY
BEGIN CATCH
    -- Handle the error
    SELECT 
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_LINE() AS ErrorLine;
END CATCH;

begin try
select * from employees;
select 1/0;
end try
begin catch
select
		ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_LINE() AS ErrorLine;
end catch

begin try
select * from employees;
select 1/0;
end try
begin catch
select
		ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_LINE() AS ErrorLine;
end catch

begin try
select * from employees;
select 1/0;
end try
begin catch
select 'Number'=cast(ERROR_MESSAGE() as varchar(30))+'=severity='+cast(ERROR_SEVERITY() as varchar(10))
end catch

---- Anonymous Block in SQL
--An anonymous block is a block of SQL or procedural code that is written and executed without being stored in the database. 
--It is not given a name, and as such, it cannot be reused or called later. 
--It is typically used for temporary or ad-hoc operations.
--code which have begin in it .
-- ex. Exceptional Handling

--Using exceptional handling in procedure
create procedure excep_handling
as
begin
begin try
select * from employees;
select 10/0;
end try
begin catch
select
		ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_LINE() AS ErrorLine;
end catch
end

exec excep_handling

-- Create Employees Table
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Employees1 (EmployeeID, Name, Salary)
VALUES (1, 'John Doe', 50000),
       (2, 'Jane Smith', 60000);

-- Create ErrorLog Table
CREATE TABLE ErrorLog (
    ErrorID INT IDENTITY(1,1) PRIMARY KEY,
    ErrorMessage NVARCHAR(MAX),
    ErrorNumber INT,
    ErrorSeverity INT,
    ErrorState INT,
    ErrorLine INT,
    ErrorDate DATETIME DEFAULT GETDATE()
);

CREATE PROCEDURE UpdateEmployeeSalary
    @EmployeeID INT,
    @NewSalary DECIMAL(10, 2)
AS
BEGIN
    BEGIN TRY
        -- Update Employee's Salary
        UPDATE Employees1
        SET Salary = @NewSalary
        WHERE EmployeeID = @EmployeeID;

        -- Check if any row was updated
        IF @@ROWCOUNT = 0
        BEGIN
            THROW 50001, 'No employee found with the given ID.', 1;
        END

        PRINT 'Salary updated successfully.';
    END TRY
    BEGIN CATCH
        -- Handle Errors
        INSERT INTO ErrorLog (ErrorMessage, ErrorNumber, ErrorSeverity, ErrorState, ErrorLine)
        VALUES (
            ERROR_MESSAGE(),
            ERROR_NUMBER(),
            ERROR_SEVERITY(),
            ERROR_STATE(),
            ERROR_LINE()
        );

        -- Optionally re-throw the error
        THROW;
    END CATCH
END;

EXEC UpdateEmployeeSalary @EmployeeID = 1, @NewSalary = 55000;
EXEC UpdateEmployeeSalary @EmployeeID = 10, @NewSalary = 45000;
SELECT * FROM ErrorLog;

-- Exceptional handling in Transaction
create table bank(id int,name varchar(30),salary int);
insert into bank values(101,'Mukesh',10000),(102,'Ajay',20000);

Begin Try
Begin transaction

Update Bank
set salary =salary -500
where id=102

select 1/0   -- Here error is present there ,so it will go to catch

update bank
set salary =salary +500
where id=101

commit
end try
begin catch
rollback
end catch

select * from bank;


Begin Try
Begin transaction

Update Bank
set salary =salary -500
where id=102

--select 1/0   ---- Here error is not present there ,so it will not go to catch

update bank
set salary =salary +500
where id=101

commit
end try
begin catch
rollback
end catch

select * from bank;

-- Create the stored procedure
CREATE PROCEDURE UpdateBankSalaries1
AS
BEGIN
    BEGIN TRY
        -- Start the transaction
        BEGIN TRANSACTION

        -- Deduct 500 from the salary of employee with id 102
        UPDATE Bank
        SET salary = salary - 500
        WHERE id = 102;

        -- Optionally introduce an error to test the rollback
        select 1/0  -- Uncomment this line to simulate an error

        -- Add 500 to the salary of employee with id 101
        UPDATE Bank
        SET salary = salary + 500
        WHERE id = 101;

        -- Commit the transaction if no error occurs
        COMMIT
    END TRY
    BEGIN CATCH
        -- Rollback the transaction in case of an error
        ROLLBACK;

        -- Optionally, you can log the error message, error number, etc. for debugging
        PRINT 'Error: ' + ERROR_MESSAGE();
    END CATCH
END;

EXEC UpdateBankSalaries;
SELECT * FROM Bank;


---------------------------------------------------------------------------------------------------------------------------------

-- Scenario: You're tasked with designing a database for a new e-commerce application.
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(15),
    Address NVARCHAR(200),
    City NVARCHAR(50),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20),
    Country NVARCHAR(50),
    DateJoined DATETIME DEFAULT GETDATE()
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Description NVARCHAR(500),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(50),
    Description NVARCHAR(200)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    Status NVARCHAR(20),
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10, 2),
    PaymentMethod NVARCHAR(50),
    PaymentStatus NVARCHAR(20),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ShippingDate DATETIME,
    ShippingMethod NVARCHAR(50),
    ShippingAddress NVARCHAR(200),
    ShippingStatus NVARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
--------------------------------------------------------------------------------------------------------
--Scenario: Business requirements change, and you need to modify the data type of the Price 
--column to allow for more decimal places.
--Question: How would you modify the Price column in the Products table to have a precision of 
--12 and a scale of 4?

ALTER TABLE Products
ALTER COLUMN Price DECIMAL(12, 4);

-------------------------------------------------------------------------------------------------------
--Scenario: You discover that the Products table was created with an incorrect column name. 
--You decide to remove the table and recreate it with the correct structure.
--Question: Write the SQL statement to completely remove the Products table from the 
--database.

CREATE TABLE NewProducts (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Description NVARCHAR(500),
    Price DECIMAL(12, 4),
    QuantityInStock INT,
    Category NVARCHAR(50)
);

INSERT INTO NewProducts (ProductID, ProductName, Description, Price, QuantityInStock, Category)
SELECT ProductID, ProductName, Description, Price, QuantityInStock, Category
FROM Products;

DROP TABLE Products;
SELECT * FROM NewProducts;

--------------------------------------------------------------------------------------
--Scenario: You need to add a new column to track whether a customer is active or inactive.
--Question: Write the SQL statement to add a new column named IsActive to the Customers 
--table, with a default value of 1 (for active).

ALTER TABLE Customers
ADD IsActive BIT DEFAULT 1;

------------------------------------------------------------------------------------------------------------
--Scenario: A previously required column (e.g., Phone Number) now allows null values.
--Question: How would you modify the Phone Number column in the Employees table to allow 
--NULL values?

ALTER TABLE Employees
ALTER COLUMN PhoneNumber INT NULL;

---------------------------------------------------------------------------------------------------------------
--Scenario: You want to ensure that each customer has a unique email address.
--Question: Write the SQL statement to add a unique constraint to the Email column in the 
--Customers table.

ALTER TABLE Customers
ADD CONSTRAINT UQ_Email UNIQUE (Email);
---------------------------------------------------------------------------------------------------------------
How many types of constraints are present in SQL Server?
6
In SQL Server, there are six main types of constraints12:

NOT NULL: Ensures that a column cannot have a NULL value.
CHECK: Ensures that all values in a column satisfy a specific condition.
DEFAULT: Sets a default value for a column if no value is specified.
UNIQUE: Ensures that all values in a column are different.
PRIMARY KEY: Uniquely identifies each row in a table and combines NOT NULL and UNIQUE constraints.
FOREIGN KEY: Ensures referential integrity between tables by linking a column or a set of columns in one table to the primary key or a unique key in another table.

---------------------------------------------------------------------------------------------------------------
--Q. A table named "Employees" contains the following columns: EmployeeID, FirstName, 
--LastName, Salary. Write a query to display the full name of each employee in a single 
--column named "FullName"

SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;

---------------------------------------------------------------------------------------------------------------
--Q. A table named "Customers" contains the following columns: CustomerID, 
--CustomerName, Phone. The "Phone" column can contain null values. Write a query to 
--display the customers name and the phone number, replacing any null values in the 
--"Phone" column with "N/A".

SELECT CustomerName, ISNULL(Phone, 'N/A') AS Phone
FROM Customers;

---------------------------------------------------------------------------------------------------------------
--Q. A table named "Products" contains the following columns: ProductID, ProductName, 
--SupplierID. The "SupplierID" column can contain null values. Write a query to display the 
--product name and the supplier ID, using the "Coalesce" function to replace any null values 
--in the "SupplierID" column with 0.

SELECT ProductName, COALESCE(SupplierID, 0) AS SupplierID
FROM Products;

---------------------------------------------------------------------------------------------------------------
--Q. A table named "Orders" contains the following columns: OrderID, CustomerID, 
--OrderDate, ShippingAddress. The "ShippingAddress" column can contain null values. 
--Write a query to display the order ID and the shipping address, using the "IsNull" function 
--to replace any null values in the "ShippingAddress" column with "Not Provided".

SELECT OrderID, ISNULL(ShippingAddress, 'Not Provided') AS ShippingAddress
FROM Orders;

---------------------------------------------------------------------------------------------------------------
--Q. You have two tables: "Orders_2023" and "Orders_2024", both with the same columns: 
--OrderID, CustomerID, OrderDate, TotalAmount. Write a query to combine all orders from 
--both years into a single result set, removing any duplicate rows.

SELECT OrderID, CustomerID, OrderDate, TotalAmount
FROM Orders_2023

UNION

SELECT OrderID, CustomerID, OrderDate, TotalAmount
FROM Orders_2024;

---------------------------------------------------------------------------------------------------------------
--Q. You have two tables: "Products_A" and "Products_B", both with the same columns: 
--ProductID, ProductName, UnitPrice. Write a query to combine all products from both 
--tables into a single result set, including any duplicate rows.

SELECT ProductID, ProductName, UnitPrice
FROM Products_A

UNION ALL

SELECT ProductID, ProductName, UnitPrice
FROM Products_B;

---------------------------------------------------------------------------------------------------------------
--Scenario: A company wants to evaluate employee performance based on sales targets. 
--Question: Write an SQL query to display a list of employees sorted by their total sales achieved, 
--in descending order. Additionally, sort employees with the same total sales by their hire date 
--(oldest first).

SELECT EmployeeID, SUM(SalesAmount) AS TotalSales, HireDate
FROM Sales
GROUP BY EmployeeID, HireDate
ORDER BY TotalSales DESC, HireDate ASC;

---------------------------------------------------------------------------------------------------------------
--Scenario: A company wants to analyze sales performance across different regions.
--Question: Write an SQL query to calculate the total sales for each region. Only include 
--regions where the total sales exceed a certain threshold (e.g., $100,000).

SELECT Region, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY Region
HAVING SUM(SalesAmount) > 100000;

---------------------------------------------------------------------------------------------------------------
--2. Product Categories with High Sales
-- Scenario: A retail store wants to identify product categories with high sales volume.
-- Question: Write an SQL query to find the total sales for each product category. Only 
--include categories where the average sales per order are above a specified value.

SELECT Category, SUM(SalesAmount) AS TotalSales, AVG(SalesAmount) AS AvgSalesPerOrder
FROM Sales
GROUP BY Category
HAVING AVG(SalesAmount) > 500;  -- Replace 500 with your desired threshold value

---------------------------------------------------------------------------------------------------------------
--3. Customers with Multiple Orders
-- Scenario: A company wants to identify customers who have placed multiple orders.
-- Question: Write an SQL query to find the number of orders placed by each customer. 
--Only include customers who have placed more than a certain number of orders (e.g., 3 
--orders).

SELECT CustomerID, COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 3;  -- Replace 3 with your desired threshold value

---------------------------------------------------------------------------------------------------------------
--1. Extracting Domain Names from Email Addresses
--Scenario: You have a table of customer data with an "Email" column. You need to 
--extract the domain name (e.g., "gmail.com", "yahoo.com") from each email address.

DECLARE @name VARCHAR(30)
SET @name = 'mukesh.jaiswal2k1@gmail.com'

SELECT 
    SUBSTRING(@name, CHARINDEX('@', @name) + 1, LEN(@name) - CHARINDEX('@', @name)) AS Domain;

---------------------------------------------------------------------------------------------------------------
--2. Formatting Phone Numbers
--Scenario: You have a table of customer data with a "Phone" column containing phone 
--numbers in various formats. You need to standardize the phone number format to "(XXX) 
--XXX-XXXX"

SELECT 
    Phone,
    CONCAT('(', SUBSTRING(Phone, 1, 3), ') ', SUBSTRING(Phone, 4, 3), '-', SUBSTRING(Phone, 7, 4)) AS StandardizedPhone
FROM 
    Customers;

---------------------------------------------------------------------------------------------------------------
--3. Extracting Initials from Names
--Scenario: You have a table of employee data with "FirstName" and "LastName" 
--columns. You need to extract the initials of each employee (e.g., "J.D." for John Doe).

SELECT 
    FirstName,
    LastName,
    CONCAT(LEFT(FirstName, 1), '.', LEFT(LastName, 1), '.') AS Initials
FROM 
    Employees;

---------------------------------------------------------------------------------------------------------------
--SELECT DATEDIFF('2020-11-30 23:59:59','2020-11-29');
--a) -1
--b) 0
--c) 1
--d) 00:00:01

The function will return the difference in days, ignoring the time portion. 

The difference between 2020-11-30 and 2020-11-29 is 1 day.
