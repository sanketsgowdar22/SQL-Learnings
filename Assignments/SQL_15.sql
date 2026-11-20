-- ASSIGNMENT ON WHERE CLAUSE

use batch10;

select * from emp;

-- WAQTD the annual salary of the employee whose first name is 'Sanket'.
select first_name,sal,sal*12 as annual_salary
from emp
where first_name in ('Sanket');

-- WAQTD the first name and last name of the employees working as Python Developer.
select first_name,last_name,job
from emp
where job in ('Python Developer');

-- WAQTD the salary of the employees who are working as Java Developer.
select first_name,last_name,job,sal
from emp
where job in ('Java developer'); 

-- WAQTD the details of the employees who earn more than ₹50,000 per month.
select * from emp
where sal > 50000;

--  WAQTD the details of the employee whose first name is 'Sanket'.
select * from emp
where first_name in ('Sanket');

-- WAQTD the details of the employees who joined after '2022-01-01'.
select * from emp
where hiredate > '2022-01-01'; 

-- WAQTD the first name, salary, and annual salary of employees whose annual salary is more than ₹6,00,000.
select first_name,sal,sal*12 as annual_salary
from emp
where sal*12 > 600000;

-- WAQTD the employee numbers of employees working in Department 30.
select first_name,empno,deptno
from emp
where deptno in (30);  

-- WAQTD the first name and joining date of employees who joined before '2020-01-01'.
select first_name,hiredate
from emp
where hiredate < '2020-01-01'; 

-- WAQTD the details of employees working as Python Trainer.
select * 
from emp
where job in ('Python Trainer'); 

-- WAQTD the first name and salary of employees who receive a commission of ₹2,000.
select first_name,sal
from emp
where comm in (2000);

-- WAQTD the details of employees whose commission is greater than their salary.
select * 
from emp
where comm > sal;

-- WAQTD the employee numbers of employees who joined before the year 2021.
select first_name,empno 
from emp
where hiredate < '2021-01-01';

-- WAQTD the details of employees working as Data Analyst.
select * 
from emp 
where job in ('Data Analyst');

-- WAQTD the details of employees earning more than ₹60,000 per month.
select * 
from emp
where sal > 60000; 