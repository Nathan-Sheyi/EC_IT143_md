--Q: Who is the Second person in the customer contact list?
--A: Well, here is your problem...

--ContactName = Ana Trujillo
--Google search: How to extract second name or row from a table?
--https://stackoverflow.com/questions/3617152/t-sql-how-to-select-only-second-row-from-a-table

SELECT ContactName
FROM dbo.v_w3_schools_customers
ORDER BY ContactName   -- Sort alphabetically
OFFSET 2 ROWS          -- Skip the first row
FETCH NEXT 1 ROWS ONLY; -- Return the next (second) 