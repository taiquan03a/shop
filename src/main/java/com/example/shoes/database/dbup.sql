USE [shop]
GO
/****** Object:  Table [dbo].[anh]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Anh] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__Anh__3214EC2777A0EB9D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chat_lieu]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_lieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_chat_lieu] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__ChatLieu__3214EC275B7F2167] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_chuc_vu] [nvarchar](255) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__ChucVu__3214EC27D5D520C0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[co_ao]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_ao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_co_ao] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__CoAo__3214EC2724D9CFB5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dang_ao]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dang_ao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_kieu_dang_ao] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__DangAo__3214EC2731C884E5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_chi]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_chi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [int] NULL,
	[dia_chi] [nvarchar](255) NULL,
	[ghi_chu] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](255) NULL,
 CONSTRAINT [PK__DiaChi__3214EC27B36C4ED6] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giam_gia]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giam_gia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_san_pham_chi_tiet] [int] NULL,
	[ten_giam_gia] [nvarchar](255) NULL,
	[loai_giam_gia] [nvarchar](255) NULL,
	[gia_tri_giam_gia] [decimal](10, 2) NULL,
	[so_luong] [int] NULL,
	[ngay_bat_dau] [date] NULL,
	[ngay_ket_thuc] [date] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[nguoi_tao] [nvarchar](255) NULL,
	[nguoi_cap_nhat] [nvarchar](255) NULL,
 CONSTRAINT [PK__GiamGia__3214EC279F6C0EF9] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_khach_hang] [int] NULL,
	[id_nhan_vien] [int] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[nguoi_tao] [nvarchar](255) NULL,
	[nguoi_cap_nhat] [nvarchar](255) NULL,
	[tong_tien_don_hang] [decimal](10, 2) NULL,
	[tien_giam_gia] [decimal](10, 2) NULL,
	[thanh_tien] [decimal](10, 2) NULL,
	[hinh_thuc_thanh_toan] [nvarchar](255) NULL,
	[phi_van_chuyen] [decimal](10, 2) NULL,
	[dia_chi_giao_hang] [nvarchar](255) NULL,
	[thoi_gian_giao_hang] [datetime] NULL,
	[sdt_nguoi_nhan] [nvarchar](255) NULL,
	[nguoi_thanh_toan] [nvarchar](255) NULL,
	[id_trang_thai_hoa_don] [int] NULL,
	[id_giam_gia] [int] NULL,
	[id_status] [nvarchar](50) NULL,
	[ma_hoa_don] [nvarchar](50) NULL,
	[time_line] [nvarchar](255) NULL,
 CONSTRAINT [PK__HoaDon__3214EC272284B1BA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_san_pham_chi_tiet] [int] NULL,
	[id_hoa_don] [int] NULL,
	[so_luong] [int] NULL,
	[don_gia] [int] NULL,
	[thanh_tien] [int] NULL,
	[trang_thai] [bit] NULL,
 CONSTRAINT [PK__HoaDonCh__3214EC278AD1FAC8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_tiet]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_tiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_dang_ao] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__HoaTiet__3214EC2714AED8C8] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_khach_hang] [nvarchar](255) NULL,
	[SDT] [varchar](50) NULL,
	[gioi_tinh] [nvarchar](255) NULL,
	[Email] [varchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[trang_thai] [bit] NULL,
	[anh] [nvarchar](255) NULL,
	[mat_khau] [nvarchar](255) NULL,
 CONSTRAINT [PK__KhachHan__3214EC27D54E17B7] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kich_co]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kich_co](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_kich_co] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__KichCo__3214EC279192B8B4] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lich_su_hoa_don]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lich_su_hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_hoa_don] [int] NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[nguoi_tao] [nvarchar](255) NULL,
	[nguoi_cap_nhat] [nvarchar](255) NULL,
	[nhung_thay_doi] [nvarchar](255) NULL,
	[so_tien_thanh_toan] [int] NULL,
	[so_tien_con_lai] [int] NULL,
 CONSTRAINT [PK__LichSuHo__3214EC27B71F4DD4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mau_sac]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mau_sac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_mau_sac] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__MauSac__3214EC2791EFF5B9] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_chuc_vu] [int] NULL,
	[ho_ten] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[mat_khau] [nvarchar](255) NULL,
	[dia_chi] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[SDT] [varchar](20) NULL,
	[Anh] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__NhanVien__3214EC27710B26A5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_san_pham] [nvarchar](255) NULL,
	[ngay_tao] [datetime] NULL,
	[ngay_cap_nhat] [datetime] NULL,
	[nguoi_tao] [nvarchar](255) NULL,
	[nguoi_cap_nhat] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
	[anh] [nvarchar](255) NULL,
 CONSTRAINT [PK__SanPham__3214EC271414B3AF] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham_chi_tiet]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham_chi_tiet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[id_san_pham] [int] NULL,
	[id_anh] [int] NULL,
	[id_mau_sac] [int] NULL,
	[gioi_tinh] [int] NULL,
	[id_chat_lieu] [int] NULL,
	[id_thuong_hieu] [int] NULL,
	[id_kich_co] [int] NULL,
	[id_dang_ao] [int] NULL,
	[id_co_ao] [int] NULL,
	[id_tay_ao] [int] NULL,
	[id_hoa_tiet] [int] NULL,
	[gia_nhap] [int] NULL,
	[gia_ban] [int] NULL,
	[mo_ta] [nvarchar](255) NULL,
	[so_luong] [int] NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__SanPhamC__3214EC27B8F62EAE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tay_ao]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tay_ao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_kieu_tay_ao] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__TayAo__3214EC278D991E2D] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongKe]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongKe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDHoaDon] [int] NULL,
	[IDSanPhamChiTiet] [int] NULL,
	[DoanhThuHangThang] [int] NULL,
	[DoanhThuNam] [int] NULL,
	[KhachHangTiemNang] [varchar](255) NULL,
	[SanPhamBanChay] [varchar](255) NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK__ThongKe__3214EC2704183921] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_thuong_hieu] [nvarchar](255) NULL,
	[mo_ta] [nvarchar](255) NULL,
	[trang_thai] [nvarchar](50) NULL,
 CONSTRAINT [PK__ThuongHi__3214EC278804B100] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trang_thai_don]    Script Date: 27/06/2024 11:32:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trang_thai_don](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ten_trang_thai] [nvarchar](255) NULL,
	[ghi_chu] [varchar](255) NULL,
	[trang_thai] [varchar](50) NULL,
 CONSTRAINT [PK__TrangTha__3214EC271791F7EE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[anh] ON 

INSERT [dbo].[anh] ([ID], [Anh], [trang_thai]) VALUES (1, N'/img/sneaker.png', NULL)
SET IDENTITY_INSERT [dbo].[anh] OFF
GO
SET IDENTITY_INSERT [dbo].[chat_lieu] ON 

INSERT [dbo].[chat_lieu] ([ID], [ten_chat_lieu], [mo_ta], [trang_thai]) VALUES (1, N'vai to tam', N'rat dep', N'active')
SET IDENTITY_INSERT [dbo].[chat_lieu] OFF
GO
SET IDENTITY_INSERT [dbo].[chuc_vu] ON 

INSERT [dbo].[chuc_vu] ([ID], [ten_chuc_vu], [ghi_chu], [trang_thai]) VALUES (1, N'nhan vien', NULL, NULL)
SET IDENTITY_INSERT [dbo].[chuc_vu] OFF
GO
SET IDENTITY_INSERT [dbo].[co_ao] ON 

INSERT [dbo].[co_ao] ([ID], [ten_co_ao], [mo_ta], [trang_thai]) VALUES (1, N'co tron', N'co ao dep', N'active')
SET IDENTITY_INSERT [dbo].[co_ao] OFF
GO
SET IDENTITY_INSERT [dbo].[dang_ao] ON 

INSERT [dbo].[dang_ao] ([ID], [ten_kieu_dang_ao], [mo_ta], [trang_thai]) VALUES (1, N'dang ao dung', N'dang rat dep', N'actice')
SET IDENTITY_INSERT [dbo].[dang_ao] OFF
GO
SET IDENTITY_INSERT [dbo].[giam_gia] ON 

INSERT [dbo].[giam_gia] ([ID], [id_san_pham_chi_tiet], [ten_giam_gia], [loai_giam_gia], [gia_tri_giam_gia], [so_luong], [ngay_bat_dau], [ngay_ket_thuc], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat]) VALUES (2, 3, N'test', N'sp', CAST(30.00 AS Decimal(10, 2)), 989, CAST(N'2024-06-09' AS Date), CAST(N'2024-06-28' AS Date), CAST(N'2024-06-12T16:25:56.000' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[giam_gia] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON 

INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1, 1, 1, CAST(N'2024-06-12T01:18:49.000' AS DateTime), NULL, N'adim', NULL, CAST(100000.00 AS Decimal(10, 2)), CAST(200000.00 AS Decimal(10, 2)), CAST(8000000.00 AS Decimal(10, 2)), N'tien mat', CAST(150000.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, 5, NULL, N'1,2,3,5', N'HD0001', NULL)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (2, 2, NULL, CAST(N'2024-06-12T20:38:27.500' AS DateTime), NULL, N'Quan', NULL, CAST(1130000.00 AS Decimal(10, 2)), CAST(339000.00 AS Decimal(10, 2)), CAST(791000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'0986156736', NULL, 5, 2, N'1,2,5', N'HD0002', NULL)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (3, 3, NULL, CAST(N'2024-06-12T22:05:02.663' AS DateTime), NULL, N'Quan', NULL, CAST(1640000.00 AS Decimal(10, 2)), CAST(492000.00 AS Decimal(10, 2)), CAST(1148000.00 AS Decimal(10, 2)), N'chuyển khoản', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'0986156736', NULL, 6, 2, N'1,2,3,4,6', N'HD0003', NULL)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (4, 4, NULL, CAST(N'2024-06-12T22:14:12.900' AS DateTime), NULL, N'Quan', NULL, CAST(2090000.00 AS Decimal(10, 2)), CAST(627000.00 AS Decimal(10, 2)), CAST(1463000.00 AS Decimal(10, 2)), N'chuyển khoản', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'0986156736', NULL, 4, 2, N'1,2,3,4', N'HD0004', NULL)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (5, 5, NULL, CAST(N'2024-06-13T14:41:49.437' AS DateTime), NULL, N'Quan', NULL, CAST(980000.00 AS Decimal(10, 2)), CAST(294000.00 AS Decimal(10, 2)), CAST(686000.00 AS Decimal(10, 2)), N'chuyển khoản', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'0986156736', NULL, 6, 2, N'1,2,3,4,6', N'HD0005', NULL)
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1026, 1025, NULL, CAST(N'2024-06-27T22:10:44.637' AS DateTime), NULL, N'Quan', NULL, CAST(450000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(450000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'12312313212', NULL, 6, NULL, N'1,2,3,4,6', N'HD1026', N'22:10:44 27/06/2024,22:22:46 27/06/2024,22:23:37 27/06/2024,22:23:50 27/06/2024,22:24:00 27/06/2024')
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1027, 1026, NULL, CAST(N'2024-06-27T22:59:07.740' AS DateTime), NULL, N'Quan', NULL, CAST(790000.00 AS Decimal(10, 2)), CAST(237000.00 AS Decimal(10, 2)), CAST(553000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'0986123', NULL, 4, 2, N'1,2,3,4', N'HD1027', N'22:59:07 27/06/2024,22:59:16 27/06/2024,22:59:20 27/06/2024,22:59:34 27/06/2024')
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1028, 1027, NULL, CAST(N'2024-06-27T23:05:47.453' AS DateTime), NULL, N'Quan', NULL, CAST(150000.00 AS Decimal(10, 2)), CAST(45000.00 AS Decimal(10, 2)), CAST(105000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'12312313212', NULL, 6, 2, N'1,2,3,4,6', N'HD1028', N'23:05:47 27/06/2024,23:05:52 27/06/2024,23:05:54 27/06/2024,23:05:59 27/06/2024,23:06:40 27/06/2024')
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1029, 1028, NULL, CAST(N'2024-06-27T23:16:14.527' AS DateTime), NULL, N'Quan', NULL, CAST(1430000.00 AS Decimal(10, 2)), CAST(429000.00 AS Decimal(10, 2)), CAST(1001000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'1231331231', NULL, 5, 2, N'1,2,5', N'HD1029', N'23:16:14 27/06/2024,23:30:32 27/06/2024,23:30:33 27/06/2024')
INSERT [dbo].[hoa_don] ([id], [id_khach_hang], [id_nhan_vien], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [tong_tien_don_hang], [tien_giam_gia], [thanh_tien], [hinh_thuc_thanh_toan], [phi_van_chuyen], [dia_chi_giao_hang], [thoi_gian_giao_hang], [sdt_nguoi_nhan], [nguoi_thanh_toan], [id_trang_thai_hoa_don], [id_giam_gia], [id_status], [ma_hoa_don], [time_line]) VALUES (1030, 1029, NULL, CAST(N'2024-06-27T23:22:16.803' AS DateTime), NULL, N'Quan', NULL, CAST(510000.00 AS Decimal(10, 2)), CAST(153000.00 AS Decimal(10, 2)), CAST(357000.00 AS Decimal(10, 2)), N'Tiền mặt', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, N'12312313212', NULL, 6, 2, N'1,2,3,4,6', N'HD1030', N'23:22:16 27/06/2024,23:29:53 27/06/2024,23:29:55 27/06/2024,23:29:56 27/06/2024,23:29:58 27/06/2024')
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON 

INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (2, 3, 1, 2, 100000, 200000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (3, 3, 2, 3, 150000, 450000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (4, 4, 2, 4, 170000, 680000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (5, 3, 3, 3, 150000, 450000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (6, 4, 3, 7, 170000, 1190000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1003, 3, 4, 6, 150000, 900000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1004, 4, 4, 7, 170000, 1190000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1007, 3, 5, 2, 150000, 300000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1008, 4, 5, 4, 170000, 680000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1036, 3, 1026, 3, 150000, 450000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1037, 3, 1027, 3, 150000, 450000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1038, 4, 1027, 2, 170000, 340000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1039, 3, 1028, 1, 150000, 150000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1042, 4, 1030, 3, 170000, 510000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1043, 3, 1029, 5, 150000, 750000, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([id], [id_san_pham_chi_tiet], [id_hoa_don], [so_luong], [don_gia], [thanh_tien], [trang_thai]) VALUES (1044, 4, 1029, 4, 170000, 680000, 1)
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_tiet] ON 

INSERT [dbo].[hoa_tiet] ([ID], [ten_dang_ao], [mo_ta], [trang_thai]) VALUES (1, N'don gian', N'don gian ma dep', N'active')
SET IDENTITY_INSERT [dbo].[hoa_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[khach_hang] ON 

INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1, N'test', N'123', N'nam', N'abc@gmail.com', CAST(N'2024-06-12T01:18:29.000' AS DateTime), 1, NULL, N'1')
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (2, N'quandeptrai', N'0986156736', NULL, NULL, CAST(N'2024-06-12T20:38:27.427' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (3, N'quandeptrai', N'0986156736', NULL, NULL, CAST(N'2024-06-12T22:05:02.600' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (4, N'quandeptraivcl123', N'0986156736', NULL, NULL, CAST(N'2024-06-12T22:14:12.817' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (5, N'quandeptraivcl12323423', N'0986156736', NULL, NULL, CAST(N'2024-06-13T14:41:49.357' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1002, N'abcd', N'0986156736', NULL, NULL, CAST(N'2024-06-14T11:25:32.707' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1003, N'quandeptraivcl123', N'243234234', NULL, NULL, CAST(N'2024-06-14T11:26:39.070' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1004, N'avva', N'1323123', NULL, NULL, CAST(N'2024-06-14T11:28:51.540' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1005, N'avva', N'1323123', NULL, NULL, CAST(N'2024-06-14T11:32:31.793' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1006, N'abc', N'2131231', NULL, NULL, CAST(N'2024-06-14T11:36:26.997' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1007, N'ádasasd', N'ádasd', NULL, NULL, CAST(N'2024-06-14T11:54:29.227' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1008, N'ádasdad', N'123123', NULL, NULL, CAST(N'2024-06-14T11:55:16.300' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1009, N'ádasasd', N'adas', NULL, NULL, CAST(N'2024-06-14T11:55:45.683' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1010, N'zccxz', N'234234', NULL, NULL, CAST(N'2024-06-14T12:00:53.730' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1011, N'zccxz', N'234234', NULL, NULL, CAST(N'2024-06-14T12:04:34.393' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1012, N'zccxz', N'234234', NULL, NULL, CAST(N'2024-06-14T12:05:53.823' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1015, N'nguyễn tài quân', N'0986123', NULL, NULL, CAST(N'2024-06-14T12:09:04.130' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1016, N'nguyễn tài quân123', N'123123123', NULL, NULL, CAST(N'2024-06-14T12:47:34.987' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1017, N'nguyễn tài quân123', N'123123123', NULL, NULL, CAST(N'2024-06-14T12:50:14.197' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1018, N'zccxz', N'12312313212', NULL, NULL, CAST(N'2024-06-14T12:56:23.307' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1019, N'nguyễn tài quân', N'12312313212', NULL, NULL, CAST(N'2024-06-15T11:00:18.340' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1020, N'nguyễn tài quân', N'12312313212', NULL, NULL, CAST(N'2024-06-15T11:02:38.853' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1021, N'ádasasd', N'12312313212', NULL, NULL, CAST(N'2024-06-15T11:03:26.297' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1022, N'ádasasd', N'12312313212', NULL, NULL, CAST(N'2024-06-15T11:04:10.323' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1023, N'nguyễn tài quân', N'12312313212', NULL, NULL, CAST(N'2024-06-15T12:23:40.217' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1024, N'quanef', N'12312313212', NULL, NULL, CAST(N'2024-06-15T12:35:44.610' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1025, N'nguyễn tài quân', N'12312313212', NULL, NULL, CAST(N'2024-06-27T22:10:44.567' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1026, N'quan', N'0986123', NULL, NULL, CAST(N'2024-06-27T22:59:07.687' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1027, N'nguyễn tài quân123', N'12312313212', NULL, NULL, CAST(N'2024-06-27T23:05:47.400' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1028, N'nguyễn tài quân', N'1231331231', NULL, NULL, CAST(N'2024-06-27T23:16:14.467' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[khach_hang] ([id], [ten_khach_hang], [SDT], [gioi_tinh], [Email], [ngay_tao], [trang_thai], [anh], [mat_khau]) VALUES (1029, N'nguyễn tài quân123', N'12312313212', NULL, NULL, CAST(N'2024-06-27T23:22:16.743' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[khach_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[kich_co] ON 

INSERT [dbo].[kich_co] ([ID], [ten_kich_co], [mo_ta], [trang_thai]) VALUES (1, N'XL', N'rong vlin', N'active')
INSERT [dbo].[kich_co] ([ID], [ten_kich_co], [mo_ta], [trang_thai]) VALUES (2, N'L', N'vua', N'active')
SET IDENTITY_INSERT [dbo].[kich_co] OFF
GO
SET IDENTITY_INSERT [dbo].[lich_su_hoa_don] ON 

INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1, 1, CAST(N'2024-06-12T09:52:35.000' AS DateTime), CAST(N'2024-06-12T09:52:37.000' AS DateTime), N'nv', N'nv', N'ko', 10000000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (2, 3, CAST(N'2024-06-12T22:05:02.680' AS DateTime), NULL, N'Quan', NULL, NULL, 1148000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (3, 4, CAST(N'2024-06-12T22:14:12.917' AS DateTime), NULL, N'Quan', NULL, NULL, 791000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (4, 5, CAST(N'2024-06-13T14:41:49.473' AS DateTime), NULL, N'Quan', NULL, NULL, 735000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1018, 1026, CAST(N'2024-06-27T22:10:44.673' AS DateTime), NULL, N'Quan', NULL, NULL, 450000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1019, 1027, CAST(N'2024-06-27T22:59:07.773' AS DateTime), NULL, N'Quan', NULL, NULL, 553000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1020, 1028, CAST(N'2024-06-27T23:05:47.480' AS DateTime), NULL, N'Quan', NULL, NULL, 105000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1021, 1029, CAST(N'2024-06-27T23:16:14.563' AS DateTime), NULL, N'Quan', NULL, NULL, 581000, 0)
INSERT [dbo].[lich_su_hoa_don] ([id], [id_hoa_don], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [nhung_thay_doi], [so_tien_thanh_toan], [so_tien_con_lai]) VALUES (1022, 1030, CAST(N'2024-06-27T23:22:16.857' AS DateTime), NULL, N'Quan', NULL, NULL, 357000, 0)
SET IDENTITY_INSERT [dbo].[lich_su_hoa_don] OFF
GO
SET IDENTITY_INSERT [dbo].[mau_sac] ON 

INSERT [dbo].[mau_sac] ([ID], [ten_mau_sac], [mo_ta], [trang_thai]) VALUES (1, N'trang', N'rat trang', NULL)
INSERT [dbo].[mau_sac] ([ID], [ten_mau_sac], [mo_ta], [trang_thai]) VALUES (2, N'den', N'rat den', NULL)
INSERT [dbo].[mau_sac] ([ID], [ten_mau_sac], [mo_ta], [trang_thai]) VALUES (3, N'do', N'rat do', NULL)
SET IDENTITY_INSERT [dbo].[mau_sac] OFF
GO
SET IDENTITY_INSERT [dbo].[nhan_vien] ON 

INSERT [dbo].[nhan_vien] ([ID], [id_chuc_vu], [ho_ten], [email], [mat_khau], [dia_chi], [ngay_tao], [SDT], [Anh], [trang_thai]) VALUES (1, 1, N'Quan', N'admin@gmail.com', N'1', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[nhan_vien] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([ID], [ten_san_pham], [ngay_tao], [ngay_cap_nhat], [nguoi_tao], [nguoi_cap_nhat], [mo_ta], [trang_thai], [anh]) VALUES (1, N'ao coc tay', CAST(N'2024-06-11T22:39:05.000' AS DateTime), CAST(N'2024-06-11T22:39:08.000' AS DateTime), N'admin', N'admin', N'ao dep vlin', N'active', NULL)
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham_chi_tiet] ON 

INSERT [dbo].[san_pham_chi_tiet] ([ID], [id_san_pham], [id_anh], [id_mau_sac], [gioi_tinh], [id_chat_lieu], [id_thuong_hieu], [id_kich_co], [id_dang_ao], [id_co_ao], [id_tay_ao], [id_hoa_tiet], [gia_nhap], [gia_ban], [mo_ta], [so_luong], [trang_thai]) VALUES (3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 100000, 150000, N'ao rat dep', 1000, N'active')
INSERT [dbo].[san_pham_chi_tiet] ([ID], [id_san_pham], [id_anh], [id_mau_sac], [gioi_tinh], [id_chat_lieu], [id_thuong_hieu], [id_kich_co], [id_dang_ao], [id_co_ao], [id_tay_ao], [id_hoa_tiet], [gia_nhap], [gia_ban], [mo_ta], [so_luong], [trang_thai]) VALUES (4, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 120000, 170000, N'ao cuc ki dep', 120, N'actice')
SET IDENTITY_INSERT [dbo].[san_pham_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[tay_ao] ON 

INSERT [dbo].[tay_ao] ([ID], [ten_kieu_tay_ao], [mo_ta], [trang_thai]) VALUES (1, N'ngan', N'rat ngan', NULL)
SET IDENTITY_INSERT [dbo].[tay_ao] OFF
GO
SET IDENTITY_INSERT [dbo].[thuong_hieu] ON 

INSERT [dbo].[thuong_hieu] ([ID], [ten_thuong_hieu], [mo_ta], [trang_thai]) VALUES (1, N'hang cho', NULL, NULL)
SET IDENTITY_INSERT [dbo].[thuong_hieu] OFF
GO
SET IDENTITY_INSERT [dbo].[trang_thai_don] ON 

INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (1, N'tạo đơn hàng', N'1', N'1')
INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (2, N'chờ xác nhận', N'1', N'1')
INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (3, N'đang giao hàng', N'1', N'1')
INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (4, N'giao thành công', N'1', N'1')
INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (5, N'hủy đơn hàng', N'1', N'1')
INSERT [dbo].[trang_thai_don] ([ID], [ten_trang_thai], [ghi_chu], [trang_thai]) VALUES (6, N'hoàn hàng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[trang_thai_don] OFF
GO
ALTER TABLE [dbo].[dia_chi]  WITH CHECK ADD  CONSTRAINT [FK__DiaChi__IDKhachH__6EF57B66] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[dia_chi] CHECK CONSTRAINT [FK__DiaChi__IDKhachH__6EF57B66]
GO
ALTER TABLE [dbo].[giam_gia]  WITH CHECK ADD  CONSTRAINT [FK__GiamGia__IDSanPh__68487DD7] FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([ID])
GO
ALTER TABLE [dbo].[giam_gia] CHECK CONSTRAINT [FK__GiamGia__IDSanPh__68487DD7]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IDKhachH__6B24EA82] FOREIGN KEY([id_khach_hang])
REFERENCES [dbo].[khach_hang] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__HoaDon__IDKhachH__6B24EA82]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IDNhanVi__6C190EBB] FOREIGN KEY([id_nhan_vien])
REFERENCES [dbo].[nhan_vien] ([ID])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__HoaDon__IDNhanVi__6C190EBB]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdTrangT__6D0D32F4] FOREIGN KEY([id_trang_thai_hoa_don])
REFERENCES [dbo].[trang_thai_don] ([ID])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK__HoaDon__IdTrangT__6D0D32F4]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [hoa_don_GiamGia_ID_fk] FOREIGN KEY([id_giam_gia])
REFERENCES [dbo].[giam_gia] ([ID])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [hoa_don_GiamGia_ID_fk]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonChi__IDHoa__6A30C649] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK__HoaDonChi__IDHoa__6A30C649]
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet] FOREIGN KEY([id_san_pham_chi_tiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([ID])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [FK_HoaDonChiTiet_SanPhamChiTiet]
GO
ALTER TABLE [dbo].[lich_su_hoa_don]  WITH CHECK ADD  CONSTRAINT [FK__LichSuHoa__IDHoa__6FE99F9F] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[lich_su_hoa_don] CHECK CONSTRAINT [FK__LichSuHoa__IDHoa__6FE99F9F]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK__NhanVien__IDChuc__6E01572D] FOREIGN KEY([id_chuc_vu])
REFERENCES [dbo].[chuc_vu] ([ID])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK__NhanVien__IDChuc__6E01572D]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDAnh__5DCAEF64] FOREIGN KEY([id_anh])
REFERENCES [dbo].[anh] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDAnh__5DCAEF64]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDCha__5EBF139D] FOREIGN KEY([id_chat_lieu])
REFERENCES [dbo].[chat_lieu] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDCha__5EBF139D]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDCoA__5FB337D6] FOREIGN KEY([id_co_ao])
REFERENCES [dbo].[co_ao] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDCoA__5FB337D6]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDDan__60A75C0F] FOREIGN KEY([id_dang_ao])
REFERENCES [dbo].[dang_ao] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDDan__60A75C0F]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDHoa__619B8048] FOREIGN KEY([id_hoa_tiet])
REFERENCES [dbo].[hoa_tiet] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDHoa__619B8048]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDKic__628FA481] FOREIGN KEY([id_kich_co])
REFERENCES [dbo].[kich_co] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDKic__628FA481]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDMau__6383C8BA] FOREIGN KEY([id_mau_sac])
REFERENCES [dbo].[mau_sac] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDMau__6383C8BA]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDSan__6477ECF3] FOREIGN KEY([id_san_pham])
REFERENCES [dbo].[san_pham] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDSan__6477ECF3]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDTay__656C112C] FOREIGN KEY([id_tay_ao])
REFERENCES [dbo].[tay_ao] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDTay__656C112C]
GO
ALTER TABLE [dbo].[san_pham_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK__SanPhamCh__IDThu__66603565] FOREIGN KEY([id_thuong_hieu])
REFERENCES [dbo].[thuong_hieu] ([ID])
GO
ALTER TABLE [dbo].[san_pham_chi_tiet] CHECK CONSTRAINT [FK__SanPhamCh__IDThu__66603565]
GO
ALTER TABLE [dbo].[ThongKe]  WITH CHECK ADD  CONSTRAINT [FK__ThongKe__IDSanPh__6754599E] FOREIGN KEY([IDSanPhamChiTiet])
REFERENCES [dbo].[san_pham_chi_tiet] ([ID])
GO
ALTER TABLE [dbo].[ThongKe] CHECK CONSTRAINT [FK__ThongKe__IDSanPh__6754599E]
GO
