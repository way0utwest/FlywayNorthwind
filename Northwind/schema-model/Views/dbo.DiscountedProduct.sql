SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[DiscountedProduct]
  AS
  SELECT p.ProductID,
         p.ProductName,
         p.ProductDesc,
         d.DiscountPercent,
         d.DiscountStart,
         d.DiscountEnd
         FROM product p INNER JOIN  dbo.DiscountProduct dp ON dp.ProductID = p.ProductID INNER JOIN dbo.Discount d ON d.DiscountID = dp.DiscountID
         WHERE d.Active = 1
GO
