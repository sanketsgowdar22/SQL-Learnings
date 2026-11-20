use batch10;

select * from stu;

set autocommit=0;
desc stu;
desc course;

select * from course;

insert into stu(stu_id,student_name,email,age,city,course_id)
values(12,'sanket','sanket@gmail.com',22,'Sirsi',102);

select * from stu;
commit;

update stu
set age = 24
where stu_id=12;

rollback;

select * from stu;

update stu
set city='Blr'
where stu_id=1005;

savepoint s1;

update stu
set city='Hyd'
where stu_id=1010;

savepoint s2;

delete from stu
where stu_id=12;
savepoint s3;

select * from stu;

rollback to s2;
select * from stu;

rollback to s1;
select * from stu;

rollback;
select * from stu;
