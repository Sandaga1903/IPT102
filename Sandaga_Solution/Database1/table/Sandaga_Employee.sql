CREATE TABLE [dbo].[Sandaga_Employee]
(
	[Id] INT NOT NULL , 
    [(Fname] VARCHAR(15) NOT NULL, 
    [Minit] NCHAR(10) NULL, 
    [Lname] VARCHAR(15) NOT NULL, 
    [Ssn] CHAR(9) NOT NULL, 
    [Bdate] DATE NULL, 
    [Address] VARCHAR(30) NULL, 
    [Sex] CHAR(10) NULL, 
    [Salary] DECIMAL NULL, 
    [Super_ssn] CHAR(9) NULL, 
    [Dno] INT NOT NULL, 
    PRIMARY KEY ([Ssn]) 
)
