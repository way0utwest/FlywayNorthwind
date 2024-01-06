SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order_Details_Products]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Quantity]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Discount]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [PK_Order_Details]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Quantity]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Discount]
GO
PRINT N'Dropping [dbo].[Order Details]'
GO
DROP TABLE [dbo].[Order Details]
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

