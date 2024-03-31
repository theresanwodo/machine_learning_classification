CREATE DATABASE CAPSTONE
---Write a Query that display the individual tables
SELECT * FROM [dbo].[Customer]

SELECT * FROM [dbo].[Order]

SELECT * FROM [dbo].[Product]

SELECT * FROM [dbo].[Region]


---Write a statement that list all customers along with their ID, Name & 
---Segment
SELECT [Customer_ID],[Customer_Name],[Segment]
FROM [dbo].[Customer]


---Write a statement that lists the Name, Product ID, Category & SubCategory of each product.
SELECT [Product_Name],[Product_ID],[Sub_Category],[Category]
FROM [dbo].[Product]

---Write a query that displays all the columns of all product who have the 
---category “Furniture”
SELECT [Product_Name],[Product_ID],[Sub_Category],[Category]
FROM [dbo].[Product]
WHERE [Category] = 'FURNITURE'

---Write a query that displays the Product name, and ID of each product 
---with the Name starting with “Boston”.
SELECT [Product_Name],[Product_ID]
FROM [dbo].[Product]
WHERE [Product_Name] LIKE 'BOSTON%'


---Write a query that displays the Product name, and ID of each product 
---with the Name having “Collection”
SELECT [Product_Name],[Product_ID]
FROM [dbo].[Product]
WHERE [Product_Name] LIKE '%COLLECTION%'


---Write the query that displays all orders made during the month of March 
---2014.
SELECT *
FROM [dbo].[Order]
WHERE [Order_Date] BETWEEN '2014/03/01' AND '2014/03/31'

SELECT *
FROM [dbo].[Order]
WHERE[Order_Date] NOT BETWEEN '2014/03/01' AND '2014/03/31'

---Write the query that displays all orders the were not made during the 
---month of March 2014 but shipped between 5th and 30th of March 2014.
SELECT *
FROM [dbo].[Order]
WHERE[Order_Date] NOT BETWEEN '2014/03/01' AND '2014/03/31' AND [Ship_Date] BETWEEN '2014/03/05' AND '2014/03/30'


SELECT *
FROM [dbo].[Order]
WHERE[Ship_Date] BETWEEN '2014/03/05' AND '2014/03/30'


---Join the Order table to the Customer table on the Customer ID column. 
---Display all columns from both tables
SELECT *
FROM [dbo].[Order] AS O
INNER JOIN [dbo].[Customer] AS C
ON O.[Customer_ID] = C.Customer_ID


---Join the Order table to the Customer, Product, & Region tables on the 
---basis that the CustomerID column in the Order table matches the 
---CustomerID column in the Customer table, the ProductID column in the 
---Product table matches the ProductID column in the Order table, the 
---Postalcode column in the Region table matches the Postalcode column in 
---the Order Table
SELECT *
FROM [dbo].[Order] AS O
JOIN [dbo].[Customer] AS C
ON O.Customer_ID = C.Customer_ID
JOIN  [dbo].[Product] AS P
ON O.Product_ID = P.Product_ID
JOIN [dbo].[Region] AS R
ON O.Postal_Code = R.Postal_Code

DELETE [dbo].[Order]





