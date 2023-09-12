create database sales;

create table customer_info(
id int, first_name varchar(25),last_name varchar(25)
);

use sales;
show tables;

insert into customer_info values(1,"Sushant","Chougule");

select * from customer_info;
 
 
 insert into customer_info values(2,"Ashu","Gurav"),(3,"Nikhil","Pawar"),(4,"Sunder","Jadhav");

select * from customer_info where last_name="Jadhav";

select * from customer_info where last_name="Gurav" or last_name="Pawar";
select * from customer_info where last_name="Chougule" and first_name="Sushant";

drop table customer_info;

show tables;

create table customer_info(
id int auto_increment, 
first_name varchar(25),
last_name varchar(25),
salary int,
primary key(id)
);

describe customer_info;

insert into customer_info(first_name,last_name,salary) values("Krish","Naik",20000);
insert into customer_info(first_name,last_name,salary) values("Sushant","Chougule",50000);
select * from customer_info;

drop table customer_info;

show databases; 

create table customer_info(
id int auto_increment, 
first_name varchar(25),
last_name varchar(25),
salary int,
primary key(id)
);

## update null values
select * from customer_info;
select * from customer_info where salary is null;

 update customer_info
 set salary = 45000
 where id = 4;
 
insert into customer_info(first_name,last_name,salary) values
("Sushant","Chougule",20000),
("Ashu","Gurav",19000),
("Siddhesh","Jadhav",44000),
("Nikhil","Pawar",NULL);

select * from customer_info;

describe customer_info;

## Constraint Not Null
Alter table customer_info
modify column salary float not null;

## SQL constraint unique

create table employee(
id int,
houseno int unique,
pancard int unique,
first_name varchar(25),
last_name varchar(25),
salary int not null,
primary key(id));

desc employee;
## Add constraint (unique_emp) unique key
alter table employee
add constraint unique_emp Unique(pancard,last_name);
## Drop index
alter table employee
drop index unique_emp;

insert into employee values(1,1,1,"Sushant","Chougule",20000);

insert into employee values(2,2,2,"Manish","Deore",40000);

## PRIMARY KEY
create table person(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int,
primary key(id));
desc person;

## Drop primary key
alter table person
drop primary key;

## Create primary constraint 
alter table person
add constraint pk_person primary key(id,last_name);

## Delete primary costraint
alter table person
drop primary key;

insert into person values(1,"Sushant","Chougule",22),(2,"Sushant","Chougule",22);

drop table person;

create table orders(
orderid int not null,
order_no int not null,
id int,
primary key(orderid),
foreign key(id) references person(id));

select * from person;

insert into person values(1,"Sushant","Chougule",22),(2,"Sushant1","Chougule2",21),(3,"Rahul","More",12),(4,"Raju","Chougule",20);

insert into orders values(1,1,2);
select * from orders;
insert into orders values(5,5,1);

select * from person inner join orders
on person.id=orders.id;

select * from person left join orders
on person.id=orders.id
order by age desc;

select * from person right join orders
on person.id=orders.id;

create table customers(
id int auto_increment,
first_name varchar(25),
country varchar(25),
capital varchar(25),
primary key(id)
);

insert into customers(id,first_name,country,capital) values
(1,"Virat","India","Delhi"),
(2,"Smith","Aus","Canberra"),
(3,"Buttler","Eng","London"),
(4,"ABD","SA","Captown");


select * from customers where country="Aus" or country="Eng";
select * from customers;
select * from customers where country!= "India";
select * from customers where not country= "India";

drop table insurance;