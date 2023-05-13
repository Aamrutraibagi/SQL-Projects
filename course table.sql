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



