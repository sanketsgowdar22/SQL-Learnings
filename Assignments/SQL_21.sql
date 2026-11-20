-- ASSIGNMENT ON MAX & MIN

use batch10;

select * from emp;

-- WAQTD the first name and last name of the employee earning the maximum salary
select max(sal),first_name,last_name
from emp 
group by first_name,last_name;

-- WAQTD the first name and last name of the employee earning the minimum salary
select min(sal),first_name,last_name
from emp 
group by first_name,last_name;