# SQL-Projects

#Project-1 #StudentCourses 



![SQL Project 1](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/4b897964-0e4f-47f7-b7e4-a818f9537dd7)

#project 1 #create studentcourses table with foreign key here using student and courses table

#Task 01 

#create Database TheTesingAcadamey

#create table Student

#Student (MTB)-id,name,address

#course(MTB)-id,name,address

#student courses table which will help us to have relation and queries

show databases;

create database the_testing_academy;

use the_testing_academy;

#create a student table

#id-data type of id-->Integer---INT

#name-data type of name-->String----VARCHAR

#address-data type of address-->String----VARCHAR

Create table Student(

id bigint not null Auto_increment,

name varchar(255) not null,

address text,

primary key(id)

);

insert into Student(name,address) values("Amrut","Gajendragad");

Select * from Student;

Select name from Student where id=1;

insert into Student(name,address) values("Ajim","Bangalore");

insert into Student(name,address) values("Arun","Bengal");

insert into Student(name,address) values("karan","UK");

insert into Student(name,address) values("raju",null);

Select * from Student;

#update

update Student set address="himachal" where id=5;

Select * from Student;

#delete

delete from Student where id=5;

Select * from Student;

#add another row it will get added to 6 id insted of 5th id bcz 5 id is deleted but data is stored.

insert into Student(name,address) values("rinku",null);

Select * from Student;

# add new age column

Alter table Student add column (age bigint not null);

update Student set age=23 where id=1;

update Student set age=22 where id=2;

update Student set age=25 where id=3;

update Student set age=26 where id=4;

update Student set age=22 where id=6;

# add new Phone column

Alter table Student add column (Phone bigint not null);

update Student set Phone=7795040636 where id=1;

update Student set Phone=7795040436 where id=2;

update Student set Phone=7795040936 where id=3;

update Student set Phone=7795040236 where id=4;

update Student set Phone=7795050836 where id=6;


Select * from Student;

#to create view of students id less than or equal to 4

create view Stu_ifo as

select * from Student where id<=4;


#view of only sigle table

Select * from Stu_ifo;



#to create view of students and courses table  to know who have brought courses less than 800
#---------------------------------------------------------

create view cour_stu_info as 

select s.name,c.price

from Student s,courses c

where s.id=c.id and c.price;

Select * from cour_stu_info;

#to drop a view table

drop view cour_stu_info;

#to create view of students and courses table  to know who have brought courses less than 800
#---------------------------------------------------

create view cour_stu_info as 

select s.name,c.name as coursenames,c.price

from Student s,courses c

where s.id=c.id and c.price;

Select * from cour_stu_info;

#to create procedure here this procedure is created by using stored procedure tab
#----------------------------------------------------------

#used to set the value of arg

set @q_value=25

#used to call procedure name it will show error but it will get executed

call new_procedure(@q_value)

![Stored procedure](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/2f42e72f-cc12-4cd3-873f-8a261415d71e)

![Procedure created](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/e98d7dc2-483d-4027-a04a-12879a217d78)


#========================================================================================================================================


#create table courses

use the_testing_academy;

create table courses(

id bigint not null auto_increment,

name varchar(20) not null,

price bigint not null,

primary key(id)

);


insert into courses(name,price) values("SQL",900);

insert into courses(name,price) values("API",600);

insert into courses(name,price) values("Manual testing",500);

insert into courses(name,price) values("Automation testing",900);

insert into courses(name,price) values("Mobile testing",800);

Select * from courses;

# Student table taken from Query1

select * from Student;

# modifying the value of adress for name rinku

update student set address='Bagalkot' where name='rinku';


#========================================================================================================================================


#create studentcourses table with foreign key here using student and courses table

use the_testing_academy;

create table StudentCourse(

student_id bigint not null,

Course_id bigint not null

)


select * from Student;

Select * from courses;

Alter table StudentCourse add foreign key(student_id) references Student(id);

Alter table StudentCourse add foreign key(Course_id) references courses(id);

select * from StudentCourse;

insert into StudentCourse (student_id,Course_id) values (1,1);

insert into StudentCourse (student_id,Course_id) values (3,3);

insert into StudentCourse (student_id,Course_id) values (2,4);

insert into StudentCourse (student_id,Course_id) values (1,5);

insert into StudentCourse (student_id,Course_id) values (6,1);

insert into StudentCourse (student_id,Course_id) values (6,4);

insert into StudentCourse (student_id,Course_id) values (3,1);

#to fetch the Course_id of the student_id=3

select * from StudentCourse where student_id=3;

#to fetch the All Details of the student_id=3 using joins and combining the 3 table

Select SC.student_id,s.name as student_name,s.phone,c.name as Course_name,SC.Course_id

from Student s,courses c,StudentCourse SC

where SC.student_id=s.id and SC.Course_id=c.id and student_id=3;

#==================================================================================================================================================



##Project-2 

#Customer and Orders, with Products  (CRM)●Customer-Product-Orders



![customer](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/d7161ff4-6cae-4d50-882a-09b4320f4075)

![Product order](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/3aca8e4b-d53f-4a8e-9507-5668a7dfebca)



#creating the product table 

create table products(

id bigint not null,

name varchar(29) not null,

price bigint not null

);

describe products;

#rename name column to names

alter table products rename column name to names;

#modify the colunm id contraints 

alter table products modify column id bigint not null auto_increment primary key;

#modify the colunm price contraints 

alter table products modify column price decimal(10,2) not null;

#inserting the data into products table

insert into products (names,price) values ("Manual testing",1200);

insert into products (names,price) values ("Automation testing",1999);

insert into products (names,price) values ("API",1879);

insert into products (names,price) values ("SQL",1699);

insert into products (names,price) values ("Mobile testing",1250);

insert into products (names,price) values ("Mobile testing",-100);

insert into products (names,price) values ("MBA",-100);

select * from products;

#update a value of mobile testing course

update products set price=1255.99 where id=1;

update products set price=1999.89 where id=1;

update products set price=1879.69 where id=1;



![product](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/4d4bbf9e-13ba-4328-b7fe-36d912315302)

#==================================================

#project 2 customer and orders with product (CRM Project)

use the_testing_academy;

#creating customers table

create table customer(

id bigint not null auto_increment,

name varchar(20) not null,

primary key (id)

);

#describe the table

describe customers;

#rename the table name

rename table customer to customers; 

#To add new column

Alter table customers add address text(30) not null;

#rename column name

Alter table customers rename column name to names; 

#inserting the data into customers table

insert into customers (names,address) values ("Amrut","pune");

insert into customers (names,address) values ("Raibagi","Banglore");

insert into customers (names,address) values ("Pramod","Mumbai");

insert into customers (names,address) values ("Dutta","Banglore");

insert into customers (names,address) values ("Renya","Gada");

insert into customers (names,address) values ("raju","GADAG");

select * from customers;

![customers](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/6e722bc4-8f31-4a15-8dd1-fbb82aa980e5)


#==================================================

#creating orders table along with customer_id as foriegn key

create table orders(

id bigint not null auto_increment,

order_no varchar(255) unique not null,

order_date  datetime not null,

customer_id bigint not null,

primary key (id),

foreign key (customer_id) references customers(id)

);

alter table orders modify column  customer_id bigint;

describe orders;

#inserting the data into orders table

insert into orders (customer_id,order_no,order_date) values (1,"4AN5J",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (6,"7DN5D",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (4,"8QN5I",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (5,"2AO5J",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (2,"6AN5M",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (1,"6VN5M",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (1,"8RN5I",current_timestamp());

insert into orders (customer_id,order_no,order_date) values (null,"8RK5I",current_timestamp());

select * from orders;


![Orders](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/edf7577f-cc88-4d50-9727-fa451f9b7510)


#===================================================================

#creating orders table along with order_id and product_id as foriegn key

create table order_items(

id bigint not null auto_increment primary key,

total_price bigint not null,

no_of_items bigint not null,

order_id bigint not null,

product_id bigint not null,

foreign key (order_id) references orders(id),

foreign key (product_id) references products(id)

);

describe order_items;

#modify the total_price constraints

alter table order_items modify column total_price decimal(10,2) not null;

insert into order_items (order_id,product_id,no_of_items,total_price) values (1,4,5,2000);

insert into order_items (order_id,product_id,no_of_items,total_price) values (2,2,3,1000);

insert into order_items (order_id,product_id,no_of_items,total_price) values (1,3,2,2000);

insert into order_items (order_id,product_id,no_of_items,total_price) values (1,5,5,5000);

select * from order_items;

#inner inner query for customers and orders table to fetch valid results 

select *

from customers c, orders o

where c.id=o.customer_id

order by c.id desc;

#OR we can write joins like this also

select *

from customers c join orders o

on c.id=o.customer_id

order by c.id desc;

#To see how many customers order something

select count(distinct c.id) as no_of_people_ordered

from customers c join orders o

on c.id=o.customer_id;

#left outer join query to fetch the data which customer is not oredered and also all data

select *

from customers c left join orders o

on c.id=o.customer_id

order by c.id desc;

#left outer join query to fetch the data only which customer is not oredered

select *

from customers c left join orders o

on c.id=o.customer_id

where o.customer_id is null;

#right outer join query to fetch the data only which order is not oredered

select *

from customers c right join orders o

on c.id=o.customer_id

where c.id is null;

#to find sum of price sum of quantity in oerder_item

select sum(total_price),sum(no_of_items) from order_items;

#to find total price of each order

select order_id,sum(total_price*no_of_items) from order_items group by order_id;

#to find who is brought which order and how much items to join 3 table

select c.id,c.names,o.id,oi.no_of_items

from customers c,orders o,order_items oi

where c.id=o.customer_id and o.id=oi.order_id;


![Order_item](https://github.com/Aamrutraibagi/SQL-Projects/assets/120326509/07552f11-7164-4b62-ad22-d9e742ac6f7c)


















