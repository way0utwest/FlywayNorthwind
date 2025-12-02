SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [FK_Territories_Region]
GO
PRINT N'Dropping constraints from [dbo].[Product]'
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [ProductPK]
GO
PRINT N'Dropping constraints from [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [PK_Region]
GO
PRINT N'Dropping constraints from [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [PK_Territories]
GO
PRINT N'Dropping [dbo].[Territories]'
GO
DROP TABLE [dbo].[Territories]
GO
PRINT N'Dropping [dbo].[Region]'
GO
DROP TABLE [dbo].[Region]
GO
PRINT N'Creating [dbo].[steve]'
GO
CREATE TABLE [dbo].[steve]
(
[myid] [int] NULL
)
GO
PRINT N'Rebuilding [dbo].[Product]'
GO
CREATE TABLE [dbo].[RG_Recovery_1_Product]
(
[ProductID] [int] NOT NULL,
[ProductName] [varchar] (50) NULL,
[ProductDesc] [varchar] (1000) NULL,
[ProductSize] [char] (1) NULL,
[ProductWeight] [int] NULL,
[ProductColor] [varchar] (20) NULL,
[ProductQtyPerUnit] [smallint] NULL,
[StatusID] [int] NULL
)
GO
INSERT INTO [dbo].[RG_Recovery_1_Product]([ProductID], [ProductName], [ProductDesc], [ProductSize], [ProductWeight], [ProductColor], [StatusID]) SELECT [ProductID], [ProductName], [ProductDesc], [ProductSize], [ProductWeight], [ProductColor], [StatusID] FROM [dbo].[Product]
GO
DROP TABLE [dbo].[Product]
GO
EXEC sp_rename N'[dbo].[RG_Recovery_1_Product]', N'Product', N'OBJECT'
GO
PRINT N'Creating primary key [ProductPK] on [dbo].[Product]'
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [ProductPK] PRIMARY KEY CLUSTERED ([ProductID])
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

