create database School;

use School;

create table students(roll_no int, student_name varchar(50), std varchar(30));

select * from students;

insert into students values(1,"Ashu","10th");
insert into students values(2,"Raju","9th");
insert into students values(3,"Mohan","8th");
insert into students values(4,"Chintu","7th");
insert into students values(6,"Manav","11th");

insert into students values(5,"Rahul","4th");

select * from students where roll_no>2;

select * from students order by student_name ASC;
select * from students order by roll_no ASC;

SET SQL_SAFE_UPDATES = 0;

update students set std="5rd" where student_name="Mohan";
select * from students order by student_name DESC;
delete from students where roll_no=2;

alter table students add subject varchar(50);

drop table if exists students;