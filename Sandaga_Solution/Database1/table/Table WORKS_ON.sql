CREATE TABLE [dbo].[Table WORKS_ON]
(
	[Id] INT NOT NULL , 
    [(Essn] CHAR(9) NOT NULL, 
    [Pno] INT NOT NULL, 
    [Hours] DECIMAL(3, 1) NOT NULL, 
    PRIMARY KEY ([(Essn]), 
    CONSTRAINT [FK_Table WORKS_ON_ToTable] FOREIGN KEY ([Essn]) REFERENCES [Employee]([Ssn]), 
    CONSTRAINT [FK_Table WORKS_ON_ToTable_1] FOREIGN KEY ([Pno]) REFERENCES [Project]([Pnumber]));
)
