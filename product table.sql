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