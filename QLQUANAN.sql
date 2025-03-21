USE [QUANLYQUANAN]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[username] [nvarchar](100) NOT NULL,
	[pass] [nvarchar](100) NULL,
	[phanquyen] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BILL]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TimeOrder] [date] NOT NULL,
	[status] [int] NOT NULL,
	[price] [float] NOT NULL,
	[note] [nvarchar](100) NULL,
	[customer_id] [int] NULL,
	[table_id] [int] NULL,
	[nhanvien_mnv] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BILLINFO]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILLINFO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[food_id] [int] NULL,
	[bill_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[gender] [nvarchar](4) NULL,
	[dateCheck] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOOD]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](100) NULL,
	[price] [float] NOT NULL,
	[type] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[gioitinh] [nvarchar](5) NULL,
	[ngaysinh] [date] NULL,
	[cccd] [varchar](50) NULL,
	[sdt] [varchar](50) NULL,
	[quequan] [nvarchar](200) NULL,
	[username] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TABLEFOOD]    Script Date: 5/7/2024 9:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TABLEFOOD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](10) NULL,
	[status] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ACCOUNT] ([username], [pass], [phanquyen]) VALUES (N'1', N'1', N'AD')
INSERT [dbo].[ACCOUNT] ([username], [pass], [phanquyen]) VALUES (N'2', N'2', N'NV')
INSERT [dbo].[ACCOUNT] ([username], [pass], [phanquyen]) VALUES (N'3', N'3', N'NV')
INSERT [dbo].[ACCOUNT] ([username], [pass], [phanquyen]) VALUES (N'4', N'4', N'NV')
INSERT [dbo].[ACCOUNT] ([username], [pass], [phanquyen]) VALUES (N'5', N'5', N'NV')
GO
SET IDENTITY_INSERT [dbo].[BILL] ON 

INSERT [dbo].[BILL] ([id], [TimeOrder], [status], [price], [note], [customer_id], [table_id], [nhanvien_mnv]) VALUES (21, CAST(N'2024-05-07' AS Date), 0, 50000, NULL, 1, 3, 1)
INSERT [dbo].[BILL] ([id], [TimeOrder], [status], [price], [note], [customer_id], [table_id], [nhanvien_mnv]) VALUES (22, CAST(N'2024-05-07' AS Date), 0, 50000, NULL, 0, 8, 1)
SET IDENTITY_INSERT [dbo].[BILL] OFF
GO
SET IDENTITY_INSERT [dbo].[BILLINFO] ON 

INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (9, 1, 280000, 5, 6)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (10, 1, 15000, 9, 6)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (11, 1, 60000, 6, 7)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (12, 1, 200000, 11, 8)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (13, 1, 15000, 9, 9)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (14, 1, 70000, 18, 9)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (15, 1, 80000, 7, 10)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (16, 1, 15000, 9, 10)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (17, 1, 200000, 11, 10)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (18, 1, 180000, 12, 11)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (19, 1, 45000, 17, 11)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (20, 1, 200000, 11, 11)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (21, 1, 80000, 7, 12)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (22, 2, 15000, 10, 12)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (23, 1, 15000, 9, 13)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (24, 2, 200000, 8, 14)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (25, 2, 60000, 6, 15)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (26, 1, 200000, 11, 16)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (27, 2, 60000, 6, 17)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (28, 2, 50000, 1, 18)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (29, 1, 50000, 1, 19)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (30, 2, 50000, 1, 19)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (31, 1, 50000, 1, 21)
INSERT [dbo].[BILLINFO] ([id], [quantity], [price], [food_id], [bill_id]) VALUES (32, 1, 50000, 1, 22)
SET IDENTITY_INSERT [dbo].[BILLINFO] OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([id], [name], [address], [PhoneNumber], [gender], [dateCheck]) VALUES (0, N'Nguyen Van A', N'Hanoi', 987654321, N'Nam', NULL)
INSERT [dbo].[CUSTOMER] ([id], [name], [address], [PhoneNumber], [gender], [dateCheck]) VALUES (1, N'Le Thi B', N'HCM', 123455678, N'Nữ', NULL)
INSERT [dbo].[CUSTOMER] ([id], [name], [address], [PhoneNumber], [gender], [dateCheck]) VALUES (2, N'Nguyen van C', N'Vinh', 915791161, N'Nam', CAST(N'2024-04-23' AS Date))
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
GO
SET IDENTITY_INSERT [dbo].[FOOD] ON 

INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (1, N'Ốc xào cà', N'Ốc xào cà bắt miệng vô cùng.', 50000, N'Hải sản')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (2, N'Gà rang lá chanh', N'Món gà rang thấm đầy đủ gia vị.', 200000, N'Món mặn')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (3, N'Sườn sụn om sấu', N'Vị chua thanh mát của sấu, vị ngọt của sườn.', 250000, N'Món mặn')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (4, N'Mướp đắng', N'Kết hợp vị đắng nhẹ của mướp cùng với vị béo của trứng.', 60000, N'Món rau')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (5, N'Tôm rang lá chanh', N'Tôm rang lá chanh đậm đà, giòn ngonị.', 280000, N'Hải sản')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (6, N'Dưa chua xào tóp mỡ', N'Chua chua, thơm nức lại giòn giòn, beo béo.', 60000, N'Món rau')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (7, N'Canh cua rau đay', N'Không thể thiếu vào những ngày hè nóng bực.', 80000, N'Món canh')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (8, N'Canh chua cá trắm', N'Canh chua vị ngon xuất sắc.', 200000, N'Món canh')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (9, N'Coca - Cola', N'Thương hiệu nước ngọt hàng đầu trên toàn cầu.', 15000, N'Nước uống')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (10, N'Sữa đậu', N'Giá trị dinh dưỡng cao và ít chất béo..', 15000, N'Nước uống')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (11, N'Ngan nấu xáo măng', N'Cân bằng cơ thể cho cả gia đình, rất tốt cho sức khỏe.', 200000, N'Món mặn')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (12, N'Cá basa kho tiêu', N'Có màu vàng nâu đẹp mắt, thịt cá mềm mịn.', 180000, N'Hải sản')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (13, N'Canh rau khoai nấu ruốc', N'anh mướt, nhuận tràng.', 35000, N'Món canh')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (14, N'Trà chanh', N'Trà chanh là một loại thức uống mát lạnh, thơm ngon.', 15000, N'Nước uống')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (15, N'Rau muống xào tỏi', N'Với vị đặc trưng ngọt, giòn, má.', 50000, N'Món rau')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (16, N'Nước cam', N'Tươi mát và giàu vitamin C..', 30000, N'Nước uống')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (17, N'Cải ngồng', N'Tươi ngọt luộc chấm nước mắm hoặc kho quẹt.', 45000, N'Món rau')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (18, N'Canh rong biển', N'Canh rong biển bổ dưỡng ngày giá rét.', 70000, N'Món canh')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (19, N'Sườn rim tỏi ớt', N'Từng miếng sườn, ngọt thơm, cay nồng.', 180000, N'Món mặn')
INSERT [dbo].[FOOD] ([id], [name], [description], [price], [type]) VALUES (20, N'Cá lăng kho tộ', N'Cá lăng kho có mùi thơm của riềng, gừng.ị.', 175000, N'Hải sản')
SET IDENTITY_INSERT [dbo].[FOOD] OFF
GO
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([hoten], [gioitinh], [ngaysinh], [cccd], [sdt], [quequan], [username]) VALUES (N'Nguyễn Minh Thuận', N'Nam', CAST(N'2000-12-14' AS Date), N'0345678111', N'0912365487', N'Vinh Phuc', N'1')
INSERT [dbo].[NHANVIEN] ([hoten], [gioitinh], [ngaysinh], [cccd], [sdt], [quequan], [username]) VALUES (N'Đinh Văn Toàn', N'Nam', CAST(N'1999-08-09' AS Date), N'0312444555', N'0911234678', N'Quang Ninh', N'2')
INSERT [dbo].[NHANVIEN] ([hoten], [gioitinh], [ngaysinh], [cccd], [sdt], [quequan], [username]) VALUES (N'Đào Duy Hải', N'Nam', CAST(N'1999-08-09' AS Date), N'0312444555', N'0911234678', N'Bac Ninh', N'3')
INSERT [dbo].[NHANVIEN] ([hoten], [gioitinh], [ngaysinh], [cccd], [sdt], [quequan], [username]) VALUES ( N'Nguyễn Tuấn Anh', N'Nam', CAST(N'1999-08-09' AS Date), N'0312444555', N'0911234678', N'Ba Vi', N'4')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
GO
SET IDENTITY_INSERT [dbo].[TABLEFOOD] ON 

INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (1, N'Bàn 1', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (2, N'Bàn 2', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (3, N'Bàn 3', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (4, N'Bàn 4', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (5, N'Bàn 5', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (6, N'Bàn 6', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (7, N'Bàn 7', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (8, N'Bàn 8', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (9, N'Bàn 9', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (10, N'Bàn 10', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (11, N'Bàn 11', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (12, N'Bàn 12', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (13, N'Bàn 13', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (14, N'Bàn 14', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (15, N'Bàn 15', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (16, N'Bàn 16', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (17, N'Bàn 17', N'Trống')
INSERT [dbo].[TABLEFOOD] ([id], [name], [status]) VALUES (18, N'Bàn 18', N'Trống')
SET IDENTITY_INSERT [dbo].[TABLEFOOD] OFF
GO
ALTER TABLE [dbo].[BILL] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[CUSTOMER] ([id])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_Bill_Customer]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_TABLEFOOD] FOREIGN KEY([table_id])
REFERENCES [dbo].[TABLEFOOD] ([id])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_TABLEFOOD]
GO
ALTER TABLE [dbo].[BILLINFO]  WITH CHECK ADD  CONSTRAINT [FK_BillInfo_Food] FOREIGN KEY([food_id])
REFERENCES [dbo].[FOOD] ([id])
GO
ALTER TABLE [dbo].[BILLINFO] CHECK CONSTRAINT [FK_BillInfo_Food]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Account] FOREIGN KEY([username])
REFERENCES [dbo].[ACCOUNT] ([username])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NhanVien_Account]
GO

DELETE FROM BILL WHERE id > 0
DBCC CHECKIDENT ('BILL', RESEED, 0);
DELETE FROM BILLINFO WHERE id > 0
DBCC CHECKIDENT ('BILLINFO', RESEED, 0);
DBCC CHECKIDENT ('NHANVIEN', RESEED, 6);
DBCC CHECKIDENT ('FOOD', RESEED, 20);