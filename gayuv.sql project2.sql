-- create a university database
create database University1;

-- switch to the university database
use university1;


-- create the student table
create table University1.student1(
student1_id int primary key,
student1_name  varchar(40),
student1_age int,
student1_major varchar(40)
);

-- insert records into the students table
insert into University1.student1 values
("1","gayu","21","maths"),
("2","shalini","18","biology"),
("3","gayuv","20","histroy"),
("4","vani","15","tamil"),
("5","megala","25","computer science");
select * from University1.student1;



-- query to retrieve all records from the "Student1" table
describe University1.student1;



-- query to retrieve the names of all students majoring in "Computer Science"
select student1_id,student1_name,student1_age,student1_major from University.student1 
where student1_major = "computer science";



-- query to retrive the details of the oldest student in the "students" table
select max(student1_age) from University1.student1;


-- query to update the major of a student with a specific student_id
update University1.student1 set student1_major="maths" 
where student1_id=4;


-- query to delete a student with a specific student_id from the "Students" table
delete from University1.student1
where student1_id=5;