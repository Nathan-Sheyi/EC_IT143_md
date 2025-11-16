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

-- Q1: I would like to know more about the hum resource department, analyze the total number of employee?
-- A1: The total number of employee is 290

-- Q2: I would like to know the percentage of emplyments in the Human resource department, can you calculate that?
-- A2: 2.06896551724138

-- Q3:I want to understand where most of our customers live. Based on customer and address data, which cities have the highest number of registered customers? Please list the top five.
-- A3: London
--Paris
--Concord
--Bellingham
--Burlingame

-- Q4: I would like the product price that has changed the most, could you please analyze that?
-- A4: Sport-100 Helmet, Blue

-- Q4: I want to see all bike orders from Q3 2011, including how many were sold, their list price, standard cost, and an estimate of net revenue. Can you create a list showing this information?
-- A4: Mountain Bike Socks, L	32	9.50	3.3963	182.40
-- Mountain Bike Socks, M	301	9.50	3.3963	1644.45

-- Q5: Our marketing team wants to identify top-performing salespeople. For each salesperson, calculate total sales for 2022. Then, rank them by performance and include their territory. (Tables: Sales.SalesOrderHeader, Sales.SalesPerson, Sales.SalesTerritory)
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
-- A6: Australia	887	7
--Central	116	7
--Canada	429	7
--France	279	7
--Northwest	494	7
--United Kingdom	314	7
--Southwest	753	7
--Southeast	149	7

-- Q7: Which AdventureWorks tables contain a column named ‘Color’? Use INFORMATION_SCHEMA views.
-- A7: Production	Product	Color
--Production	vProductModelCatalogDescription	Color

--Q8: List all columns in AdventureWorks that allow NULL values and belong to the Production schema..
--A8: BillOfMaterials	EndDate
--BillOfMaterials	ProductAssemblyID
--Document	Document
--Document	DocumentLevel
--Document	DocumentSummary
--Illustration	Diagram
--Product	Class
--Product	Color
SELECT GETDATE() AS my_date;