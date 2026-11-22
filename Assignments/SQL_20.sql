-- ASSIGNMENT QUESTIONS ON HAVING CLAUSE

use batch10;

select * from emp;

-- WAQTD the department number and number of employees working in each department
-- if there are at least 2 Python Developers in each department
select count(*),deptno 
from emp
where job in ('Python Developer')
group by deptno
having count(*) >= 2;

-- WAQTD the department number and the total salary needed to pay all employees in each
-- department if there are at least 9 employees in each department
select deptno,count(*),sum(sal)
from emp
group by deptno
having count(*) >= 9;

-- WAQTD the number of employees earning more than ₹45,000 in each job, and the total
-- salary needed to pay employees of each job must exceed ₹1,50,000
select count(*),sum(sal),job
from emp
where sal > 45000
group by job
having sum(sal) > 150000;

-- WAQTD the department number and number of employees only if there are at least 2 ETL
-- Developers in each department. 
select deptno,count(*)
from emp
where job in ('ETL Developer')
group by deptno
having count(*) >= 2;

-- WAQTD the job and the maximum salary of employees in each job if the maximum salary
-- exceeds ₹60,000.
select max(sal),job
from emp
group by job
having	max(sal) > 60000;

-- WAQTD the salaries that are repeated in the employee table.
select sal,count(*)
from emp
group by sal
having count(*) > 1;

-- WAQTD the joining dates that are duplicated in the employee table.
select hiredate,count(*)
from emp
group by hiredate
having count(*) > 1;

-- WAQTD the average salary of each department if the average salary is less than ₹55,000
select avg(sal),deptno
from emp
group by deptno
having avg(sal) < 55000;

-- WAQTD the department number if there are at least 3 employees in each department
-- whose first name contains the character 'A' or 'S'. 
select count(*),deptno
from emp
where first_name like '%A' or
first_name like '%S'
group by deptno
having count(*) >= 3;

-- WAQTD the minimum and maximum salaries of each job if the minimum salary is greater
-- than ₹25,000 and the maximum salary is less than ₹70,000.
select min(sal),max(sal),sal
from emp
group by sal
having min(sal) > 25000 and
max(sal) < 70000;