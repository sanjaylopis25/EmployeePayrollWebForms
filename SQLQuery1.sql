create database EPWebforms;
CREATE TABLE Register (
    Id int Identity (1,1) primary key,
    First_Name varchar(50),
    Last_Name varchar(50),    
    Email_Id varchar(50),
    Password varchar(50),
	Cpassword varchar(50),
	Phone_Number bigint
);

ALTER TABLE Register
DROP COLUMN Phone_Number;

select * from Register

ALTER TABLE Register
ADD Phone_Number varchar(50);

drop table Register;
