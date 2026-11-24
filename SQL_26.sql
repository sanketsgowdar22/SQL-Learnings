-- SUB QUERY
-- CASE 02

use batch10;

select * from emp;
select * from dept;

-- 01
select dname,loc
from dept
where deptno in (	select deptno
					from emp
					where first_name like '______' and
					sal > 30000);

-- 02                    
select first_name
from emp
where deptno in (	select deptno
					from dept
                    where loc in ('Banglore'));
     
     
-- 03     
select first_name,deptno
from emp
where deptno in (	select deptno
					from dept
                    where dname like 'P%');
     
     
-- 04     
select first_name,sal
from emp
where sal > (( 	select sal 
				from emp
				where first_name in ('Sushma')) and
deptno in (	select deptno
			from dept
			where dname in ('Java')));
            
-- 05
select * 
from emp
where hiredate < (	select hiredate
					from emp
                    where first_name in ('Sanket')) and
	deptno in (	select deptno
				from dept
                where loc in ('Chennai'));
                
-- 06
select first_name 
from emp
where sal > (	select sal
				from emp
				where first_name in ('Gowtham')) and
deptno in (	select deptno
			from dept
			where dname in ('Java'));
            
-- 07
select * 
from emp
where job in ('Java Developer') and
	deptno in (	select deptno
				from dept
                where loc in ('Hyderabad'));
                
-- 08
select first_name,sal,job,hiredate
from emp
where hiredate < (	select hiredate
					from emp
                    where first_name in ('Ullasgouda')) and
	deptno in (	select deptno
				from dept
                where dname in ('Data Engineer'));
                
-- 09
select dname
from dept
where deptno in (	select deptno
					from emp
                    where comm is not null);
                    
-- 10
select loc
from dept
where deptno in (	select deptno
					from emp
                    where comm is not null and
                    deptno in (30));

-- 11
select * 
from emp
where deptno in (	select deptno
					from dept
                    where dname like '%N');
                    
-- 12
select dname
from dept
where deptno in (	select deptno
					from emp
                    where first_name like '%A%');
                    
					
            

