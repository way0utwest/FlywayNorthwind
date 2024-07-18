CREATE TABLE [dbo].[CustomerContact]
(
[CustomerID] [int] NULL,
[CustomerContactID] [int] NOT NULL,
[ContactName] [varchar] (50) NULL,
[ContactEmail] [varchar] (200) NULL
)
GO
ALTER TABLE [dbo].[CustomerContact] ADD CONSTRAINT [CustomerContactPK] PRIMARY KEY CLUSTERED ([CustomerContactID])
GO
