USE [master]
GO
/****** Object:  Database [4_IS_1_Ermolaev_Bashkiria]    Script Date: 16.04.2022 13:12:47 ******/
CREATE DATABASE [4_IS_1_Ermolaev_Bashkiria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'4_IS_1_Ermolaev_Bashkiria', FILENAME = N'D:\MSSQL\4_IS_1_Ermolaev_Bashkiria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'4_IS_1_Ermolaev_Bashkiria_log', FILENAME = N'D:\MSSQL\4_IS_1_Ermolaev_Bashkiria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [4_IS_1_Ermolaev_Bashkiria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ARITHABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET  MULTI_USER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET QUERY_STORE = OFF
GO
USE [4_IS_1_Ermolaev_Bashkiria]
GO
/****** Object:  Table [dbo].[co_executors]    Script Date: 16.04.2022 13:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[co_executors](
	[co_executor_id] [int] IDENTITY(4000,1) NOT NULL,
	[program_id] [int] NULL,
	[executor_id] [int] NULL,
 CONSTRAINT [PK_co_executors] PRIMARY KEY CLUSTERED 
(
	[co_executor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[executors]    Script Date: 16.04.2022 13:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[executors](
	[executor_id] [int] IDENTITY(2000,1) NOT NULL,
	[executor_name] [varchar](100) NULL,
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_executors] PRIMARY KEY CLUSTERED 
(
	[executor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[programs]    Script Date: 16.04.2022 13:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programs](
	[program_id] [int] IDENTITY(10000,1) NOT NULL,
	[program_name] [varchar](150) NULL,
	[period_begin] [date] NULL,
	[executor_id] [int] NULL,
	[period_end] [date] NULL,
 CONSTRAINT [PK_gos_programs] PRIMARY KEY CLUSTERED 
(
	[program_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subprograms]    Script Date: 16.04.2022 13:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subprograms](
	[subprogram_id] [int] IDENTITY(3000,1) NOT NULL,
	[program_id] [int] NULL,
	[subprogram_name] [varchar](150) NULL,
 CONSTRAINT [PK_subprograms] PRIMARY KEY CLUSTERED 
(
	[subprogram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[co_executors] ON 

INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4000, 10000, 2007)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4001, 10000, 2005)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4002, 10000, 2006)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4003, 10001, 2008)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4004, 10002, 2009)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4005, 10002, 2010)
INSERT [dbo].[co_executors] ([co_executor_id], [program_id], [executor_id]) VALUES (4006, 10002, 2011)
SET IDENTITY_INSERT [dbo].[co_executors] OFF
GO
SET IDENTITY_INSERT [dbo].[executors] ON 

INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2000, N'Государственный комитет Республики Башкортостан по туризму', N'goskom', N'goskom')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2005, N'Министерство сельского хозяйства Республики Башкортостан', N'minselhos', N'minselhos')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2006, N'Министерство природопользования и экологии Республики Башкортостан', N'minpriroda', N'minpriroda')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2007, N'Управление делами Главы Республики Башкортостан', N'uprdel', N'uprdel')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2008, N'Управление ветеринарии Республики Башкортостан', N'veteraniya', N'veteraniya')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2009, N'Министерство здравоохранения Республики Башкортостан', N'minzdrav', N'minzdrav')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2010, N'Министерство образования и науки Республики Башкортостан', N'minobrnauki', N'minobrnauki')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2011, N'Министерство культуры Республики Башкортостан', N'minkult', N'minkult')
INSERT [dbo].[executors] ([executor_id], [executor_name], [login], [password]) VALUES (2020, N'', N'sdfasdfdsfdsf', N'sdf1dsfdsfd&G')
SET IDENTITY_INSERT [dbo].[executors] OFF
GO
SET IDENTITY_INSERT [dbo].[programs] ON 

INSERT [dbo].[programs] ([program_id], [program_name], [period_begin], [executor_id], [period_end]) VALUES (10000, N'Развитие внутреннего и въездного туризма в Республике Башкортостан', CAST(N'2018-01-01' AS Date), 2000, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[programs] ([program_id], [program_name], [period_begin], [executor_id], [period_end]) VALUES (10001, N'Развитие сельского хозяйства и регулирование рынков сельскохозяйственной продукции, сырья и продовольствия в Республике Башкортостан', CAST(N'2021-01-01' AS Date), 2005, CAST(N'2026-01-01' AS Date))
INSERT [dbo].[programs] ([program_id], [program_name], [period_begin], [executor_id], [period_end]) VALUES (10002, N'Комплексное развитие сельских территорий Республики Башкортостан', CAST(N'2020-01-01' AS Date), 2005, CAST(N'2025-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[programs] OFF
GO
SET IDENTITY_INSERT [dbo].[subprograms] ON 

INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3000, 10000, N'формирование и развитие туристско-рекреационных кластеров на территории Республики Башкортостан')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3001, 10000, N'формирование и продвижение туристского продукта Республики Башкортостан на внутреннем и мировом туристских рынках')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3002, 10001, N'развитие мелиорации земель сельскохозяйственного назначения в Республике Башкортостан')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3003, 10001, N'поддержка малых форм хозяйствования и развитие сельской кооперации')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3004, 10002, N'создание условий для обеспечения доступным и комфортным жильем сельского населения Республики Башкортостан')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3005, 10002, N'создание и развитие инфраструктуры на сельских территориях Республики Башкортостан')
INSERT [dbo].[subprograms] ([subprogram_id], [program_id], [subprogram_name]) VALUES (3013, 10001, N'развитие отраслей агропромышленного комплекса')
SET IDENTITY_INSERT [dbo].[subprograms] OFF
GO
ALTER TABLE [dbo].[co_executors]  WITH CHECK ADD  CONSTRAINT [FK_co_executors_executors1] FOREIGN KEY([executor_id])
REFERENCES [dbo].[executors] ([executor_id])
GO
ALTER TABLE [dbo].[co_executors] CHECK CONSTRAINT [FK_co_executors_executors1]
GO
ALTER TABLE [dbo].[co_executors]  WITH CHECK ADD  CONSTRAINT [FK_co_executors_programs] FOREIGN KEY([program_id])
REFERENCES [dbo].[programs] ([program_id])
GO
ALTER TABLE [dbo].[co_executors] CHECK CONSTRAINT [FK_co_executors_programs]
GO
ALTER TABLE [dbo].[programs]  WITH CHECK ADD  CONSTRAINT [FK_programs_executors] FOREIGN KEY([executor_id])
REFERENCES [dbo].[executors] ([executor_id])
GO
ALTER TABLE [dbo].[programs] CHECK CONSTRAINT [FK_programs_executors]
GO
ALTER TABLE [dbo].[subprograms]  WITH CHECK ADD  CONSTRAINT [FK_subprograms_programs] FOREIGN KEY([program_id])
REFERENCES [dbo].[programs] ([program_id])
GO
ALTER TABLE [dbo].[subprograms] CHECK CONSTRAINT [FK_subprograms_programs]
GO
USE [master]
GO
ALTER DATABASE [4_IS_1_Ermolaev_Bashkiria] SET  READ_WRITE 
GO
