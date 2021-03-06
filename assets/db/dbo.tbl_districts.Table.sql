USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_districts]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_districts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[prefix] [nvarchar](10) NOT NULL,
	[province_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_districts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_districts]  WITH CHECK ADD  CONSTRAINT [FK_tbl_districts_tbl_provinces] FOREIGN KEY([province_id])
REFERENCES [dbo].[tbl_provinces] ([id])
GO
ALTER TABLE [dbo].[tbl_districts] CHECK CONSTRAINT [FK_tbl_districts_tbl_provinces]
GO
