SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [PK_Customers]
GO
PRINT N'Dropping index [CompanyName] from [dbo].[Customers]'
GO
DROP INDEX [CompanyName] ON [dbo].[Customers]
GO
PRINT N'Dropping index [City] from [dbo].[Customers]'
GO
DROP INDEX [City] ON [dbo].[Customers]
GO
PRINT N'Dropping index [Region] from [dbo].[Customers]'
GO
DROP INDEX [Region] ON [dbo].[Customers]
GO
PRINT N'Dropping index [PostalCode] from [dbo].[Customers]'
GO
DROP INDEX [PostalCode] ON [dbo].[Customers]
GO
PRINT N'Dropping [dbo].[getone]'
GO
DROP PROCEDURE [dbo].[getone]
GO
PRINT N'Dropping [dbo].[Customers]'
GO
DROP TABLE [dbo].[Customers]
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Delete 8 rows from [dbo].[Categories]')
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 1
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 2
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 3
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 4
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 5
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 6
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 7
DELETE FROM [dbo].[Categories] WHERE [CategoryID] = 8

