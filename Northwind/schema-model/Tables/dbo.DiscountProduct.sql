CREATE TABLE [dbo].[DiscountProduct]
(
[DiscountProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductID] [int] NULL,
[DiscountID] [int] NULL
)
GO
ALTER TABLE [dbo].[DiscountProduct] ADD CONSTRAINT [DiscountProductPK] PRIMARY KEY CLUSTERED ([DiscountProductID])
GO
CREATE NONCLUSTERED INDEX [idx_DiscountPRoduct_ID] ON [dbo].[DiscountProduct] ([ProductID], [DiscountID])
GO
