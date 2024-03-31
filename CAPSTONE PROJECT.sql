CREATE DATABASE CAPSTONE

SELECT * FROM [dbo].[Customer]

SELECT * FROM [dbo].[Order]

SELECT * FROM [dbo].[Product]

SELECT * FROM [dbo].[Region]

SELECT [Customer_ID],[Customer_Name],[Segment]
FROM [dbo].[Customer]

SELECT [Product_Name],[Product_ID],[Sub_Category],[Category]
FROM [dbo].[Product]

SELECT [Product_Name],[Product_ID],[Sub_Category],[Category]
FROM [dbo].[Product]
WHERE [Category] = 'FURNITURE'

SELECT [Product_Name],[Product_ID]
FROM [dbo].[Product]
WHERE [Product_Name] LIKE 'BOSTON%'

SELECT [Product_Name],[Product_ID]
FROM [dbo].[Product]
WHERE [Product_Name] LIKE '%COLLECTION%'

SELECT *
FROM [dbo].[Order]
WHERE [Order_Date] BETWEEN '2014/03/01' AND '2014/03/31'

SELECT *
FROM [dbo].[Order]
WHERE[Order_Date] NOT BETWEEN '2014/03/01' AND '2014/03/31'

SELECT *
FROM [dbo].[Order]
WHERE[Order_Date] NOT BETWEEN '2014/03/01' AND '2014/03/31' AND [Ship_Date] BETWEEN '2014/03/05' AND '2014/03/30'
GROUP BY 


SELECT *
FROM [dbo].[Order]
WHERE[Ship_Date] BETWEEN '2014/03/05' AND '2014/03/30'

SELECT *
FROM [dbo].[Order] AS O
INNER JOIN [dbo].[Customer] AS C
ON O.[Customer_ID] = C.Customer_ID

SELECT *
FROM [dbo].[Order] AS O
JOIN [dbo].[Customer] AS C
ON O.Customer_ID = C.Customer_ID
JOIN  [dbo].[Product] AS P
ON O.Product_ID = P.Product_ID
JOIN [dbo].[Region] AS R
ON O.Postal_Code = R.Postal_Code



