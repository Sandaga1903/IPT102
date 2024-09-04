CREATE TABLE [dbo].[Table PROJECT]
(
	[Id] INT NOT NULL , 
    [(Pname] VARCHAR(15) NOT NULL, 
    [Pnumber] INT NOT NULL, 
    [Plocation] VARCHAR(15) NULL, 
    [Dnum] INT NOT NULL, 
    PRIMARY KEY ([Pnumber]), 
    CONSTRAINT [AK_Table PROJECT_Column] UNIQUE ([Pname]), 
    CONSTRAINT [FK_Table PROJECT_ToTable] FOREIGN KEY ([Dnum]) REFERENCES [Department]([Dnumber]));
)
