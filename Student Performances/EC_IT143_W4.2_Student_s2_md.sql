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
This is where I talk about what this script is, why I built it, and here is question and analysis 2 out of 4.
 
******************************************************************************************************************/

-- Q1: In the dataset, I would like to know Which students are performing below a passing threshold in any subject?
-- A1: Lets ask sql

SELECT 
   [sex]
      ,[age]
      ,[address],
    CASE 
        WHEN G1 < 10 THEN 'Below Passing in G1'
        WHEN G2 < 10 THEN 'Below Passing in G2'
        WHEN G3 < 10 THEN 'Below Passing in G3'
    END AS FailingSubject
FROM [Student Performances].[dbo].[student-mat]
WHERE G1 < 10 OR G2 < 10 OR G3 < 10;
