--CREATE DATABASE [QuanLyBanHang_a]
USE [QuanLyBanHang_a]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[maAnh] [nvarchar](10) NOT NULL,
	[tenAnh] [nvarchar](10) NULL,
	[maHang] [nvarchar](10) NULL,
 CONSTRAINT [pk_anh] PRIMARY KEY CLUSTERED 
(
	[maAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGH]    Script Date: 09/04/2023 10:59:09 CH ******/


CREATE TABLE [dbo].[DatHang](
	[HoTen] [nvarchar](20) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[email] [nvarchar](30) NULL,
	[SanPham] [nvarchar](max) NULL,
	[Tongtien] [int] NULL,
	[Ghichu] [nvarchar](30) NULL
 CONSTRAINT [pk_DatHang] PRIMARY KEY CLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGH](
	[maGH] [nvarchar](10) NOT NULL,
	[maHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [pk_ctgh] PRIMARY KEY CLUSTERED 
(
	[maGH] ASC,
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[MaHDB] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[MaHDN] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPNK]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPNK](
	[MaHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](255) NULL,
	[DonGia] [int] NULL,
	[MaPNK] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPXK]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPXK](
	[MaPXK] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[DonViTinh] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](10) NOT NULL,
	[TenChucVu] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [nvarchar](10) NOT NULL,
	[TenDanhMuc] [nvarchar](10) NULL,
 CONSTRAINT [pk_danhmuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maGH] [nvarchar](10) NOT NULL,
	[TongTien] [int] NULL,
	[TenTaiKhoan] [nvarchar](10) NULL,
 CONSTRAINT [pk_giohang] PRIMARY KEY CLUSTERED 
(
	[maGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [nvarchar](10) NOT NULL,
	[TenHang] [nvarchar](255) NOT NULL,
	[DonGiaNhap] [int] NULL,
	[DonGiaBan] [int] NULL,
	[TrongLuong] [nvarchar](255) NULL,
	[SLTon] [int] NULL,
	[soLanMua] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaDanhMuc] [nvarchar](10) NULL,
	[anhDaiDien] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaHDB] [nvarchar](10) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[TongTien] [int] NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDNhap]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDNhap](
	[MaHDN] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [int] NULL,
	[MaNCC] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HDNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[TenTaiKhoan] [nvarchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
 CONSTRAINT [PK_tNCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[NgayBD] [date] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MaChucVu] [nvarchar](10) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPNK] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
 CONSTRAINT [PK_PhieuNhapKho_1] PRIMARY KEY CLUSTERED 
(
	[MaPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuatKho]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatKho](
	[MaPXK] [nvarchar](10) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PhieuXuatKho] PRIMARY KEY CLUSTERED 
(
	[MaPXK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[MaBaoMat] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanUser]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanUser](
	[TenTaiKhoan] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](10) NULL,
 CONSTRAINT [pk_TaiKhoanUser] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--

CREATE TABLE [dbo].[DonDatUser](
    [CMT] [nvarchar](10) NOT  NULL,
	[HoTen] [nvarchar](100)  NULL,
	[SDT] [nvarchar](12)  NULL,
	[TrangThai] [int]  NULL,
	[TongTien] [int] NULL,
	[TenTaiKhoan] [nvarchar](10)  NULL,
 CONSTRAINT [pk_DonDatUser] PRIMARY KEY CLUSTERED 
(
	[CMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--
ALTER TABLE [dbo].[DonDatUser]  WITH CHECK ADD  CONSTRAINT [fk_DonDatUser_TaiKhoanUser] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoanUser] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[DonDatUser] CHECK CONSTRAINT [fk_DonDatUser_TaiKhoanUser]
GO
--

CREATE TABLE [dbo].[DonDatUser1](
    [CMT] [nvarchar](10) NOT  NULL,
	[HoTen] [nvarchar](100)  NULL,
	[SDT] [nvarchar](12)  NULL,
	[TrangThai] [int]  NULL,
	[TongTien] [int] NULL,
	[TenTaiKhoan] [nvarchar](10)  NULL,
 CONSTRAINT [pk_DonDatUser1] PRIMARY KEY CLUSTERED 
(
	[CMT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--

INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A01', N'0011.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A02', N'0012.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A03', N'0013.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A04', N'0021.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A05', N'0022.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A06', N'0023.jpg', N'H02')


INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A07', N'003.png', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A13', N'0032.webp', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A14', N'0033.webp', N'H03')

INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A08', N'0101.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A09', N'0102.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A10', N'0103.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A11', N'0151.png', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A12', N'0152.png', N'H08')

INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A100', N'0542.jpg', N'H44')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A101', N'0543.jpg', N'H44')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A102', N'0551.jpg', N'H45')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A103', N'0552.jpg', N'H45')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A104', N'0553..jpg', N'H45')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A105', N'0571.jpg', N'H47')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A106', N'0572.jpg', N'H47')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A107', N'0573.jpg', N'H47')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A108', N'0581.jpg', N'H48')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A109', N'0582.jpg', N'H48')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A11', N'0153.png', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A110', N'0583.jpg', N'H48')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A111', N'0591.jpg', N'H49')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A112', N'0592.jpg', N'H49')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A113', N'0593.jpg', N'H49')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A114', N'0601.jpg', N'H50')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A115', N'0602.jpg', N'H50')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A116', N'0603.jpg', N'H50')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A12', N'0191.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A13', N'0192.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A14', N'0193.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A15', N'0241.jpg', N'H16')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A16', N'0242.jpg', N'H16')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A17', N'0243.jpg', N'H16')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A18', N'0251.jpg', N'H17')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A19', N'0252jpg', N'H17')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A20', N'0271.jpg', N'H18')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A21', N'0272.jpg', N'H18')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A22', N'0273.jpg', N'H18')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A23', N'0281.jpg', N'H19')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A24', N'0282.jpg', N'H19')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A25', N'0283.jpg', N'H19')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A26', N'0291.jpg', N'H20')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A27', N'0292.jpg', N'H20')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A28', N'0293.jpg', N'H20')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A29', N'0301.jpg', N'H21')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A30', N'0302.jpg', N'H21')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A31', N'0303.jpg', N'H21')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A32', N'0311.jpg', N'H22')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A33', N'0312.jpg', N'H22')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A34', N'0313.jpg', N'H22')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A35', N'0331.jpg', N'H23')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A36', N'0332.jpg', N'H23')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A37', N'0333.jpg', N'H23')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A38', N'0341.jpg', N'H24')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A39', N'0342.jpg', N'H24')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A40', N'0343.jpg', N'H24')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A41', N'0351.jpg', N'H25')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A42', N'0352.jpg', N'H25')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A43', N'0353.jpg', N'H25')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A44', N'0361.jpg', N'H26')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A45', N'0362.jpg', N'H26')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A46', N'0363.jpg', N'H26')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A47', N'0371.jpg', N'H27')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A48', N'0372.jpg', N'H27')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A49', N'0373.jpg', N'H27')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A50', N'0381.jpg', N'H28')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A51', N'0382.jpg', N'H28')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A52', N'0383.jpg', N'H28')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A53', N'0391.jpg', N'H29')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A54', N'0392.jpg', N'H29')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A55', N'0393.jpg', N'H29')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A56', N'0401.jpg', N'H30')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A57', N'0402.jpg', N'H30')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A58', N'0403.jpg', N'H30')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A59', N'0411.jpg', N'H31')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A60', N'0412.jpg', N'H31')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A61', N'0413.jpg', N'H31')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A62', N'0421.jpg', N'H32')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A63', N'0422.jpg', N'H32')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A64', N'0423.jpg', N'H32')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A65', N'0431.jpg', N'H33')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A66', N'0432.jpg', N'H33')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A67', N'0433.jpg', N'H33')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A68', N'0441.jpg', N'H34')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A69', N'0442.jpg', N'H34')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A70', N'0443.jpg', N'H34')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A71', N'0451.jpg', N'H35')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A72', N'0452.jpg', N'H35')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A73', N'0453.jpg', N'H35')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A74', N'0461.jpg', N'H36')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A75', N'0462.jpg', N'H36')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A76', N'0463.jpg', N'H36')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A77', N'0471.jpg', N'H37')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A78', N'0472.jpg', N'H37')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A79', N'0473.jpg', N'H37')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A80', N'0481.jpg', N'H38')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A81', N'0482.jpg', N'H38')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A82', N'0483.jpg', N'H38')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A83', N'0491.jpg', N'H39')
GO
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A84', N'0492.jpg', N'H39')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A85', N'0493.jpg', N'H39')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A86', N'0474.jpg', N'H37')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A87', N'0501.jpg', N'H40')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A88', N'0502.jpg', N'H40')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A89', N'0503.jpg', N'H40')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A90', N'0511.jpg', N'H41')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A91', N'0512.jpg', N'H41')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A92', N'0513.jpg', N'H41')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A93', N'0521.jpg', N'H42')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A94', N'0522.jpg', N'H42')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A95', N'0523.jpg', N'H42')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A96', N'0531.jpg', N'H43')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A97', N'0532.jpg', N'H43')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A98', N'0533.jpg', N'H43')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A99', N'0541.jpg', N'H44')
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H01', N'Rau cần', 10000, 12000, N'300', 7, 5, N'Rau cần nước là rau cần ta chứa nhiều chất xơ, vitamin và khoáng chất. Rau cần có vị hơi hăng nhẹ, rất thích hợp để xào cùng với thịt bò và các loại rau củ để tạo nên những món ăn thơm ngon và đầy đủ dinh dưỡng, đặc biệt hỗ trợ giảm cân cho người đang ăn kiêng.', N'DM01', N'0011.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H02', N'Pepsi', 12000, 15000, N'330', 10, 6, N'Nước giải khát không calo Pesi 330ml là loại nước giải khát độc đáo vị chanh và không calo. Sản phẩm hứa hẹn sẽ mang đến một trải nghiệm hoàn toàn mới mẻ đầy thú vị.', N'DM02', N'0021.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H03', N'Pate cột đèn Hải Phòng', 25000, 30000, N'300', 7, 55, N'Pate Hạ Long thơm ngon kích thích vị giác của người dùng. Pate thịt đóng hộp cột đèn Hải Phòng Hạ Long hộp 90g với thịt heo và gan heo được chọn lựa kỹ lưỡng tươi ngon an toàn đến sức khỏe người dùng. Pate hộp tiện lợi, cho bữa ăn thêm tròn vị đậm đà và không kém phần hấp dẫn.', N'DM03', N'003.png')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H04', N'Mì chua cay Hảo Hảo', 3000, 3500, N'75', 10, 200, N'Mì ăn liền dai ngon hòa quyện trong nước súp tôm chua cay, đậm đà chính hãng mì Hảo Hảo, hương thơm quyến rũ ngất ngây. Mì Hảo Hảo vị tôm chua cay gói 75g là lựa chọn hấp dẫn không thể bỏ qua đặc biệt là cho những ngày bận rộn cần bổ sung năng lượng nhanh chóng đơn giản mà vẫn đủ chất', N'DM04', N'005.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H05', N'Măng trúc quân tử Kim Bôi', 47500, 52000, N'300', 3, 20, N'Là sản phẩm đến từ thương hiệu măng chua Kim Bôi, quen thuộc với người tiêu dùng qua nhiều năm qua. Măng trúc đặc sản Kim Bôi gói 300g mang đến món măng ngâm có độ giòn, ngon, vị chua vừa phải, có thể dùng để chế biến thành nhiều món ăn khác nhau, làm tăng độ chua.', N'DM01', N'006.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H06', N'Cải bắp', 10000, 12900, N'500', 2, 10, N'Bắp cải trắng là loại rau được trồng tại Lâm Đồng, bắp cải trắng nguyên bắp dễ chế biến thành nhiều món ăn đa dạng khác nhau trong bữa cơm hằng ngày. Bắp cải trắng đặc biệt mang đến lợi ích trong việc hỗ trợ phòng chống ung thư, giúp cơ thể khỏe mạnh toàn diện.', N'DM01', N'007.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H07', N'Cải chíp WinEco gói 500g', 9000, 10320, N'500', 3, 7, N'Rau an toàn 4KFarm với tiêu chí 4 KHÔNG, luôn ưu tiên bảo vệ sức khỏe người tiêu dùng. Cải ngồng 4KFarm có vị mát rất tốt cho sức khỏe, chứa nhiều vitamin và khoáng chất. Cải ngồn có thể nấu canh hoặc xào cùng với thịt, cá,... để tạo thành nhiều món ăn ngon và bổ dưỡng.', N'DM01', N'010.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H08', N'Nước giải khát Coca Cola chai 1.5lít
', 12000, 14000, N'1500', 30, 55, N'Từ thương hiệu nước ngọt Coca Cola nổi tiếng thế giới được ưa chuộng tại nhiều nhiều quốc gia. Nước ngọt Coca Cola chai 1.5 lít hương vị thơm ngon dễ chiu, nước ngọt có lượng gas lớn sẽ giúp xua tan mọi cảm giác mệt mỏi, căng thẳng, đem lại cảm giác thoải mái sau khi hoạt động ngoài trời.', N'DM02', N'015.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H09', N'Nước ngọt 7 up Chai 1.5L', 12000, 15000, N'1500', 24, 45, N'Nước ngọt chính hãng nước ngọt 7Up uy tín được nhiều người ưa chuộng. Nước ngọt 7 Up hương chanh 1.5 lít có vị ngọt vừa phải và hương vị gas the mát, giúp bạn xua tan nhanh chóng cơn khát, giảm cảm giác ngấy, kích thích vị giác giúp ăn ngon hơn, cung cấp năng lượng cho tinh thần tươi vui mỗi ngày', N'DM02', N'016.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H10', N'Nước hương dâu thạch dừa MOGU chai 320ml
', 11500, 14500, N'320', 4, 23, N'Nước uống hương dâu thạch dừa MOGU chai 320ml là thức uống giải khát nổi tiếng được rất nhiều người tiêu dùng yêu thích. Sản phẩm được sản xuất trên dây chuyền công nghệ hiện đại, đảm bảo an toàn vệ sinh với thiết kế chai nắp vặn kín, dễ dàng mang theo bên mình để sử dụng mọi lúc, mọi nơi. Nước uống Mogu thạch dừa với nhiều hương vị thơm ngon, cung cấp nước và các vitamin thiết yếu cho cơ thể, tuyệt vời cho những người vận động mạnh, cần bổ sung năng lượng cho cơ thể.', N'DM02', N'017.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H11', N'Nước tăng lực Monster Mango Loco lon 355ml', 24700, 26200, N'355', 6, 22, N'Nước Tăng Lực Monster Mango Loco là thương hiệu nước tăng lực hàng đầu tại Mỹ, là biểu tượng toàn cầu và có mặt trên 125 quốc gia. Monster thể hiện đẳng cấp, phong cách sống khác biệt, là hiện thân của sự mạnh mẽ, huyền bí và vui nhộn.', N'DM02', N'019.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H12', N'Trà chanh với sả Fuze Tea 1 lít
', 12700, 15000, N'1000', 4, 23, N'Sản phẩm trà chanh sả Fuze Tea 1 lít là sự phối trộn độc đáo giữa vị trà xanh tươi mát, quả chanh chua ngọt sảng khoái và hương sả thơm thư giãn, cho bạn một thức uống giải khát thơm ngon, lạ miệng mà vô cùng tốt cho sức khỏe vị ít ngọt, cùng chất chống oxy hóa TPP-C dồi dào, cùng lượng vitamin C cao.', N'DM02', N'020.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H13', N'Nước đào Vfresh Vinamilkhộp 1 lít
', 41000, 43000, N'1000', 12, 15, N'Sản phẩm nước ép trái cây chất lượng thơm ngon từ thương hiệu Vfresh được làm từ nguyên liệu tự nhiên tươi ngon và đào tươi nguyên chất giữ nguyên được hương vị tự nhiên, thơm ngon vốn có. Sản phẩm giúp giải khát nhanh chóng, cung cấp chất dinh dưỡng, tốt cho sức khỏe.', N'DM02', N'021.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H14', N'Nước gạo Morning Rice chai 500ml
', 31800, 33100, N'500', 12, 17, N'﻿﻿Nước gạo Hàn Quốc – Morning Rice 500ml chiết xuất từ gạo và gạo lứt, cung cấp nguồn dinh dưỡng từ thiên nhiên cho mẹ.', N'DM02', N'023.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H15', N'Trà Tea+ Oolong', 14600, 16600, N'500', 7, 23, N'Trà Ô Long TEA+ Plus là sản phẩm mang thương hiệu Suntory của Nhật Bản đầu tiên được ra mắt tại thị trường Việt Nam từ tháng 8 năm 2013. Được sản xuất trên quy trình công nghệ hiện đại, thông qua quy trình kiểm duyệt chặt chẽ, không có đường hóa học, không chứa hóa chất độc hại, đảm bảo an toàn cho người sử dụng.', N'DM02', N'018.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H16', N'Cá sốt cà Pompui hộp 155g', 12000, 13300, N'155', 4, 15, N'Xuất xứ tại Thái Lan, Cá sốt cà Pompui hộp 155g của Cá hộp Pompui sẽ là sự lựa chọn tuyệt vời khi kết hợp giữa vị giòn, ngọt của thịt cá hộp kết hợp với vị đậm đà của xốt cà chua được pha chế đặc biệt. Đây là một món ăn vừa thơm ngon, vừa đầy đủ dinh dưỡng vừa lạ miệng.', N'DM03', N'024.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H17', N'Thịt heo Pork Luncheon Meat ít muối Tulip hộp 340g
', 95000, 100000, N'340', 12, 8, N'Tiện lợi, thơm ngon và dinh dưỡng. Thịt heo Pork Luncheon Meat ít muối Tulip hộp 340g  tiết kiệm thời gian nấu nướng cho những người bận rộn nhưng vẫn cũng cấp cho bạn và gia đình món ăn ngon, chất lượng và an toàn. Heo hộp Tulip đậm đà gia vị, kích thích vị giác, ăn không ngán.', N'DM03', N'025.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H18', N'Cá mòi sốt cà chua Bigcan lon 140g
', 13500, 14700, N'140', 9, 7, N'Cá mòi được tắm trong sốt cà chua tạo nên vị đậm đà từ cà chua. Cá mòi sốt cà chua Bigcan lon 140g là một nguyên liệu chế biến thành nhiều món ăn ngon. Sản phẩm cá hộp từ thương hiệu cá hộp Bigcan có thể ăn trực tiếp.', N'DM03', N'027.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H19', N'Cá ngừ ngâm dầu Seaspimex hộp 185g
', 18000, 215000, N'185', 4, 9, N'Cá ngừ ngâm dầu Seaspimex là sản phẩm mang đến hương vị cá ngừ truyền thống. Với phần thịt cá ngừ chiếm 70% và dầu thực vật cùng các loại gia vị, sản phẩm sẽ giúp bạn có cảm nhận được độ béo và tơi xốp của phần thịt cá cùng với lớp dầu thực vật thơm ngon, lạ miệng.', N'DM03', N'028.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H20', N'Cá saba xốt sriracha Seaspimex hộp 185g
', 16000, 18200, N'185', 5, 8, N'Cá hộp là món ăn tiện lợi, tiết kiệm thời gian và nhưng vẫn đảm bảo dinh dưỡng. Cá saba xốt sriracha Seaspimex hộp 185g thơm ngon, có thể dùng ăn trực tiếp với cơm hoặc chế biến thành những món ăn khác như salad, trộn,... Cá hộp Seaspimex chất lượng, thơm ngon và dinh dưỡng', N'DM03', N'029.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H21', N'Thịt heo hầm 3 Bông Mai Vissan 150g
', 15000, 17500, N'150', 3, 15, N'Thịt heo hộp thơm ngon, chất lượng. Thịt heo hầm 3 Bông Mai Vissan hộp 150g thơm đậm vị heo cùng với gia vị sấy ngào ngạt. Thịt heo chất lượng, nguồn cung cấp rõ ràng, yên tâm cho khách hàng. Thịt heo hộp Vissan là món ăn tiện lợi cho những ai bận rộn và tiết kiệm thời gian.', N'DM03', N'030.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H22', N'Heo hai lát Hạ Long 150g
', 21000, 24300, N'150', 4, 13, N'Tiện lợi, thơm ngon và dinh dưỡng. Heo hai lát Hạ Long hộp 150g tiết kiệm thời gian nấu nướng cho những người bận rộn nhưng vẫn cũng cấp cho bạn và gia đình món ăn ngon, chất lượng và an toàn. Heo hộp Hạ Long đậm đà gia vị, kích thích vị giác, ăn không ngán.', N'DM03', N'031.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H23', N'Cá đù con 1 nắng 250g (4 - 7 con)
', 43000, 49000, N'250', 2, 13, N'Cá đù con 1 nắng khay 250g là loại có chứa nhiều dinh dưỡng, khi ăn thịt béo, thơm ngon. Cá đù con một nắng vô cùng tiện lợi, có thể chế biến thành nhiều món ăn ngon và hấp dẫn. Cá Song Phương được đảm bảo chất lượng và vệ sinh.', N'DM05', N'033.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H24', N'Cá hồi đông lạnh cắt khúc 300gr
', 80000, 89000, N'300', 4, 18, N'Cá hồi cắt khúc đông lạnh vẫn giữ được độ tươi ngon, màu sắc bắt mắt, được sơ chế sạch sẽ an toàn, đặt mua giao hàng trong ngày tại Bách hoá XANH. Cá hồi xuất xứ Chi Lê, chứa nhiều chất dinh dưỡng, được nhiều chọn mua cung cấp cho bữa ăn gia đình', N'DM05', N'034.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H25', N'Cá chim nước ngọt nguyên con làm sạch', 27000, 35000, N'1000', 4, 15, N'Cá chim ở nước ngọt cho thịt ngon, thịt cá dai, có vị ngọt thanh tự nhiên và chứa nhiều dưỡng chất tốt cho sức khỏe. Cá chim được sơ chế, sạch sẽ, an toàn vệ sinh thực phẩm. Chế biến nhiều món ngon như chiên giòn, kho, nướng, hấp nước tương,...', N'DM05', N'035.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H26', N'Cua thịt Cà Mau 1 con (230g - 280g)', 100000, 118000, N'230-280', 4, 15, N'Cua thịt nguyên con, tươi ngon, thịt cua chắc, ngọt thịt. Cua thịt giàu dinh dưỡng, hương vị thơm ngon, hấp dẫn, được nhiều người yêu thích lựa chọn. Cua thịt tại Bách hóa XANH chất lượng, đảm bảo độ tươi, mang đến sự hài lòng của khách hàng.', N'DM05', N'036.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H27', N'Tôm hùm bông nguyên con từ 230g - 300g', 150000, 190000, N'230-300', 2, 24, N'Tôm hùm bông là tôm tươi ngon, có thịt ngọt và dai, là tôm ngộp có nguồn gốc tại Khánh Hòa. Là loại hải sản giàu dinh dưỡng, cung cấp hàm lượng canxi và sắt rất cao cho chế độ ăn hằng ngày. Tôm hùm bông còn mang lại nhiều lợi ích cho sức khỏe.', N'DM05', N'037.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H28', N'Cá lăng nguyên con làm sạch 1kg - 1.2kg
', 240000, 263000, N'1000', 0, 15, N'Cá lăng là một trong những loại thực phẩm tốt cho sức khoẻ, có thể chế biến thành nhiều món ngon dân dã. Cá lăng tại Bách hoá XANH luôn được chế biến hằng ngày từ những con cá tươi ngon với giá thành phải chăng, thích hợp với các món ăn ngon và điều kiện gia đình.', N'DM05', N'038.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H29', N'Râu mực nhập khẩu đông lạnh 500g
', 40000, 49000, N'500', 0, 12, N'Râu mực tươi ngon, có vị dai giòn, sật sật ăn đã miệng vô cùng. Râu mực là hải sản tạo nên nhiều món ăn thơm ngon vô cùng, được các bà nội trợ ưa chuộng và tin dùng, dùng làm nguyên liệu cho bữa ăn của cả nhà', N'DM05', N'039.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H30', N'Khô cá chỉ vàng 200g (36 - 40 con)
', 30000, 39000, N'200', 2, 14, N'Khô cá chỉ vàng khay 200g có thịt dai ngon, vị ngọt, thịt thơm được rất nhiều người yêu thích. Khô cá chỉ vàng được đóng khay tiện lợi, hút chân không đảm bảo vệ sinh an toàn. Khô cá chỉ vàng Song Phương chế biến được rất nhiều món ăn ngon và là mồi nhậu bén.', N'DM05', N'040.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H31', N'Mì khoai tây Cung Đình sườn hầm ngũ quả gói 80g
', 5000, 8200, N'80', 140, 450, N'Sợi mì vàng từ trứng và khoai tây dai ngon hòa quyện trong nước súp mì Cung Đình vị sườn hầm thanh ngọt đậm đà cùng hương thơm lừng quyến rũ. Mì khoai tây Cung Đình sườn hầm ngũ quả gói 80g tiện lợi, nhanh chóng, là lựa chọn hấp dẫn cho bữa ăn nhanh gọn đơn giản nhưng vẫn đầy đủ dưỡng chất', N'DM04', N'041.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H32', N'Phở gà Cung Đình Hà Nội gói 68g
', 5300, 8400, N'68', 130, 456, N'Phở có sợi to, đẹp, khá là thơm và có gói nước cốt xương hầm, vị đậm vị. Phở gà Cung Đình Hà Nội gói 68g thơm ngon, đậm đà kích thích vị giác. Phở Cung Đình chất lượng là lựa chọn sáng suốt cho bữa sáng chất lượng.', N'DM04', N'042.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H33', N'Phở bò Cung Đình Hà Nội gói 68g
', 5300, 8400, N'68', 130, 456, N'Từng sợi phở dai ngon hòa quyện trong nước súp đậm đà của phở Cung Đình phong cách phở Hà Nội thấm đẫm trong từng sợi sóng sánh, cùng hương thơm đặc trưng khó quên. Phở bò Cung Đình Hà Nội gói 68g ngon hơn nhờ gói nước cốt xương hầm chất lượng cho bạn hương vị phở đậm đà hấp dẫn', N'DM04', N'043.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H34', N'Phở bò nguyên miếng Chinsu hộp 132g (có gói thịt bò thật)', 23500, 28000, N'132', 45, 124, N'Sợi phở dẹp, to, dai ngon cùng nước sốt đậm đà, có gói thịt bò thật thơm ngon. Phở bò Chinsu hộp 132g (có gói thịt bò thật) thơm ngon, là lựa chọn cho bữa ăn sáng dinh dưỡng và tiện lợi. Phở Chinsu giúp bạn tiết kiệm thời gian, không mất thời gian nấu nướng', N'DM04', N'044.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H35', N'Phở thịt bò Vifon tô 120g
', 15700, 18600, N'120', 128, 123, N'Những sợi phở trắng, thơm ngon và dai cùng với nước sốt đậm đà, thơm ngon với hương vị bò thơm thơm. Phở thịt bò Vifon tô 120g (có gói thịt bò thật) với sự tiện lợi, nhanh chóng cho bạn bữa ăn không mất nhiều thời gian mà vẫn đảm bảo dinh dưỡng của phở Vifon', N'DM04', N'045.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H36', N'Phở thịt bò Vifon Hoàng Gia gói 120g
', 15700, 18600, N'120', 128, 123, N'Những sợi phở trắng, thơm ngon và dai cùng với nước sốt đậm đà, thơm ngon với hương vị bò thơm thơm. Phở thịt bò Vifon Hoàng Gia gói 120g (gói thịt bò thật 61g) với sự tiện lợi, nhanh chóng cho bạn bữa ăn không mất nhiều thời gian mà vẫn đảm bảo dinh dưỡng của phở Vifon', N'DM04', N'046.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H37', N'Phở bò nguyên miếng Chinsu gói 140g
', 25600, 30000, N'140', 134, 456, N'Sợi phở dẹp, to, dai ngon cùng nước sốt đậm đà, có gói gia vị thơm ngon. Phở bò nguyên miếng Chinsu bò gói 140g thơm ngon, là lựa chọn cho bữa ăn sáng dinh dưỡng và tiện lợi. Phở Chinsu giúp bạn tiết kiệm thời gian, không mất thời gian nấu nướng', N'DM04', N'047.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H38', N'Phở bò Nhớ mãi mãi tô 73g
', 13000, 15500, N'73', 123, 457, N'Với sợi phở to, dẹp trắng thơm ngon, được đóng to sẵn, tiện lợi khi bạn ở bên ngoài và vẫn muốn thưởng thức tô phở thơm ngon dinh dưỡng của phở Nhớ Mãi Mãi. Phở bò Nhớ mãi mãi tô 73g tiết kiệm, tiện lợi cho cả gia đình sử dụng.', N'DM04', N'048.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H39', N'Bún riêu cua Vifon gói 80g
', 9000, 11000, N'80', 123, 345, N'Sản phẩm bún ăn liền thương hiệu bún Vifon được sản xuất từ các thành phần tự nhiên an toàn cho khỏe. Bún riêu cua Vifon 80g thơm ngon với sợi bún tròn dai ngon hòa quyện trong nước súp đậm đà cùng gói riêu cua thật chất lượng, thơm lừng, phù hợp cho bữa ăn nhanh chóng tiện lợi và dinh dưỡng', N'DM04', N'049.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H40', N'Phở bò tái lăn Đệ Nhất gói 68g
', 9500, 10800, N'68', 124, 345, N'Phở bò ăn liền hương vị chuẩn Hà Nội đậm đà với sợi phở mềm dai và nước súp phở Đệ Nhất thanh ngọt, thơm lừng. Phở bò tái lăn Đệ Nhất gói 68g chính hãng chất lượng, cho bạn món ăn nhanh, ngon như phở nấu, phù hợp cho cả gia đình', N'DM04', N'050.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H41', N'Đùi bò nhập khẩu đông lạnh 500gr
', 103000, 109000, N'500', 8, 32, N'Thịt đùi có vị ngon tương tự phần mông bò và thường được cắt thành lát dày như bít-tết để nướng. Đùi bò nhập khẩu đông lạnh được cấp đông từ thịt bò tươi ngon là sản phẩm có xuất xứ rõ ràng nên đảm bảo an toàn thực phẩm và giàu chất dinh dưỡng', N'DM06', N'051.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H42', N'Ức gà tươi phi lê C.P 500g (1-3 miếng)
', 47000, 53000, N'500', 8, 32, N'Ức gà tươi phi lê CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon. Thịt gà C.P xuất xứ rõ ràng, được dùng nhiều trong chế độ ăn uống khoa học như giảm cân, tăng cơ bắp. Ức gà có 2 mã QR để khách hàng có thể truy xuất nguồn gốc thịt, vô cùng an tâm.', N'DM06', N'052.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H43', N'Ba rọi heo C.P 500g
', 86000, 94000, N'500', 8, 32, N'Ba rọi heo của thương hiệu CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon. Thịt heo mềm, vân nạc, mỡ rõ ràng nên rất phù hợp làm nguyên liệu để nấu thịt kho hột vịt. Thịt heo ba rọi có thể dùng điện thoại quét mã QR trên tem sản phẩm để kiểm tra nguồn gốc.', N'DM06', N'053.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H44', N'Nạc dăm heo nhập khẩu đông lạnh 500g
', 46000, 52000, N'500', 8, 34, N'Nạc dăm là phần nạc dăm mềm, có lớp mỡ mỏng, chứa nhiều axit amin cần thiết cho cơ thể, dùng làm nguyên liệu chế biến các món ăn hấp dẫn. Nạc dăm heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', N'DM06', N'054.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H45', N'Chân giò heo nhập khẩu đông lạnh 500g (3 - 5 miếng)', 15000, 20000, N'500', 7, 12, N'Chân giò heo nhập khẩu là phần thịt heo giòn giòn, dai dai, cực kỳ bổ dưỡng mà các bà nội trợ ưa chuộng. Chân giò heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', N'DM06', N'055.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H46', N'Xương que heo nhập khẩu đông lạnh 500g (8 - 10 cây)
', 34000, 37500, N'500', 6, 23, N'Xương que là một nguyên liệu phổ biến trong mâm cơm gia đình vì dễ dàng chế biến thành nhiều món ngon dinh dưỡng tuyệt vời. Xương que heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', N'DM06', N'056.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H47', N'Đậu bắp 250g (12 - 18 trái)', 7000, 8300, N'200', 24, 45, N'Đậu bắp là loại quả chứa nhiều chất xơ, giàu dinh dưỡng, nhiều vitamin,…Đậu bắp luôn rất được ưa chuộng để chế biến những món ăn hàng ngày. Những thành phần dưỡng chất trong đậu bắp rất hữu ích cho hệ tiêu hóa, tim mạch, chống ung thư, tốt cho da và mắt,...', N'DM01', N'057.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H48', N'Bắp cải tím 500g - 600g', 7300, 10000, N'500', 23, 89, N'Bắp cải tím là một loại rau vô cùng quen thuộc, có màu sắc vô cùng bắt mắt, rất dễ mua và chế biến thành nhiều món ăn đa dạng khác nhau trong bữa cơm hằng ngày. Bắp cải tím được trồng tại Lâm Đồng, đặc biệt mang đến lợi ích trong việc hỗ trợ phòng chống ung thư, giúp cơ thể khỏe mạnh toàn diện.', N'DM01', N'058.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H49', N'Rau càng cua 200g
', 6200, 7500, N'200', 12, 34, N'Rau càng cua gói 200g sạch, tươi, xanh ngon và tốt cho sức khỏe. Là loại rau lá thơm ngon, giúp các món ăn thêm bắt vị, kích thích vị giác tốt, chế biến được đa dạng nhiều món ăn ngon, còn chứa nhiều dưỡng chất thiết yếu cần thiết cho cơ thể.', N'DM01', N'059.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [TrongLuong], [SLTon], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H50', N'Rau ngót 500g
', 14000, 19000, N'500', 12, 67, N'Rau ngót là loại rau xanh rất được ưa chuộng tại Việt Nam có tính mát, giúp giải nhiệt, giải độc cho cơ thể cùng với đó cung cấp nhiều chất xơ và vitamin. Rau ngót gói 500g tươi sạch, chất lượng tại Bách hóa XANH tiện lợi, an toàn cho bạn và gia đình những bữa ăn ngon và dinh dưỡng', N'DM01', N'060.jpg')
GO
INSERT [dbo].[ChiTietGH] ([maGH], [maHang], [SoLuong], [DonGia]) VALUES (N'GH01', N'H01', 1, 12000)
GO
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB01', N'H01', 12000, 1, 12000.0000)
GO
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN01', N'H01', 7, 12000, 84000)
GO
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H01', 7, N'Cái', 10000, N'PNK01')
GO
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK01', N'H01', N'Cái', 2, 10000)
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Nhân Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Quản Lí')
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM01', N'Rau củ quả')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM02', N'Đồ uống')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM03', N'Đồ hộp')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM04', N'Đồ ăn liền')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM05', N'Hải sản')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM06', N'Thịt')
GO
INSERT [dbo].[GioHang] ([maGH], [TongTien], [TenTaiKhoan]) VALUES (N'GH01', 12000, N'manh123')
GO
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB01', CAST(N'2022-01-03' AS Date), 81000000, N'NV01', N'KH01')
GO
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN01', CAST(N'2022-06-15' AS Date), 90000000, N'NCC01', N'NV01')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH01', N'Nguyễn Thị Hòa', N'0331284675', N'Hà Nam', N'kh01@gmail.com', NULL)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC01', N'VietGap', N'Hà Nội', N'19001102')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV01', N'Hà Ngọc Mai', N'012345678', N'Nữ', CAST(N'1998-03-27' AS Date), CAST(N'2018-07-15' AS Date), N'Hải Dương', N'CV02', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV02', N'Nguyễn Văn Nam', N'023456781', N'Nam', CAST(N'1995-06-08' AS Date), CAST(N'2019-04-26' AS Date), N'Hà Nội', N'CV01', NULL)
GO
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK01', CAST(N'2022-06-15' AS Date), N'NV01')
GO
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK01', CAST(N'2022-07-03' AS Date), N'NV01')
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaBaoMat], [MaNV]) VALUES (N'nv01x', N'123', N'123', N'NV01')
GO
INSERT [dbo].[TaiKhoanUser] ([TenTaiKhoan], [MatKhau]) VALUES (N'manh123', N'123')
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [fk_anh_hang] FOREIGN KEY([maHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [fk_anh_hang]
GO
ALTER TABLE [dbo].[ChiTietGH]  WITH CHECK ADD  CONSTRAINT [fk_ctgh_gh] FOREIGN KEY([maGH])
REFERENCES [dbo].[GioHang] ([maGH])
GO
ALTER TABLE [dbo].[ChiTietGH] CHECK CONSTRAINT [fk_ctgh_gh]
GO
ALTER TABLE [dbo].[ChiTietGH]  WITH CHECK ADD  CONSTRAINT [fk_ctgh_hang] FOREIGN KEY([maHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietGH] CHECK CONSTRAINT [fk_ctgh_hang]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHDB])
REFERENCES [dbo].[HDBan] ([MaHDB])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HDNhap] ([MaHDN])
GO
ALTER TABLE [dbo].[ChiTietPNK]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietPNK]  WITH CHECK ADD FOREIGN KEY([MaPNK])
REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
GO
ALTER TABLE [dbo].[ChiTietPXK]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietPXK]  WITH CHECK ADD FOREIGN KEY([MaPXK])
REFERENCES [dbo].[PhieuXuatKho] ([MaPXK])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoanUser] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD  CONSTRAINT [FK_PersonOrder] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FK_PersonOrder]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoanUser] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoanUser] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoanUser]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_taikhoan_nhanvien]
GO
