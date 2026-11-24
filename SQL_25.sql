-- SUB QUERY
-- CASE 01

use batch10;

select first_name 
from emp
where hiredate < ( select hiredate
					from emp
					where first_name in ('Ullasgouda'));
                    
select * 
from emp
where sal > (select sal
			 from emp
			 where first_name in ('Gowtham')) and
 sal < (select sal
		from emp
		where first_name in ('Apeksha'));
        
select first_name,hiredate,sal
from emp
where year(hiredate) = 23 and
      job in ( select job 
			   from emp
               where first_name in ('Naveen'));
               
select * 
from emp
where (sal,deptno) in (select max(sal),deptno
			  from emp
              group by deptno);
                    
                    
