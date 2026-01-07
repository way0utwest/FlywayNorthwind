SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [FK_Territories_Region]
GO
PRINT N'Dropping constraints from [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [PK_Region]
GO
PRINT N'Dropping constraints from [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [PK_Territories]
GO
PRINT N'Dropping [dbo].[SalesByCategory]'
GO
DROP PROCEDURE [dbo].[SalesByCategory]
GO
PRINT N'Dropping [dbo].[Territories]'
GO
DROP TABLE [dbo].[Territories]
GO
PRINT N'Dropping [dbo].[Region]'
GO
DROP TABLE [dbo].[Region]
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

