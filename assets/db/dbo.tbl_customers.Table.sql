USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_customers]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[email] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[phone] [varchar](45) NULL,
	[date_of_birth] [date] NULL,
	[address_id] [int] NOT NULL,
	[company_name] [nvarchar](50) NULL,
	[company_address] [nvarchar](50) NULL,
	[company_code] [nvarchar](50) NULL,
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
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [date_of_birth]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  CONSTRAINT [DF_tbl_customers_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  CONSTRAINT [DF_tbl_customers_modified_by]  DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  CONSTRAINT [DF_tbl_customers_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  CONSTRAINT [DF_tbl_customers_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[tbl_customers]  WITH CHECK ADD FOREIGN KEY([address_id])
REFERENCES [dbo].[tbl_address] ([id])
GO


