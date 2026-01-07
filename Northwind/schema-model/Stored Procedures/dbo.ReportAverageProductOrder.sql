SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ReportAverageProductOrder]
AS
SELECT Products.ProductID,
       Products.ProductName,
       AVG([Order Details].Quantity) AS AverageQuantityPerOrder,
       AVG([Order Details].UnitPrice * [Order Details].Quantity * (1 - [Order Details].Discount)) AS AverageOrderValuePerProduct
FROM dbo.Orders
    INNER JOIN dbo.[Order Details]
        ON [Order Details].OrderID = Orders.OrderID
    INNER JOIN dbo.Products
        ON Products.ProductID = [Order Details].ProductID
GROUP BY Products.ProductID,
         Products.ProductName
ORDER BY AverageOrderValuePerProduct DESC


 
GO
