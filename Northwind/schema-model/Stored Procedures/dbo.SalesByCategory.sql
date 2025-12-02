SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE  	PROCEDURE [dbo].[SalesByCategory]
    @AtCategoryName VARCHAR(15) = NULL,
    @AtOrdYear VARCHAR(4) = NULL
AS
BEGIN
    IF @AtCategoryName IS NULL 
		SET @AtCategoryName = 'General'

	IF @AtOrdYear IS NULL
	   IF MONTH(GETDATE()) > 6
	     SET @AtOrdYear = YEAR(GETDATE())+1
		ELSE
	     SET @AtOrdYear = YEAR(GETDATE())
        
    SELECT ProductName,
           ROUND(SUM(OD.Quantity * (1 - OD.Discount) * OD.UnitPrice),2) AS TotalPurchase,
		   MAX(O.OrderDate) AS MostRecentOrder
    FROM Order_Details AS OD
        INNER JOIN Orders AS O
            ON OD.OrderID = O.OrderID
        INNER JOIN Products AS P
            ON OD.ProductID = P.ProductID
        INNER JOIN Categories AS C
            ON P.CategoryID = C.CategoryID
    WHERE C.CategoryName = @AtCategoryName
          AND YEAR(O.OrderDate) = @AtOrdYear
    GROUP BY ProductName
    ORDER BY ProductName;
END;
GO
