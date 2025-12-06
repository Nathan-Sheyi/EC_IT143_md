--Q: Who is the Second person in the customer contact list?
--A: Well, here is your problem...

--ContactName = Ana Trujillo
--Google search: How to extract second name or row from a table?
--https://stackoverflow.com/questions/3617152/t-sql-how-to-select-only-second-row-from-a-table

SELECT [CustomerName]
      ,'' AS City_list   --QUESTIOIN
  --How to extract city list from the table. 
      ,[Address]
      ,[City]
      ,[Country]
      
  FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
  ORDER BY 4
  
 