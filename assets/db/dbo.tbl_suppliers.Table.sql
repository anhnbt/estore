USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_suppliers]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[city] [nvarchar](50) NULL,
	[contact_number] [varchar](50) NULL,
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
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_suppliers_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD CONSTRAINT [DF_tbl_suppliers_modified_by] DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_suppliers_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_suppliers_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
