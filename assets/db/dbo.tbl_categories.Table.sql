USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_categories]    Script Date: 4/18/2021 6:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[parent_id] [int] NULL,
	[created_by] [int] NOT NULL,
	[modified_by] [int] NOT NULL,
	[created_date] [datetime] NULL,
	[modified_date] [datetime] NULL,
 CONSTRAINT [PK_tbl_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_categories] ADD  CONSTRAINT [DF_tbl_categories_created_by]  DEFAULT ('1') FOR [created_by]
GO
ALTER TABLE [dbo].[tbl_categories] ADD CONSTRAINT [DF_tbl_categories_modified_by] DEFAULT ('1') FOR [modified_by]
GO
ALTER TABLE [dbo].[tbl_categories] ADD  CONSTRAINT [DF_tbl_categories_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[tbl_categories] ADD  CONSTRAINT [DF_tbl_categories_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[tbl_categories]  WITH CHECK ADD FOREIGN KEY([parent_id])
REFERENCES [dbo].[tbl_categories] ([id])
GO
