CREATE PROCEDURE spInsert
@fname varchar(50),
@lname varchar(50),
@email varchar(50),
@pswrd varchar(50),
@cpswrd varchar(50),
@phno bigint
AS
BEGIN
insert into Register values
(
@fname,@lname,@email,@pswrd,@cpswrd,@phno
)
END
GO