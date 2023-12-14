SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating schemas'
GO
IF SCHEMA_ID(N'Auditing') IS NULL
EXEC sp_executesql N'CREATE SCHEMA [Auditing]
AUTHORIZATION [dbo]'
GO
PRINT N'Creating [Auditing].[Employees]'
GO
CREATE TABLE [Auditing].[Employees]
(
[EmployeeID] [int] NOT NULL,
[LastName] [nvarchar] (20) NOT NULL,
[FirstName] [nvarchar] (10) NOT NULL,
[Title] [nvarchar] (30) NULL,
[TitleOfCourtesy] [nvarchar] (25) NULL,
[BirthDate] [datetime] NULL,
[HireDate] [datetime] NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[HomePhone] [nvarchar] (24) NULL,
[Extension] [nvarchar] (4) NULL,
[Photo] [image] NULL,
[Notes] [ntext] NULL,
[ReportsTo] [int] NULL,
[PhotoPath] [nvarchar] (255) NULL,
[ModifiedDate] [datetime2] (3) NOT NULL CONSTRAINT [DF__Employees__Modif__5CD6CB2B] DEFAULT (getutcdate())
)
GO
PRINT N'Creating primary key [PK_Employees] on [Auditing].[Employees]'
GO
ALTER TABLE [Auditing].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID], [ModifiedDate])
GO
PRINT N'Creating trigger [dbo].[Employee_Ins] on [dbo].[Employees]'
GO
CREATE TRIGGER [dbo].[Employee_Ins] ON [dbo].[Employees] FOR INSERT
AS
BEGIN
   INSERT Auditing.Employees
     (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, ReportsTo, PhotoPath, ModifiedDate)
   SELECT EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, ReportsTo, PhotoPath, GETUTCDATE()
    FROM inserted
END
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

