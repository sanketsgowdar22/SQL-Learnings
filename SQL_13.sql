use batch10;

select * from emp;

select count(*),max(sal),job,deptno
from emp
where job='Java Developer'
group by job,deptno
having max(sal) > 30000;

select count(*),max(sal),min(sal),job
from emp
group by job
having max(sal) < 40000 and min(sal) > 20000;

select first_name
from emp
order by first_name;

select first_name
from emp
where job in ('Java Developer')
order by first_name desc;
