USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_products]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
	[name] [varchar](45) NOT NULL,
	[unit_price] [decimal](10, 2) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[description] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [varchar](15) NOT NULL,
	[discount] [tinyint] NOT NULL,
	[created_by] [int] NOT NULL,
	[modified_by] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT (NULL) FOR [thumbnail_url]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('available') FOR [status]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('0') FOR [discount]
GO
ALTER TABLE [dbo].[tbl_products] ADD  CONSTRAINT [DF_tbl_products_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_products] ADD  CONSTRAINT [DF_tbl_products_modified_by]  DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_products] ADD  CONSTRAINT [DF_tbl_products_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_products] ADD  CONSTRAINT [DF_tbl_products_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_categories] ([id])
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([supplier_id])
REFERENCES [dbo].[tbl_suppliers] ([id])
GO
