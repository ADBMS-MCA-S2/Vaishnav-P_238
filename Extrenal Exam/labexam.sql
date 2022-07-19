create database labexam;
use labexam;

#question_1
create table Department(Dept_no int,Dept_name varchar(20),location varchar(20),primary key(Dept_no));

create table Employee(Emp_no int,Emp_Name varchar(20),Salary int,Dept_no int,primary key(Emp_no),foreign key(Dept_no) references Department(Dept_no));

#question_2
insert into Department(Dept_no,Dept_name,location)values(501,"Sales","Australia"),(512,"Production","Lisbon"),(525,"HR","Ukraine"),(555,"Management","Kolkata"),(580,"Support","Copenhagen");
select * from Department;

insert into Employee(Emp_no,Emp_Name,Salary,Dept_no)values(1001,"Raju",56000,525),(1002,"Manu",78000,501),(1003,"Ramu",38000,580),(1004,"Ragi",89000,555),(1005,"Manju",75000,512);
insert into Employee(Emp_no,Emp_Name,Salary,Dept_no)values(1006,"Abhi",88000,555),(1007,"Ammu",76000,512);
select * from Employee;

#question_3
select sum(Salary) as Total_Salary from Employee;

#question_4
select Dept_no,count(Emp_no)as No_of_employees  from Employee group by Dept_no;

#or

select Department.Dept_name,count(Emp_no) as No_of_employees from Department join Employee using(Dept_no) group by Dept_name;

#question_5
select Emp_Name as Names_starting_with_A from Employee where Emp_Name like "a%" or "A%";

