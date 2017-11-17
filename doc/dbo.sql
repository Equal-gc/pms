/*
Navicat SQL Server Data Transfer

Source Server         : localhost
Source Server Version : 105000
Source Host           : localhost\SQLEXPRESS:1433
Source Database       : pmsNew
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-05-08 17:22:50
*/


-- ----------------------------
-- Table structure for Asset_Attribute
-- ----------------------------
DROP TABLE [dbo].[Asset_Attribute]
GO
CREATE TABLE [dbo].[Asset_Attribute] (
[F_Id] varchar(50) NOT NULL ,
[F_Name] varchar(50) NULL ,
[F_Sequence] varchar(50) NULL ,
[F_State] varchar(50) NULL ,
[F_AssetState] varchar(50) NULL ,
[F_ClassL1Id] varchar(50) NULL ,
[F_ClassL2Id] varchar(50) NULL ,
[F_KindId] varchar(50) NULL ,
[F_SizeId] varchar(50) NULL ,
[F_MadeFactory] varchar(50) NULL ,
[F_MadeDate] datetime NULL ,
[F_Brand] varchar(50) NULL ,
[F_SourceType] varchar(50) NULL ,
[F_SourceUnit] varchar(50) NULL ,
[F_SecretLevel] varchar(50) NULL ,
[F_UsedFor] varchar(50) NULL ,
[F_UsingState] varchar(50) NULL ,
[F_IsFixAsset] varchar(50) NULL ,
[F_IsRecorder] varchar(50) NULL ,
[F_IsControlled] varchar(10) NULL ,
[F_WaterMarkId] varchar(50) NULL ,
[F_ConfigInfo] varchar(500) NULL ,
[F_UpdateDate] datetime NULL ,
[F_StateDate] datetime NULL ,
[F_DestStore] varchar(50) NULL ,
[F_DestDepart] varchar(50) NULL ,
[F_DestUser] varchar(50) NULL ,
[Register_Id] int NULL 
)


GO

-- ----------------------------
-- Records of Asset_Attribute
-- ----------------------------
INSERT INTO [dbo].[Asset_Attribute] ([F_Id], [F_Name], [F_Sequence], [F_State], [F_AssetState], [F_ClassL1Id], [F_ClassL2Id], [F_KindId], [F_SizeId], [F_MadeFactory], [F_MadeDate], [F_Brand], [F_SourceType], [F_SourceUnit], [F_SecretLevel], [F_UsedFor], [F_UsingState], [F_IsFixAsset], [F_IsRecorder], [F_IsControlled], [F_WaterMarkId], [F_ConfigInfo], [F_UpdateDate], [F_StateDate], [F_DestStore], [F_DestDepart], [F_DestUser], [Register_Id]) VALUES (N'1', N'1', N'1', N'1', N'1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[Asset_Attribute] ([F_Id], [F_Name], [F_Sequence], [F_State], [F_AssetState], [F_ClassL1Id], [F_ClassL2Id], [F_KindId], [F_SizeId], [F_MadeFactory], [F_MadeDate], [F_Brand], [F_SourceType], [F_SourceUnit], [F_SecretLevel], [F_UsedFor], [F_UsingState], [F_IsFixAsset], [F_IsRecorder], [F_IsControlled], [F_WaterMarkId], [F_ConfigInfo], [F_UpdateDate], [F_StateDate], [F_DestStore], [F_DestDepart], [F_DestUser], [Register_Id]) VALUES (N'2', N'2', N'2', N'2', N'2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[Asset_Attribute] ([F_Id], [F_Name], [F_Sequence], [F_State], [F_AssetState], [F_ClassL1Id], [F_ClassL2Id], [F_KindId], [F_SizeId], [F_MadeFactory], [F_MadeDate], [F_Brand], [F_SourceType], [F_SourceUnit], [F_SecretLevel], [F_UsedFor], [F_UsingState], [F_IsFixAsset], [F_IsRecorder], [F_IsControlled], [F_WaterMarkId], [F_ConfigInfo], [F_UpdateDate], [F_StateDate], [F_DestStore], [F_DestDepart], [F_DestUser], [Register_Id]) VALUES (N'3', N'3', N'3', N'3', N'3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)
GO
GO
INSERT INTO [dbo].[Asset_Attribute] ([F_Id], [F_Name], [F_Sequence], [F_State], [F_AssetState], [F_ClassL1Id], [F_ClassL2Id], [F_KindId], [F_SizeId], [F_MadeFactory], [F_MadeDate], [F_Brand], [F_SourceType], [F_SourceUnit], [F_SecretLevel], [F_UsedFor], [F_UsingState], [F_IsFixAsset], [F_IsRecorder], [F_IsControlled], [F_WaterMarkId], [F_ConfigInfo], [F_UpdateDate], [F_StateDate], [F_DestStore], [F_DestDepart], [F_DestUser], [Register_Id]) VALUES (N'4', N'4', N'4', N'4', N'4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null)
GO
GO

-- ----------------------------
-- Table structure for Asset_Changes
-- ----------------------------
DROP TABLE [dbo].[Asset_Changes]
GO
CREATE TABLE [dbo].[Asset_Changes] (
[F_Id] bigint NOT NULL ,
[F_AttributeId] varchar(50) NULL ,
[F_ChangeDate] datetime NULL ,
[F_Operator] varchar(50) NULL ,
[F_Approver] varchar(50) NULL ,
[F_Accepter] varchar(50) NULL ,
[F_Keeper] varchar(50) NULL ,
[F_ChangeId] varchar(50) NULL ,
[F_AddDate] datetime NULL ,
[F_Images] varchar(2000) NULL ,
[F_IsLocal] varchar(50) NULL ,
[F_StockPlace] varchar(50) NULL ,
[F_BusiDepartId] varchar(50) NULL ,
[F_DepartId] varchar(50) NULL ,
[F_UserId] varchar(50) NULL ,
[F_AssetState] varchar(50) NULL ,
[F_ChangeReason] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Asset_Changes
-- ----------------------------

-- ----------------------------
-- Table structure for Asset_OpBox
-- ----------------------------
DROP TABLE [dbo].[Asset_OpBox]
GO
CREATE TABLE [dbo].[Asset_OpBox] (
[F_Id] bigint NOT NULL IDENTITY(1,1) ,
[F_AssetId] varchar(50) NOT NULL ,
[F_SizeId] varchar(50) NOT NULL ,
[F_UserId] varchar(50) NOT NULL ,
[F_Type] varchar(50) NOT NULL ,
[F_CreateTime] datetime NOT NULL ,
[F_IsFixedBox] varchar(50) NULL ,
[F_DestStoreBox] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Asset_OpBox]', RESEED, 4)
GO

-- ----------------------------
-- Records of Asset_OpBox
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Asset_OpBox] ON
GO
INSERT INTO [dbo].[Asset_OpBox] ([F_Id], [F_AssetId], [F_SizeId], [F_UserId], [F_Type], [F_CreateTime], [F_IsFixedBox], [F_DestStoreBox]) VALUES (N'3', N'1', N'1', N'1', N'1', N'2017-05-09 10:56:18.000', null, null)
GO
GO
INSERT INTO [dbo].[Asset_OpBox] ([F_Id], [F_AssetId], [F_SizeId], [F_UserId], [F_Type], [F_CreateTime], [F_IsFixedBox], [F_DestStoreBox]) VALUES (N'4', N'2', N'2', N'2', N'2', N'2017-05-15 10:56:28.000', null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[Asset_OpBox] OFF
GO

-- ----------------------------
-- Table structure for Asset_Register
-- ----------------------------
DROP TABLE [dbo].[Asset_Register]
GO
CREATE TABLE [dbo].[Asset_Register] (
[F_Id] bigint NOT NULL IDENTITY(1,1) ,
[F_PurchaseDate] datetime NULL ,
[F_Operator] varchar(50) NULL ,
[F_Approver] varchar(50) NULL ,
[F_Accepter] varchar(50) NULL ,
[F_Keeper] varchar(50) NULL ,
[F_ContractId] varchar(50) NULL ,
[F_AddDate] datetime NULL ,
[F_Images] varchar(2000) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Asset_Register]', RESEED, 2)
GO

-- ----------------------------
-- Records of Asset_Register
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Asset_Register] ON
GO
INSERT INTO [dbo].[Asset_Register] ([F_Id], [F_PurchaseDate], [F_Operator], [F_Approver], [F_Accepter], [F_Keeper], [F_ContractId], [F_AddDate], [F_Images]) VALUES (N'1', N'2017-05-08 13:38:08.000', N'王师傅', N'王师傅4', N'王师傅4', N'王师傅1', N'1', N'2017-05-08 13:38:31.000', N'1')
GO
GO
INSERT INTO [dbo].[Asset_Register] ([F_Id], [F_PurchaseDate], [F_Operator], [F_Approver], [F_Accepter], [F_Keeper], [F_ContractId], [F_AddDate], [F_Images]) VALUES (N'2', N'2017-05-03 13:38:39.000', N'王师傅', N'王师傅3', N'王师傅3', N'王师傅6', N'1', N'2017-05-02 13:39:01.000', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[Asset_Register] OFF
GO

-- ----------------------------
-- Table structure for Asset_Scrap
-- ----------------------------
DROP TABLE [dbo].[Asset_Scrap]
GO
CREATE TABLE [dbo].[Asset_Scrap] (
[F_Id] bigint NOT NULL IDENTITY(1,1) ,
[F_AttributeId] varchar(50) NULL ,
[F_ScrapDate] datetime NULL ,
[F_Operator] varchar(50) NULL ,
[F_Approver] varchar(50) NULL ,
[F_Accepter] varchar(50) NULL ,
[F_Keeper] varchar(50) NULL ,
[F_ScrapId] varchar(50) NULL ,
[F_AddDate] datetime NULL ,
[F_Images] varchar(2000) NULL ,
[F_ScrapValue] varchar(50) NULL ,
[F_ScrapReason] varchar(50) NULL ,
[F_ScrapDest] varchar(50) NULL ,
[F_AssetState] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Asset_Scrap
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Asset_Scrap] ON
GO
SET IDENTITY_INSERT [dbo].[Asset_Scrap] OFF
GO

-- ----------------------------
-- Table structure for Asset_StockIn
-- ----------------------------
DROP TABLE [dbo].[Asset_StockIn]
GO
CREATE TABLE [dbo].[Asset_StockIn] (
[F_Id] bigint NOT NULL IDENTITY(1,1) ,
[F_AttributeId] varchar(50) NULL ,
[F_StockInDate] datetime NULL ,
[F_Operator] varchar(50) NULL ,
[F_Approver] varchar(50) NULL ,
[F_Accepter] varchar(50) NULL ,
[F_Keeper] varchar(50) NULL ,
[F_StockIntId] varchar(50) NULL ,
[F_AddDate] datetime NULL ,
[F_Images] varchar(2000) NULL ,
[F_DestStore] varchar(50) NULL ,
[F_StockInPrice] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Asset_StockIn
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Asset_StockIn] ON
GO
SET IDENTITY_INSERT [dbo].[Asset_StockIn] OFF
GO

-- ----------------------------
-- Table structure for Asset_StockOut
-- ----------------------------
DROP TABLE [dbo].[Asset_StockOut]
GO
CREATE TABLE [dbo].[Asset_StockOut] (
[F_Id] bigint NOT NULL IDENTITY(1,1) ,
[F_AttributeId] varchar(50) NOT NULL ,
[F_StockOutDate] datetime NULL ,
[F_IsFixed] varchar(50) NULL ,
[F_Operator] varchar(50) NULL ,
[F_Approver] varchar(50) NULL ,
[F_Accepter] varchar(50) NULL ,
[F_Keeper] varchar(50) NULL ,
[F_StockOutId] varchar(50) NULL ,
[F_AddDate] datetime NULL ,
[F_Images] varchar(2000) NULL ,
[F_StockOutPrice] varchar(50) NULL ,
[F_StockPlace] varchar(50) NULL ,
[F_BusiDepartId] varchar(50) NULL ,
[F_DepartId] varchar(50) NULL ,
[F_UserId] varchar(50) NULL ,
[F_AssetState] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Asset_StockOut
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Asset_StockOut] ON
GO
SET IDENTITY_INSERT [dbo].[Asset_StockOut] OFF
GO

-- ----------------------------
-- Table structure for Rule_AssetSequence
-- ----------------------------
DROP TABLE [dbo].[Rule_AssetSequence]
GO
CREATE TABLE [dbo].[Rule_AssetSequence] (
[SeqCode] varchar(50) NOT NULL ,
[Descr] varchar(60) NULL ,
[NowSeqValue] bigint NOT NULL 
)


GO

-- ----------------------------
-- Records of Rule_AssetSequence
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_AssetCode
-- ----------------------------
DROP TABLE [dbo].[Sys_AssetCode]
GO
CREATE TABLE [dbo].[Sys_AssetCode] (
[F_Id] varchar(50) NOT NULL ,
[F_ParentId] varchar(50) NULL ,
[F_Name] varchar(50) NULL ,
[F_EnCode] varchar(50) NULL ,
[F_Level] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Sys_AssetCode
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_DbBackup
-- ----------------------------
DROP TABLE [dbo].[Sys_DbBackup]
GO
CREATE TABLE [dbo].[Sys_DbBackup] (
[F_Id] varchar(50) NOT NULL ,
[F_BackupType] varchar(50) NULL ,
[F_DbName] varchar(50) NULL ,
[F_FileName] varchar(50) NULL ,
[F_FileSize] varchar(50) NULL ,
[F_FilePath] varchar(500) NULL ,
[F_BackupTime] datetime NULL ,
[F_SortCode] int NULL ,
[F_DeleteMark] bit NULL ,
[F_EnabledMark] bit NULL ,
[F_Description] varchar(500) NULL ,
[F_CreatorTime] datetime NULL ,
[F_CreatorUserId] varchar(50) NULL ,
[F_LastModifyTime] datetime NULL ,
[F_LastModifyUserId] varchar(50) NULL ,
[F_DeleteTime] datetime NULL ,
[F_DeleteUserId] varchar(500) NULL 
)


GO

-- ----------------------------
-- Records of Sys_DbBackup
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_Log
-- ----------------------------
DROP TABLE [dbo].[Sys_Log]
GO
CREATE TABLE [dbo].[Sys_Log] (
[F_Id] varchar(50) NOT NULL ,
[F_Date] datetime NULL ,
[F_Account] varchar(50) NULL ,
[F_NickName] varchar(50) NULL ,
[F_Type] varchar(50) NULL ,
[F_IPAddress] varchar(50) NULL ,
[F_IPAddressName] varchar(50) NULL ,
[F_ModuleId] varchar(50) NULL ,
[F_ModuleName] varchar(50) NULL ,
[F_Result] bit NULL ,
[F_Description] varchar(500) NULL ,
[F_CreatorTime] datetime NULL ,
[F_CreatorUserId] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Sys_Log
-- ----------------------------

-- ----------------------------
-- Table structure for Sys_User
-- ----------------------------
DROP TABLE [dbo].[Sys_User]
GO
CREATE TABLE [dbo].[Sys_User] (
[F_Id] varchar(50) NOT NULL ,
[F_Account] varchar(50) NULL ,
[F_RealName] varchar(50) NULL ,
[F_NickName] varchar(50) NULL ,
[F_HeadIcon] varchar(50) NULL ,
[F_Gender] bit NULL ,
[F_Birthday] datetime NULL ,
[F_MobilePhone] varchar(20) NULL ,
[F_Email] varchar(50) NULL ,
[F_WeChat] varchar(50) NULL ,
[F_ManagerId] varchar(300) NULL ,
[F_SecurityLevel] int NULL ,
[F_Signature] varchar(500) NULL ,
[F_OrganizeId] varchar(50) NULL ,
[F_DepartmentId] varchar(500) NULL ,
[F_RoleId] varchar(500) NULL ,
[F_DutyId] varchar(500) NULL ,
[F_IsAdministrator] bit NULL ,
[F_SortCode] int NULL ,
[F_DeleteMark] bit NULL ,
[F_EnabledMark] bit NULL ,
[F_Description] varchar(500) NULL ,
[F_CreatorTime] datetime NULL ,
[F_CreatorUserId] varchar(50) NULL ,
[F_LastModifyTime] datetime NULL ,
[F_LastModifyUserId] varchar(50) NULL ,
[F_DeleteTime] datetime NULL ,
[F_DeleteUserId] varchar(500) NULL 
)


GO

-- ----------------------------
-- Records of Sys_User
-- ----------------------------
