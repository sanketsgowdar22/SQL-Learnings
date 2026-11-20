-- ASSIGNEMENT ON MRF()

use batch10;

select * from emp;

-- WAQTD the number of employees getting a salary less than ₹45,000 in Department 10.
select count(*)
from emp
where sal < 45000 and 
deptno in (10);

-- WAQTD the total salary needed to pay employees working as Python Developer
select sum(sal)
from emp
where job in ('Python Developer');

-- WAQTD the average salary needed to pay all employees
select avg(sal)
from emp;

-- WAQTD the number of employees having 'A' as the first character of their first name
select count(*)
from emp
where first_name like 'a%';

-- WAQTD the number of employees working as Python Developer or Java Developer
select count(*)
from emp
where job in ('Python Developer','Java Developer');

-- WAQTD the total salary needed to pay employees who joined in the month of February
select sum(sal)
from emp
where month(hiredate) = 2;

-- WAQTD the number of employees working in Department 20
select count(*)
from emp
where deptno in (20);

-- WAQTD the number of employees getting a commission in Department 30
select count(*)
from emp
where comm is not null and
deptno in (30);

-- WAQTD the average salary, total salary, number of employees, and maximum salary of
-- employees working as Big Data Engineer.
select avg(sal),sum(sal),count(*),max(sal)
from emp
where job in ('Big Data Engineer');

-- WAQTD the number of employees having the character 'A' in their first name
select count(*)
from emp
where first_name like '%A%';

-- WAQTD the number of employees and the total salary needed to pay employees whose
-- first name contains two consecutive 'a' characters.
select count(*),sum(sal)
from emp
where first_name like '%aa%';

-- WAQTD the number of departments present in the employee table
select count(distinct deptno)
from emp;

-- WAQTD the number of employees having the character 'Z' in their first name or last name
select count(*)
from emp
where first_name like '%z%' or 
last_name like '%z%';

-- WAQTD the number of employees having the character '$' in their first name or last name
select count(*)
from emp
where first_name like '%$%' or 
last_name like '%$%';

-- WAQTD the total salary given to employees working as Data Analyst in Department 30
select sum(sal)
from emp
where job in ('Data Analyst') and 
deptno in (30);

-- WAQTD the maximum salary given to employees working as Data Engineer
select max(sal)
from emp
where job in ('Data Engineer'); 

-- WAQTD the number of distinct salaries present in the employee table
select count(distinct sal)
from emp;

-- WAQTD the number of distinct jobs present in the employee table
select count(distinct job)
from emp;

-- WAQTD the average salary given to Python Interns
select avg(sal)
from emp
where job in ('Python Intern');

-- WAQTD the minimum salary given to employees working in Department 10 as Python
-- Trainer or ETL Developer. 
select min(sal)
from emp
where deptno in (30) and 
job in ('Python Trainer','ETL Developer');