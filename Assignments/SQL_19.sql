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