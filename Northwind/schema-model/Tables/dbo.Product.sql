CREATE TABLE [dbo].[Product]
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
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [ProductPK] PRIMARY KEY CLUSTERED ([ProductID])
GO
