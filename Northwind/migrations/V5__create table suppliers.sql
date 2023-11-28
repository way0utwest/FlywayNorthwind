SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Suppliers]'
GO
CREATE TABLE [dbo].[Suppliers]
(
[SupplierID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) NOT NULL,
[ContactName] [nvarchar] (30) NULL,
[ContactTitle] [nvarchar] (30) NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[Phone] [nvarchar] (24) NULL,
[Fax] [nvarchar] (24) NULL,
[HomePage] [ntext] NULL
)
GO
PRINT N'Creating primary key [PK_Suppliers] on [dbo].[Suppliers]'
GO
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID])
GO
PRINT N'Creating index [CompanyName] on [dbo].[Suppliers]'
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers] ([CompanyName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Suppliers]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers] ([PostalCode])
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

