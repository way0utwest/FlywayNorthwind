SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] ADD
[UpdatedBy] [varchar] (20) NULL,
[DateCreated] [datetime] NULL CONSTRAINT [DF__Order Det__DateC__7D0E9093] DEFAULT (getdate()),
[DateModified] [datetime] NULL CONSTRAINT [DF__Order Det__DateM__7E02B4CC] DEFAULT (getdate())
GO
PRINT N'Creating trigger [dbo].[OrderDetails_tru] on [dbo].[Order Details]'
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

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

