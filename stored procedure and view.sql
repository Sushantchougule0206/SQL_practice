## stored procedure--compiled format
## functions
## Triggers
## joins
## CTE Windows Functions

use sales;
drop table student_info;
create table student_info(
ID int,
firstname varchar(30),
student_code int,
Sub varchar(30),
marks float);

select * from student_info;

insert into student_info values(1,'Sushant',100,'Data Science',50),
 (2,'Rohan',101,'Java',80),
 (3,'Ashu',102,'Civil',70),
 (4,'Siddhesh',103,'Embaded',85),
 (5,'Nikhil',104,'Blockchain',90),
 (6,'Gaurav',105,'DCS',95);
 
 
 call ranked_students(85);
 
 call get_student(3);
 
 call top_marks(@output);
 select @output;
 
 set @input = 102;
 call display_marks(@input);
 select @input;
 
 desc student_info;
 
 create index idx_firstname
 on student_info(firstname);
 
 select * from student_info where firstname='Sushant';
 
 alter table student_info
 drop index idx_firstname;
 
 select * from student_info;
 ## Views
 
 drop view sutdent_basic_info;
 create view student_basic_info as
 select student_code,firstname
 from student_info;
 
 select * from student_basic_info; 
 
 
 
 