USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 4/18/2021 9:04:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NULL,
	[email] [varchar](45) NULL,
	[password] [varchar](45) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_admin] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
