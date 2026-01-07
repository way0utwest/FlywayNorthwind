SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping [dbo].[Territories]'
GO
DROP TABLE [dbo].[Territories]
GO
PRINT N'Dropping [dbo].[Region]'
GO
DROP TABLE [dbo].[Region]
GO
PRINT N'Dropping [dbo].[EmployeeTerritories]'
GO
DROP TABLE [dbo].[EmployeeTerritories]
GO
PRINT N'Dropping [dbo].[CustomerDemographics]'
GO
DROP TABLE [dbo].[CustomerDemographics]
GO
PRINT N'Dropping [dbo].[CustomerCustomerDemo]'
GO
DROP TABLE [dbo].[CustomerCustomerDemo]
GO
PRINT N'Dropping [dbo].[SalesByCategory]'
GO
DROP PROCEDURE [dbo].[SalesByCategory]
GO
PRINT N'Dropping [dbo].[CustOrdersOrders]'
GO
DROP PROCEDURE [dbo].[CustOrdersOrders]
GO
PRINT N'Dropping [dbo].[CustOrdersDetail]'
GO
DROP PROCEDURE [dbo].[CustOrdersDetail]
GO
PRINT N'Dropping [dbo].[CustOrderHist]'
GO
DROP PROCEDURE [dbo].[CustOrderHist]
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

