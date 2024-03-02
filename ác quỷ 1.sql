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
INSERT [dbo].[TaiKhoanUser] ([TenTaiKhoan], [MatKhau]) VALUES (N'sang123', N'123')
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
