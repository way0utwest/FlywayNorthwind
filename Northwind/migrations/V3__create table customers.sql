SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Customers]'
GO
CREATE TABLE [dbo].[Customers]
(
[CustomerID] [nchar] (5) NOT NULL,
[CompanyName] [nvarchar] (40) NOT NULL,
[ContactName] [nvarchar] (30) NULL,
[ContactTitle] [nvarchar] (30) NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[Phone] [nvarchar] (24) NULL,
[Fax] [nvarchar] (24) NULL
)
GO
PRINT N'Creating primary key [PK_Customers] on [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID])
GO
PRINT N'Creating index [City] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers] ([City])
GO
PRINT N'Creating index [CompanyName] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers] ([CompanyName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers] ([PostalCode])
GO
PRINT N'Creating index [Region] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers] ([Region])
GO
PRINT N'Creating [dbo].[getone]'
GO
CREATE PROC [dbo].[getone] AS SELECT 1
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

