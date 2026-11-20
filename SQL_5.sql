use batch10;

select * from course;

insert into department(deptno,dname,loc)
values(10,'Python','Banglore'),
(20,'Java','Chennai'),
(30,'Data Engineer','Hyderabad'),
(40,'Data Analyst','Pune');

select * from department;

select * from emp;

alter table emp
add column job varchar(50);

drop table emp;

alter table department
rename to dept;

CREATE TABLE emp (
    empno INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    job VARCHAR(50),
    mgr INT,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    hiredate DATE,
    deptno INT,
	FOREIGN KEY (deptno)
	REFERENCES dept(deptno)
);

INSERT INTO emp
(empno, first_name, last_name, age, job, mgr, sal, comm, hiredate, deptno)
VALUES
(1001, 'Namitha', 'N S', 22, 'Python Developer', NULL, 15000, NULL, '2020-01-10', 10),
(1002, 'Likitha', 'M', 23, 'Python Developer', 1001, 16000, 500, '2020-06-15', 10),
(1003, 'Gagana', 'BM', 22, 'Java Developer', 1001, 17000, NULL, '2021-02-01', 20),
(1004, 'Apeksha', 'I', 23, 'Java Developer', 1003, 18000, 1000, '2021-08-20', 20),
(1005, 'Ullasgouda', 'V Patil', 24, 'Data Engineer', 1003, 19000, NULL, '2022-03-15', 30),
(1006, 'Chaya', 'T', 22, 'Data Engineer', 1005, 20000, 750, '2022-09-10', 30),
(1007, 'Sushma', 'G', 23, 'Data Analyst', 1005, 21000, NULL, '2023-01-05', 40),
(1008, 'Sanket', 'S Gowdar', 24, 'Data Analyst', 1007, 22000, 1200, '2023-05-25', 40),
(1009, 'Rohini', '', 22, 'Python Developer', 1001, 23000, NULL, '2023-11-12', 10),
(1010, 'Shashank', 'M M', 23, 'Python Developer', 1009, 24000, 800, '2024-02-18', 10),
(1011, 'Swaroop', 'M Y', 24, 'Java Developer', 1003, 25000, NULL, '2024-04-22', 20),
(1012, 'Shaik Mohammed', 'Irfan', 23, 'Java Developer', 1011, 26000, 1500, '2024-07-14', 20),
(1013, 'Nayana', 'M', 22, 'Data Engineer', 1005, 27000, NULL, '2024-10-30', 30),
(1014, 'Varsha', 'R', 23, 'Data Engineer', 1013, 28000, 900, '2025-01-16', 30),
(1015, 'Gowtham', 'N M', 24, 'Data Analyst', 1007, 29000, NULL, '2025-03-21', 40),
(1016, 'Chidanand', 'M', 22, 'Data Analyst', 1015, 30000, 1100, '2025-05-11', 40),
(1017, 'Malay', 'Bhushan', 23, 'Python Developer', 1001, 31000, NULL, '2025-07-19', 10),
(1018, 'Soubhagya', '', 22, 'Java Developer', 1011, 32000, 600, '2025-09-08', 20),
(1019, 'Suhas', 'D', 24, 'Data Engineer', 1013, 33000, NULL, '2025-11-25', 30),
(1020, 'Bhavana', 'Bhargavi', 23, 'Data Analyst', 1007, 34000, 1300, '2026-01-12', 40),
(1021, 'Sindhu', 'KV', 22, 'Python Developer', 1017, 35000, NULL, '2026-04-17', 10),
(1022, 'Naveen', 'Kumar A', 23, 'Java Developer', 1018, 36000, 2000, '2026-08-23', 20);

select * from dept;
select * from emp;