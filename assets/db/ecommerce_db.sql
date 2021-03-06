USE [ecommerce_db]
GO
/****** Object:  Table [dbo].[tbl_address]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_address](
	[id] [int] NOT NULL,
	[address] [nvarchar](60) NOT NULL,
	[city] [nvarchar](15) NULL,
	[region] [nvarchar](15) NULL,
	[postal_code] [nvarchar](10) NULL,
	[country] [nvarchar](15) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NULL,
	[email] [varchar](45) NULL,
	[password] [varchar](45) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_attribute_groups]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attribute_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_attributes]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[attribute_group_id] [int] NULL,
	[name] [varchar](45) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_categories]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_customers]    Script Date: 4/18/2021 8:59:26 PM ******/
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
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[zip] [varchar](45) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
	[company_name] [nvarchar](50) NULL,
	[company_address] [nvarchar](50) NULL,
	[company_code] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_districts]    Script Date: 4/18/2021 8:59:26 PM ******/
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
/****** Object:  Table [dbo].[tbl_employees]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employees](
	[id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[title] [nvarchar](30) NULL,
	[title_of_courtesy] [nchar](10) NULL,
	[date_of_birth] [date] NULL,
	[hire_date] [datetime] NULL,
	[phone] [varchar](24) NULL,
	[thumbnail_url] [varchar](255) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_images]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[thumbnail_url] [varchar](255) NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_orderdetails]    Script Date: 4/18/2021 8:59:26 PM ******/
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
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_orderdetails] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_orders]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[amount] [money] NOT NULL,
	[status] [varchar](15) NULL,
	[order_date] [datetime] NULL,
	[required_date] [datetime] NULL,
	[created_at] [date] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_payments]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[payment_type] [nvarchar](50) NOT NULL,
	[description] [ntext] NULL,
 CONSTRAINT [PK_tbl_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_product_attributes]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_product_attributes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[attribute_id] [int] NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_products]    Script Date: 4/18/2021 8:59:26 PM ******/
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
	[view_count] [int] NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_provinces]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_provinces](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[code] [varchar](5) NOT NULL,
 CONSTRAINT [PK_tbl_provinces] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_shoppingcart]    Script Date: 4/18/2021 8:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_shoppingcart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[unit_price] [money] NULL,
	[quantity] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tbl_shopping_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_suppliers]    Script Date: 4/18/2021 8:59:26 PM ******/
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
	[created_at] [date] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_wards]    Script Date: 4/18/2021 8:59:26 PM ******/
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
ALTER TABLE [dbo].[tbl_address] ADD  CONSTRAINT [DF_tbl_address_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_address] ADD  CONSTRAINT [DF_tbl_address_updated_at]  DEFAULT (getdate()) FOR [updated_at]
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
ALTER TABLE [dbo].[tbl_attribute_groups] ADD  CONSTRAINT [DF_tbl_attribute_groups_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_attribute_groups] ADD  CONSTRAINT [DF_tbl_attribute_groups_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_attributes] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tbl_attributes] ADD  CONSTRAINT [DF_tbl_attributes_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_attributes] ADD  CONSTRAINT [DF_tbl_attributes_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_categories] ADD  CONSTRAINT [DF_tbl_categories_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_categories] ADD  CONSTRAINT [DF_tbl_categories_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [date_of_birth]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_customers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_employees] ADD  CONSTRAINT [DF_tbl_employees_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_employees] ADD  CONSTRAINT [DF_tbl_employees_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_images] ADD  DEFAULT (NULL) FOR [thumbnail_url]
GO
ALTER TABLE [dbo].[tbl_images] ADD  CONSTRAINT [DF_tbl_images_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_images] ADD  CONSTRAINT [DF_tbl_images_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_orderdetails] ADD  DEFAULT ('1') FOR [quantity]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_orders] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_product_attributes] ADD  CONSTRAINT [DF_tbl_product_attributes_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT (NULL) FOR [thumbnail_url]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('available') FOR [status]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('0') FOR [discount]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT ('0') FOR [view_count]
GO
ALTER TABLE [dbo].[tbl_products] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_products] ADD  CONSTRAINT [DF_tbl_products_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_shoppingcart] ADD  CONSTRAINT [DF_tbl_shopping_cart_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_shoppingcart] ADD  CONSTRAINT [DF_tbl_shopping_cart_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_manufacturers_created_at]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tbl_suppliers] ADD  CONSTRAINT [DF_tbl_manufacturers_updated_at]  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tbl_attributes]  WITH CHECK ADD FOREIGN KEY([attribute_group_id])
REFERENCES [dbo].[tbl_attribute_groups] ([id])
GO
ALTER TABLE [dbo].[tbl_districts]  WITH CHECK ADD  CONSTRAINT [FK_tbl_districts_tbl_provinces] FOREIGN KEY([province_id])
REFERENCES [dbo].[tbl_provinces] ([id])
GO
ALTER TABLE [dbo].[tbl_districts] CHECK CONSTRAINT [FK_tbl_districts_tbl_provinces]
GO
ALTER TABLE [dbo].[tbl_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_orderdetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[tbl_orders] ([id])
GO
ALTER TABLE [dbo].[tbl_orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_attributes] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[tbl_attributes] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_attributes]
GO
ALTER TABLE [dbo].[tbl_product_attributes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_product_attributes_tbl_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_product_attributes] CHECK CONSTRAINT [FK_tbl_product_attributes_tbl_products]
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[tbl_categories] ([id])
GO
ALTER TABLE [dbo].[tbl_products]  WITH CHECK ADD FOREIGN KEY([supplier_id])
REFERENCES [dbo].[tbl_suppliers] ([id])
GO
ALTER TABLE [dbo].[tbl_shoppingcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_shopping_cart_tbl_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_customers] ([id])
GO
ALTER TABLE [dbo].[tbl_shoppingcart] CHECK CONSTRAINT [FK_tbl_shopping_cart_tbl_customers]
GO
ALTER TABLE [dbo].[tbl_shoppingcart]  WITH CHECK ADD  CONSTRAINT [FK_tbl_shopping_cart_tbl_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products] ([id])
GO
ALTER TABLE [dbo].[tbl_shoppingcart] CHECK CONSTRAINT [FK_tbl_shopping_cart_tbl_products]
GO
ALTER TABLE [dbo].[tbl_wards]  WITH CHECK ADD  CONSTRAINT [FK_tbl_wards_tbl_districts] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_districts] ([id])
GO
ALTER TABLE [dbo].[tbl_wards] CHECK CONSTRAINT [FK_tbl_wards_tbl_districts]
GO
