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