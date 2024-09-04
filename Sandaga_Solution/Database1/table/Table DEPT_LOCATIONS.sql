CREATE TABLE [dbo].[Table DEPT_LOCATIONS]
(
	[Id] INT NOT NULL , 
    [(Dnumber] INT NOT NULL, 
    [Dlocation] VARCHAR(15) NOT NULL, 
    PRIMARY KEY ([Dlocation, Dnumber]), 
    CONSTRAINT [FK_Table DEPT_LOCATIONS_ToTable] FOREIGN KEY ([Dnumber]) REFERENCES [Department] ( [Dnumber] ));
)
