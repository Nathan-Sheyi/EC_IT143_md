/*
Missing Index Details from SQLQuery14.sql - (local).AdventureWorks2022 (DESKTOP-6RHFQTQ\Admin (73))
The Query Processor estimates that implementing the following index could improve the query cost by 99.3143%.
*/


USE [AdventureWorks2022]
GO
CREATE NONCLUSTERED INDEX [my_index_sollution]
ON [Sales].[SalesOrderHeader] ([PurchaseOrderNumber])

GO

