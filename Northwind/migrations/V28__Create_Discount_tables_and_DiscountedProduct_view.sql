SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Discount]'
GO
CREATE TABLE [dbo].[Discount]
(
[DiscountID] [int] NOT NULL IDENTITY(1, 1),
[DiscountPercent] [numeric] (4, 2) NULL,
[DiscountStart] [datetime] NULL,
[DiscountEnd] [datetime] NULL,
[Active] [bit] NULL,
[datecreated] [datetime] NULL,
[datemodified] [datetime] NULL,
[ModifiedBy] [varchar] (50) NULL
)
GO
PRINT N'Creating primary key [DiscountPK] on [dbo].[Discount]'
GO
ALTER TABLE [dbo].[Discount] ADD CONSTRAINT [DiscountPK] PRIMARY KEY CLUSTERED ([DiscountID])
GO
PRINT N'Creating index [IDX_Discount_Date] on [dbo].[Discount]'
GO
CREATE NONCLUSTERED INDEX [IDX_Discount_Date] ON [dbo].[Discount] ([DiscountStart], [DiscountEnd])
GO
PRINT N'Creating [dbo].[DiscountProduct]'
GO
CREATE TABLE [dbo].[DiscountProduct]
(
[DiscountProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductID] [int] NULL,
[DiscountID] [int] NULL
)
GO
PRINT N'Creating primary key [DiscountProductPK] on [dbo].[DiscountProduct]'
GO
ALTER TABLE [dbo].[DiscountProduct] ADD CONSTRAINT [DiscountProductPK] PRIMARY KEY CLUSTERED ([DiscountProductID])
GO
PRINT N'Creating index [idx_DiscountPRoduct_ID] on [dbo].[DiscountProduct]'
GO
CREATE NONCLUSTERED INDEX [idx_DiscountPRoduct_ID] ON [dbo].[DiscountProduct] ([ProductID], [DiscountID])
GO
PRINT N'Creating [dbo].[DiscountedProduct]'
GO
CREATE VIEW [dbo].[DiscountedProduct]
  AS
  SELECT p.ProductID,
         p.ProductName,
         p.ProductDesc,
         d.DiscountPercent,
         d.DiscountStart,
         d.DiscountEnd
         FROM product p INNER JOIN  dbo.DiscountProduct dp ON dp.ProductID = p.ProductID INNER JOIN dbo.Discount d ON d.DiscountID = dp.DiscountID
         WHERE d.Active = 1
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

