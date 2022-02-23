--CREATE PROCEDURE sp_Register
--@fname varchar(50),
--@lname varchar(50),
--@email varchar (50),
--@pswrd varchar(50),
--@phno bigint
--AS
--BEGIN
--insert into Users (First_Name,Last_Name,Email_Id,Password,Phone_Number) values
--(
--@fname,@lname,@email,@pswrd,@phno
--)
--END
--GO

--ALTER PROCEDURE sp_Login
--(
--    @Email_Id varchar(50),
--    @Password varchar(50)
--)
--AS
--declare @count int
--begin try 
--select @count = count (Email_Id) from Users where (Email_Id=@Email_Id and Password=@Password)
--if(@count=1)begin
--	insert into LoginUser (Email_Id,Password) values (@Email_Id,@Password)
--	select * from Users where (Email_Id=@Email_Id and Password=@Password)
--	end
--else
--begin
--	 RAISERROR(2,401, 16,'User Not Exists')
--	end
--end try
--begin catch
--select
--ERROR_NUMBER() as ErrorNumber,
--ERROR_STATE() as ErrorState,
--ERROR_PROCEDURE() as ErrorProcedure,
--ERROR_LINE() as ErrorLine,
--ERROR_MESSAGE() as ErrorMessage;
--end catch


ALTER PROCEDURE sp_Form
@Name varchar(50),
@Profile_Image varchar(50),
@Gender varchar(50),
@Department varchar(50),
@Salary varchar (50),
@Start_Date	 varchar(50),
@Notes varchar(50)
AS
BEGIN
insert into Form (Name,Profile_Image,Gender,Department,Salary,Start_Date,Notes) values
(
@Name,@Profile_Image,@Gender,@Department,@Salary,@Start_Date,@Notes
)
END
GO


ALTER PROCEDURE sp_Register
@fname varchar(50),
@lname varchar(50),
@email varchar (50),
@pswrd varchar(50),
@phno bigint
AS
BEGIN
	Declare @Count int
	Declare @ReturnCode int

	Select @Count = COUNT(Email_Id)
	from Users where Email_Id=@email
	if @Count>0
	begin 
		Set @ReturnCode=-1
	End
	else
	begin
		Set @ReturnCode=1
	insert into Users (First_Name,Last_Name,Email_Id,Password,Phone_Number) values
	(
	@fname,@lname,@email,@pswrd,@phno
	)
	end 
	select @ReturnCode as ReturnValue
	end

Create Procedure sp_Login
@email varchar (50),
@pswrd varchar(50)
as
Begin 
	Declare @Count int
	select @Count = count (Email_Id) from Users where (Email_Id=@email and Password=@pswrd)
	if(@Count =1)
	Begin
		Select 1 as ReturnCode
	End
	Else
	Begin
		Select -1 as ReturnCode
	End
End