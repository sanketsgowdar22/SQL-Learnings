-- ASSIGNMENT ON SEPCIAL OPERATORS

use batch10;

select * from emp;

-- List all the employees whose commission is NULL
select * 
from emp
where comm is NULL; 

-- List all the employees whose salary is greater than ₹60,000. 
select *
from emp
where sal > 60000;

-- List all the Data Analysts in Department 30.
select first_name,last_name,job
from emp
where job in ('Data Analysts') and deptno in (30);

-- List all the Business Analysts in Department 40 having a salary greater than ₹53,000.
select job
from emp
where job in ('Business Analysts') and
	deptno in (40) and
    sal > 53000;
    
-- List all the employees whose first name starts with 'S' or 'A'
select *
from emp
where first_name like 's%' or
	first_name like '%v';
    
-- List all the employees except those working in Departments 10 and 20
select *
from emp
where deptno not in (10,20);

-- List all the employees whose first name does not start with 'S'
select * 
from emp
where first_name not like 's%';

-- List all the employees working in Department 10 with a salary greater than ₹45,000
select *
from emp
where deptno in (10) and 
sal > 45000;

-- List all the employees whose commission is NULL and who are working as Python Intern
select * 
from emp
where comm is null and
job in ('Python Intern');

-- List all the employees working in Department 10 or 30 whose commission is NULL
select *
from emp
where comm is null and
deptno in (10,30);

-- List all the Python Developers in Department 30 with a salary greater than ₹45,000
select *
from emp
where job in ('Python Developer') and
deptno in (30) and
sal > 45000;

-- List all the Data Engineers in Department 30 having a salary greater than ₹63,000
select *
from emp
where job in ('Data Engineer') and
deptno in (30) and
sal > 60000;

-- List all the employees whose first name starts with 'M' or 'J'
select *
from emp
where first_name like 'M%' or
first_name like 'J%';

-- List all the employees along with their annual salary, except those working in Department 30
select * , sal*12 as annual_salary
from emp
where deptno not in (30);

-- List the employees whose last name does not end with 'R' or 'M'
select *
from emp
where last_name not like '%R' or
last_name not like '%M';

-- List all the employees working in Department 10 along with their salary after a 10% hike
select *, sal+(sal*0.10) as hike
from emp
where deptno in (10);

-- Display all the employees who are Python Developers, whose first name has 'e' as the
-- second last character, and whose salary has exactly 5 digits. 
 select *
 from emp
where job in ('Python Developer') and
first_name like '%e_' and
sal like '_____';

-- Display all the employees who joined after the year 2022
select * 
from emp
where hiredate between '2022-01-01' and '2022-12-31';

-- Display all the employees who joined in the month of February
select *
from emp
where MONTH(HIREDATE) = 02;

-- List the employees who are not working as Python Trainer or Java Trainer, are in
-- Departments 10 or 20, and have a salary between ₹40,000 and ₹60,000
select * 
from emp
where job not in ('Python Trainer','Java Trainer') and
deptno in (10,20) and
sal between 40000 and 60000;

