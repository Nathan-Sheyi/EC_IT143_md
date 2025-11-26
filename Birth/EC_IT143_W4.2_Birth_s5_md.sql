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
This is where I talk about what this script is, Step 5
 
******************************************************************************************************************/

-- Q1: How many birth record do we have in the database?
-- A1: Lets ask SQL Server to find out.

SELECT *

FROM dbo.v_total_birth_load
DROP TABLE IF EXISTS dbo.t_total_births;
GO

CREATE TABLE dbo.t_total_births
(total_births			VARCHAR(25) NOT NULL,

CONSTRAINT PK_t_total_births PRIMARY KEY CLUSTERED(total_births ASC)
);
GO

