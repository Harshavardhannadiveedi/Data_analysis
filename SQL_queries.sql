CREATE DATABASE sql_practice;

USE sql_practice;

CREATE TABLE departments(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO departments VALUES
(101,'IT'),
(102,'HR'),
(103,'Finance'),
(104,'Marketing'),
(105,'Sales');

CREATE TABLE employees(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT CHECK(age >= 18),
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(50) DEFAULT 'Bangalore',
    email VARCHAR(100) UNIQUE,
    dept_id INT,
    
    FOREIGN KEY(dept_id)
    REFERENCES departments(dept_id)
);

INSERT INTO employees
(emp_name,age,gender,salary,city,email,dept_id)
VALUES
('Harsha',21,'Male',55000,'Hyderabad','harsha@gmail.com',101),

('Rahul',22,'Male',60000,'Bangalore','rahul@gmail.com',101),

('Priya',23,'Female',45000,'Chennai','priya@gmail.com',102),

('Sneha',25,'Female',70000,'Mumbai','sneha@gmail.com',103),

('Arjun',24,'Male',65000,'Hyderabad','arjun@gmail.com',101),

('Kiran',26,'Male',40000,'Bangalore','kiran@gmail.com',102),

('Anjali',22,'Female',50000,'Chennai','anjali@gmail.com',104),

('Rohit',27,'Male',80000,'Mumbai','rohit@gmail.com',103),

('Meena',24,'Female',75000,'Delhi','meena@gmail.com',105),

('Vikram',28,'Male',90000,'Bangalore','vikram@gmail.com',105);


CREATE TABLE projects(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    budget DECIMAL(12,2)
);

INSERT INTO projects VALUES
(1,'AI Chatbot',500000),
(2,'Sales Dashboard',300000),
(3,'HR Management',250000),
(4,'Finance Tracker',400000),
(5,'Marketing Analytics',350000);

CREATE TABLE employee_projects(
    emp_id INT,
    project_id INT,

    FOREIGN KEY(emp_id)
    REFERENCES employees(emp_id),

    FOREIGN KEY(project_id)
    REFERENCES projects(project_id)
);

INSERT INTO employee_projects VALUES
(1,1),
(1,2),
(2,1),
(3,3),
(4,4),
(5,1),
(6,3),
(7,5),
(8,4),
(9,2),
(10,5);

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM projects;

SELECT * FROM employee_projects;



create table e_new(
fname varchar(25) not null,
lname varchar(25) not null,
title varchar(20) not null,
age int ,
salary decimal(10,2) not null);

desc e_new;
rename table e_new to myemployess_hv0707;
desc myemployess_hv0707;

insert into myemployess_hv0707 values
('Harsha','Vardhan','ML engineer',21,95000),
('Ahsrah','N','Ai engineer',21,85000);

select * from myemployess_hv0707;

alter table myemployess_hv0707 


alter table myemployess_hv0707
modify role varchar(15);

alter table myemployess_hv0707
add mail varchar(50) unique;

alter table myemployess_hv0707
drop column mail;

SELECT DISTINCT age 
FROM myemployess_hv0707;

drop table myemployess_hv0707;

create table empinfo(
fname varchar(25) not null,
lname varchar(25) not null,
id int primary key not null,
age int ,
city varchar(20),
state varchar(20)
);

INSERT INTO empinfo (fname, lname, id, age, city, state)
VALUES
('Harsha', 'N', 101, 21, 'Madanapalle', 'Andhra Pradesh'),
('Harish', 'p', 102, 22, 'Madanapalle', 'Andhra Pradesh'),
('Arun', 'S', 103, 23, 'Madanapalle', 'Andhra Pradesh'),
('Arjun', 'A', 104, 25, 'Madanapalle', 'Andhra Pradesh'),
('Kiran', 'S', 105, 24, 'Madanapalle', 'Andhra Pradesh'),
('Vijay', 'P', 106, 26, 'Madanapalle', 'Andhra Pradesh');

select * from empinfo;

select fname ,lname from empinfo;

select fname as FirstName ,lname as LastName from empinfo;

select * from empinfo where id=101;

select count(*) from empinfo;

select count(*) as Recordscount from empinfo;

select fname as Firstname,age  from empinfo where age in (21,22,23);

select * from empinfo where age between 21 and 23;

select * from empinfo where age >25;

select * from empinfo where fname like '%ha';

select * from empinfo where age>24 and city="Madanapalle";

select * from empinfo where city like '%e';

select * from empinfo where id like '%2';

select * from empinfo where age !=23;

select * from empinfo limit 3;

select * from empinfo where age >24 or city like "%e";

select avg(age) as average_age from empinfo;

select max(age) as maximum_age from empinfo;

select min(age) as minimum_age from empinfo;


select * from empinfo where fname like '%h_';


update  empinfo set age=21 where id=101;

create table emp_data(
first_name varchar(25),
last_name varchar(25),
designation varchar(25),
age int,
salary decimal(10,2)
);

INSERT INTO emp_data VALUES
('Jonie', 'weber', "Programmer", 23, 28000),
('Bob', 'Williams', "Secretary", 25, 25000),
('Ram','Sri','Secretary',35,35000),
('Dirk', 'Smith', "Programmer II", 24, 55000);

call `insertion`('Ram','Sri','Secretary',35,35000);
select * from emp_data;

set sql_safe_updates=0;

update emp_data set last_name='Weber-Williams' where first_name ="Jonie";

update emp_data set age=age+1 where first_name ="Dirk";

update emp_data set designation='Administrative Assistant' where designation ="Secretary";

update emp_data set salary=salary+3500 where salary<30000;

update emp_data set salary=salary+4500 where salary>33500;

update emp_data set designation="Programmer III" where designation="Programmer II";

update emp_data set designation="Programmer II" where designation="Programmer I";


delete from emp_data where first_name='Ram';

delete from emp_data;




