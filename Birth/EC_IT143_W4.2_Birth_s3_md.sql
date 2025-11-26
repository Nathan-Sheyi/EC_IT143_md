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
This is where I talk about what this script is, Step 3
 
******************************************************************************************************************/

-- Q1: How many birth record do we have in the database?
-- A1: Lets ask SQL Server to find out.

SELECT count(births) AS total_births
FROM dbo.[US_births_1994-2003_CDC_NCHS];

