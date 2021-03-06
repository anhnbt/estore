USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_wards]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_wards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[prefix] [nvarchar](10) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_wards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_wards]  WITH CHECK ADD  CONSTRAINT [FK_tbl_wards_tbl_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_districts] ([id])
GO
ALTER TABLE [dbo].[tbl_wards] CHECK CONSTRAINT [FK_tbl_wards_tbl_districts]
GO
