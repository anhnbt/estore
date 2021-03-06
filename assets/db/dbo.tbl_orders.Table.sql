USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_orders]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[status] [varchar](15) NULL,
	[order_date] [datetime] NULL,
	[required_date] [datetime] NULL,
	[created_by] [int] NOT NULL,
	[modified_by] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  CONSTRAINT [DF_tbl_orders_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  CONSTRAINT [DF_tbl_orders_modified_by]  DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  CONSTRAINT [DF_tbl_orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  CONSTRAINT [DF_tbl_orders_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[tbl_orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
ALTER TABLE [dbo].[tbl_orders]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([id])
GO