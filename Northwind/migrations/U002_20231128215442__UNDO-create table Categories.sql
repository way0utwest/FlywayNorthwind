SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [PK_Categories]
GO
PRINT N'Dropping index [CategoryName] from [dbo].[Categories]'
GO
DROP INDEX [CategoryName] ON [dbo].[Categories]
GO
PRINT N'Dropping [dbo].[Categories]'
GO
DROP TABLE [dbo].[Categories]
GO

