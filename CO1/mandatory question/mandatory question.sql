create database emp2;
use emp2;

create table employee(
e_id int primary key,
e_name varchar(20) not null,
age int,
salary int);

insert into employee values(101,"anu",22,9000);
insert into employee values(102,"shane",29,8000);
insert into employee values(103,"rohan",34,6000);
insert into employee values(104,"scott",44,10000);
insert into employee values(105,"tiger",35,8000);
insert into employee values(106,"alex",27,7000);
insert into employee values(107,"abhi",29,8000);

select * from employee;

select count(*) from employee;

select max(age) from employee;

select min(age) from employee;

select sum(age) from employee;

select avg(age) from employee;

create view e_age1 as
select e_name,age from employee;
select * from e_age1;

select e_name,salary from employee group by e_name;

select e_name,salary from employee order by salary asc;

select e_name,salary from employee order by salary desc;