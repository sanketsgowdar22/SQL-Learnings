use batch10;

select count(*),max(sal),deptno,job
from emp
group by deptno,job
order by max(sal) desc;