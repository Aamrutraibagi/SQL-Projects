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
#---------------------------------------------------------------------------------------------
create view cour_stu_info as 
select s.name,c.price
from Student s,courses c
where s.id=c.id and c.price;

Select * from cour_stu_info;

#to drop a view table

drop view cour_stu_info;

#to create view of students and courses table  to know who have brought courses less than 800
#----------------------------------------------------------------------------------------------
create view cour_stu_info as 
select s.name,c.name as coursenames,c.price
from Student s,courses c
where s.id=c.id and c.price;

Select * from cour_stu_info;

#to create procedure here this procedure is created by using stored procedure tab
#---------------------------------------------------------------------------------------------
#used to set the value of arg
set @q_value=25
#used to call procedure name it will show error but it will get executed
call new_procedure(@q_value)