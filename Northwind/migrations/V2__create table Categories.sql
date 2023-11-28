SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Categories]'
GO
CREATE TABLE [dbo].[Categories]
(
[CategoryID] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [nvarchar] (15) NOT NULL,
[Description] [ntext] NULL,
[Picture] [image] NULL
)
GO
PRINT N'Creating primary key [PK_Categories] on [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
GO
PRINT N'Creating index [CategoryName] on [dbo].[Categories]'
GO
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories] ([CategoryName])
GO

