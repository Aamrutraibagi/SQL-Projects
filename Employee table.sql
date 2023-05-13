use the_testing_academy;
Create table Employee(
name varchar(255) not null,
sal bigint not null
);
Select * from Employee;

insert into Employee(name,sal) values("Ajim",1000);
insert into Employee(name,sal) values("Amrut",2000);
insert into Employee(name,sal) values("Arun",500);
insert into Employee(name,sal) values("Karan",800);
insert into Employee(name,sal) values("Suraj",900);

Select * from Employee;

#Limit
Select max(sal) from Employee;
Select min(sal) from Employee;
Select avg(sal) from Employee;

#2nd top sal in emoloyee table
Select * from Employee where sal <(Select max(sal) from Employee) limit 1;

#sal in desc order
Select * from Employee order by sal desc;

#sal in desc order and 2nd and 3rd max sal
Select * from Employee order by sal desc limit 1,2;

#count
select count(*) from Employee;
select count(name) from Employee;

#like
select * from Employee where name like "a%";
select * from Employee where name like "a__m";
