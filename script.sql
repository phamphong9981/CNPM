USE [cnpm]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/19/2019 6:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[ma_the_loai] [int] NOT NULL,
	[ten_the_loai] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_the_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history]    Script Date: 12/19/2019 6:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id_history] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[ma_san_pham] [int] NULL,
	[ngay_mua] [date] NULL,
	[so_luong] [int] NULL,
	[thanh_tien] [real] NULL,
 CONSTRAINT [PK__history__76722B62E64D300E] PRIMARY KEY CLUSTERED 
(
	[id_history] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/19/2019 6:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ma_san_pham] [int] IDENTITY(1,1) NOT NULL,
	[ma_the_loai] [int] NULL,
	[ten_san_pham] [nvarchar](255) NULL,
	[hinh_anh] [nvarchar](255) NULL,
	[gia_ban] [real] NULL,
	[hang_san_xuat] [nvarchar](255) NULL,
	[thong_tin] [nvarchar](255) NULL,
 CONSTRAINT [PK__product__9D25990C33D73A2A] PRIMARY KEY CLUSTERED 
(
	[ma_san_pham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/19/2019 6:58:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[sdt] [varchar](20) NULL,
	[diachi] [varchar](255) NULL,
	[role] [varchar](255) NULL,
 CONSTRAINT [PK__users__B9BE370FB23C5385] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (1, N'New', N'Quần áo mới thiết kế')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (2, N'Sale', N'Quần áo giảm giá')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (3, N'Style', N'Quần áo dạo phố')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (4, N'Nam', N'Thời trang nam')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (5, N'Nữ', N'Thời trang nữ')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (6, N'Dép', N'Dép thời trang')
INSERT [dbo].[category] ([ma_the_loai], [ten_the_loai], [mo_ta]) VALUES (7, N'Nón', N'Nón thời trang')
SET IDENTITY_INSERT [dbo].[history] ON 

INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (1, 1, 1, CAST(N'2019-12-11' AS Date), 1, 100000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (2, 2, 1, CAST(N'2019-12-11' AS Date), 4, 400000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (3, 2, 1, CAST(N'2019-12-11' AS Date), 4, 400000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (4, 2, 2, CAST(N'2019-12-11' AS Date), 4, 2080000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (5, 4, 1, CAST(N'2019-12-16' AS Date), 1, 100000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (6, 4, 2, CAST(N'2019-12-16' AS Date), 6, 3120000)
INSERT [dbo].[history] ([id_history], [user_id], [ma_san_pham], [ngay_mua], [so_luong], [thanh_tien]) VALUES (7, 5, 2, CAST(N'2019-12-16' AS Date), 4, 2080000)
SET IDENTITY_INSERT [dbo].[history] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (1, 1, N'Áo phông', N'product01.jpg', 100000, N'Oron', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (2, 2, N'Áo sale', N'product04.jpg', 520000, N'Omo', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (3, 3, N'Áo dài tay', N'product03.jpg', 520000, N'Mabu', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (4, 4, N'Áo cho nam', N'nam.jpg', 520000, N'Lv', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (5, 5, N'Áo cho nữ', N'nu2.jpg', 520000, N'Romano', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (6, 6, N'Dép', N'dep.jpg', 520000, N'Bitis', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (7, 7, N'Nón', N'non.jpg', 520000, N'Goku', N'Đang cập nhật')
INSERT [dbo].[product] ([ma_san_pham], [ma_the_loai], [ten_san_pham], [hinh_anh], [gia_ban], [hang_san_xuat], [thong_tin]) VALUES (11, 4, N'GiÃ y', N'giayNike.jpg', 100000, N'abc', N'abc')
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [username], [password], [ngaysinh], [gioitinh], [email], [sdt], [diachi], [role]) VALUES (1, N'abc', N'bbd', CAST(N'1999-09-21' AS Date), N'Nam', N'phamphong9981@gmail.com', N'0123456789', N'xyz', N'2')
INSERT [dbo].[users] ([user_id], [username], [password], [ngaysinh], [gioitinh], [email], [sdt], [diachi], [role]) VALUES (2, N'phamphong9981', N'123456', CAST(N'1999-09-21' AS Date), N'Nam', N'nguyenphuc06091999@gmail.com', N'123456789', N'101145', N'2')
INSERT [dbo].[users] ([user_id], [username], [password], [ngaysinh], [gioitinh], [email], [sdt], [diachi], [role]) VALUES (3, N'sa', N'123456', CAST(N'1999-09-29' AS Date), N'Nam', N'sa@gmail.com', N'0908777777', N'abc', N'1')
INSERT [dbo].[users] ([user_id], [username], [password], [ngaysinh], [gioitinh], [email], [sdt], [diachi], [role]) VALUES (4, N'nghiemmanhict', N'123456', CAST(N'1999-09-21' AS Date), N'Nam', N'blackeagle29590@gmail.com', N'0123456789', N'abc', N'2')
INSERT [dbo].[users] ([user_id], [username], [password], [ngaysinh], [gioitinh], [email], [sdt], [diachi], [role]) VALUES (5, N'duongxuanhoan', N'123456', CAST(N'1999-09-29' AS Date), N'Nam', N'blackeagle29590@gmail.com', N'0123456789', N'abc', N'2')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [fk_history_product] FOREIGN KEY([ma_san_pham])
REFERENCES [dbo].[product] ([ma_san_pham])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [fk_history_product]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD  CONSTRAINT [fk_history_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[history] CHECK CONSTRAINT [fk_history_users]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_category] FOREIGN KEY([ma_the_loai])
REFERENCES [dbo].[category] ([ma_the_loai])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_category]
GO
