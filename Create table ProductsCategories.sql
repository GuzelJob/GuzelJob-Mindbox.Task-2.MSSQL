USE [Db]
GO

ALTER TABLE [dbo].[ProductsCategories] DROP CONSTRAINT [FK_ProductsCategories_Product]
GO

ALTER TABLE [dbo].[ProductsCategories] DROP CONSTRAINT [FK_ProductsCategories_Category]
GO

DROP TABLE [dbo].[ProductsCategories]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductsCategories](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductsCategories_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO

ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [FK_ProductsCategories_Category]
GO

ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductsCategories_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [FK_ProductsCategories_Product]
GO


