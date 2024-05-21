SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [Auditing].[Numbers2]'
GO
CREATE TABLE [Auditing].[Numbers2]
(
[n] [int] NULL,
[changedate] [datetime2] (3) NULL
)
GO
PRINT N'Creating [dbo].[Product]'
GO
CREATE TABLE [dbo].[Product]
(
[ProductID] [int] NOT NULL,
[ProductName] [varchar] (50) NULL,
[ProductDesc] [varchar] (1000) NULL,
[ProductSize] [char] (1) NULL,
[ProductWeight] [int] NULL,
[ProductColor] [varchar] (20) NULL,
[StatusID] [int] NULL
)
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

