USE Sandaga_Company
GO

DROP TABLE IF EXISTS dbo.DEPENDENT;
GO

CREATE TABLE dbo.DEPENDENT
(
	[Essn]           CHAR(9)     NOT NULL,
	[Dependent_name] VARCHAR(15) NOT NULL,
	[Sex]            CHAR,
	[Bdate]          DATE,
	[Relationship]   VARCHAR(8),
	CONSTRAINT PK_Dependent PRIMARY KEY (Essn, Dependent_name)
     
);	
GO

CREATE NONCLUSTERED INDEX IX_DEPENDENT_name ON dbo.DEPENDENT ([Dependent_name] ASC);
GO

INSERT INTO dbo.DEPENDENT ([Essn], [Dependent_name], [Sex], [Bdate], [Relationship])
VALUES
(N'CCIS', N'FAITH', N'F', N'2003-07-30', N'SINGLE'),
(N'CTE', N'CRAYZE', N'F', N'2004-09-31', N'SINGLE'),
(N'CBA', N'ZEL', N'F', N'2005-10-01', N'SINGLE');
GO

SELECT * FROM dbo.DEPENDENT;
GO 

DELETE FROM dbo.DEPENDENT WHERE Dependent_name = N'FAITH';
GO

SELECT * FROM dbo.DEPENDENT;
GO 