-- =====================================================
-- creating new Database
-- =====================================================
create database batch9_10;

-- =====================================================
-- using the database
-- =====================================================
use batch9_10;

-- =====================================================
-- DDL (Data Defination Langauge)
-- =====================================================

-- creating a couse table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration VARCHAR(30),
    fees DECIMAL(10,2)
);

-- creating a student table and applying forigen key relation
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    city VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id)
    REFERENCES course(course_id)
);

-- renaming the table name
alter table student 
rename to stu;
-- rename student to stu;

-- to add new column to the table
ALTER TABLE stu
ADD COLUMN phone VARCHAR(15);

ALTER TABLE stu 
ADD COLUMN city VARCHAR(15);

-- adding multiple new columns to the table
ALTER TABLE stu
ADD COLUMN gender VARCHAR(10),
ADD COLUMN dob DATE;

-- drop existing column from the table
ALTER TABLE stu
DROP COLUMN phone;

-- droping multiple existing columns to the table
ALTER TABLE stu
DROP COLUMN gender,
DROP COLUMN dob;

-- reanaming the existing column name
ALTER TABLE stu
RENAME COLUMN city TO address;

-- modify the data type in the table
ALTER TABLE stu
MODIFY COLUMN email VARCHAR(150);

-- modify the constraints in the column in table
ALTER TABLE stu
MODIFY COLUMN student_name VARCHAR(100) NULL;

-- another way for the foreign key relation
-- creating course1 table
CREATE TABLE course1 (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

CREATE TABLE stu1 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100)
);

-- adding the new column for the foreign key realtionship
ALTER TABLE stu1
ADD COLUMN course_id INT;

-- adding relationship wit the foreign key with stu1 and course1
ALTER TABLE stu1
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES course1(course_id);

-- truncate the table ( it will delete the entire recodrs from the table)
TRUNCATE TABLE course;

-- drop the table ( it will drop the table form the database)
DROP TABLE stu;

-- ========================================================================
-- DML ( Data Manipulation Language)
-- ========================================================================
-- inserting the values to the course table
INSERT INTO course (course_id, course_name, duration, fees)
VALUES
(101, 'Python', '3 Months', 25000),
(102, 'Java', '4 Months', 30000),
(103, 'Data Analyst', '5 Months', 45000),
(104, 'Data Engineer', '6 Months', 60000),
(105, 'Cloud Computing', '4 Months', 40000);

-- inserting the values to the student table with foreign key values
INSERT INTO stu (student_id, student_name, email, age, city, course_id)
VALUES
(1001, 'Rahul', 'rahul@gmail.com', 22, 'Bangalore', 101),
(1002, 'Priya', 'priya@gmail.com', 21, 'Mysore', 102),
(1003, 'Amit', 'amit@gmail.com', 23, 'Hyderabad', 103),
(1004, 'Sneha', 'sneha@gmail.com', 22, 'Chennai', 101),
(1005, 'Kiran', 'kiran@gmail.com', 24, 'Pune', 104),
(1006, 'Pooja', 'pooja@gmail.com', 20, 'Delhi', 105),
(1007, 'Rohit', 'rohit@gmail.com', 23, 'Mumbai', 102),
(1008, 'Anjali', 'anjali@gmail.com', 21, 'Kolkata', 103),
(1009, 'Vikram', 'vikram@gmail.com', 22, 'Pune', 104),
(1010, 'Neha', 'neha@gmail.com', 20, 'Bangalore', 105);

-- update the values in the stu table
UPDATE stu
SET email = 'rohan@gmail.com'
WHERE student_id = 1001;

-- update the multiple values in the stu table
UPDATE stu
SET age = 23,
    city = 'Mangalore'
WHERE student_id = 1002;


-- updating the vlaues with safe update option
UPDATE stu
SET city = 'Bangalore'; -- (it will give error you are using the unsafe mode to update)

-- making the safe update option to False
SET SQL_SAFE_UPDATES = 0;

-- after making the safe update option false then excuting the query
UPDATE stu
SET city = 'Bangalore'; -- (now it will not give error) 

-- making safe update option true again for the safety purpose
SET SQL_SAFE_UPDATES = 1;

-- updating the vlaues with safe update option
UPDATE stu
SET city = 'Bangalore'; -- (it will give error you are using the unsafe mode to update)

-- delete the values from the table for particular data
DELETE FROM stu
WHERE student_id = 1001;

-- deleting the multiple values from the table at a time
DELETE FROM stu
WHERE student_id IN (1002, 1003, 1004);

-- delete the vlaues with safe update option
DELETE FROM stu
WHERE city = 'Bangalore'; -- (it will give error you are using the unsafe mode to update)

-- making the safe update option to False
SET SQL_SAFE_UPDATES = 0;

-- after making the safe update option false then excuting the query
DELETE FROM stu
WHERE city = 'Bangalore'; -- (now it will not give error) 

-- making safe update option true again for the safety purpose
SET SQL_SAFE_UPDATES = 1;

-- updating the vlaues with safe update option
UPDATE stu
SET city = 'Bangalore'; -- (it will give error you are using the unsafe mode to update)


-- ========================================================================================
-- TCL (Transcation Control Langauage)
-- ========================================================================================
-- before starting the Tcl commands making auto commit false
set autocommit=0;

-- displaying the table before inserting the values
select * from stu;

-- inserting a new values
INSERT INTO stu
(student_id, student_name, email, age, city, course_id)
VALUES
(1011, 'Arun', 'arun@gmail.com', 22, 'Bangalore', 101);

-- after inserting the values we are commiting the transaction
COMMIT;

-- displaying the table
SELECT * FROM stu;

-- inserting one more value
INSERT INTO stu
(student_id, student_name, email, age, city, course_id)
VALUES
(1012, 'Kiran', 'kiran@gmail.com', 23, 'Mysore', 102);

-- now iam doing rollback
ROLLBACK;

-- after rollback we are displaying the stu table
SELECT * FROM stu;

-- updating the value
UPDATE stu
SET city = 'Hyderabad'
WHERE student_id = 1011;

-- displaying the table after update table
select * from stu;

-- creating a save point after updating the value
SAVEPOINT sp1;

-- updating the value once again
UPDATE stu
SET age = 30
WHERE student_id = 1011;

-- after updating the value again we are displaying the value once again
select * from stu;

-- creating a save point after updating the value
SAVEPOINT sp2;

-- rollbacking to the savepoint sp1
ROLLBACK TO sp1;

-- displaying the table after rollbaking to savepoint
select * from stu;

-- after the we are saving the transaction permantely
COMMIT;

-- making the autocommit true
set autocommit=1;

-- ==============================================================================
-- DCL (Data Control Langauage)
-- ==============================================================================

-- creating new user
CREATE USER 'student_user'@'localhost'
IDENTIFIED BY 'Student@123';

-- syntax to give permission to other user
GRANT SELECT
ON your_database_name.stu
TO 'student_user'@'localhost';

-- granting only select or read permission
GRANT SELECT
ON college_db.stu
TO 'student_user'@'localhost';

-- granting both read and write permission
GRANT SELECT, INSERT
ON college_db.stu
TO 'student_user'@'localhost';

-- granting all permission 
GRANT ALL PRIVILEGES
ON college_db.stu
TO 'student_user'@'localhost';

-- applying changes
FLUSH PRIVILEGES;

-- seeing what are the privileges given to other user
SHOW GRANTS FOR 'student_user'@'localhost';

-- revoking the insert permission from the user
REVOKE INSERT
ON college_db.stu
FROM 'student_user'@'localhost';

-- revoking the read permission form the user
REVOKE SELECT
ON college_db.stu
FROM 'student_user'@'localhost';

-- revoking the all the permisssion from the user
REVOKE SELECT, INSERT, UPDATE, DELETE
ON college_db.stu
FROM 'student_user'@'localhost';

-- after revoking the permission the we are checking the permisiions
SHOW GRANTS FOR 'student_user'@'localhost';