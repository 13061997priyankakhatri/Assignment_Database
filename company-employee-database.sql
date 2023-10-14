create database XYZ;

use XYZ;

create table XYZ (
id int primary key,
name varchar(50),
salary int
);

select * from XYZ;

insert into XYZ
values("1","Priyanka","10000"),
("2","Umang","20000"),
("3","Nayna","30000"),
("4","Jethanand","40000");

Drop table XYZ;

insert into XYZ
values("1","Adam","25000"),
("2","Bob","30000"),
("3","Casey","40000");