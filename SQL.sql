USE [master]
GO
/****** Object:  Database [4_IS_1_Ermolaev_Avtoprokat]    Script Date: 14.04.2022 16:59:41 ******/
CREATE DATABASE [4_IS_1_Ermolaev_Avtoprokat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'4_IS_1_Ermmolaev_Avtoprokat', FILENAME = N'D:\MSSQL\4_IS_1_Ermmolaev_Avtoprokat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'4_IS_1_Ermmolaev_Avtoprokat_log', FILENAME = N'D:\MSSQL\4_IS_1_Ermmolaev_Avtoprokat_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [4_IS_1_Ermolaev_Avtoprokat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ARITHABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  MULTI_USER 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET QUERY_STORE = OFF
GO
USE [4_IS_1_Ermolaev_Avtoprokat]
GO
/****** Object:  Table [dbo].[car]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[car](
	[car_id] [int] IDENTITY(30000,1) NOT NULL,
	[model_id] [int] NULL,
	[year_issue] [int] NULL,
	[price] [decimal](15, 2) NULL,
 CONSTRAINT [PK_car] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount](
	[disc_id] [int] IDENTITY(1000,1) NOT NULL,
	[disc_percent] [decimal](2, 2) NULL,
	[disc_condition] [decimal](15, 2) NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[disc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[make_car]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[make_car](
	[make_id] [int] IDENTITY(10000,1) NOT NULL,
	[make_name] [varchar](25) NULL,
 CONSTRAINT [PK_make_car] PRIMARY KEY CLUSTERED 
(
	[make_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[model_car]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[model_car](
	[model_id] [int] IDENTITY(20000,1) NOT NULL,
	[make_id] [int] NULL,
	[model_name] [varchar](50) NULL,
 CONSTRAINT [PK_model_car] PRIMARY KEY CLUSTERED 
(
	[model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registration_plates]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registration_plates](
	[reg_id] [int] IDENTITY(300000,1) NOT NULL,
	[car_id] [int] NULL,
	[reg_plates] [varchar](10) NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_registration_plates] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rental_car]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rental_car](
	[rental_id] [int] IDENTITY(200000,1) NOT NULL,
	[renter_id] [int] NULL,
	[reg_id] [int] NULL,
	[pickup_date] [date] NULL,
	[dropoff_date] [date] NULL,
	[disc_id] [int] NULL,
	[amount] [decimal](15, 2) NULL,
 CONSTRAINT [PK_rental_car] PRIMARY KEY CLUSTERED 
(
	[rental_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renter]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renter](
	[renter_id] [int] IDENTITY(100000,1) NOT NULL,
	[first_name] [varchar](25) NULL,
	[last_name] [varchar](25) NULL,
	[middle_name] [varchar](25) NULL,
	[license_num] [bigint] NULL,
	[phone] [bigint] NULL,
	[res_address] [varchar](200) NULL,
 CONSTRAINT [PK_renter] PRIMARY KEY CLUSTERED 
(
	[renter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 14.04.2022 16:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[status] [int] IDENTITY(400,1) NOT NULL,
	[status_name] [varchar](20) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[car]  WITH CHECK ADD  CONSTRAINT [FK_car_model_car] FOREIGN KEY([model_id])
REFERENCES [dbo].[model_car] ([model_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[car] CHECK CONSTRAINT [FK_car_model_car]
GO
ALTER TABLE [dbo].[model_car]  WITH CHECK ADD  CONSTRAINT [FK_model_car_make_car] FOREIGN KEY([make_id])
REFERENCES [dbo].[make_car] ([make_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[model_car] CHECK CONSTRAINT [FK_model_car_make_car]
GO
ALTER TABLE [dbo].[registration_plates]  WITH CHECK ADD  CONSTRAINT [FK_registration_plates_car] FOREIGN KEY([car_id])
REFERENCES [dbo].[car] ([car_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[registration_plates] CHECK CONSTRAINT [FK_registration_plates_car]
GO
ALTER TABLE [dbo].[registration_plates]  WITH CHECK ADD  CONSTRAINT [FK_registration_plates_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([status])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[registration_plates] CHECK CONSTRAINT [FK_registration_plates_status]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_discount] FOREIGN KEY([disc_id])
REFERENCES [dbo].[discount] ([disc_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_discount]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_registration_plates] FOREIGN KEY([reg_id])
REFERENCES [dbo].[registration_plates] ([reg_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_registration_plates]
GO
ALTER TABLE [dbo].[rental_car]  WITH CHECK ADD  CONSTRAINT [FK_rental_car_renter] FOREIGN KEY([renter_id])
REFERENCES [dbo].[renter] ([renter_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[rental_car] CHECK CONSTRAINT [FK_rental_car_renter]
GO
USE [master]
GO
ALTER DATABASE [4_IS_1_Ermolaev_Avtoprokat] SET  READ_WRITE 
GO
