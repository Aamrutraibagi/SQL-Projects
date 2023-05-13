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