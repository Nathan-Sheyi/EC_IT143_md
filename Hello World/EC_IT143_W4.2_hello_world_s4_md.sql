/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s4_mn.sql
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/20/2025   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is,  Step 4 out of 8
 
******************************************************************************************************************/

-- Q1: What is the current date and time?
-- A1: Lets ask SQL Server to find out. 

DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS
SELECT 
    'Hello World' AS my_message,
    GETDATE() AS current_date_time;
GO
