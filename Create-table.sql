use student;

create table student2 ( 
First_Name varchar(50), 
Last_Name varchar(50), 
Address varchar(50), 
City varchar(50), 
Age int 
);

insert into student2 values 
( "Mickey","Mouse","123 Fantacy Way","Anaheim",73), 
("Bat","Man","321 Cavern Ave","Gotham",54), 
("Wonder","Woman","987 Truth Way","Paradise",39), 
("Donald","Duck","555 Queck Street","Mallard",65), 
("Bugs","Bunney","567 Carrot Street","Rascal",58), 
("Wiley","Coyote","999 Acme Way","Canyon",61), 
("Cat","Woman","234 Purrfact Street","Hairball",32), 
("Tweety","Bird",543,"Ttotltaw",28);

select * from student2;