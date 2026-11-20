create user 'Rohan'@'localhost'
identified by 'Rohan123';

grant select
on batch10.stu
to 'Rohan'@'localhost';

grant insert
on batch10.stu
to 'Rohan'@'localhost';

create user 'Santhosh'@'localhost'
identified by 'Santhosh123';

grant select
on batch10.stu
to 'Santhosh'@'localhost';

grant insert
on batch10.stu
to 'Santhosh'@'localhost';

create user 'Pradeep'@'localhost'
identified by 'Pradeep123';

grant select
on batch10.stu
to 'Pradeep'@'localhost';

grant insert
on batch10.stu
to 'Pradeep'@'localhost';

create user 'Vivek'@'localhost'
identified by 'Vivek123';

grant select
on batch10.stu
to 'Vivek'@'localhost';

grant update , delete
on batch10.stu
to 'Vivek'@'localhost';