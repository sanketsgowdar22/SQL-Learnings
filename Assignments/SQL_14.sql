-- ASSIGNMENT ON EXPRESSION & ALIAS

use batch10;

select * from emp;

-- Display the employee's full name along with annual salary.
select first_name,last_name,sal,sal*12 as annual_salary
from emp;

-- Display employee name, job, and half-year salary.
select first_name,last_name,job,sal, sal*6 as half_year_salary
from emp;

-- Display all employee details along with an annual bonus of ₹10,000.
select * ,sal*12 as annual_salary , (sal*12)+10000 as annual_bonus
from emp;

-- Display employee name, salary, and salary after a 10% hike.
select first_name,last_name,sal,sal*0.10 as hike
from emp;

-- Display employee name, salary, and salary after a 25% deduction.
select first_name,last_name,sal,sal*0.25 as deduction,sal-(sal*0.25) as deducted_sal
from emp;

-- Display employee name and salary after adding a monthly bonus of ₹500.
select first_name,last_name,sal,sal+500 as monthly_bonus
from emp;

-- Display employee name and annual salary after a 10% deduction.
select first_name,last_name,(sal*12)*0.10 as deduction,((sal*12)-((sal*12)*0.10)) as sal_after_deduction
from emp; 

-- Display employee name and total salary (Salary + Commission).
select first_name,sal,comm,sal+comm as total_salary
from emp;

-- Display all employee details along with annual salary.
select * ,sal*12 as annual_salary
from emp;

-- Display employee name, job, and salary after deducting ₹100.
select first_name,last_name,job,sal,sal-100 as tax_deduction
from emp;   