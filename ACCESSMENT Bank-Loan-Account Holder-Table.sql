use student;

create table bank3(
Bramch_id int primary key,
Bracnh_name varchar(50),
Branch_city varchar(50)
);

create table loan7 (
Loan_no int,
Account_holders_id int primary key,
Loan_amount int,
Loan_type varchar(50),
Branch_id int,
foreign key (Branch_id) references bank3(Bramch_id)
);

create table account_holder9(
Account_holder_name varchar(50),
City varchar(50),
Contact varchar(50),
Date_of_account_created  date,
Account_Status varchar(50),
Acconut_type varchar(50),
Balance int,
Account_Holders_no int,
Account_Holders_id int primary key
);

insert into bank3 values
(1001,"Delhi-Gate BOB Bank","Palanpur"),
(1002,"Aroma BOI Bank","Ahemadabad"),
(1003,"ICICI Bank","Bhuj"),
(1004,"Indusind Bank","Palanpur"),
(1005,"Axis Bank","Gandhinagar");

insert into loan7 values
(1234567890,4001,5000000,"Home Loan",1001),
(1234567891,4002,3000000,"Car Loan",1002),
(1234567892,4003,6000000,"Education Loan",1003),
(1234567893,4004,4000000,"Gold Loan",1004),
(1234567894,4005,8000000,"Personal Loan",1005);

insert into account_holder9 values
("Priyanka","Palanpur",1234567890,"11-06-12","Active","Saving",200000,345678923,4001),
("Nayna","Bhuj",1234567891,"12-05-11","Active","Current",300000,345678924,4002),
("Umang","Ahemadabad",1234567892,"16-02-10","Active","Saving",500000,345678925,4003),
("Jethanand","Palanpur",1234567893,"14-03-11","Terminated","Saving",600000,345678926,4004),
("Lila","Gandhinagar",1234567894,"13-03-16","Terminated","Current",800000,345678927,4005);

select * from bank3;

select * from loan7;

select * from account_holder9;

select * from account_holder9 where City = "Palanpur"; /*Also fetch the details of the account holder who are related from the same city */

select Account_Holders_no,Account_holder_name from account_holder9 where Date_of_account_created >= 15;/*Write a query to fetch account number and account holder name, whose 
accounts were created after 15th of any month*/

select City,count(Branch_city),Branch_city as Count_branch from account_holder9,bank3 group by Branch_City,City;/*Write a query to display the city name and count the branches in that city. 
Give the count of branches an alias name of Count_Branch.*/

SELECT account_holder9.Account_Holders_id,account_holder9.Account_Holder_name,loan7.Branch_id,loan7.Loan_amount FROM account_holder9 JOIN loan7 ON account_holder9.Account_Holders_id = loan7.Account_Holders_id;