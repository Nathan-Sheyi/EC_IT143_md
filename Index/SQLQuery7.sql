/*
Missing Index Details from SQLQuery6.sql - (local).AdventureWorks2022 (DESKTOP-6RHFQTQ\Admin (63))
The Query Processor estimates that implementing the following index could improve the query cost by 78.1788%.
*/


USE [AdventureWorks2022]
GO
CREATE NONCLUSTERED INDEX [ix_indexer]
ON [Person].[Person] ([FirstName])

GO

