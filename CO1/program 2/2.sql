create database d;
use d;

create table dept(
deptno int(10) NOT NULL,
dname  varchar(20) Not null,
loc varchar(20) not null);

rename table dept to department;

alter table department add column pincode varchar(20) not null;

alter table department drop column pincode;
select *  from department;

alter table department change column dname dept_name varchar(10);


alter table department modify column loc char(10);

drop table department;