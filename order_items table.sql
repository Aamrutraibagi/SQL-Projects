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
