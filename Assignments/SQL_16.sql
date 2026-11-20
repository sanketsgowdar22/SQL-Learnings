-- ASSIGNMENT ON LOGICAL OPERATORS

use batch10;

select * from emp;

-- WAQTD the details of the employees working as Python Developer and earning less than ₹30,000.
select * 
from emp
where job in ('Python Developer') and sal < 30000;

-- WAQTD the first name, last name, and joining date of the employees working as Python Developer in Department 20. 
select first_name,last_name,hiredate
from emp
where job in ('Python Developer') and deptno in (20);

-- WAQTD all the details of the employees along with their annual salary if they are working
-- as Java Developer in Department 10 and their annual salary is greater than ₹6,00,000. 
select * ,sal*12 as annual_salary
from emp
where job in ('Java Developer') and 
deptno in (10) and
sal*12 > 600000;

-- WAQTD all the details of the employees working in Department 30 or as Data Analyst.
select *
from emp
where deptno in (30) or job in ('Data Analyst');

-- WAQTD the first name and last name of the employees whose salary is less than ₹30,000
-- and whose designation is Java Developer. 
select first_name,last_name 
from emp
where sal < 30000 and job in ('Java Developer');

-- WAQTD the first name, salary, annual salary, and department number of employees
-- working in Department 20, earning more than ₹40,000, and having an annual salary
-- greater than ₹5,00,000.
select first_name,sal,sal*12 as annual_salary,deptno
from emp
where deptno in (20) and
sal > 40000 and
sal*12 > 500000;

-- WAQTD the employee number, first name, and last name of employees working as ETL
-- Developer in Department 20.
select first_name,last_name,empno
from emp
where job in ('ETL Developer') and
deptno in (20);

-- WAQTD the details of employees working in Department 20 or Department 30.
select *
from emp
where deptno in (20,30); 

-- WAQTD the details of employees working as Data Engineer in Department 10.
select * 
from emp
where job in ('Data Engineer') and deptno in (10);

-- WAQTD the details of employees working as Big Data Engineer with a salary of ₹70,000.
select *
from emp
where job in ('Big Data Enginner') and sal in (70000); 

-- WAQTD the first name, last name, department number, and job of employees working as
-- Python Intern in Department 20 or Department 30.
select first_name,last_name,deptno,job
from emp
where job in ('Python Intern') and deptno in (20,30);

-- WAQTD the details of employees working as Python Trainer or Java Trainer in Department 10.
select * 
from emp
where job in ('Python Trainer','Java trainer') and deptno in (10);

-- WAQTD the first name and last name of employees working in Departments 10, 20, 30, and 40. 
select first_name,last_name
from emp
where deptno in (10,20,30,40);

-- WAQTD the details of employees whose employee numbers are 1008 and 1035.
select * 
from emp
where empno in(1008,1035); 

-- WAQTD the details of employees working as Python Developer, Java Developer, or Data Engineer.
select * 
from emp
where job in ('Python Developer','Java Developer','Data Engineer');

-- WAQTD the first name and last name of employees who joined after '2021-01-01' and
-- before '2025-01-01'.
select first_name,last_name,hiredate
from emp
where hiredate between '2021-01-01' and '2025-01-01';

-- WAQTD the details of employees earning more than ₹45,000 but less than ₹60,000.
select * 
from emp
where sal between 45000 and 60000;

-- WAQTD the first name and last name of employees who joined after '2022-01-01' and are
-- working in Department 10 or Department 30.
select first_name,last_name,deptno
from emp
where hiredate > '2022-01-01' and deptno in (10,30);

-- WAQTD the first name, last name, and annual salary of employees working as Python
-- Trainer or ETL Developer in Department 10 or Department 20. 
select first_name,last_name,sal*12 as annual_salary
from emp
where job in ('Python Trainer','ETL Developer') and deptno in (10,30);

-- WAQTD all the details of employees along with their annual salary whose salary is
-- between ₹40,000 and ₹60,000 and whose annual salary is greater than ₹5,50,000.
select * , sal*12 as annual_salary
from emp
where sal between 40000 and 60000 and
sal*12 > 550000;