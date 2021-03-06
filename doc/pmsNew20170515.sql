USE [master]
GO
/****** Object:  Database [pmsNew]    Script Date: 05/15/2017 11:48:08 ******/
CREATE DATABASE [pmsNew] ON  PRIMARY 
( NAME = N'pmsNew', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pmsNew.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pmsNew_log', FILENAME = N'D:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pmsNew_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pmsNew] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pmsNew].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pmsNew] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [pmsNew] SET ANSI_NULLS OFF
GO
ALTER DATABASE [pmsNew] SET ANSI_PADDING OFF
GO
ALTER DATABASE [pmsNew] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [pmsNew] SET ARITHABORT OFF
GO
ALTER DATABASE [pmsNew] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [pmsNew] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [pmsNew] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [pmsNew] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [pmsNew] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [pmsNew] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [pmsNew] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [pmsNew] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [pmsNew] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [pmsNew] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [pmsNew] SET  DISABLE_BROKER
GO
ALTER DATABASE [pmsNew] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [pmsNew] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [pmsNew] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [pmsNew] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [pmsNew] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [pmsNew] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [pmsNew] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [pmsNew] SET  READ_WRITE
GO
ALTER DATABASE [pmsNew] SET RECOVERY FULL
GO
ALTER DATABASE [pmsNew] SET  MULTI_USER
GO
ALTER DATABASE [pmsNew] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [pmsNew] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'pmsNew', N'ON'
GO
USE [pmsNew]
GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[F_Id] [varchar](50) NOT NULL,
	[F_Account] [varchar](50) NULL,
	[F_RealName] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_HeadIcon] [varchar](50) NULL,
	[F_Gender] [bit] NULL,
	[F_Birthday] [datetime] NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_ManagerId] [varchar](300) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [varchar](500) NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_DepartmentId] [varchar](500) NULL,
	[F_RoleId] [varchar](500) NULL,
	[F_DutyId] [varchar](500) NULL,
	[F_IsAdministrator] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[F_Id] [varchar](50) NOT NULL,
	[F_Date] [datetime] NULL,
	[F_Account] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_IPAddress] [varchar](50) NULL,
	[F_IPAddressName] [varchar](50) NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ModuleName] [varchar](50) NULL,
	[F_Result] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [varchar](50) NOT NULL,
	[F_BackupType] [varchar](50) NULL,
	[F_DbName] [varchar](50) NULL,
	[F_FileName] [varchar](50) NULL,
	[F_FileSize] [varchar](50) NULL,
	[F_FilePath] [varchar](500) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_AssetCode]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_AssetCode](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Name] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_Level] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rule_AssetSequence]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rule_AssetSequence](
	[SeqCode] [varchar](50) NOT NULL,
	[Descr] [varchar](60) NULL,
	[NowSeqValue] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_StockOut]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_StockOut](
	[F_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[F_AttributeId] [varchar](50) NOT NULL,
	[F_StockOutDate] [datetime] NULL,
	[F_IsFixed] [varchar](50) NULL,
	[F_Operator] [varchar](50) NULL,
	[F_Approver] [varchar](50) NULL,
	[F_Accepter] [varchar](50) NULL,
	[F_Keeper] [varchar](50) NULL,
	[F_ListNum] [varchar](50) NULL,
	[F_AddDate] [datetime] NULL,
	[F_Images] [varchar](2000) NULL,
	[F_StockOutPrice] [varchar](50) NULL,
	[F_StockPlace] [varchar](50) NULL,
	[F_BusiDepartId] [varchar](50) NULL,
	[F_DepartId] [varchar](50) NULL,
	[F_UserId] [varchar](50) NULL,
	[F_AssetState] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_StockIn]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_StockIn](
	[F_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[F_AttributeId] [varchar](50) NULL,
	[F_StockInDate] [datetime] NULL,
	[F_Operator] [varchar](50) NULL,
	[F_Approver] [varchar](50) NULL,
	[F_Accepter] [varchar](50) NULL,
	[F_Keeper] [varchar](50) NULL,
	[F_ListNum] [varchar](50) NULL,
	[F_AddDate] [datetime] NULL,
	[F_Images] [varchar](2000) NULL,
	[F_DestStore] [varchar](50) NULL,
	[F_StockInPrice] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_Scrap]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_Scrap](
	[F_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[F_AttributeId] [varchar](50) NULL,
	[F_ScrapDate] [datetime] NULL,
	[F_Operator] [varchar](50) NULL,
	[F_Approver] [varchar](50) NULL,
	[F_Accepter] [varchar](50) NULL,
	[F_Keeper] [varchar](50) NULL,
	[F_ListNum] [varchar](50) NULL,
	[F_AddDate] [datetime] NULL,
	[F_Images] [varchar](2000) NULL,
	[F_ScrapValue] [varchar](50) NULL,
	[F_ScrapReason] [varchar](50) NULL,
	[F_ScrapDest] [varchar](50) NULL,
	[F_AssetState] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_Register]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_Register](
	[F_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[F_PurchaseDate] [datetime] NULL,
	[F_Operator] [varchar](50) NULL,
	[F_Approver] [varchar](50) NULL,
	[F_Accepter] [varchar](50) NULL,
	[F_Keeper] [varchar](50) NULL,
	[F_ContractId] [varchar](50) NULL,
	[F_AddDate] [datetime] NULL,
	[F_Images] [varchar](2000) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_OpBox]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_OpBox](
	[F_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[F_AssetId] [varchar](50) NOT NULL,
	[F_SizeId] [varchar](50) NOT NULL,
	[F_UserId] [varchar](50) NOT NULL,
	[F_Type] [varchar](50) NOT NULL,
	[F_CreateTime] [datetime] NOT NULL,
	[F_IsFixedBox] [varchar](50) NULL,
	[F_DestStoreBox] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_Changes]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_Changes](
	[F_Id] [bigint] NOT NULL,
	[F_AttributeId] [varchar](50) NULL,
	[F_ChangeDate] [datetime] NULL,
	[F_Operator] [varchar](50) NULL,
	[F_Approver] [varchar](50) NULL,
	[F_Accepter] [varchar](50) NULL,
	[F_Keeper] [varchar](50) NULL,
	[F_ListNum] [varchar](50) NULL,
	[F_AddDate] [datetime] NULL,
	[F_Images] [varchar](2000) NULL,
	[F_IsLocal] [varchar](50) NULL,
	[F_StockPlace] [varchar](50) NULL,
	[F_BusiDepartId] [varchar](50) NULL,
	[F_DepartId] [varchar](50) NULL,
	[F_UserId] [varchar](50) NULL,
	[F_AssetState] [varchar](50) NULL,
	[F_ChangeReason] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Asset_Attribute]    Script Date: 05/15/2017 11:48:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asset_Attribute](
	[F_Id] [varchar](50) NOT NULL,
	[F_Name] [varchar](50) NULL,
	[F_Code] [varchar](50) NULL,
	[F_PCode] [varchar](50) NULL,
	[F_Sequence] [varchar](50) NULL,
	[F_State] [varchar](50) NULL,
	[F_AssetState] [varchar](50) NULL,
	[F_ClassL1Id] [varchar](50) NULL,
	[F_ClassL2Id] [varchar](50) NULL,
	[F_KindId] [varchar](50) NULL,
	[F_SizeId] [varchar](50) NULL,
	[F_MadeFactory] [varchar](50) NULL,
	[F_MadeDate] [datetime] NULL,
	[F_Brand] [varchar](50) NULL,
	[F_SourceType] [varchar](50) NULL,
	[F_SourceUnit] [varchar](50) NULL,
	[F_SecretLevel] [varchar](50) NULL,
	[F_UsedFor] [varchar](50) NULL,
	[F_UsingState] [varchar](50) NULL,
	[F_IsFixAsset] [varchar](50) NULL,
	[F_IsRecorder] [varchar](50) NULL,
	[F_IsControlled] [varchar](10) NULL,
	[F_WaterMarkId] [varchar](50) NULL,
	[F_ConfigInfo] [varchar](500) NULL,
	[F_UpdateDate] [datetime] NULL,
	[F_StateDate] [datetime] NULL,
	[F_DestStore] [varchar](50) NULL,
	[F_DestDepart] [varchar](50) NULL,
	[F_DestUser] [varchar](50) NULL,
	[Register_Id] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
