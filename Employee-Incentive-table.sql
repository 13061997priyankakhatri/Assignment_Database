use student;

create table Employee3 ( 
Employee_id int, 
First_Name varchar(50), 
Last_Name varchar(40), 
Salary int, 
Joining_date datetime, 
Department varchar(50)
);

create table Incentive2 ( 
Employee_ref_id int, 
Incentive_date date, 
Incentive_amount int
);

insert into Employee3 values 
(1,"Jhon","Abraham",1000000,"13-JAN-01 12:00:00 AM","Banking"),
(2,"Michel","Clarke",800000,"13-JAN-01 12:00:00 AM","Insurance"),
(3,"Roy","Thomas",700000,"13-FAB-01 12:00:00 AM","Banking"),
(4,"Tom","Jose",600000,"13-FAB-01 12:00:00 AM","Insurance"),
(5,"Jerry","Pinto",650000,"13-FAB-01 12:00:00 AM","Insurance"),
(6,"Philip","Mathew",750000,"13-JAN-01 12:00:00 AM","Services"),
(7,"Testname1","123",650000,"13-JAN-01 12:00:00 AM","Services"),
(8,"Testname2","Lname%",600000,"13-FAB-01 12:00:00 AM","Insurance");

insert into Incentive2 values 
(1,"13-FAB-01",5000), 
(2,"13-FAB-01",3000), 
(3,"13-FAB-01",4000), 
(1,"13-JAN-01",4500), 
(2,"13-JAN-01",3500);

alter table Employee3 modify Joining_date varchar(100);

alter table Incentive2 modify Incentive_date varchar(100);

select * from Employee3;

select * from Incentive2;

alter table Employee2 change First_Name Employee_Name varchar(40); /*	Change Table Name	*/

select Employee_Name,Joining_date,Salary from Employee2; /*		Join Three Columns of Table Employee2	*/

select * from Employee2 ORDER BY Employee_Name ASC ,Salary desc; /*		Order by Clause with Employee_name in accending order and Salary in	decending order		*/

select * from Employee2 where Employee_Name like '%J%'; /*	 Like Clause	*/

select Department,Salary from Employee2 order by Salary asc; /*		Order by Clause	with Salary in Accending Order		*/

select Employee_Name,Incentive_amount from Employee2,Incentive1 where Incentive_amount > 3000; /*Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000*/

/*		After Insert Trigger		*/

Delimiter **

Create trigger Employee2_After_Insert

after insert

	on Employee2 for each row
    
begin

	declare vUser varchar(50);
    
    -- Find username of employee performing the INSERT into table
    select user() into vUser;
    
    -- Insert record into audit table
    insert into employee2_audit
   ( 
	 employee_id,
     created_date,
     created_by
   )
   values
   ( new.employee_id,
     SYSDATE(),
     vUser );
end; **

delimiter ;