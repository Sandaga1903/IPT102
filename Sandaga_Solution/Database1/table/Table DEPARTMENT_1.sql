CREATE TABLE [dbo].[Table DEPARTMENT]
(
	[Id] INT NOT NULL , 
    [(Dnumber] VARCHAR(15) NOT NULL, 
    [Dnumber] INT NOT NULL, 
    [Mgr_ssn] CHAR(9) NOT NULL, 
    [Mgr_start_date] NCHAR(10) NULL, 
    PRIMARY KEY ([(Dnumber]), 
    CONSTRAINT [FK_Table DEPARTMENT_ToTable] FOREIGN KEY ([Mgr_ssn]) REFERENCES [Employee](Ssn) );
)
