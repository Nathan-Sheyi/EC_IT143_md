/*****************************************************************************************************************
NAME:    Birth Comunity 
PURPOSE: My script purpose is to answer the Birth community question...

MODIFICATION LOG:
Ver      Date        Author					Description
-----   ----------   -----------		-------------------------------------------------------------------------------
1.0     11/28/2025   Mary Daniel (Me)       1. My Birth community script


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script Community question 3 of 4.
 
******************************************************************************************************************/

-- Q1: In the data set,  Which month has the highest number of births across all years, specify the months all in a table format.
-- A1:Lets Ask SQL

SELECT 
    month AS month_name,
    date_of_month AS month_number,
    SUM(births) AS total_births
FROM [US_births_1994-2003_CDC_NCHS]
GROUP BY month, date_of_month
ORDER BY total_births DESC;
