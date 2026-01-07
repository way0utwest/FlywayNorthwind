SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[DiscountProduct]'
GO
ALTER TABLE [dbo].[DiscountProduct] DROP CONSTRAINT [DiscountProductPK]
GO
PRINT N'Dropping constraints from [dbo].[Discount]'
GO
ALTER TABLE [dbo].[Discount] DROP CONSTRAINT [DiscountPK]
GO
PRINT N'Dropping index [idx_DiscountPRoduct_ID] from [dbo].[DiscountProduct]'
GO
DROP INDEX [idx_DiscountPRoduct_ID] ON [dbo].[DiscountProduct]
GO
PRINT N'Dropping index [IDX_Discount_Date] from [dbo].[Discount]'
GO
DROP INDEX [IDX_Discount_Date] ON [dbo].[Discount]
GO
PRINT N'Dropping [dbo].[DiscountedProduct]'
GO
DROP VIEW [dbo].[DiscountedProduct]
GO
PRINT N'Dropping [dbo].[DiscountProduct]'
GO
DROP TABLE [dbo].[DiscountProduct]
GO
PRINT N'Dropping [dbo].[Discount]'
GO
DROP TABLE [dbo].[Discount]
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

