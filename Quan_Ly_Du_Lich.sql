USE [master]
GO
/****** Object:  Database [QuanLy_TourDuLich]    Script Date: 26/07/2024 11:26:02 SA ******/
CREATE DATABASE [QuanLy_TourDuLich]
 CONTAINMENT = NONE
GO
ALTER DATABASE [QuanLy_TourDuLich] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLy_TourDuLich].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLy_TourDuLich] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLy_TourDuLich] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLy_TourDuLich]
GO
/****** Object:  Table [dbo].[ChiTiet_DatTour]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DatTour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoNguoiDat] [int] NULL,
	[DiemXuatPhat] [nvarchar](50) NULL,
	[Tour_id] [int] NULL,
	[DatTour_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [int] NULL,
	[Tour_id] [int] NULL,
	[NoiDung] [text] NULL,
	[Vote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatTour]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatTour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[GhiChu] [text] NULL,
	[TrangThai] [int] NULL,
	[User_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [text] NULL,
	[NgayPhanHoi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HuongDanVien]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HuongDanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image_Tour]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Tour_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Password] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai_Tour]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong_HuongDanVien]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong_HuongDanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Tour_id] [int] NULL,
	[HuongDanVien_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DatTour_id] [int] NULL,
	[NgayThanhToan] [datetime] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 26/07/2024 11:26:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[TieuDe] [nvarchar](50) NULL,
	[MoTa] [text] NULL,
	[LichTrinh] [text] NULL,
	[DiemKhoiHanh] [nvarchar](50) NULL,
	[DiemDen] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
	[NgayKhoiHanh] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[SoLuongCon] [int] NULL,
	[Loai_Tour_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [Name]) VALUES (1, N'Quản lý')
INSERT [dbo].[Role] ([id], [Name]) VALUES (2, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[Role] OFF
ALTER TABLE [dbo].[ChiTiet_DatTour]  WITH CHECK ADD FOREIGN KEY([DatTour_id])
REFERENCES [dbo].[DatTour] ([id])
GO
ALTER TABLE [dbo].[ChiTiet_DatTour]  WITH CHECK ADD FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([User_id])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[DatTour]  WITH CHECK ADD FOREIGN KEY([User_id])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[Image_Tour]  WITH CHECK ADD FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[PhanCong_HuongDanVien]  WITH CHECK ADD FOREIGN KEY([HuongDanVien_id])
REFERENCES [dbo].[HuongDanVien] ([id])
GO
ALTER TABLE [dbo].[PhanCong_HuongDanVien]  WITH CHECK ADD FOREIGN KEY([Tour_id])
REFERENCES [dbo].[Tour] ([id])
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD FOREIGN KEY([DatTour_id])
REFERENCES [dbo].[DatTour] ([id])
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD FOREIGN KEY([Loai_Tour_id])
REFERENCES [dbo].[Loai_Tour] ([id])
GO
USE [master]
GO
ALTER DATABASE [QuanLy_TourDuLich] SET  READ_WRITE 
GO
