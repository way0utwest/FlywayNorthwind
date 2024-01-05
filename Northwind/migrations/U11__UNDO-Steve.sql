SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping foreign keys from [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Shippers]
GO
PRINT N'Dropping constraints from [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [PK_Orders]
GO
PRINT N'Dropping constraints from [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF_Orders_Freight]
GO
PRINT N'Dropping index [CustomerID] from [dbo].[Orders]'
GO
DROP INDEX [CustomerID] ON [dbo].[Orders]
GO
PRINT N'Dropping index [CustomersOrders] from [dbo].[Orders]'
GO
DROP INDEX [CustomersOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [EmployeeID] from [dbo].[Orders]'
GO
DROP INDEX [EmployeeID] ON [dbo].[Orders]
GO
PRINT N'Dropping index [EmployeesOrders] from [dbo].[Orders]'
GO
DROP INDEX [EmployeesOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [OrderDate] from [dbo].[Orders]'
GO
DROP INDEX [OrderDate] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShippedDate] from [dbo].[Orders]'
GO
DROP INDEX [ShippedDate] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShippersOrders] from [dbo].[Orders]'
GO
DROP INDEX [ShippersOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShipPostalCode] from [dbo].[Orders]'
GO
DROP INDEX [ShipPostalCode] ON [dbo].[Orders]
GO
PRINT N'Dropping [dbo].[Orders]'
GO
DROP TABLE [dbo].[Orders]
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

