use batch10;

desc emp;

-- Query to display employee name from the employee table
select first_name
from emp;
 
-- Query to display the first_name and salary of the employess
select first_name,sal
from emp;

-- Query to display the age of the employees without repetition
select distinct age
from emp;

-- Query to display the annual salary of an employee 
select sal*12
from emp;

-- Query to display salary of an employee along hike to 10%
select sal , sal+sal*0.10
from emp;

-- Query to display name,job and salary of all employee along with 25% deduction of their salary
select first_name,last_name,job, sal-sal*0.25 as deduction
from emp;

-- Query to display salary,annual salary and 25% hike of annual salary
select sal,sal*12 as Annual_Salary , (sal*12)*0.25 as annual_hike
from emp;

-- Query to display hiredata,first_name and 15% deduction of half_term salary
select hiredate,first_name, ((sal*6)-(sal*6)*0.15) as half_term_deduction
from emp;

desc emp;
