﻿USE Sandaga_Company
GO

DROP TABLE IF EXISTS dbo.EMPLOYEE;
GO

CREATE TABLE dbo.EMPLOYEE
(
    [Fname]     VARCHAR(15) NOT NULL, 
    [Minit]     CHAR,
    [Lname]     VARCHAR(15) NOT NULL,
    [Ssn]       CHAR(9)     NOT NULL,
    [Bdate]     Date,
    [Address]   VARCHAR(30),
    [Sex]       CHAR,
    [Salary]    DECIMAL(10,2),
    [Super_ssn] CHAR(9),
    [Dno]       INT         NOT NULL,
    CONSTRAINT PK_EMPLOYEE_Ssn PRIMARY KEY(Ssn)
)
GO

CREATE NONCLUSTERED INDEX IX_EMPLOYEE_Name ON [dbo].EMPLOYEE([Lname] ASC, [Fname] ASC);
GO

INSERT INTO dbo.EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)

VALUES
(N'CRAYZE', N'D', N'SANDAGA', N'123456789', '2003-07-30', N'kaus', N'F', 11000.00, N'123456712', 30),
(N'Klay', N'D', N'Sarte', N'123456788', '2002-07-10', N'kaus', N'F', 12000.00, N'123456713', 45),
(N'Jane', N'D', N'Imbang', N'123456781', '2001-07-20', N'kaus', N'F', 13000.00, N'123456714', 20),
(N'Darlene', N'D', N'Borines', N'123456784', '2002-12-30', N'kaus', N'F', 14000.00, N'123456715', 40);
GO

SELECT * FROM EMPLOYEE;
GO

UPDATE dbo.EMPLOYEE
SET Salary = 1000.00,
    Address = N'NEW ADDRESS, kaus'
WHERE Ssn = N'123456789';
GO

SELECT * FROM EMPLOYEE;
GO

DELETE FROM dbo.EMPLOYEE WHERE Ssn  = N'123456789';
GO

SELECT * FROM EMPLOYEE;
GO



SELECT EMPLOYEE.*, DEPARTMENT.*
FROM EMPLOYEE
left join DEPARTMENT
ON EMPLOYEE.Ssn = DEPARTMENT.Mgr_ssn

SELECT EMPLOYEE.*, DEPARTMENT.*
FROM EMPLOYEE
inner join DEPARTMENT
ON EMPLOYEE.Ssn = DEPARTMENT.Mgr_ssn



SELECT EMPLOYEE.*, DEPARTMENT.*
FROM EMPLOYEE
right join DEPARTMENT
ON EMPLOYEE.Ssn = DEPARTMENT.Mgr_ssn

SELECT EMPLOYEE.*, DEPARTMENT.*
FROM EMPLOYEE
cross join DEPARTMENT;

