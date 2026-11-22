-- ASSIGNMENT QUESTIONS ON GROUP BY

use batch10;

select * from emp;

-- WAQTD the number of employees working in each department, excluding employees
-- working as Big Data Engineer.
select count(*),deptno
from emp
where job not in ('Big Data Engineer')
group by deptno;

-- WAQTD the total salary needed to pay all the employees in each job
select sum(sal),job
from emp
group by job;

-- WAQTD the number of employees working as Python Developer in each department
select count(*),job,deptno
from emp
where job in ('Python Developer')
group by deptno;

-- WAQTD the average salary needed to pay all the employees in each department,
-- excluding employees of Department 20. 
select avg(sal),deptno
from emp
where deptno not in (20)
group by deptno;

-- WAQTD the number of employees having the character 'A' in their first name in each job
select count(*),job
from emp
where first_name like '%A%'
group by job; 

-- WAQTD the number of employees and the average salary of employees whose salary is
-- greater than ₹50,000 in each department.
select count(*),avg(sal),deptno
from emp
where sal > 50000
group by deptno;

-- WAQTD the total salary needed to pay and the number of Data Analysts in each department
select sum(sal),count(*),deptno
from emp
where job in ('Data Analysts')
group by deptno;

-- WAQTD the number of employees along with the maximum salary in each job.
select count(*),max(sal),job,deptno
from emp 
group by job,deptno;

-- WAQTD the maximum salary given to an employee working in each department
select max(sal),deptno
from emp
group by deptno;

-- WAQTD the number of times each salary is repeated in the employee table
select count(*),sal
from emp  
group by sal;