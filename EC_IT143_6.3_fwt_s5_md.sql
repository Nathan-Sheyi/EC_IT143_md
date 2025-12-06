--Q1: How can we prevent someone from deleting a customer from the table?
--A: There are trigers I can use to stop someone or diasable them from deleting a customer from the defult table, using the instance below. 

--Q2: Did it work when executed?
--A2: I am also curious to know, lets test run and see. 

-- Attempt to delete a customer using the trigger. 
DELETE FROM dbo.t_w3_schools_customers

WHERE CustomerName = 'Ana Trujillo';

delete t_w3_schools_customers
