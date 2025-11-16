/*****************************************************************************************************************
NAME:    EC_IT143_W3.4_md
PURPOSE: My script purpose is to solve questions using sql

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/
USE AdventureWorks2022;
GO
SELECT COUNT(*) AS TotalEmployees
FROM HumanResources.Employee;
SELECT 
    CAST(COUNT(*) AS FLOAT) / 
    (SELECT COUNT(*) FROM HumanResources.Employee) * 100 AS HR_Percentage
FROM HumanResources.EmployeeDepartmentHistory AS edh
JOIN HumanResources.Department AS d
    ON edh.DepartmentID = d.DepartmentID
WHERE d.Name = 'Human Resources';
-- Q1: I would like to know more about the hum resource department, analyze the total number of employee?
-- A1: The total number of employee is 290

-- Q2: I would like to know the percentage of emplyments in the Human resource department, can you calculate that?
-- A2: 2.06896551724138
SELECT TOP 5 
    a.City,
    COUNT(*) AS NumberOfCustomers
FROM Sales.Customer AS c
JOIN Person.Address AS a
    ON c.PersonID = a.AddressID
GROUP BY a.City
ORDER BY NumberOfCustomers DESC;

-- Q3:I want to understand where most of our customers live. Based on customer and address data, which cities have the highest number of registered customers? Please list the top five.
SELECT TOP 1
    p.Name AS ProductName,
    COUNT(*) AS NumberOfChanges
FROM Production.ProductListPriceHistory plph
JOIN Production.Product p
    ON plph.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY NumberOfChanges DESC;

-- A3: London
--Paris
--Concord
--Bellingham
--Burlingame

-- Q4: I would like the product price that has changed the most, could you please analyze that?
SELECT 
    p.Name,
    SUM(sod.OrderQty) AS Qty,
    p.ListPrice,
    p.StandardCost,
    SUM(sod.UnitPrice * sod.OrderQty) AS NetRevenue
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
WHERE p.Name LIKE '%Bike%'
  AND soh.OrderDate BETWEEN '2011-07-01' AND '2011-09-30'
GROUP BY p.Name, p.ListPrice, p.StandardCost;
-- A4: Sport-100 Helmet, Blue


-- Q5: Our marketing team wants to identify top-performing salespeople. For each salesperson, calculate total sales for 2022. Then, rank them by performance and include their territory. (Tables: Sales.SalesOrderHeader, Sales.SalesPerson, Sales.SalesTerritory)
SELECT 
    sp.BusinessEntityID AS SalesPersonID,
    sp.SalesYTD AS TotalSales2022,
    st.Name AS Territory
FROM Sales.SalesPerson sp
JOIN Sales.SalesTerritory st
    ON sp.TerritoryID = st.TerritoryID
ORDER BY TotalSales2022 DESC;

-- A5: 276	4251368.5497	Southwest
--289	4116871.2277	United Kingdom
--275	3763178.1787	Northeast
--277	3189418.3662	Central
--290	3121616.3202	France
--282	2604540.7172	Canada
--281	2458535.6169	Southwest
--279	2315185.611	Southeast
--288	1827066.7118	Germany
--284	1576562.1966	Northwest
--283	1573012.9383	Northwest
--278	1453719.4653	Canada
--286	1421810.9242	Australia
--280	1352577.1325	Northwest

-- Q6: Our leadership team is evaluating delivery performance. For orders shipped in 2012, can you compare the average shipping time by territory? Include total orders, average delay, and identify which territories performed the best and worst.
SELECT 
    st.Name AS Territory,
    COUNT(*) AS TotalOrders,
    AVG(DATEDIFF(DAY, soh.OrderDate, soh.ShipDate)) AS AvgShippingDays
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st 
    ON soh.TerritoryID = st.TerritoryID
WHERE YEAR(soh.ShipDate) = 2012
GROUP BY st.Name
ORDER BY AvgShippingDays ASC;  
-- A6: Australia	887	7
--Central	116	7
--Canada	429	7
--France	279	7
--Northwest	494	7
--United Kingdom	314	7
--Southwest	753	7
--Southeast	149	7

-- Q7: Which AdventureWorks tables contain a column named ‘Color’? Use INFORMATION_SCHEMA views.
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'Color';
-- A7: Production	Product	Color
--Production	vProductModelCatalogDescription	Color

--Q8: List all columns in AdventureWorks that allow NULL values and belong to the Production schema..
SELECT TABLE_NAME AS TableName, COLUMN_NAME AS ColumnName
FROM INFORMATION_SCHEMA.COLUMNS
WHERE IS_NULLABLE = 'YES'
  AND TABLE_SCHEMA = 'Production'
ORDER BY TABLE_NAME, COLUMN_NAME;
--A8: BillOfMaterials	EndDate
--BillOfMaterials	ProductAssemblyID
--Document	Document
--Document	DocumentLevel
--Document	DocumentSummary
--Illustration	Diagram
--Product	Class
--Product	Color
SELECT GETDATE() AS my_date;