CREATE TABLE [dbo].[Order Details]
(
[OrderID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[UnitPrice] [money] NOT NULL CONSTRAINT [DF_Order_Details_UnitPrice] DEFAULT ((0)),
[Quantity] [smallint] NOT NULL CONSTRAINT [DF_Order_Details_Quantity] DEFAULT ((1)),
[Discount] [real] NOT NULL CONSTRAINT [DF_Order_Details_Discount] DEFAULT ((0)),
[UpdatedBy] [varchar] (20) NULL,
[DateCreated] [datetime] NULL CONSTRAINT [DF__Order Det__DateC__7D0E9093] DEFAULT (getdate()),
[DateModified] [datetime] NULL CONSTRAINT [DF__Order Det__DateM__7E02B4CC] DEFAULT (getdate())
)
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[OrderDetails_tru]
ON [dbo].[Order Details]
FOR UPDATE
AS
BEGIN
    UPDATE dbo.[Order Details]
     SET DateModified = SYSDATETIME()
     FROM Inserted i
     WHERE dbo.[Order Details].OrderID = i.orderID

END
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_Discount] CHECK (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_Quantity] CHECK (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_UnitPrice] CHECK (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED ([OrderID], [ProductID])
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
GO
