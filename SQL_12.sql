use batch10;

select * from emp;

select count(*),deptno
from emp
group by deptno;

select max(sal),job
from emp
group by job;

select avg(sal),job,deptno
from emp
where job='Python Developer'
group by deptno;

select count(*),sal
from emp
group by sal;

select max(sal),first_name,deptno
from emp
group by first_name,deptno;

select count(*),deptno
from emp
group by deptno
having count(*)>= 3;