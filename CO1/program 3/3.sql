create database emp;
use emp;

create table employee(
emp_no varchar(10) Primary key,
emp_name varchar(20) Not Null,
dept varchar(20) Not Null,
salary int Not Null,
doj date Not Null,
branch varchar(20) Not Null);
drop table employee;
insert into employee values("e101","amit","production",45000,"2000-03-12","bangalore");
insert into employee values("e102","amit","HR",70000,"2002-07-03","bangalore");
insert into employee values("e103","sunita","Management",120000,"2001-01-03","mysore");
insert into employee values("e104","sunita","IT",67000,"2001-08-03","mysore");
insert into employee values("e105","mahesh","Civil",145000,"2020-08-03","mumbai");

select * from employee;

select emp_no,salary from employee;

select avg(salary) from employee;

select count(*) from employee;

select distinct(emp_name) from employee;

select emp_name,sum(salary),count(emp_name) from employee group by emp_name;

select emp_name,salary from employee where salary>120000;

select emp_name from employee order by emp_name desc;

select * from employee where emp_name="amit" and salary>50000;