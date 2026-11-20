-- create new database
create database batch10;

-- use database
use batch10;

-- create department table
create table Dept(
deptno int primary key,
dname varchar(50),
loc varchar(50)
);

 -- create customer table
 create table Customer(
 cusid int primary key,
 cname varchar(20),
 address varchar(20),
 phno decimal(10,1) check(length(phno)=10)
 );
 
  -- create product table
  create table Product(
  pid int primary key,
  pname varchar(50),
  prize decimal(10,2),
  quantity int,
  cusid int,
  foreign key (cusid) 
  references customer (cusid)
  );
  
  desc customer;
  desc product;
  desc dept;
  
  use batch10;
  
  -- Rename the table
  Alter table customer 
  rename to cus;
  
  use batch10;
  
 -- Adding a New column to the existing table
 alter table cus 
 add column gender varchar(10);
 
 -- adding multiple columns to the existing table
 alter table cus
 add column pincode decimal(10,2),
 add column mailid varchar(50);
 
 desc cus;
 
 use batch10;
 
 -- Droping the single column from existing table
 alter table cus
 drop column gender;
 
 desc cus;
 
 -- droping multiple coluempnomns from the existing table
 alter table cus
 drop column pincode,
 drop column mailid;
 
 desc cus;
 
 -- Renaming the column name in the existing table
 alter table cus
 rename column address to state;
 
 desc cus;
 
-- Changing the datatype of Existing columns
Alter table cus
modify column state char(30);
 
desc cus;

-- Changing the constraints of the existing columns
alter table cus
modify column cname varchar(20) not null;

desc cus;

-- Changing both the datatype and constraints of the existing coulmns
alter table cus
modify column state varchar(30) not null;

desc cus;

use batch10;

-- Create Employee table
create table employee(
empno int primary key,
first_name varchar(50),
last_name varchar(50),
age int ,
hired_date date,
sal decimal(10,2),
comm decimal(10,2),
job varchar(30),
mgr varchar(20)
);

desc employee;

-- add new column to employee table
alter table employee
add column deptno int;

desc employee;

-- adding the constraints to the deptno column in employee table
alter table employee
add constraint FK_employee_dept
foreign key (deptno)
references dept (deptno);

desc employee;

-- inserting the data into employee table without having the data in child table (gives error)
insert into employee(empno,first_name,last_name,age,hired_date,sal,comm,job,mgr,deptno)
values(7879,'Sanket','Gowdar',22,'2026-01-22',10000,2000,'SDEI','7839',10);

-- inserting data into dept table
insert into dept(deptno,dname,loc)
values(10,'python','bengaluru');

insert into dept(deptno,dname,loc)
-- values(20,'java','bengaluru'),
values(30,'SQL','chennai'),
(40,'web','Hyderbad');

desc dept;

insert into employee(empno,first_name,last_name,age,hired_date,sal,comm,job,mgr,deptno)
values(7879,'Sanket','Gowdar',22,'2026-01-22',10000,2000,'SDEI','7839',10);

-- to view the dept table data
SELECT * FROM dept;

-- to view the employee table data
select * from employee;
