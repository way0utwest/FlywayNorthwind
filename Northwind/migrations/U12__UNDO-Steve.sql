SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_Products_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsInStock]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsOnOrder]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_ReorderLevel]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [PK_Products]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsInStock]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsOnOrder]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_ReorderLevel]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_Discontinued]
GO
PRINT N'Dropping index [ProductName] from [dbo].[Products]'
GO
DROP INDEX [ProductName] ON [dbo].[Products]
GO
PRINT N'Dropping index [SupplierID] from [dbo].[Products]'
GO
DROP INDEX [SupplierID] ON [dbo].[Products]
GO
PRINT N'Dropping index [SuppliersProducts] from [dbo].[Products]'
GO
DROP INDEX [SuppliersProducts] ON [dbo].[Products]
GO
PRINT N'Dropping index [CategoriesProducts] from [dbo].[Products]'
GO
DROP INDEX [CategoriesProducts] ON [dbo].[Products]
GO
PRINT N'Dropping index [CategoryID] from [dbo].[Products]'
GO
DROP INDEX [CategoryID] ON [dbo].[Products]
GO
PRINT N'Dropping [dbo].[Products]'
GO
DROP TABLE [dbo].[Products]
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

