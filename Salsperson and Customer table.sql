use student;

/*Create table for SalsPerson*/
create table SalsPerson ( 
SNo int Primary key, 
SNAME varchar(50), 
CITY varchar(50), 
COMM int
);

/*Craete table for Customer*/
create table Customer ( 
CNM int primary key, 
CNAME VARCHAR(50), 
CITY VARCHAR(50), 
RATING INT, 
SNO INT, 
foreign key (SNO) references SalsPerson(SNO) 
);

/*Insert values for SalsPerson table*/
insert into SalsPerson values 
(1001,"Peel","London",.12);

insert into SalsPerson values 
(1002,"Serres","San Jose",.13), 
(1004,"Motika","London",.11), 
(1007,"Rafkin","Barcelona",.15), 
(1003,"Axelrod","New York",.1);

/*Insert values for Customer table*/
insert into Customer values 
(201,"Hoffman","London",100,1001), 
(202,"Giovanne","Roe",200,1003), 
(203,"Liu","San Jose",300,1002), 
(204,"Grass","Bracelona",100,1002), 
(206,"Clemens","London",300,1007), 
(207,"Pereira","Roe",100,1004);

select * from SalsPerson; /*Display the all details*/

select * from Customer;

select SNAME,CITY from SalsPerson where CITY = "London" and COMM <= .12 ; /*Names and cities of all salespeople in London with commission above 0.12*/

select * from SalsPerson where CITY = "London" or "Barcelona" ; /*All salespeople either in Barcelona or in London */

select * from SalsPerson where COMM between .1 and .12; /*All salespeople with commission between 0.10 and 0.12. (Boundary values should be excluded). */

select * from Customer where RATING <= 100 and CITY = "Roe"; /*All customers excluding those with rating <= 100 unless they are located in Roe*/
