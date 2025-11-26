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
This is where I talk about what this script is, why I built it, and other stuff. Step 4
 
******************************************************************************************************************/

-- Q1: How many classes does each student take each school year?

DROP VIEW IF EXISTS v_avg_grade_by_studytime;
GO

CREATE VIEW v_avg_grade_by_studytime AS
SELECT 
    studytime,
    AVG(G3) AS avg_final_grade
FROM [Student Performances].[dbo].[student-mat]
GROUP BY studytime;
GO
