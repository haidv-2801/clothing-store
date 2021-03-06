USE [master]
GO
/****** Object:  Database [ClothingStore_LASTEAST]    Script Date: 12/5/2021 9:44:37 PM ******/
CREATE DATABASE [ClothingStore_LASTEAST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingStore_LASTEAST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ClothingStore_LASTEAST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ClothingStore_LASTEAST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ClothingStore_LASTEAST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClothingStore_LASTEAST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET  MULTI_USER 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET QUERY_STORE = OFF
GO
USE [ClothingStore_LASTEAST]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[OrderBy] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Brand__3214EC072F1F38A3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[OrderBy] [int] NULL,
	[Description] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Category__3214EC07AC5AD897] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Value] [nvarchar](250) NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigProduct]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SizeId] [int] NULL,
	[ColorId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[Address] [nvarchar](250) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Customer__3214EC07B936F3D5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Avatar] [nvarchar](max) NULL,
	[BirthDay] [datetime] NULL,
	[IdCard] [nvarchar](250) NULL,
	[Phone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](500) NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](4000) NULL,
	[IsAdmin] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Employee__3214EC074302899F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[Note] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportDetail]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImportId] [int] NULL,
	[ConfigProductId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[CustomerId] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Address] [nvarchar](4000) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ConfigProductId] [int] NULL,
	[Stock] [int] NULL,
	[Price] [decimal](10, 0) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Slug] [nvarchar](250) NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](4000) NULL,
	[Content] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK__Product__3214EC07614E2ECC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 12/5/2021 9:44:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[SubName] [nvarchar](250) NULL,
	[Link] [nvarchar](500) NULL,
	[Image] [nvarchar](500) NULL,
	[OrderBy] [int] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Nike', N'juno', N'/Image/Upload/20210511161324banner-03.jpg', 1, N'Thương hiệu thời trang cao cấp', 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 2, CAST(N'2021-05-11T16:13:34.633' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Adidas', N'elise', N'/Image/Upload/20210511161324banner-03.jpg', 2, N'Thương hiệu thời trang phái nữ', NULL, CAST(N'2021-05-06T10:44:10.207' AS DateTime), 2, CAST(N'2021-05-11T16:13:40.907' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Supreme', N'chung', N'~/Image/Static/avatar.jpg', 1, N'okok', NULL, CAST(N'2021-05-06T10:46:37.557' AS DateTime), NULL, CAST(N'2021-05-06T10:46:38.273' AS DateTime), 1, 1)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Vans', N'ivy-moda', N'/Image/Upload/20210511161324banner-03.jpg', 3, N'Thương hiệu thời trang cao cấp', NULL, CAST(N'2021-05-06T10:51:25.190' AS DateTime), 2, CAST(N'2021-05-11T16:13:47.200' AS DateTime), 1, 0)
INSERT [dbo].[Brand] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Converse', N'owen', N'/Image/Upload/20210511161324banner-03.jpg', 4, N'Thương hiệu thời trang nam', NULL, CAST(N'2021-05-06T10:52:32.133' AS DateTime), 2, CAST(N'2021-05-11T16:13:52.457' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'T-Shirts', N't-shirts', N'/Image/Upload/20210509122559ao13.jpg', 1, N'Áo phông oversize', 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 2, CAST(N'2021-05-09T12:26:46.080' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Shirts', N'shirts', N'/Image/Upload/20210509085616ao8.jpg', 2, N'Áo sơ mi phong cách Hàn Quốc', 2, CAST(N'2021-05-09T09:56:05.540' AS DateTime), 2, CAST(N'2021-05-09T13:11:11.873' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Dress', N'dress', N'/Image/Upload/20210509095654vay6.jpg', 3, N'Váy liền thân', 2, CAST(N'2021-05-09T09:57:24.213' AS DateTime), 2, CAST(N'2021-05-09T13:12:23.857' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Skirt', N'skirt', N'/Image/Upload/20210509095813chanvay8.jpg', 4, N'Chân váy phong cách Hàn Quốc', 2, CAST(N'2021-05-09T09:58:39.567' AS DateTime), 2, CAST(N'2021-05-09T13:13:09.833' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Shorts', N'shorts', N'/Image/Upload/20210509131423quan1.jpg', 5, N'Quần short', 2, CAST(N'2021-05-09T13:14:48.873' AS DateTime), NULL, CAST(N'2021-05-09T13:14:48.877' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'Vests', N'vests', N'/Image/Upload/20210509131749aogile3.jpg', 6, N'Áo gi lê', 2, CAST(N'2021-05-09T13:18:18.383' AS DateTime), NULL, CAST(N'2021-05-09T13:18:18.393' AS DateTime), 1, 0)
INSERT [dbo].[Category] ([Id], [Name], [Slug], [Image], [OrderBy], [Description], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (7, N'Jeans', N'jeans', N'/Image/Upload/20210509132136jeans4.jpg', 7, N'Quần jeans mềm mại', 2, CAST(N'2021-05-09T13:22:40.233' AS DateTime), NULL, CAST(N'2021-05-09T13:22:40.230' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'White', N'#fff', 1, 2, CAST(N'2021-05-09T09:08:01.927' AS DateTime), 2, CAST(N'2021-05-11T16:49:21.543' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Beige', N'#f59342', 2, 2, CAST(N'2021-05-09T13:04:47.190' AS DateTime), 2, CAST(N'2021-05-11T16:49:55.397' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Grey', N'#b0aba7', 3, 2, CAST(N'2021-05-09T13:05:08.007' AS DateTime), 2, CAST(N'2021-05-11T16:50:08.193' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Sky blue', N' #549ee3', 4, 2, CAST(N'2021-05-09T13:05:24.377' AS DateTime), 2, CAST(N'2021-05-11T16:50:30.070' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Pink', N'#f57aed', 5, 2, CAST(N'2021-05-09T13:05:41.927' AS DateTime), 2, CAST(N'2021-05-11T16:50:44.667' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'Yellow', N'#f5da7a', 6, 2, CAST(N'2021-05-09T13:06:04.837' AS DateTime), 2, CAST(N'2021-05-11T16:50:56.657' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (7, N'Orange', N'#f5b37a', 7, 2, CAST(N'2021-05-09T13:06:26.823' AS DateTime), 2, CAST(N'2021-05-11T16:51:20.130' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (8, N'Black', N'#000', 8, 2, CAST(N'2021-05-09T13:06:45.157' AS DateTime), 2, CAST(N'2021-05-11T16:51:26.737' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (9, N'Brown', N'#7a583b', 9, 2, CAST(N'2021-05-09T13:07:01.620' AS DateTime), 2, CAST(N'2021-05-11T16:51:43.497' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (10, N'Navy', N'#1e2d8a', 10, 2, CAST(N'2021-05-09T13:07:17.420' AS DateTime), 2, CAST(N'2021-05-11T16:51:57.737' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (11, N'Green', N'#32a66a', 11, 2, CAST(N'2021-05-09T13:07:33.987' AS DateTime), 2, CAST(N'2021-05-11T16:52:10.657' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (12, N'Red', N'#a63232', 12, 2, CAST(N'2021-05-09T13:07:45.427' AS DateTime), 2, CAST(N'2021-05-11T16:52:24.973' AS DateTime), 1, 0)
INSERT [dbo].[Color] ([Id], [Name], [Value], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (13, N'Purple', N'#8d3d99', 13, 2, CAST(N'2021-05-09T13:08:01.043' AS DateTime), 2, CAST(N'2021-05-11T16:52:40.287' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[ConfigProduct] ON 

INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (21, 5, 1, 1, 4, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:04:42.690' AS DateTime), NULL, CAST(N'2021-05-09T14:04:42.690' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (22, 5, 1, 3, 7, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:04:42.690' AS DateTime), NULL, CAST(N'2021-05-09T14:04:42.690' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (23, 6, 1, 3, 7, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (24, 6, 1, 1, 4, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (25, 6, 1, 4, 2, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), NULL, CAST(N'2021-05-09T14:04:56.220' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (26, 7, 4, 2, 10, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:24:17.413' AS DateTime), NULL, CAST(N'2021-05-09T14:24:17.413' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (32, 8, 4, 2, 10, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:25:53.800' AS DateTime), NULL, CAST(N'2021-05-09T14:25:53.800' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (33, 8, 3, 1, 5, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:25:53.800' AS DateTime), NULL, CAST(N'2021-05-09T14:25:53.800' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (34, 9, 4, 13, 3, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (35, 9, 4, 2, 10, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (36, 9, 3, 1, 5, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), NULL, CAST(N'2021-05-09T14:26:05.920' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (37, 10, 4, 2, 6, CAST(220000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:28:39.767' AS DateTime), NULL, CAST(N'2021-05-09T14:28:39.767' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (38, 11, 1, 1, 3, CAST(250000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:32:08.743' AS DateTime), NULL, CAST(N'2021-05-09T14:32:08.743' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (39, 12, 1, 4, 2, CAST(250000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:32:40.193' AS DateTime), NULL, CAST(N'2021-05-09T14:32:40.193' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (40, 12, 1, 1, 3, CAST(250000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:32:40.200' AS DateTime), NULL, CAST(N'2021-05-09T14:32:40.200' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (44, 13, 1, 1, 7, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:35:05.300' AS DateTime), NULL, CAST(N'2021-05-09T14:35:05.300' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (45, 14, 1, 1, 7, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:35:20.230' AS DateTime), NULL, CAST(N'2021-05-09T14:35:20.230' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (46, 14, 1, 8, 6, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:35:20.230' AS DateTime), NULL, CAST(N'2021-05-09T14:35:20.230' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (47, 15, 4, 8, 3, CAST(170000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:38:11.100' AS DateTime), NULL, CAST(N'2021-05-09T14:38:11.100' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (48, 16, 4, 8, 6, CAST(170000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:38:32.763' AS DateTime), NULL, CAST(N'2021-05-09T14:38:32.763' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (51, 17, 4, 1, 4, CAST(170000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:39:54.313' AS DateTime), NULL, CAST(N'2021-05-09T14:39:54.313' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (52, 18, 4, 2, 2, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:41:19.780' AS DateTime), NULL, CAST(N'2021-05-09T14:41:19.780' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (53, 19, 4, 8, 3, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:45:13.480' AS DateTime), NULL, CAST(N'2021-05-09T14:45:13.480' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (54, 20, 3, 8, 2, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:45:35.817' AS DateTime), NULL, CAST(N'2021-05-09T14:45:35.817' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (55, 20, 4, 8, 3, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:45:35.820' AS DateTime), NULL, CAST(N'2021-05-09T14:45:35.820' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (56, 21, 4, 2, 4, CAST(160000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:46:41.913' AS DateTime), NULL, CAST(N'2021-05-09T14:46:41.913' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (57, 22, 4, 8, 4, CAST(300000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:48:53.073' AS DateTime), NULL, CAST(N'2021-05-09T14:48:53.073' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (58, 23, 4, 4, 3, CAST(250000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:50:04.963' AS DateTime), NULL, CAST(N'2021-05-09T14:50:04.963' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (60, 1, 1, 4, 5, CAST(150000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-11T16:54:13.377' AS DateTime), NULL, CAST(N'2021-05-11T16:54:13.377' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (61, 2, 5, 5, 5, CAST(155000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-11T16:55:36.857' AS DateTime), NULL, CAST(N'2021-05-11T16:55:36.857' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (62, 3, 4, 1, 10, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-11T16:55:55.373' AS DateTime), NULL, CAST(N'2021-05-11T16:55:55.373' AS DateTime), 1, 0)
INSERT [dbo].[ConfigProduct] ([Id], [ProductId], [SizeId], [ColorId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (63, 4, 1, 1, 4, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-11T16:56:26.750' AS DateTime), NULL, CAST(N'2021-05-11T16:56:26.750' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[ConfigProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Khuất văn Chung', N'0962165255', N'anhlt.gtvt@gmail.com', NULL, N'hà Nội', 1, CAST(N'2021-05-08T15:13:51.053' AS DateTime), NULL, CAST(N'2021-05-08T15:13:51.503' AS DateTime), 1, 1)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Khuất Văn Chung', N'0792847346', N'khuatchung1012@gmail.com', N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', N'Hà Nội', 2, CAST(N'2021-05-09T08:41:12.970' AS DateTime), 2, CAST(N'2021-05-12T13:52:14.767' AS DateTime), 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Nguyễn Văn Linh', N'0938756734', N'Linh@gmail.com', NULL, N'Khánh Hòa', 2, CAST(N'2021-05-09T08:44:43.380' AS DateTime), NULL, CAST(N'2021-05-09T08:44:43.400' AS DateTime), 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Trần Quốc Cường', N'0937487562', N'Cuong@gmail.com', NULL, N'Thái Bình', 2, CAST(N'2021-05-09T08:45:33.760' AS DateTime), NULL, CAST(N'2021-05-09T08:45:33.793' AS DateTime), 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Mai Văn Tài', N'0289478454', N'MaiTai@gmail.com', NULL, N'Hà Nội', 2, CAST(N'2021-05-09T08:46:23.597' AS DateTime), NULL, CAST(N'2021-05-09T08:46:23.610' AS DateTime), 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'Lê Thị Lệ', N'0983784563', N'Le@gmail.com', NULL, N'Ninh Bình', 2, CAST(N'2021-05-09T08:47:41.263' AS DateTime), 2, CAST(N'2021-05-09T08:52:38.997' AS DateTime), 0, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (7, N'Mai Âm Nhạc', N'0937845743', N'maian@gmail.com', NULL, N'Hà Nội', 2, CAST(N'2021-05-09T08:48:38.633' AS DateTime), NULL, CAST(N'2021-05-09T08:48:38.647' AS DateTime), 1, 0)
INSERT [dbo].[Customer] ([Id], [Name], [Phone], [Email], [Password], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (8, N'Trần Minh Tuấn', N'0987456932', N'Tuan@gmail.com', NULL, N'Tp.Hồ Chí Minh', 2, CAST(N'2021-05-09T08:50:04.817' AS DateTime), NULL, CAST(N'2021-05-09T08:50:04.830' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Anh', NULL, CAST(N'1996-04-03T00:00:00.000' AS DateTime), N'12111', N'0962615522', N'anh@gmail.com', N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', N'Hà Nội', NULL, 0, 1, CAST(N'2021-03-03T00:00:00.000' AS DateTime), NULL, CAST(N'2021-05-09T15:03:01.940' AS DateTime), 1, 0)
INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Khuất văn Chung', NULL, CAST(N'2000-04-02T00:00:00.000' AS DateTime), N'12112', N'0962165244', N'khuatchung1012@gmail.com', N'240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', N'Hà Nội', NULL, 1, 1, CAST(N'2021-05-09T08:29:50.380' AS DateTime), NULL, CAST(N'2021-05-11T17:32:37.570' AS DateTime), 0, 0)
INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Trần Thi Vũ', NULL, CAST(N'1999-02-02T00:00:00.000' AS DateTime), N'12113', N'0986386632', N'Vu@gmail.com', N'123', N'Hà Nội ', NULL, 0, 1, CAST(N'2021-05-09T14:57:35.127' AS DateTime), NULL, CAST(N'2021-05-09T14:57:35.127' AS DateTime), NULL, NULL)
INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Trần Thi Vũ', N'/Image/Static/no-image.jpg', CAST(N'1994-10-09T00:00:00.000' AS DateTime), N'09775534', N'0987665454', N'Vu@gmail.com', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', N'Hà Nội', NULL, 1, NULL, CAST(N'2021-05-09T15:09:02.233' AS DateTime), NULL, CAST(N'2021-05-09T15:11:39.283' AS DateTime), 0, 0)
INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Khuất Văn Chung', NULL, CAST(N'2021-05-12T00:00:00.000' AS DateTime), NULL, N'0962165244', N'khuatchung1012@gmail.com', N'a43a4deede5ad056e992f7d1cf64624c666bfa9ec767955a84cc75060c5f1e92', NULL, NULL, NULL, NULL, CAST(N'2021-05-12T12:17:50.893' AS DateTime), NULL, CAST(N'2021-05-12T12:17:51.067' AS DateTime), NULL, 0)
INSERT [dbo].[Employee] ([Id], [Name], [Avatar], [BirthDay], [IdCard], [Phone], [Email], [Password], [Address], [Note], [IsAdmin], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'Khuất Văn Chung', NULL, CAST(N'2021-05-12T00:00:00.000' AS DateTime), NULL, N'0962165244', N'khuatchung1012@gmail.com', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, NULL, NULL, NULL, CAST(N'2021-05-12T12:58:32.323' AS DateTime), NULL, CAST(N'2021-05-12T12:58:32.480' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, 2, 5, N'Ship code', N'Hà Nội', 2, CAST(N'2021-05-09T14:51:48.513' AS DateTime), 2, CAST(N'2021-05-09T14:51:48.550' AS DateTime), 0, 0)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, 2, 7, N'Ship code', N'Thái Bình', 2, CAST(N'2021-05-09T14:53:51.780' AS DateTime), 2, CAST(N'2021-05-09T14:53:51.803' AS DateTime), 0, 0)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, 2, 2, N'Ship code', N'Hà Nội', 2, CAST(N'2021-05-09T14:54:49.343' AS DateTime), 2, CAST(N'2021-05-09T14:54:49.347' AS DateTime), 1, 0)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, 2, 3, N'Ship code', N'Thanh Hóa', 2, CAST(N'2021-05-09T15:00:25.290' AS DateTime), 2, CAST(N'2021-05-09T15:00:25.283' AS DateTime), 1, 0)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, 2, 8, NULL, N'Tp.Hồ Chí Minh', 2, CAST(N'2021-05-09T15:11:06.283' AS DateTime), 2, CAST(N'2021-05-09T15:11:06.293' AS DateTime), 1, 0)
INSERT [dbo].[Order] ([Id], [EmployeeId], [CustomerId], [Note], [Address], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, 0, 2, NULL, N'Hà Nội', NULL, CAST(N'2021-05-12T13:26:25.880' AS DateTime), NULL, CAST(N'2021-05-12T13:26:25.880' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, 1, 44, 7, CAST(200000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:51:48.600' AS DateTime), NULL, CAST(N'2021-05-09T14:51:48.600' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, 2, 19, 10, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:53:51.810' AS DateTime), NULL, CAST(N'2021-05-09T14:53:51.810' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, 3, 53, 3, CAST(120000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T14:54:49.353' AS DateTime), NULL, CAST(N'2021-05-09T14:54:49.353' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, 4, 57, 4, CAST(300000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T15:00:25.290' AS DateTime), NULL, CAST(N'2021-05-09T15:00:25.290' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, 5, 58, 3, CAST(250000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-09T15:11:06.360' AS DateTime), NULL, CAST(N'2021-05-09T15:11:06.360' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, 6, 25, 1, CAST(140000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-12T13:26:25.967' AS DateTime), NULL, CAST(N'2021-05-12T13:26:25.967' AS DateTime), 1, 0)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ConfigProductId], [Stock], [Price], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (7, 6, 61, 1, CAST(155000 AS Decimal(10, 0)), NULL, CAST(N'2021-05-12T13:26:25.970' AS DateTime), NULL, CAST(N'2021-05-12T13:26:25.970' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Áo phông chữ', N'ao-phong-chu-to', N'/Image/Upload/product-09.jpg', N'oversize', N'<p>&Aacute;o ph&ocirc;ng oversize</p>
', 1, 1, 1, 1, CAST(N'2021-05-05T00:00:00.000' AS DateTime), 2, CAST(N'2021-05-11T16:54:13.347' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Áo phong chữ to', N'ao-phong-chu-to', N'/Image/Upload/product-09.jpg', N'Oversize', N'<p>&Aacute;o ph&ocirc;ng H&agrave;n Quốc đẹp</p>
', 1, 1, 2, 2, CAST(N'2021-05-09T13:36:25.163' AS DateTime), 2, CAST(N'2021-05-11T16:55:36.527' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'Áo phông trơn', N'ao-phong-tron', N'/Image/Upload/product-09.jpg', N'áo phông trơn ', N'<p>&Aacute;o ph&ocirc;ng trơn</p>
', 1, 2, 3, 2, CAST(N'2021-05-09T13:49:55.913' AS DateTime), 2, CAST(N'2021-05-11T16:55:55.350' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'Ao phong hình con mèo', N'ao-phong-hinh-con-meo', N'/Image/Upload/product-09.jpg', N'áo đẹp', N'<p>&Aacute;o đẹp</p>
', 1, 4, 5, 2, CAST(N'2021-05-09T14:00:54.430' AS DateTime), 2, CAST(N'2021-05-11T16:56:26.720' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'Ao phong hình con mèo', N'ao-phong-hinh-con-meo', N'/Image/Upload/product-09.jpg', N'áo đẹp', N'<p>&Aacute;o đẹp</p>
', 1, 4, 6, 2, CAST(N'2021-05-09T14:01:12.743' AS DateTime), 2, CAST(N'2021-05-09T14:04:42.663' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'Ao phong hình con mèo', N'ao-phong-hinh-con-meo', N'/Image/Upload/product-09.jpg', N'áo đẹp', N'<p>&Aacute;o đẹp</p>
', 1, 4, 7, 2, CAST(N'2021-05-09T14:01:28.547' AS DateTime), 2, CAST(N'2021-05-09T14:04:56.203' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (7, N'Áo sơ mi', N'ao-so-mi', N'/Image/Upload/product-09.jpg', N'Áo sơ mi cổ danton', N'<p>&Aacute;o sơ mi cổ danton</p>
', 2, 2, 8, 2, CAST(N'2021-05-09T14:24:17.073' AS DateTime), NULL, CAST(N'2021-05-09T14:24:17.290' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (8, N'Áo sơ mi', N'ao-so-mi', N'/Image/Upload/product-09.jpg', N'Áo sơ mi cổ danton', N'<p>&Aacute;o sơ mi cổ danton</p>
', 2, 2, 9, 2, CAST(N'2021-05-09T14:24:48.300' AS DateTime), 2, CAST(N'2021-05-09T14:25:53.733' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (9, N'Áo sơ mi', N'ao-so-mi', N'/Image/Upload/product-09.jpg', N'Áo sơ mi cổ danton', N'<p>&Aacute;o sơ mi cổ danton</p>
', 2, 2, 10, 2, CAST(N'2021-05-09T14:25:34.693' AS DateTime), 2, CAST(N'2021-05-09T14:26:05.883' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (10, N'Sơ mi cổ đứng', N'so-mi-co-dung', N'/Image/Upload/product-09.jpg', N'Áo sơ mi cổ đứng, dài tay', N'<p>&Aacute;o sơ mi cổ đứng, d&agrave;i tay</p>
', 2, 5, 11, 2, CAST(N'2021-05-09T14:28:39.737' AS DateTime), NULL, CAST(N'2021-05-09T14:28:39.747' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (11, N'Váy cổ vuông', N'vay-co-vuong', N'/Image/Upload/product-09.jpg', N'Váy cổ vuông ', N'<p>V&aacute;y cổ vu&ocirc;ng&nbsp;</p>
', 3, 4, 12, 2, CAST(N'2021-05-09T14:32:08.723' AS DateTime), NULL, CAST(N'2021-05-09T14:32:08.730' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (12, N'Váy cổ vuông', N'vay-co-vuong', N'/Image/Upload/product-09.jpg', N'Váy cổ vuông ', N'<p>V&aacute;y cổ vu&ocirc;ng&nbsp;</p>
', 3, 4, 13, 2, CAST(N'2021-05-09T14:32:40.177' AS DateTime), NULL, CAST(N'2021-05-09T14:32:40.177' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (13, N'Váy hai dây', N'vay-hai-day', N'/Image/Upload/product-09.jpg', N'Váy hai dây họa tiết hoa nhí', N'<p>V&aacute;y hai d&acirc;y họa tiết hoa nh&iacute;</p>
', 3, 2, 14, 2, CAST(N'2021-05-09T14:34:16.087' AS DateTime), 2, CAST(N'2021-05-09T14:35:05.280' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (14, N'Váy hai dây', N'vay-hai-day', N'/Image/Upload/product-09.jpg', N'Váy hai dây họa tiết hoa nhí', N'<p>V&aacute;y hai d&acirc;y họa tiết hoa nh&iacute;</p>
', 3, 2, 15, 2, CAST(N'2021-05-09T14:34:48.623' AS DateTime), 2, CAST(N'2021-05-09T14:35:20.210' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (15, N'Chân váy hoa', N'chan-vay-hoa', N'/Image/Upload/product-09.jpg', N'Chân váy họa tiết hoa dài', N'<p>Ch&acirc;n v&aacute;y họa tiết hoa d&agrave;i</p>
', 4, 5, 16, 2, CAST(N'2021-05-09T14:38:11.080' AS DateTime), NULL, CAST(N'2021-05-09T14:38:11.080' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (16, N'Chân váy hoa', N'chan-vay-hoa', N'/Image/Upload/product-09.jpg', N'Chân váy họa tiết hoa dài', N'<p>Ch&acirc;n v&aacute;y họa tiết hoa d&agrave;i</p>
', 4, 5, 17, 2, CAST(N'2021-05-09T14:38:32.750' AS DateTime), NULL, CAST(N'2021-05-09T14:38:32.750' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (17, N'Chân váy hoa', N'chan-vay-hoa', N'/Image/Upload/product-09.jpg', N'Chân váy họa tiết hoa dài', N'<p>Ch&acirc;n v&aacute;y họa tiết hoa d&agrave;i</p>
', 4, 5, 18, 2, CAST(N'2021-05-09T14:38:53.237' AS DateTime), 2, CAST(N'2021-05-09T14:39:54.297' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (18, N'Chân váy chữ A', N'chan-vay-chu-a', N'/Image/Upload/product-09.jpg', N'Chân váy chữ A chất liệu da', N'<p>Ch&acirc;n v&aacute;y chữ A chất liệu da</p>
', 4, 1, 19, 2, CAST(N'2021-05-09T14:41:19.757' AS DateTime), NULL, CAST(N'2021-05-09T14:41:19.767' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (19, N'Quần shorts vải', N'quan-shorts-vai', N'/Image/Upload/product-09.jpg', N'Quần shorts vải mát', N'<p>Quần shorts vải m&aacute;t</p>
', 5, 4, 20, 2, CAST(N'2021-05-09T14:45:13.467' AS DateTime), NULL, CAST(N'2021-05-09T14:45:13.463' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (20, N'Quần shorts vải', N'quan-shorts-vai', N'/Image/Upload/product-09.jpg', N'Quần shorts vải mát', N'<p>Quần shorts vải m&aacute;t</p>
', 5, 4, 21, 2, CAST(N'2021-05-09T14:45:35.807' AS DateTime), NULL, CAST(N'2021-05-09T14:45:35.807' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (21, N'Quần shorts ', N'quan-shorts', N'/Image/Upload/product-09.jpg', N'Quần có kèm thắt lưng', N'<p>Quần c&oacute; k&egrave;m thắt lưng</p>
', 5, 5, 22, 2, CAST(N'2021-05-09T14:46:41.890' AS DateTime), NULL, CAST(N'2021-05-09T14:46:41.907' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (22, N'Gile', N'gile', N'/Image/Upload/product-09.jpg', N'bộ gile gồm áo gile và chân váy', N'<p>bộ gile gồm &aacute;o gile v&agrave; ch&acirc;n v&aacute;y</p>
', 6, 4, 22, 2, CAST(N'2021-05-09T14:48:53.050' AS DateTime), NULL, CAST(N'2021-05-09T14:48:53.060' AS DateTime), 1, 0)
INSERT [dbo].[Product] ([Id], [Name], [Slug], [Image], [Description], [Content], [CategoryId], [BrandId], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (23, N'Quần ', N'quan', N'/Image/Upload/product-09.jpg', N'Quần jeans', N'<p>Quần jeans</p>
', 7, 5, 22, 2, CAST(N'2021-05-09T14:50:04.923' AS DateTime), NULL, CAST(N'2021-05-09T14:50:04.950' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (9, 5, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (10, 6, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (11, 7, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (12, 7, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (17, 8, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (18, 8, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (19, 9, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (20, 9, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (21, 10, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (22, 11, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (23, 11, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (24, 12, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (25, 12, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (30, 13, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (31, 13, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (32, 14, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (33, 14, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (34, 15, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (35, 15, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (36, 16, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (37, 16, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (40, 17, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (41, 17, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (42, 18, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (43, 19, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (44, 19, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (45, 20, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (46, 20, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (47, 21, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (48, 22, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (49, 23, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (54, 1, N'/Image/Upload/blog-03.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (55, 1, N'/Image/Upload/blog-02.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (56, 1, N'/Image/Upload/banner-02.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (57, 1, N'/Image/Upload/banner-01.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (58, 2, N'/Image/Upload/product-10.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (59, 2, N'/Image/Upload/product-11.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (60, 2, N'/Image/Upload/gallery-06.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (61, 3, N'/Image/Upload/product-min-01.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (62, 3, N'/Image/Upload/product-detail-03.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (63, 3, N'/Image/Upload/product-detail-02.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (64, 4, N'/Image/Upload/product-11.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (65, 4, N'/Image/Upload/product-09.jpg')
INSERT [dbo].[ProductImages] ([Id], [ProductId], [Image]) VALUES (66, 4, N'/Image/Upload/product-detail-01.jpg')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Oversize', 6, 2, CAST(N'2021-05-09T09:15:40.310' AS DateTime), 2, CAST(N'2021-05-09T12:58:01.010' AS DateTime), 1, 0)
INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'XS', 1, 2, CAST(N'2021-05-09T09:18:46.273' AS DateTime), 2, CAST(N'2021-05-09T09:29:10.053' AS DateTime), 1, 0)
INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (3, N'S', 2, 2, CAST(N'2021-05-09T09:30:00.103' AS DateTime), NULL, CAST(N'2021-05-09T09:30:00.117' AS DateTime), 1, 0)
INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (4, N'M', 3, 2, CAST(N'2021-05-09T09:30:18.053' AS DateTime), NULL, CAST(N'2021-05-09T09:30:18.057' AS DateTime), 1, 0)
INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (5, N'L', 4, 2, CAST(N'2021-05-09T09:30:32.483' AS DateTime), NULL, CAST(N'2021-05-09T09:30:32.490' AS DateTime), 1, 0)
INSERT [dbo].[Size] ([Id], [Name], [OrderBy], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status], [IsDeleted]) VALUES (6, N'XL', 5, 2, CAST(N'2021-05-09T09:30:45.700' AS DateTime), NULL, CAST(N'2021-05-09T09:30:45.700' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([Id], [Name], [SubName], [Link], [Image], [OrderBy], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Status], [IsDeleted]) VALUES (1, N'Converse ', N'Spring 2021', N'converse ', N'/Image/Upload/slide-02.jpg', 0, 2, NULL, CAST(N'2021-05-12T09:35:33.777' AS DateTime), NULL, 1, 0)
INSERT [dbo].[Slider] ([Id], [Name], [SubName], [Link], [Image], [OrderBy], [CreatedBy], [UpdatedBy], [CreatedDate], [UpdatedDate], [Status], [IsDeleted]) VALUES (2, N'Áo mùa hạ', N'Spring 2021', N'converse ', N'/Image/Upload/slide-03.jpg', 0, 2, NULL, CAST(N'2021-05-12T09:35:56.550' AS DateTime), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF__Brand__CreatedDa__2C3393D0]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Brand] ADD  CONSTRAINT [DF__Brand__UpdatedDa__2D27B809]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Create__300424B4]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Update__30F848ED]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ConfigProduct] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ConfigProduct] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__4316F928]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Update__440B1D61]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__Create__24927208]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF__Employee__Update__25869641]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Import] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Import] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[ImportDetail] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ImportDetail] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Created__3B75D760]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Updated__3C69FB99]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (getdate()) FOR [UpdatedDate]
GO
USE [master]
GO
ALTER DATABASE [ClothingStore_LASTEAST] SET  READ_WRITE 
GO
