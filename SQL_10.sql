use batch10;

desc emp;

select * from emp;

select * from emp
where first_name like 's%';

select * from emp
where first_name like '_____';

select * from emp
where first_name like 'a%' and first_name like '%h';

select * from emp
where first_name like '%s%';

select * from emp
where hiredate like '2023-%%-%%';

select * from emp
where first_name like '____sh';

select * from emp
where first_name like '%g_';

select first_name,sal,hiredate,deptno
from emp
where 
job in ('Python Developer','java Developer','Data engineer') and
deptno in (10,20,30) and
sal between 40000 and 50000 and
comm is null and
hiredate between '2022-01-01' and '2025-12-31' and
first_name like 'R%' and
job not like '%st' and
hiredate like '%%%%-10-%%' and
sal*12 between 700000 and 1500000 and
deptno not in (40);

insert into emp(empno,first_name,last_name,age,job,mgr,sal,comm,hiredate,deptno)
values(1051,'Rakshith','B',22,'Python Developer',NULL,70000,1500,'2023-10-12',20);