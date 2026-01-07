CREATE TABLE [dbo].[Discount]
(
[DiscountID] [int] NOT NULL IDENTITY(1, 1),
[DiscountPercent] [numeric] (4, 2) NULL,
[DiscountStart] [datetime] NULL,
[DiscountEnd] [datetime] NULL,
[Active] [bit] NULL,
[datecreated] [datetime] NULL,
[datemodified] [datetime] NULL,
[ModifiedBy] [varchar] (50) NULL
)
GO
ALTER TABLE [dbo].[Discount] ADD CONSTRAINT [DiscountPK] PRIMARY KEY CLUSTERED ([DiscountID])
GO
CREATE NONCLUSTERED INDEX [IDX_Discount_Date] ON [dbo].[Discount] ([DiscountStart], [DiscountEnd])
GO
