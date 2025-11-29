/*****************************************************************************************************************
NAME:    Student Performances 
PURPOSE: My script purpose answer all the questions in the student performances database...

MODIFICATION LOG:
Ver      Date        Author					                Description
-----   ----------   -----------		                    -------------------------------------------------------------------------------
1.0     11/29/2025   Student's question(khanyisani)       1. Built this script for EC IT143 Birth Community


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is (Khanyisani's question), why I built it, and here is question and analysis 3 out of 4.
 
******************************************************************************************************************/

-- Q1: Regarding your Student Performances dataset, what is the average combined score of students who scored above 90% in both the 'Math' subject and any designated 'Science' subject?
-- A1: Lets ask sql, Maths and other subject were not mentioned, G!, G2, G3 was the exams mentioned, so i used that instead. 

SELECT
    AVG(G1) AS Avg_G1,
    AVG(G2) AS Avg_G2,
    AVG(G3) AS Avg_G3
FROM [Student Performances].[dbo].[student-mat]
WHERE G1 >= 18 AND G2 >= 18 AND G3 >= 18;
