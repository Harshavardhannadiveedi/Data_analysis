create database sql_joins;

use sql_joins;
create table customers(
customerid int primary key,
customername varchar(25),
age int,
city varchar(20),
phone varchar(10)
);

create table orders(
orderid int primary key,
orderdate datetime,
customerid int,
productname varchar(50),
quantity int,
foreign key (customerid) references customers(customerid)
);

insert into customers values
(1,'Harsha',21,"Banglore",'9876543210'),
(2,'ahsrah',12,"Madanapalle",'9876543210'),
(3,'Ram',31,"Hyderabad",'9876543210'),
(4,'Shiva',41,"Mumbai",'9876543210');

select * from customers;

insert into orders values
(101,'2026-06-10',1,"Mobile",1),
(102,'2026-06-07',2,"Lap",1),
(103,'2026-06-05',3,"Lap",1),
(104,'2026-06-10',1,"Lap",1);


select * from orders;


select c.customerid,c.customername,o.productname from customers c left join orders o on c.customerid=o.customerid;

select c.customerid,c.customername,o.productname from customers c right join orders o on c.customerid=o.customerid;


select c.customerid,c.customername,o.productname from customers c inner join orders o on c.customerid=o.customerid;

select c.customerid,c.customername,o.productname from customers c left outer join orders o on c.customerid=o.customerid;

select c.customerid,c.customername,o.productname from customers c right outer join orders o on c.customerid=o.customerid;

select c.customerid,c.customername,o.productname from customers c left outer join orders o on c.customerid=o.customerid
union
select c.customerid,c.customername,o.productname from customers c right outer join orders o on c.customerid=o.customerid;
