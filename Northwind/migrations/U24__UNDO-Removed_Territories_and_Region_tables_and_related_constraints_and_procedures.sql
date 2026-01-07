SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Region]'
GO
CREATE TABLE [dbo].[Region]
(
[RegionID] [int] NOT NULL,
[RegionDescription] [nchar] (50) NOT NULL,
[RegionName] [nvarchar] (20) NULL,
[foo] [nvarchar] (20) NULL,
[foo2] [int] NULL,
[foo3] [int] NULL
)
GO
PRINT N'Creating primary key [PK_Region] on [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] ADD CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED ([RegionID])
GO
PRINT N'Creating [dbo].[Territories]'
GO
CREATE TABLE [dbo].[Territories]
(
[TerritoryID] [nvarchar] (20) NOT NULL,
[TerritoryDescription] [nchar] (50) NOT NULL,
[RegionID] [int] NOT NULL,
[RegionName] [nchar] (10) NULL,
[RegionCode] [nchar] (10) NULL,
[RegionOwner] [nchar] (10) NULL,
[Nationality] [nvarchar] (20) NULL,
[NationalityCode] [nvarchar] (20) NULL
)
GO
PRINT N'Creating primary key [PK_Territories] on [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED ([TerritoryID])
GO
PRINT N'Creating [dbo].[SalesByCategory]'
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
PRINT N'Adding foreign keys to [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

