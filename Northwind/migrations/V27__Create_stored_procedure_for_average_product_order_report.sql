SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[ReportAverageProductOrder]'
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

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

