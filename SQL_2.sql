-- droping database of batch10
drop database batch10;

-- creating new database
create database batch10;

-- use particular database
use batch10;

-- create table for course
create table course(
	course_id int primary key,
	course_name varchar(50),
	duration varchar(50),
	fees decimal(10,2)
);

-- create a student table and applying the foreign key relation
create table student(
	student_id int primary key,
    student_name varchar(50) not null,
    email varchar(100) unique,
    age int,
    city varchar(50),
    course_id int,
    foreign key (course_id) -- foreign key (column_name) from own table
    references course(course_id) -- referencing the table(column_name) from child table
);

-- describe table
desc course;
desc student;

-- renaming table name
alter table student
rename to stu;

-- add new column to the student table
alter table stu
add column phone_number varchar(50);

desc stu;

-- adding multiple new coulmns to the student table
alter table stu
add column gender varchar(10),
add column dob date;

desc stu;

-- drop the column from the student table
alter table stu
drop column phone_number;

desc stu;

-- drop the multiple coulmns from the student table
alter table stu
drop column gender,
drop column dob;

desc stu;

-- renaming column name
alter table stu
rename column student_id to stu_id;

desc stu;

-- modifying the datatype 
alter table stu
modify column student_name varchar(100);

desc stu;

-- modify constraints in the column in table
alter table stu
modify column student_name char(20) null;

desc stu;

-- another way to assign a foreign key to a table
-- create table for department

create table department(
	deptno int primary key,
    dname varchar(20),
    loc varchar(20)
);

-- create table for employee
create table emp(
	empno varchar(10) primary key,
	first_name varchar(50) not null,
	last_name varchar(20),
	age int,
	mgr varchar(10),
	sal decimal(10,2),
	comm decimal(10,2),
	hiredate date
);

-- add new column in the emp table for forign key relationship
alter table emp
add column deptno int;

-- adding the relation between dept table and emp table
alter table emp
add constraint fk_deparment_emp
foreign key (deptno)
references department(deptno);

desc emp;

-- inserting data to  course table
insert into course(
	course_id,course_name,duration,fees)
values(101,'Java','6 months',10000);

-- adding the multiple records to a course table
insert into course(
	course_id,course_name,duration,fees)
values
(102,'Python','3months',20000),
(103,'Data Analyst','8 months',50000),
(104,'Data Engineer','12 months',100000),
(105,'Cloud','8 months',40000);

-- checking the records in the course table
select * from course;

desc stu;
alter table stu
modify column student_name varchar(50);

-- inserting the new records to the student table
insert into stu(stu_id,student_name,email,age,city,course_id)
values(1001,'Sanket','sanket@gmail.com',22,'Sirsi',102),
(1002,'Rakshith','rakshith@gmail.com',23,'Davangere',101),
(1003,'Mohan','mohan@gmail.com',22,'Jagalur',102),
(1004,'Sagar','sagar@gmail.com',22,'Hospete',101),
(1005,'Yaligar','yaligargmail.com',22,'Shiggon',103),
(1006,'Chetan','chetan@gmail.com',22,'Davangere',103),
(1007,'Adesh','adesh@gmail.com',23,'Davangere',104),
(1008,'Ganesh','ganesh@gmail.com',22,'Channagiri',104),
(1009,'Chandan','chandan@gmail.com',22,'Mundgod',105),
(1010,'Anush','anush@gmail.com',22,'Banavasi',105);

use batch10;
select * from stu;

insert into stu(stu_id,student_name,email,age,city,course_id)
values
(1002,'Rakshith','rakshith@gmail.com',23,'Davangere',101),
(1003,'Mohan','mohan@gmail.com',22,'Jagalur',102),
(1004,'Sagar','sagar@gmail.com',22,'Hospete',101),
(1006,'Chetan','chetan@gmail.com',22,'Davangere',103),
(1007,'Adesh','adesh@gmail.com',23,'Davangere',104),
(1008,'Ganesh','ganesh@gmail.com',22,'Channagiri',104),
(1009,'Chandan','chandan@gmail.com',22,'Mundgod',105);

update stu
set stu_id=1001
where stu_id=12;

use batch10;

-- update the values in the course table with filter condition
update course
set duration = '8 months'
where course_id = 101;

select * from course;

-- update the values in the course table without filter condition
set sql_safe_updates = 0;
update course
set fees = 10000;
set sql_safe_updates = 1;

-- updating multiple values in the course table with filter condition
update course
set duration = '24 months',
	fees = 70000
where course_id = 102;

select * from course;

-- deleting the value in the student table without sql_safe_update
-- here we are using primary key
delete from stu
where stu_id = 1001; 

-- deleting multiple values from the student table without sql_safe_update
delete from stu
where stu_id in (1002,1003,1004);

select * from stu;

-- deleting the values from student table with sql_safe_update
-- it will throw an error of sql_safe_update so set sql_safe_update = False
-- then execute the query
delete from stu 
where city = 'Davangere';

set sql_safe_updates = 0;
delete from stu
where city = 'Davangere';
set sql_safe_updates = 1;

select * from stu;

use batch10;

select * from stu;

set autocommit=0;

update stu
set course_id=101
where stu_id=1005;

select * from stu;

delete from stu
where stu_id=1008;

delete from stu
where stu_id=1009;
select * from stu;

commit;


set autocommit=1;

use batch10;
select * from stu;

