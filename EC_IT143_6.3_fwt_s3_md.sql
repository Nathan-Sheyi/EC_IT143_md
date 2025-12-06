--Q1: How can we prevent someone from deleting a customer from the table?
--A: There are trigers I can use to stop someone or diasable them from deleting a customer from the defult table, using the instance below. 

https://stackoverflow.com/questions/23734892/disable-delete-for-a-table-in-sql-server#:~:text=On%20SQL%20Server%2C%20you%20have%20the%20following%20options%3A,if%20the%20customer%20has%20at%20least%201%20order.
--DENY DELETE ON OBJECT::dbo.Customer TO db_datawriter;
--Raise an error in a trigger: CREATE TRIGGER nodelete1 ON dbo.Customer INSTEAD OF DELETE AS RAISERROR('You can''t delete from this table', 16, 10)