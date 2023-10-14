use student;

create table student1(
roll_no int primary key,
name varchar(50),
branch varchar(20)
);

create table exam(
roll_no int ,
s_code varchar(50),
marks int,
P_code varchar(50)
);

insert into student1 values
(1,"Jay","Computer Science"),
(2,"Suhani","Electronic and Comp"),
(3,"kriti","Electronic and Comp");

insert into exam values
(1,"CS11",50,"CS"),
(1,"CS12",60,"CS"),
(2,"EC101",66,"EC"),
(2,"EC102",70,"EC"),
(3,"EC101",45,"EC"),
(3,"EC102",50,"EC");

select * from student1;

select * from exam;
