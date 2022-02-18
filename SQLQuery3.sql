CREATE PROCEDURE sp_Register
@fname varchar(50),
@lname varchar(50),
@email varchar (50),
@pswrd varchar(50),
@phno bigint
AS
BEGIN
insert into Users (First_Name,Last_Name,Email_Id,Password,Phone_Number) values
(
@fname,@lname,@email,@pswrd,@phno
)
END
GO

CREATE PROCEDURE sp_Login
(
    @Email_Id varchar(50),
    @Password varchar(50)
)
AS
declare @count int
begin try 
select @count = count (Email_Id) from Users where (Email_Id=@Email_Id and Password=@Password)
if(@count=1)
insert into LoginUser (Email_Id,Password) values (@Email_Id,@Password)
select * from Users where (Email_Id=@Email_Id and Password=@Password)
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
