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
