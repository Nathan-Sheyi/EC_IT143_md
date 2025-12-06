--Q: Who is the Second person in the customer contact list?
--A: Well, here is your problem...

--ContactName = Ana Trujillo

SELECT ContactName
FROM dbo.t_w3_schools_customers
ORDER BY ContactName
OFFSET 2 ROWS FETCH NEXT 1 ROW ONLY;
