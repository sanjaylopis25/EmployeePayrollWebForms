create database EPWebforms;
CREATE TABLE Users (
    First_Name varchar(50),
    Last_Name varchar(50),    
    Email_Id varchar(50),
    Password varchar(50),
	Phone_Number bigint,
	RegisteredDate datetime default sysdatetime()
);

ALTER TABLE Users
DROP COLUMN Phone_Number;

select * from Users

ALTER TABLE Users
ALTER column RegisteredDate datetime default sysdatetime null;

drop table Users;


CREATE TABLE LoginUser ( 
    id int identity(1,1) primary key not null,
	Email_Id varchar(50),
    Password varchar(50),
	LoginTime datetime default sysdatetime()
);
CREATE TABLE LoginUser ( 
    id int identity(1,1) primary key not null,
	Email_Id varchar(50),
    Password varchar(50),
	LoginTime datetime default sysdatetime()
);
Create TABLE Form (
    Emp_id int identity(1,1) primary key not null,
	Name varchar(50),
    Profile_Image varchar(50),  
    Gender varchar(50),
    Department varchar(50),
	Salary varchar(50),
	Start_Date Date,
	Notes varchar(250),
	RegisteredDate datetime default sysdatetime()
);

Alter TABLE Form
Add Profile_Image varchar(50);

Select * from Form;