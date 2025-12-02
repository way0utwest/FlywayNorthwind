SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping [dbo].[steve]'
GO
DROP TABLE [dbo].[steve]
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
PRINT N'Altering [dbo].[Product]'
GO
ALTER TABLE [dbo].[Product] DROP
COLUMN [ProductQtyPerUnit]
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

