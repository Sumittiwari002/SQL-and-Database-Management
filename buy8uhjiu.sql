-- ddl commands
create database kiet;  -- creating a database which name is kiet
use kiet;              -- here we are able to use database which name is keit

-- Here we create a table(student) in database
create table student(
stud_id int not null,
stud_name char(20),
age int not null,
short_desc text,
joining_day date
);
select * from student;
desc student;
drop table student;
drop database kiet;

alter table student add gmail varchar(30);
alter table student drop short_desc;
select * from student;
alter table student rename column gmail to Account;
desc student;
insert into student value(35, "Sumit Tiwari", 21, "2021-11-21", "tiwariji0331@gmail.com");
select * from student;
truncate student;
select * from consumercomplaints;
drop table consumercomplaints;

drop table student;
desc student;

-- creating teacher table;
create table teacher(
t_id int ,
t_name char(20),
primary key(t_id)
);

create table student(
stud_id int,
stud_name char(50) not null,
age int not null,
short_desc text,
email varchar(20) unique,
joining_day date default ("2024-07-06"),
teacher_id int ,
primary key (stud_id),
foreign key (teacher_id) references teacher(t_id)
);
select *from student;
desc student;
desc teacher;