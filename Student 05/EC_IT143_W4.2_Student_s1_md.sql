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
This is where I talk about what this script is, why I built it, and here is question and analysis 1 out of 4.
 
******************************************************************************************************************/

-- Q1: What is the average score for each student across all subjects, to futher clarify, I would like you to specify those subject all in a tabular format. 
-- A1: Lets ask sql

SELECT 
    sex, famsize, age,
    (G1 + G2 + G3) / 3.0 AS AverageScore
FROM [Student Performances].[dbo].[student-mat];
