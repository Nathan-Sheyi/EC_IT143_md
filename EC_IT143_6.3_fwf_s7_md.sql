--Q: Who is the Second person in the customer contact list?
--A: Well, here is your problem...

--ContactName = Ana Trujillo
--Google search: How to extract second name or row from a table?
--https://stackoverflow.com/questions/3617152/t-sql-how-to-select-only-second-row-from-a-table

WITH s1 AS 
(
    SELECT 
        t.ContactName AS SecondName,
        dbo.udf_parse_second_name(t.ContactName) AS Second_Name
    FROM dbo.t_w3_schools_customers AS t
    ORDER BY t.ContactName
    OFFSET 100 ROWS       
    FETCH NEXT 1 ROWS ONLY
)
SELECT *
FROM s1
WHERE s1.Second_Name IS NOT NULL;  