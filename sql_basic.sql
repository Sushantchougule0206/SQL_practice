create database iNeuron;

use iNeuron;

create table employees(emp_id int,
first_name varchar(50),
last_name varchar(50),
DOB date,
hire_date date,
position varchar(30),
salary float);

select * from employees;

insert into employees values(1,"SUSHANT","CHOUGULE","2001-06-02","2010-04-06","Data scientist",2000);

insert into employees values(2,"ram","more","2001-7-02","2010-04-06","Data analyst",2000);

insert into employees values(3,"raju","shinde","2001-10-02","2010-04-06","Data engineer",2000);

insert into employees values(4,"mohan","jadhav","2001-09-02","2010-04-06"," Junior Data scientist",2000);

select * from employees;

select * from employees where salary>1900;

select * from employees order by last_name ASC;

SET SQL_SAFE_UPDATES = 0;
update employees set salary=3500.0 where first_name="SUSHANT";

update employees set salary=3000 Where emp_id=1;

update employees SET salary=3000 WHERE emp_id=1;
