use batch10;

desc emp;

select * from emp;

insert into emp(empno,first_name,last_name,age,job,mgr,sal,comm,hiredate,deptno)
values(1050,'Hamsa','H R',22,'Python Developer',NULL,35000,1500,'2023-12-12',20);

select *
from emp
where job in ('Python Developer','Java Developer','Data Analyst') and deptno=10;

select *
from emp
where job not in ('Data Engineer','Java Intern') and deptno in (10,20);

select * from emp
where hiredate between '2020-01-01' and '2022-12-31';

select * from emp
where 
job in ('Python Developer','Java Developer')
AND deptno in (20,30)  
AND sal between 30000 and 50000 
AND hiredate between '2023-01-01' and '2023-12-31';

