/*
 Navicat Premium Data Transfer

 Source Server         : Ticketing Test
 Source Server Type    : SQL Server
 Source Server Version : 13001601
 Source Host           : 192.168.162.5:1433
 Source Catalog        : Demo_Ticketing
 Source Schema         : Identity

 Target Server Type    : SQL Server
 Target Server Version : 13001601
 File Encoding         : 65001

 Date: 15/09/2023 17:28:18
*/


-- ----------------------------
-- Table structure for Comments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Comments]') AND type IN ('U'))
	DROP TABLE [Identity].[Comments]
GO

CREATE TABLE [Identity].[Comments] (
  [CommentId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Content] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AuthorId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TicketId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[Comments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Comments
-- ----------------------------
INSERT INTO [Identity].[Comments] ([CommentId], [Content], [AuthorId], [TicketId], [CreatedOn], [ModifiedOn]) VALUES (N'00ba5452-5388-48ca-9dc7-e40337fa3ed7', N'create ticket', N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'2023-09-15 14:25:21.8059174', NULL)
GO

INSERT INTO [Identity].[Comments] ([CommentId], [Content], [AuthorId], [TicketId], [CreatedOn], [ModifiedOn]) VALUES (N'a1a3e5c5-74a1-408c-8d73-d21d4de1f55f', N'accept ticket', N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'2023-09-15 14:26:26.6708343', NULL)
GO

INSERT INTO [Identity].[Comments] ([CommentId], [Content], [AuthorId], [TicketId], [CreatedOn], [ModifiedOn]) VALUES (N'd118f4ef-468d-42c4-b7b5-1f0161b1f624', N'closed', N'662faf1b-9fe2-4726-873b-8d7c80858a84', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'2023-09-15 14:26:50.0641824', NULL)
GO


-- ----------------------------
-- Table structure for Departments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Departments]') AND type IN ('U'))
	DROP TABLE [Identity].[Departments]
GO

CREATE TABLE [Identity].[Departments] (
  [DepartmentId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DepartmentName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[Departments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Departments
-- ----------------------------
INSERT INTO [Identity].[Departments] ([DepartmentId], [DepartmentName], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'Mobile Apps', N'0', NULL, N'2023-09-15 14:22:39.8465498', NULL)
GO

INSERT INTO [Identity].[Departments] ([DepartmentId], [DepartmentName], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'4FFBB8D6-5BC5-4A8C-B51B-3F73C12FEF30', N'Gaming', N'0', NULL, N'2023-09-15 14:22:39.8465363', NULL)
GO

INSERT INTO [Identity].[Departments] ([DepartmentId], [DepartmentName], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'7C103A1E-600D-4154-AE1B-626F361DE320', N'Software', N'0', NULL, N'2023-09-15 14:22:39.8465495', NULL)
GO

INSERT INTO [Identity].[Departments] ([DepartmentId], [DepartmentName], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'A830A3B1-9AEA-488E-A466-33E34753BEAD', N'Admin', N'0', NULL, N'2023-09-15 14:22:39.2945518', NULL)
GO

INSERT INTO [Identity].[Departments] ([DepartmentId], [DepartmentName], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'F2D83EA5-F9D9-42F1-AEB8-F2C642F2F4C4', N'Managment', N'0', NULL, N'2023-09-15 14:22:39.8465499', NULL)
GO


-- ----------------------------
-- Table structure for Employee
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Employee]') AND type IN ('U'))
	DROP TABLE [Identity].[Employee]
GO

CREATE TABLE [Identity].[Employee] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [FirstName] nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LastName] nvarchar(40) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DepartmentId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedUserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedEmail] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailConfirmed] bit  NOT NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumberConfirmed] bit  NOT NULL,
  [TwoFactorEnabled] bit  NOT NULL,
  [LockoutEnd] datetimeoffset(7)  NULL,
  [LockoutEnabled] bit  NOT NULL,
  [AccessFailedCount] int  NOT NULL
)
GO

ALTER TABLE [Identity].[Employee] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Employee
-- ----------------------------
INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'17856480-0FB4-4765-9096-408A50FE2261', N'Pesho', N'Peshev', N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'2023-09-15 14:22:39.8465624', NULL, N'0', NULL, N'test@123.bg', N'TEST@123.BG', N'test@123.bg', N'TEST@123.BG', N'0', N'AQAAAAEAACcQAAAAENDg9IlG1ufU7lKnQPlg0WyOZU1nia5PtK8jfiipftW1VT7aJLhMSBGBlZ1WVNw7mg==', N'3eaf76ca-fc55-4b2b-874e-acd600cd46bb', N'ce7d0656-5a30-4a28-b85e-0341abb04bee', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'Test', N'User', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'2023-09-15 14:22:39.8465560', NULL, N'0', NULL, N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', N'0', N'AQAAAAEAACcQAAAAEBjbcGa/Dohqhf10ZEM2LDBMognX7UMAur4Vm6ESBPQ/55YjsxFcd3s7w+SD13ilnA==', N'6c226fd0-7ea2-4f4c-a290-efc1c00c22c9', N'a8ba41ae-5d03-408f-835d-0dd8ad561064', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'564053CF-374E-45A9-95B6-52D00AED09A1', N'Susano', N'Zaharev', N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'2023-09-15 14:22:39.8465622', NULL, N'0', NULL, N'test@abv.bg', N'TEST@ABV.BG', N'test@abv.bg', N'TEST@ABV.BG', N'0', N'AQAAAAEAACcQAAAAEHjk0yI/yCMeT1WXtU7YESNTULoFF+zkj8pN1CXI5+0RidJW5WLtXEv/8d4z0ieMeA==', N'6aad67ab-44df-442a-be37-d68eef861f89', N'e16fe38b-66f2-4427-81b9-07a7443a5b29', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'662faf1b-9fe2-4726-873b-8d7c80858a84', N'Admin', N'Admin', N'A830A3B1-9AEA-488E-A466-33E34753BEAD', N'2023-09-15 14:22:39.2944866', N'2023-09-15 14:22:39.4814880', N'0', NULL, N'admin@IssueSystem.com', N'ADMIN@ISSUESYSTEM.COM', N'admin@IssueSystem.com', N'ADMIN@ISSUESYSTEM.COM', N'0', N'AQAAAAEAACcQAAAAEA6ZMUf5doMwoSFI3TNxiGgLvnKH3fT/PiRcCQUnNDmTKZg7n4HicwIp64lJHVuAQg==', N'XRT3XZKBSB3J66KB4ITVHMV7VMHCSGEN', N'b5ccf54e-6524-4b9e-a846-43a3b59d21b4', NULL, N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'787BBE1E-0F55-4D6D-BCF8-70B6E490EC65', N'Vlado', N'Muskov', N'4FFBB8D6-5BC5-4A8C-B51B-3F73C12FEF30', N'2023-09-15 14:22:39.8465621', NULL, N'0', NULL, N'test@gmail.com', N'TEST@GMAIL.COM', N'test@gmail.com', N'TEST@GMAIL.COM', N'0', N'AQAAAAEAACcQAAAAEIjAs4/ylBwD0y7NbOPPAm051MaeF26Y6YXypMocxgiY4cj4fVErW95jfzCoxYlopw==', N'e704421d-bcfd-4f98-a22b-3ce36bd115a1', N'45dbfce4-d0aa-4731-961a-538086d85cb5', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'94C3FD39-002B-4126-985F-73AA5310402B', N'Gosho', N'Goshev', N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'2023-09-15 14:22:39.8465623', NULL, N'0', NULL, N'test@gmail.bg', N'TEST@GMAIL.BG', N'test@gmail.bg', N'TEST@GMAIL.BG', N'0', N'AQAAAAEAACcQAAAAELyo1LKEuTMTa/ciNgOS8TSkMsu6MZCmuWTLYiuDyXZFfcfF+ZQcCllZ24uP03YV1w==', N'6a201d1e-7e9d-474c-ba42-95bd907d6d8e', N'4738c012-817f-4512-bc45-ce42d2fe7376', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'Vladimir', N'Putin', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'2023-09-15 14:22:39.8465620', NULL, N'0', NULL, N'test@abv.com', N'TEST@ABV.COM', N'test@abv.com', N'TEST@ABV.COM', N'0', N'AQAAAAEAACcQAAAAEOIMsRr2EvnokSuSnTIJFObv/x40zZh9n5VGXWnlFBeUN2m/MNS+NAf2Kcjwusbrqw==', N'e68a0acf-ff94-450f-802c-d884e2754819', N'42414f1e-fd4d-48a8-80ad-626e38e541cb', NULL, N'0', N'0', NULL, N'0', N'0')
GO

INSERT INTO [Identity].[Employee] ([Id], [FirstName], [LastName], [DepartmentId], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'CF49A6CB-9ED8-4F9B-BD90-2B1771A582E6', N'Angela', N'Merkel', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'2023-09-15 14:22:39.8465618', NULL, N'0', NULL, N'test@123.com', N'TEST@123.COM', N'test@123.com', N'TEST@123.COM', N'0', N'AQAAAAEAACcQAAAAEPR0nKM2mlm8QNaktjB7Bbkh2EHszHn803gCaisd15VUgRX2dqQOFyYYhnvbZoiuWA==', N'4be92fe4-cdc1-4d5b-927a-9579f18d5576', N'f14f5f1b-6f4c-43ff-9a8e-24e34f265521', NULL, N'0', N'0', NULL, N'0', N'0')
GO


-- ----------------------------
-- Table structure for EmployeeProjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[EmployeeProjects]') AND type IN ('U'))
	DROP TABLE [Identity].[EmployeeProjects]
GO

CREATE TABLE [Identity].[EmployeeProjects] (
  [EmployeeId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProjectId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[EmployeeProjects] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of EmployeeProjects
-- ----------------------------
INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'17856480-0FB4-4765-9096-408A50FE2261', N'1C6755A6-2AA9-4211-AB08-6FAC9233180C', N'2023-09-15 14:22:39.8465688', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'2666733C-788C-4F32-8367-568583D350CC', N'2023-09-15 14:22:39.8465690', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'B61FC263-C9B3-4213-BB25-30A3B8D84D11', N'2023-09-15 14:22:39.8465691', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'564053CF-374E-45A9-95B6-52D00AED09A1', N'CD4C799A-D3AC-4ECF-B22D-B372075F64EB', N'2023-09-15 14:22:39.8465689', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'787BBE1E-0F55-4D6D-BCF8-70B6E490EC65', N'1C6755A6-2AA9-4211-AB08-6FAC9233180C', N'2023-09-15 14:22:39.8465687', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'94C3FD39-002B-4126-985F-73AA5310402B', N'C33AE9AA-B467-4EEF-A6F7-F9C4FDCE3971', N'2023-09-15 14:22:39.8465690', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'1C6755A6-2AA9-4211-AB08-6FAC9233180C', N'2023-09-15 14:22:39.8465686', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'2666733C-788C-4F32-8367-568583D350CC', N'2023-09-15 14:22:39.8465694', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'B61FC263-C9B3-4213-BB25-30A3B8D84D11', N'2023-09-15 14:22:39.8465695', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'CF49A6CB-9ED8-4F9B-BD90-2B1771A582E6', N'2666733C-788C-4F32-8367-568583D350CC', N'2023-09-15 14:22:39.8465692', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'CF49A6CB-9ED8-4F9B-BD90-2B1771A582E6', N'B61FC263-C9B3-4213-BB25-30A3B8D84D11', N'2023-09-15 14:22:39.8465693', NULL)
GO

INSERT INTO [Identity].[EmployeeProjects] ([EmployeeId], [ProjectId], [CreatedOn], [ModifiedOn]) VALUES (N'CF49A6CB-9ED8-4F9B-BD90-2B1771A582E6', N'C2FD45C3-C118-4F51-B6E8-7D85F05CAEAE', N'2023-09-15 14:22:39.8465626', NULL)
GO


-- ----------------------------
-- Table structure for Images
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Images]') AND type IN ('U'))
	DROP TABLE [Identity].[Images]
GO

CREATE TABLE [Identity].[Images] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FileExtension] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EmployeeId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Content] varbinary(max)  NULL,
  [FilePath] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[Images] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Images
-- ----------------------------
SET IDENTITY_INSERT [Identity].[Images] ON
GO

SET IDENTITY_INSERT [Identity].[Images] OFF
GO


-- ----------------------------
-- Table structure for Projects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Projects]') AND type IN ('U'))
	DROP TABLE [Identity].[Projects]
GO

CREATE TABLE [Identity].[Projects] (
  [ProjectId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProjectName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] int  NOT NULL,
  [DepartmentId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL,
  [Description] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT N'' NOT NULL
)
GO

ALTER TABLE [Identity].[Projects] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Projects
-- ----------------------------
INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'1C6755A6-2AA9-4211-AB08-6FAC9233180C', N'Legendary Game', N'2', N'4FFBB8D6-5BC5-4A8C-B51B-3F73C12FEF30', N'0', NULL, N'2023-09-15 14:22:39.8465554', NULL, N'The Story tells about the legendary game that will be developed and will be played from gamers for eternity')
GO

INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'2666733C-788C-4F32-8367-568583D350CC', N'Car Repairment Software', N'2', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'0', NULL, N'2023-09-15 14:22:39.8465557', NULL, N'Car repairment and scheduling software, for easy scheduling maintenance and cost management of your automobile')
GO

INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'B61FC263-C9B3-4213-BB25-30A3B8D84D11', N'Battery management system Software', N'2', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'0', NULL, N'2023-09-15 14:22:39.8465558', NULL, N'Battery management system (BMS) design and development that allows for risk-free virtual testing')
GO

INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'C2FD45C3-C118-4F51-B6E8-7D85F05CAEAE', N'Easy Invest Mobile', N'2', N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'0', NULL, N'2023-09-15 14:22:39.8465501', NULL, N'Mobile app targetting primary successful retired people that have money but dont know how and where to invest them')
GO

INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'C33AE9AA-B467-4EEF-A6F7-F9C4FDCE3971', N'E-Commenrce Website', N'2', N'1FA0E5A1-EDA0-4F88-A8D9-3DAD6EAF13CF', N'0', NULL, N'2023-09-15 14:22:39.8465559', NULL, N'Website for E-commerce pourposes, with clean Ui')
GO

INSERT INTO [Identity].[Projects] ([ProjectId], [ProjectName], [Status], [DepartmentId], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Description]) VALUES (N'CD4C799A-D3AC-4ECF-B22D-B372075F64EB', N'IssueSystem Software', N'2', N'7C103A1E-600D-4154-AE1B-626F361DE320', N'0', NULL, N'2023-09-15 14:22:39.8465556', NULL, N'Bug Tracking software for easy documentation and project management')
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Role]') AND type IN ('U'))
	DROP TABLE [Identity].[Role]
GO

CREATE TABLE [Identity].[Role] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [Identity].[Role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO [Identity].[Role] ([Id], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'32865f8c-1cd4-443c-853b-5fbe112f2eb3', N'2023-09-15 14:22:38.9488511', NULL, N'0', NULL, N'Administrator', N'ADMINISTRATOR', N'872c1bbc-b0c3-4010-9f0d-b812fdebe7b2')
GO

INSERT INTO [Identity].[Role] ([Id], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6546dba3-ac29-4c46-a036-92211c502d09', N'2023-09-15 14:22:39.8465808', NULL, N'0', NULL, N'Employee', N'EMPLOYEE', N'16817b59-849b-4a19-8d78-b1f2bbc429ec')
GO

INSERT INTO [Identity].[Role] ([Id], [CreatedOn], [ModifiedOn], [IsDeleted], [DeletedOn], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ab1ad819-6ace-4625-beaa-b795d75c1b86', N'2023-09-15 14:22:40.0648744', NULL, N'0', NULL, N'Menager', N'MENAGER', N'e2fece4f-4bd1-470c-9deb-313232dc0fea')
GO


-- ----------------------------
-- Table structure for RoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[RoleClaims]') AND type IN ('U'))
	DROP TABLE [Identity].[RoleClaims]
GO

CREATE TABLE [Identity].[RoleClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [Identity].[RoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of RoleClaims
-- ----------------------------
SET IDENTITY_INSERT [Identity].[RoleClaims] ON
GO

SET IDENTITY_INSERT [Identity].[RoleClaims] OFF
GO


-- ----------------------------
-- Table structure for TicketCategories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[TicketCategories]') AND type IN ('U'))
	DROP TABLE [Identity].[TicketCategories]
GO

CREATE TABLE [Identity].[TicketCategories] (
  [TicketCategoryId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CategoryName] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[TicketCategories] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TicketCategories
-- ----------------------------
INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'1C6755A6-2AA9-4211-AB08-6FAC9233180C', N'Incident', N'2023-09-15 14:22:39.8465804', NULL)
GO

INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'90FCE21B-95CA-4892-919D-E2F886C94120', N'Broken front-end', N'2023-09-15 14:22:39.8465806', NULL)
GO

INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'B2AAB9FF-8686-4DA3-A912-C8EE9DA352A8', N'Change request', N'2023-09-15 14:22:39.8465807', NULL)
GO

INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'C2FD45C3-C118-4F51-B6E8-7D85F05CAEAE', N'Service request', N'2023-09-15 14:22:39.8465752', NULL)
GO

INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'CD4C799A-D3AC-4ECF-B22D-B372075F64EB', N'Problem', N'2023-09-15 14:22:39.8465805', NULL)
GO

INSERT INTO [Identity].[TicketCategories] ([TicketCategoryId], [CategoryName], [CreatedOn], [ModifiedOn]) VALUES (N'EF13CBF0-6CD1-4D8E-B930-AB86E64CD2C3', N'Bug in code', N'2023-09-15 14:22:39.8465806', NULL)
GO


-- ----------------------------
-- Table structure for TicketPriorities
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[TicketPriorities]') AND type IN ('U'))
	DROP TABLE [Identity].[TicketPriorities]
GO

CREATE TABLE [Identity].[TicketPriorities] (
  [PriorityId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PriorityType] int  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[TicketPriorities] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TicketPriorities
-- ----------------------------
INSERT INTO [Identity].[TicketPriorities] ([PriorityId], [PriorityType], [CreatedOn], [ModifiedOn]) VALUES (N'38ABBFB7-F363-4852-BFB4-31804F9B4888', N'1', N'2023-09-15 14:22:39.8465750', NULL)
GO

INSERT INTO [Identity].[TicketPriorities] ([PriorityId], [PriorityType], [CreatedOn], [ModifiedOn]) VALUES (N'3B2AE6A8-8BB6-4A50-BB1A-373F6C07F101', N'2', N'2023-09-15 14:22:39.8465751', NULL)
GO

INSERT INTO [Identity].[TicketPriorities] ([PriorityId], [PriorityType], [CreatedOn], [ModifiedOn]) VALUES (N'DC359A9C-18B5-4444-A212-B766912207ED', N'0', N'2023-09-15 14:22:39.8465696', NULL)
GO


-- ----------------------------
-- Table structure for Tickets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[Tickets]') AND type IN ('U'))
	DROP TABLE [Identity].[Tickets]
GO

CREATE TABLE [Identity].[Tickets] (
  [TicketId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Title] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatorId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AcceptantId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TicketCategoryId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TicketPriorityId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ImageId] int  NULL,
  [ProjectId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [DeletedOn] datetime2(7)  NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[Tickets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Tickets
-- ----------------------------
INSERT INTO [Identity].[Tickets] ([TicketId], [Title], [CreatorId], [AcceptantId], [TicketCategoryId], [TicketPriorityId], [ImageId], [ProjectId], [Description], [IsDeleted], [DeletedOn], [CreatedOn], [ModifiedOn]) VALUES (N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'ticket number 1', N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'90FCE21B-95CA-4892-919D-E2F886C94120', N'DC359A9C-18B5-4444-A212-B766912207ED', NULL, N'2666733C-788C-4F32-8367-568583D350CC', N'ticket number 1', N'0', NULL, N'2023-09-15 14:25:06.4359784', N'2023-09-15 14:25:54.3412245')
GO


-- ----------------------------
-- Table structure for TicketStatuses
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[TicketStatuses]') AND type IN ('U'))
	DROP TABLE [Identity].[TicketStatuses]
GO

CREATE TABLE [Identity].[TicketStatuses] (
  [StatusId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [StatusType] int  NOT NULL,
  [TicketId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EmployeeId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [CreatedOn] datetime2(7)  NOT NULL,
  [ModifiedOn] datetime2(7)  NULL
)
GO

ALTER TABLE [Identity].[TicketStatuses] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TicketStatuses
-- ----------------------------
INSERT INTO [Identity].[TicketStatuses] ([StatusId], [StatusType], [TicketId], [EmployeeId], [CreatedOn], [ModifiedOn]) VALUES (N'26033be2-d3b2-4437-b7fb-393b39eb5f2b', N'2', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'662faf1b-9fe2-4726-873b-8d7c80858a84', N'2023-09-15 14:26:40.2749295', NULL)
GO

INSERT INTO [Identity].[TicketStatuses] ([StatusId], [StatusType], [TicketId], [EmployeeId], [CreatedOn], [ModifiedOn]) VALUES (N'cbccbf6e-9949-42c8-a4ab-dcfcb348f949', N'1', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'4D7D0B52-5DFA-41F4-A089-E7AFEA3FAC79', N'2023-09-15 14:25:54.3412237', NULL)
GO

INSERT INTO [Identity].[TicketStatuses] ([StatusId], [StatusType], [TicketId], [EmployeeId], [CreatedOn], [ModifiedOn]) VALUES (N'd37947f2-7771-4c50-9267-8bf281d885df', N'0', N'28fe4ac8-07d8-48c3-95bb-2b426e2a65d6', N'BD1080F7-D15B-45AA-B7E9-44B8FFB91EE4', N'2023-09-15 14:25:06.4947830', NULL)
GO


-- ----------------------------
-- Table structure for UserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[UserClaims]') AND type IN ('U'))
	DROP TABLE [Identity].[UserClaims]
GO

CREATE TABLE [Identity].[UserClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [Identity].[UserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserClaims
-- ----------------------------
SET IDENTITY_INSERT [Identity].[UserClaims] ON
GO

SET IDENTITY_INSERT [Identity].[UserClaims] OFF
GO


-- ----------------------------
-- Table structure for UserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[UserLogins]') AND type IN ('U'))
	DROP TABLE [Identity].[UserLogins]
GO

CREATE TABLE [Identity].[UserLogins] (
  [LoginProvider] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderDisplayName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [Identity].[UserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserLogins
-- ----------------------------

-- ----------------------------
-- Table structure for UserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[UserRoles]') AND type IN ('U'))
	DROP TABLE [Identity].[UserRoles]
GO

CREATE TABLE [Identity].[UserRoles] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [Identity].[UserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserRoles
-- ----------------------------
INSERT INTO [Identity].[UserRoles] ([UserId], [RoleId]) VALUES (N'662faf1b-9fe2-4726-873b-8d7c80858a84', N'32865f8c-1cd4-443c-853b-5fbe112f2eb3')
GO


-- ----------------------------
-- Table structure for UserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[Identity].[UserTokens]') AND type IN ('U'))
	DROP TABLE [Identity].[UserTokens]
GO

CREATE TABLE [Identity].[UserTokens] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LoginProvider] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [Identity].[UserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserTokens
-- ----------------------------

-- ----------------------------
-- Indexes structure for table Comments
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Comments_AuthorId]
ON [Identity].[Comments] (
  [AuthorId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Comments_TicketId]
ON [Identity].[Comments] (
  [TicketId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Comments
-- ----------------------------
ALTER TABLE [Identity].[Comments] ADD CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED ([CommentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Departments
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Departments_DepartmentName]
ON [Identity].[Departments] (
  [DepartmentName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Departments
-- ----------------------------
ALTER TABLE [Identity].[Departments] ADD CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([DepartmentId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Employee
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmailIndex]
ON [Identity].[Employee] (
  [NormalizedEmail] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Employee_DepartmentId]
ON [Identity].[Employee] (
  [DepartmentId] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
ON [Identity].[Employee] (
  [NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table Employee
-- ----------------------------
ALTER TABLE [Identity].[Employee] ADD CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table EmployeeProjects
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_EmployeeProjects_ProjectId]
ON [Identity].[EmployeeProjects] (
  [ProjectId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table EmployeeProjects
-- ----------------------------
ALTER TABLE [Identity].[EmployeeProjects] ADD CONSTRAINT [PK_EmployeeProjects] PRIMARY KEY CLUSTERED ([EmployeeId], [ProjectId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Images
-- ----------------------------
DBCC CHECKIDENT ('[Identity].[Images]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Images
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_Images_EmployeeId]
ON [Identity].[Images] (
  [EmployeeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Images
-- ----------------------------
ALTER TABLE [Identity].[Images] ADD CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Projects
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Projects_DepartmentId]
ON [Identity].[Projects] (
  [DepartmentId] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_Projects_ProjectName]
ON [Identity].[Projects] (
  [ProjectName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Projects
-- ----------------------------
ALTER TABLE [Identity].[Projects] ADD CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([ProjectId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Role
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [Identity].[Role] (
  [NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [Identity].[Role] ADD CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for RoleClaims
-- ----------------------------
DBCC CHECKIDENT ('[Identity].[RoleClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table RoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId]
ON [Identity].[RoleClaims] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table RoleClaims
-- ----------------------------
ALTER TABLE [Identity].[RoleClaims] ADD CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TicketCategories
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_TicketCategories_CategoryName]
ON [Identity].[TicketCategories] (
  [CategoryName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TicketCategories
-- ----------------------------
ALTER TABLE [Identity].[TicketCategories] ADD CONSTRAINT [PK_TicketCategories] PRIMARY KEY CLUSTERED ([TicketCategoryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TicketPriorities
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [IX_TicketPriorities_PriorityType]
ON [Identity].[TicketPriorities] (
  [PriorityType] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TicketPriorities
-- ----------------------------
ALTER TABLE [Identity].[TicketPriorities] ADD CONSTRAINT [PK_TicketPriorities] PRIMARY KEY CLUSTERED ([PriorityId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table Tickets
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Tickets_AcceptantId]
ON [Identity].[Tickets] (
  [AcceptantId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Tickets_CreatorId]
ON [Identity].[Tickets] (
  [CreatorId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Tickets_ImageId]
ON [Identity].[Tickets] (
  [ImageId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Tickets_ProjectId]
ON [Identity].[Tickets] (
  [ProjectId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Tickets_TicketCategoryId]
ON [Identity].[Tickets] (
  [TicketCategoryId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Tickets_TicketPriorityId]
ON [Identity].[Tickets] (
  [TicketPriorityId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Tickets
-- ----------------------------
ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED ([TicketId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TicketStatuses
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_TicketStatuses_EmployeeId]
ON [Identity].[TicketStatuses] (
  [EmployeeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_TicketStatuses_TicketId]
ON [Identity].[TicketStatuses] (
  [TicketId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TicketStatuses
-- ----------------------------
ALTER TABLE [Identity].[TicketStatuses] ADD CONSTRAINT [PK_TicketStatuses] PRIMARY KEY CLUSTERED ([StatusId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserClaims
-- ----------------------------
DBCC CHECKIDENT ('[Identity].[UserClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table UserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId]
ON [Identity].[UserClaims] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table UserClaims
-- ----------------------------
ALTER TABLE [Identity].[UserClaims] ADD CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table UserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId]
ON [Identity].[UserLogins] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table UserLogins
-- ----------------------------
ALTER TABLE [Identity].[UserLogins] ADD CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table UserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId]
ON [Identity].[UserRoles] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table UserRoles
-- ----------------------------
ALTER TABLE [Identity].[UserRoles] ADD CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table UserTokens
-- ----------------------------
ALTER TABLE [Identity].[UserTokens] ADD CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Comments
-- ----------------------------
ALTER TABLE [Identity].[Comments] ADD CONSTRAINT [FK_Comments_Employee_AuthorId] FOREIGN KEY ([AuthorId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Comments] ADD CONSTRAINT [FK_Comments_Tickets_TicketId] FOREIGN KEY ([TicketId]) REFERENCES [Identity].[Tickets] ([TicketId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Employee
-- ----------------------------
ALTER TABLE [Identity].[Employee] ADD CONSTRAINT [FK_Employee_Departments_DepartmentId] FOREIGN KEY ([DepartmentId]) REFERENCES [Identity].[Departments] ([DepartmentId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table EmployeeProjects
-- ----------------------------
ALTER TABLE [Identity].[EmployeeProjects] ADD CONSTRAINT [FK_EmployeeProjects_Employee_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[EmployeeProjects] ADD CONSTRAINT [FK_EmployeeProjects_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Identity].[Projects] ([ProjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Images
-- ----------------------------
ALTER TABLE [Identity].[Images] ADD CONSTRAINT [FK_Images_Employee_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Projects
-- ----------------------------
ALTER TABLE [Identity].[Projects] ADD CONSTRAINT [FK_Projects_Departments_DepartmentId] FOREIGN KEY ([DepartmentId]) REFERENCES [Identity].[Departments] ([DepartmentId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table RoleClaims
-- ----------------------------
ALTER TABLE [Identity].[RoleClaims] ADD CONSTRAINT [FK_RoleClaims_Role_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Identity].[Role] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Tickets
-- ----------------------------
ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_Images_ImageId] FOREIGN KEY ([ImageId]) REFERENCES [Identity].[Images] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_Employee_AcceptantId] FOREIGN KEY ([AcceptantId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_Employee_CreatorId] FOREIGN KEY ([CreatorId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_Projects_ProjectId] FOREIGN KEY ([ProjectId]) REFERENCES [Identity].[Projects] ([ProjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_TicketCategories_TicketCategoryId] FOREIGN KEY ([TicketCategoryId]) REFERENCES [Identity].[TicketCategories] ([TicketCategoryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[Tickets] ADD CONSTRAINT [FK_Tickets_TicketPriorities_TicketPriorityId] FOREIGN KEY ([TicketPriorityId]) REFERENCES [Identity].[TicketPriorities] ([PriorityId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table TicketStatuses
-- ----------------------------
ALTER TABLE [Identity].[TicketStatuses] ADD CONSTRAINT [FK_TicketStatuses_Employee_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[TicketStatuses] ADD CONSTRAINT [FK_TicketStatuses_Tickets_TicketId] FOREIGN KEY ([TicketId]) REFERENCES [Identity].[Tickets] ([TicketId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserClaims
-- ----------------------------
ALTER TABLE [Identity].[UserClaims] ADD CONSTRAINT [FK_UserClaims_Employee_UserId] FOREIGN KEY ([UserId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserLogins
-- ----------------------------
ALTER TABLE [Identity].[UserLogins] ADD CONSTRAINT [FK_UserLogins_Employee_UserId] FOREIGN KEY ([UserId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserRoles
-- ----------------------------
ALTER TABLE [Identity].[UserRoles] ADD CONSTRAINT [FK_UserRoles_Employee_UserId] FOREIGN KEY ([UserId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [Identity].[UserRoles] ADD CONSTRAINT [FK_UserRoles_Role_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Identity].[Role] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserTokens
-- ----------------------------
ALTER TABLE [Identity].[UserTokens] ADD CONSTRAINT [FK_UserTokens_Employee_UserId] FOREIGN KEY ([UserId]) REFERENCES [Identity].[Employee] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

