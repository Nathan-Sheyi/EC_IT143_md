/*****************************************************************************************************************
NAME:    Student Performances 
PURPOSE: My script purpose answer all the questions in the student performances database...

MODIFICATION LOG:
Ver      Date        Author					Description
-----   ----------   -----------		-------------------------------------------------------------------------------
1.0     11/29/2025   Mary Daniel (Me)       1. Built this script for EC IT143 Birth Community


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and here is question and analysis 3 out of 4.
 
******************************************************************************************************************/

-- Q1: How many sex, f and m do we have in the database
-- A1: Lets ask sql

SELECT 
    sex,
    COUNT(*) AS Total
FROM [Student Performances].[dbo].[student-mat]
GROUP BY sex;
