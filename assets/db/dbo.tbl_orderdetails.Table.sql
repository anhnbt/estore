USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_orderdetails]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orderdetails](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [money] NULL,
	[quantity] [int] NULL,
	[discount] [tinyint] NULL,
	[created_by] [int] NOT NULL,
	[modified_by] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [pk_orderdetails] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  DEFAULT ('1') FOR [quantity]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  CONSTRAINT [DF_tbl_orderdetails_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  CONSTRAINT [DF_tbl_orderdetails_modified_by]  DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  CONSTRAINT [DF_tbl_orderdetails_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  CONSTRAINT [DF_tbl_orderdetails_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[tbl_orderdetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[tbl_orders] ([id])
GO
ALTER TABLE [dbo].[tbl_orderdetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO

