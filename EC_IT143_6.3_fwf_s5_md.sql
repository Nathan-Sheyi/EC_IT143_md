CREATE FUNCTION [dbo].[udf_parse_second_name]
(@v_combined_name AS VARCHAR(500)
)
RETURNS VARCHAR(100)

/*****************************************************************************************************************
NAME:    dbo.udf_parse_secondname
PURPOSE: Parse Second name from combined name

MODIFICATION LOG:
Ver      Date        Author				Description
-----   ----------   -----------		-------------------------------------------------------------------------------
1.0     12/05/2025   Mary Daniel       1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: 
Adapted from the following 
https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/sql/linq/how-to-use-scalar-valued-user-defined-functions
******************************************************************************************************************/

-- Q1: What should go here?
-- A1: Question goes on the previous line, intoduction to the answer goes on this line...
AS
BEGIN

	DECLARE @v_second_name AS VARCHAR(100);

SET @v_second_name = (SELECT ContactName FROM dbo.t_w3_schools_customers 
ORDER BY CustomerID
OFFSET 2 ROWS
FETCH NEXT 1 ROWS ONLY)
	RETURN @v_second_name;

	END; 

	GO