use batch10;

select * from emp;

insert into emp(empno,first_name,last_name,age,job,mgr,sal,comm,hiredate,deptno)
values(1060,'Waltermax','John',23,'Data Engineer',1020,98000,40000,'2026-11-16',40);

select max(first_name) from emp;

select min(first_name) from emp;

select avg(sal) from emp;

-- gives the sum of the total entries in the selected coulmn
select sum(job) from emp;

-- gives the count of the total entries in the selected coulmn
select count(sal) from emp;

-- gives the count of total row entries in the table
select count(*) from emp; 