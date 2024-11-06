CREATE PROCEDURE [dbo].[EMPLOYEE_READ]
	
	@Search	CHAR(9)

AS
BEGIN

SELECT
*
FROM [EMPLOYEE]
WHERE

[Ssn] LIKE @Search

--kung may ara naman ka nga gusto i search ulit.
--or
--[Fname] like @Search

END
