/*****************************************************************************************************************
NAME:    Birth Comunity 
PURPOSE: My script purpose is to answer one of my classmates question...
MODIFICATION LOG:
Ver      Date        Author					Description
-----   ----------   -----------		-------------------------------------------------------------------------------
1.0     05/23/2022   Mary Daniel (Me)       1. My answer script to Betrands' question



RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script Community question 1 of 4.
 
******************************************************************************************************************/

-- Q1: What is the average number of births per day for each year
-- A1:Lets Ask SQL

SELECT 
    YEAR AS birth_year,
    AVG(births) AS avg_births_per_day
FROM [US_births_1994-2003_CDC_NCHS]
GROUP BY YEAR
ORDER BY birth_year;
