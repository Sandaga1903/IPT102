CREATE TABLE [dbo].[Table  DEPENDENT]
(
	[Id] INT NOT NULL , 
    [(Essn] CHAR(9) NOT NULL, 
    [Dependent_name] VARCHAR(15) NOT NULL, 
    [Sex] CHAR(10) NULL, 
    [Bdate] DATE NULL, 
    [Relationship] VARCHAR(8) NULL, 
    PRIMARY KEY ([Dependent_name]), 
    CONSTRAINT [FK_Table  DEPENDENT_ToTable] FOREIGN KEY ([Essn]) REFERENCES [Employee]([Ssn]) );
)
