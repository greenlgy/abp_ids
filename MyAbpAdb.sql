/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.10.219
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : 172.16.10.219:1433
 Source Catalog        : MyAbpADb
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 04/01/2021 17:50:22
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [__EFMigrationsHistory]
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20170424115119_Initial_Migrations', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20170608053244_Upgraded_To_Abp_2_1_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20170621153937_Added_Description_And_IsActive_To_Role', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20170703134115_Remove_IsActive_From_Role', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20170804083601_Upgraded_To_Abp_v2.2.2', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180201051646_Upgraded_To_Abp_v3.4.0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180320131229_Upgraded_To_Abp_v3_5_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180509121141_Upgraded_To_Abp_v3_6_1', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180726102703_Upgrade_ABP_3.8.0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180731132139_Upgrade_ABP_3.8.1', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20180927062608_Upgrade_ABP_3.8.3', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20181013103914_Upgraded_To_Abp_v3_9_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20190208051931_Upgrade_ABP_4_2_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20190703062215_Upgraded_To_Abp_4_7_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20190719143908_Upgraded_To_Abp_4_8_0', N'2.2.4-servicing-10062')
GO

INSERT INTO [dbo].[__EFMigrationsHistory]  VALUES (N'20201215004433_add_ids', N'2.2.4-servicing-10062')
GO


-- ----------------------------
-- Table structure for AbpAuditLogs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpAuditLogs]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpAuditLogs]
GO

CREATE TABLE [dbo].[AbpAuditLogs] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [BrowserInfo] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientIpAddress] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientName] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [CustomData] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [Exception] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [ExecutionDuration] int  NOT NULL,
  [ExecutionTime] datetime2(7)  NOT NULL,
  [ImpersonatorTenantId] int  NULL,
  [ImpersonatorUserId] bigint  NULL,
  [MethodName] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [Parameters] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [ServiceName] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NULL,
  [ReturnValue] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpAuditLogs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpAuditLogs]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpAuditLogs] ON
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'1', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'113', N'2020-12-10 15:39:57.0118972', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'2', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1406', N'2020-12-10 15:40:47.4707833', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'3', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'43', N'2020-12-10 15:40:49.1898816', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'4', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1956', N'2020-12-10 15:40:57.5263584', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'5', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'144', N'2020-12-10 15:40:59.5324731', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'6', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2244', N'2020-12-10 15:40:57.4893563', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'7', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'409', N'2020-12-10 15:41:07.1419084', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'8', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-10 15:41:07.6049349', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'9', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'625', N'2020-12-10 15:41:07.0719044', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'10', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'269', N'2020-12-10 15:41:13.7552866', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'11', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-10 15:41:14.0663044', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'12', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'446', N'2020-12-10 15:41:13.7202846', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'13', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'73', N'2020-12-10 15:41:26.6830261', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'14', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'18', N'2020-12-10 15:41:26.7990327', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'15', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'258', N'2020-12-10 15:41:26.6400236', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'16', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'166', N'2020-12-10 15:41:31.1532817', NULL, NULL, N'GetRoleForEdit', N'{"input":{"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'17', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'270', N'2020-12-10 15:41:31.0992787', NULL, NULL, N'EditRoleModal', N'{"roleId":2}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'18', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-10 15:41:44.1350243', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'19', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2020-12-10 15:41:44.2560312', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'20', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'234', N'2020-12-10 15:41:44.1000223', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'21', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'201', N'2020-12-10 15:41:46.1821414', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'22', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-10 15:41:46.4381560', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'23', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'442', N'2020-12-10 15:41:46.1031368', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'24', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'201', N'2020-12-10 15:41:53.6285673', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'25', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'55', N'2020-12-10 15:41:53.8825818', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'26', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'397', N'2020-12-10 15:41:53.5855648', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'27', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'172', N'2020-12-10 15:44:30.7835560', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'28', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'154', N'2020-12-10 15:44:31.0085689', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'29', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'475', N'2020-12-10 15:44:30.7515542', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'30', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'139', N'2020-12-10 15:44:35.5658295', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'31', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-10 15:44:35.7558404', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'32', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'311', N'2020-12-10 15:44:35.5378279', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'33', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'184', N'2020-12-10 15:44:55.1889519', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'34', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-10 15:44:55.4289657', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'35', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'560', N'2020-12-10 15:44:55.1369489', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'36', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'169', N'2020-12-10 15:45:02.5033703', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'37', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-10 15:45:02.7123822', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'38', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'487', N'2020-12-10 15:45:02.3793632', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'39', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'178', N'2020-12-10 15:45:13.1879814', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'40', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-10 15:45:13.4189946', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'41', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'386', N'2020-12-10 15:45:13.1379785', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'42', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'254', N'2020-12-10 15:45:22.2715010', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'43', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'82', N'2020-12-10 15:45:22.5725182', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'44', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'510', N'2020-12-10 15:45:22.2314987', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'45', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'224', N'2020-12-10 15:45:44.3227622', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'46', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'57', N'2020-12-10 15:45:44.5947778', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'47', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'473', N'2020-12-10 15:45:44.2397575', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'48', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-10 15:46:30.2143871', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'49', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-10 15:46:30.4424001', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'50', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'362', N'2020-12-10 15:46:30.1773850', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'51', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'246', N'2020-12-10 15:46:37.3907975', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'52', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'206', N'2020-12-10 15:46:38.5458636', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'53', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'75605', N'2020-12-10 15:46:34.2036152', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'54', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'181', N'2020-12-10 15:49:15.3018295', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'55', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'55', N'2020-12-10 15:49:15.5368430', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'56', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'488', N'2020-12-10 15:49:15.2698277', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'57', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'151', N'2020-12-10 15:49:23.2382835', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'58', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'71', N'2020-12-10 15:49:23.4432952', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'59', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2740', N'2020-12-10 15:49:20.8181450', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'60', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'201', N'2020-12-10 15:51:10.5564217', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'61', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'64', N'2020-12-10 15:51:10.8694396', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'62', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'477', N'2020-12-10 15:51:10.5024186', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'63', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'239', N'2020-12-10 15:53:23.9730527', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'64', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'91', N'2020-12-10 15:53:24.2850706', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'65', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'504', N'2020-12-10 15:53:23.9270501', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'66', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-10 15:54:35.8221622', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'67', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'57', N'2020-12-10 15:54:36.0541755', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'68', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2761', N'2020-12-10 15:54:33.3920232', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'69', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'202', N'2020-12-10 16:00:25.8571831', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'70', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'542', N'2020-12-10 16:00:26.1481997', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'71', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1020', N'2020-12-10 16:00:25.8271814', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'72', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'140', N'2020-12-10 16:00:44.2152331', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'73', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'160', N'2020-12-10 16:00:44.4072441', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'74', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'8489', N'2020-12-10 16:00:36.1457716', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'75', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'176', N'2020-12-10 16:01:47.5578561', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'76', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-10 16:01:47.7868692', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'77', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'366', N'2020-12-10 16:01:47.5218541', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'78', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'151', N'2020-12-10 16:01:53.8432156', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'79', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'198', N'2020-12-10 16:01:54.0572279', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'80', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'14265', N'2020-12-10 16:01:53.6952071', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'81', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'186', N'2020-12-10 16:02:59.5109716', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'82', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'128', N'2020-12-10 16:02:59.7459850', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'83', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'444', N'2020-12-10 16:02:59.4699692', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'84', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'176', N'2020-12-10 16:03:44.0315180', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'85', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-10 16:03:44.2535307', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'86', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5191', N'2020-12-10 16:03:43.9175115', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'87', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'485', N'2020-12-10 16:07:21.7979736', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'88', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-10 16:07:22.4010080', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'89', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'825', N'2020-12-10 16:07:21.7209691', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'90', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'195', N'2020-12-10 16:07:26.7802585', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'91', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-10 16:07:27.0322729', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'92', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4660', N'2020-12-10 16:07:26.7172549', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'93', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'154', N'2020-12-10 16:08:05.6534819', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'94', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-10 16:08:05.8524933', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'95', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'340', N'2020-12-10 16:08:05.6204801', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'96', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'249', N'2020-12-10 16:08:09.0856783', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'97', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-10 16:08:09.3936959', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'98', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'587', N'2020-12-10 16:08:08.8966674', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'99', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'947', N'2020-12-10 16:11:55.2526143', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'100', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'176', N'2020-12-10 16:11:56.3496770', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'101', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1642', N'2020-12-10 16:11:55.1696095', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'102', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'166', N'2020-12-10 16:12:05.7992175', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'103', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'58', N'2020-12-10 16:12:06.0182300', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'104', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'378', N'2020-12-10 16:12:05.7522148', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'105', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'173', N'2020-12-10 16:12:26.2893895', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'106', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'234', N'2020-12-10 16:12:26.5134023', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'107', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1081', N'2020-12-10 16:12:26.2323862', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'108', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'210', N'2020-12-10 16:12:36.9389986', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'109', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'62', N'2020-12-10 16:12:37.2080140', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'110', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'520', N'2020-12-10 16:12:36.8899958', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'111', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2172', N'2020-12-10 16:12:46.0925221', NULL, NULL, N'Update', N'{"input":{"userName":"admin","name":"admin","surname":"admin","emailAddress":"admin@aspnetboilerplate.com","isActive":true,"fullName":null,"lastLoginTime":null,"creationTime":"0001-01-01T00:00:00","roleNames":["ADMIN"],"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'112', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'186', N'2020-12-10 16:12:53.1379251', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'113', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'53', N'2020-12-10 16:12:53.3779388', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'114', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'404', N'2020-12-10 16:12:53.0679211', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'115', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'150', N'2020-12-10 16:13:04.2545609', NULL, NULL, N'Get', N'{"input":{"id":2}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'116', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'54', N'2020-12-10 16:13:04.4645730', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'117', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'375', N'2020-12-10 16:13:04.1855570', NULL, NULL, N'EditUserModal', N'{"userId":2}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'118', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-10 16:13:10.4169134', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'119', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2020-12-10 16:13:10.5339201', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'120', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'206', N'2020-12-10 16:13:10.3759111', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'121', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'171', N'2020-12-10 16:13:14.3371376', NULL, NULL, N'GetRoleForEdit', N'{"input":{"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'122', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'352', N'2020-12-10 16:13:14.2781343', NULL, NULL, N'EditRoleModal', N'{"roleId":2}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'123', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'54', N'2020-12-10 16:16:18.6836817', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'124', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2020-12-10 16:16:18.7846874', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'125', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'227', N'2020-12-10 16:16:18.6076773', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'126', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-10 16:16:22.4928995', NULL, NULL, N'GetRoleForEdit', N'{"input":{"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'127', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'233', N'2020-12-10 16:16:22.4488970', NULL, NULL, N'EditRoleModal', N'{"roleId":2}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'128', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'91', N'2020-12-10 16:16:39.0018438', NULL, NULL, N'GetRoleForEdit', N'{"input":{"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'129', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'242', N'2020-12-10 16:16:38.9458406', NULL, NULL, N'EditRoleModal', N'{"roleId":2}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'130', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'212', N'2020-12-10 16:16:44.6611675', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'131', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'466', N'2020-12-10 16:16:44.6201651', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'132', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'150', N'2020-12-10 16:16:49.2984327', NULL, NULL, N'Get', N'{"input":{"id":1}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'133', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'327', N'2020-12-10 16:16:49.2264286', NULL, NULL, N'EditTenantModal', N'{"tenantId":1}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'134', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'121', N'2020-12-10 16:17:33.8159790', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'135', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'279', N'2020-12-10 16:17:33.7669762', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'136', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'440', N'2020-12-10 16:17:38.1882291', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'137', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'89', N'2020-12-10 16:17:38.6892577', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'138', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'764', N'2020-12-10 16:17:38.1312258', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'139', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-10 16:17:41.5094190', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'140', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2020-12-10 16:17:41.5914237', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'141', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'189', N'2020-12-10 16:17:41.4534158', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'142', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'118', N'2020-12-10 16:17:45.6156539', NULL, NULL, N'GetRoleForEdit', N'{"input":{"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'143', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'582', N'2020-12-10 16:17:45.2276317', NULL, NULL, N'EditRoleModal', N'{"roleId":2}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'144', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'562', N'2020-12-10 16:17:47.3747545', NULL, NULL, N'Update', N'{"input":{"name":"Admin","displayName":"Admin","normalizedName":null,"description":"","grantedPermissions":["Pages.Roles","Pages.Users","Pages.Tenants"],"id":2}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'145', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'119', N'2020-12-10 16:17:48.1047963', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'146', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2020-12-10 16:17:48.4008132', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'147', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'406', N'2020-12-10 16:17:48.0537933', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'148', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'117', N'2020-12-10 16:17:50.8869554', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'149', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'235', N'2020-12-10 16:17:50.8359525', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'150', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'102', N'2020-12-10 16:17:54.7241749', NULL, NULL, N'Get', N'{"input":{"id":1}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'151', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'250', N'2020-12-10 16:17:54.6511707', NULL, NULL, N'EditTenantModal', N'{"tenantId":1}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'152', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'96', N'2020-12-10 16:17:56.8232949', NULL, NULL, N'Update', N'{"input":{"tenancyName":"Default","name":"Default","isActive":true,"id":1}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'153', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'265', N'2020-12-10 16:17:57.0853099', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'154', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'377', N'2020-12-10 16:17:57.0413074', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'155', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'97', N'2020-12-10 16:30:09.3641939', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'156', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'96', N'2020-12-10 16:32:50.6314178', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'157', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2020-12-10 16:33:04.2041941', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'158', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-10 16:33:04.3972052', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'159', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'104', N'2020-12-10 17:01:22.1933136', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'160', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'93', N'2020-12-10 17:01:51.9600161', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'161', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'95', N'2020-12-10 17:01:52.3480383', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'162', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'102', N'2020-12-10 17:01:56.9563019', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'163', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'45', N'2020-12-10 17:02:51.6894325', NULL, NULL, N'Login', N'{"returnUrl":"/Users"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'164', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'110', N'2020-12-10 17:07:19.2647369', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'165', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'103', N'2020-12-10 18:43:46.3607398', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'166', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-10 18:43:53.9361731', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'167', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-10 18:44:02.1396423', NULL, NULL, N'Login', N'{"returnUrl":"/Users"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'168', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'102', N'2020-12-10 18:47:59.7652337', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'169', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1632', N'2020-12-10 18:48:10.2358326', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'170', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-10 18:48:12.1319411', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'171', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'612', N'2020-12-10 18:48:24.3956425', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'172', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'105', N'2020-12-10 18:48:25.0716812', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'173', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'884', N'2020-12-10 18:48:24.3416394', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'174', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'227', N'2020-12-10 18:48:30.1749731', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'175', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-10 18:48:30.5479944', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'176', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-10 21:19:55.4996239', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'177', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5476', N'2020-12-11 13:41:22.7104010', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'178', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4597', N'2020-12-11 13:41:38.6013099', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'179', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-11 13:41:43.4495872', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'180', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-11 13:41:53.1961447', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'181', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'53', N'2020-12-11 13:41:59.7025168', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'182', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-11 13:44:37.8015596', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'183', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'644', N'2020-12-11 13:44:47.3651066', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'184', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2020-12-11 13:44:48.0641466', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'185', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'929', N'2020-12-11 13:44:47.2771015', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'186', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'86', N'2020-12-11 13:45:44.0393482', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'187', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'13060', N'2020-12-11 13:45:44.2873623', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'188', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'460', N'2020-12-11 13:46:04.2895064', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'189', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-11 13:46:04.9895464', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'190', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'199', N'2020-12-11 14:16:24.8256351', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'191', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32227', N'2020-12-11 14:16:46.5828796', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'192', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-11 14:17:19.0687376', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'193', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'229', N'2020-12-11 14:18:39.0613130', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'194', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'82', N'2020-12-11 14:18:50.6149738', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'195', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5076', N'2020-12-11 14:18:50.8069848', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'196', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'93', N'2020-12-14 15:25:11.5670632', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'197', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1168', N'2020-12-14 15:25:21.1976140', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'198', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-14 15:25:22.5986942', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'199', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'100', N'2020-12-14 15:25:27.1409540', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'200', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'62', N'2020-12-14 15:25:27.3409654', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'201', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-14 15:26:57.4231178', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435276170470963.ZjRkYzQ0ZWMtZjg3My00NzkxLTgzYmEtNmVkZjFlNTdlNDc1NDJlMmNkYjgtNGU3MC00YTYzLThkYTEtNGQ4MGE5NGEwMzkw&state=CfDJ8E__7hY1bhBFpZynpElMek5GwuAofRym-F45fpNBxnglzvv-NnRCAIT5JnwyGDfVjdfaD8BWP4CqgAu2bCY-XMCg8jAG_Ypuo1d92g8MX2oKtGEEEYUtBMvxjN-26VCvVraEvqbZTPLjXZYp_yxgQR7cRGTv3UvSPPc_b6hoOki4sSxPnwJDpKh0ZFvfqcxPTHuBXgEcAovlmtteWR92-De9no9qRFRcGlZO3TrPJ3FPvfeumAMsOyWzm9tTPPpTbGWZWsfDZsYyXCmqBAUIVpjDptW5_5BRQ8dPwVSS15tRXMWZv8O78KuAFegi_yYEqA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'202', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'419', N'2020-12-14 15:27:07.6407022', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435276170470963.ZjRkYzQ0ZWMtZjg3My00NzkxLTgzYmEtNmVkZjFlNTdlNDc1NDJlMmNkYjgtNGU3MC00YTYzLThkYTEtNGQ4MGE5NGEwMzkw&state=CfDJ8E__7hY1bhBFpZynpElMek5GwuAofRym-F45fpNBxnglzvv-NnRCAIT5JnwyGDfVjdfaD8BWP4CqgAu2bCY-XMCg8jAG_Ypuo1d92g8MX2oKtGEEEYUtBMvxjN-26VCvVraEvqbZTPLjXZYp_yxgQR7cRGTv3UvSPPc_b6hoOki4sSxPnwJDpKh0ZFvfqcxPTHuBXgEcAovlmtteWR92-De9no9qRFRcGlZO3TrPJ3FPvfeumAMsOyWzm9tTPPpTbGWZWsfDZsYyXCmqBAUIVpjDptW5_5BRQ8dPwVSS15tRXMWZv8O78KuAFegi_yYEqA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'203', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'528', N'2020-12-14 15:27:44.1137884', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'204', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'93', N'2020-12-14 15:27:44.7028221', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'205', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'780', N'2020-12-14 15:27:44.0737861', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'206', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'65', N'2020-12-14 15:27:47.0359555', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'207', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-14 15:27:47.2019650', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'208', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'55', N'2020-12-14 15:27:55.6594488', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435276755524426.MzdhZjU5MjQtZTI5OC00NmQzLTkyODUtNzkxODE4NDliNmQ5OGQ5MGJlMWEtYjhlNS00NDEwLThjNTQtNDhlNTJlZWI3YTk3&state=CfDJ8E__7hY1bhBFpZynpElMek4nOL-bQtakhQSk-cctt6Ht-SxW91O-J5oM_NC3CqiOMLXpQ92RgaxQE43J_yFqvRGAZY165UoLiwnM6BDYYpkGoCg9NjHh5KPfu7h1SCZsLHpxPAXA2dFwVqi3R7WegHNNapbznOykBA2SsYi7sccnVT8xJNZmmObCGw1WGlQ6YQIL-kd4pD5K4-LU6A04z0K31Fs-1JT6ObD-cMyaDffcLJ7yN_d7kgqF2FMf-yPPsdGs3zmgf1aFRYAZ1lD8f4JgYcnDMZZNEwm5gcLMtClwwRWYvS1iZV1GhpLW-PnQzw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'209', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'57', N'2020-12-14 15:27:57.6095603', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435276755524426.MzdhZjU5MjQtZTI5OC00NmQzLTkyODUtNzkxODE4NDliNmQ5OGQ5MGJlMWEtYjhlNS00NDEwLThjNTQtNDhlNTJlZWI3YTk3&state=CfDJ8E__7hY1bhBFpZynpElMek4nOL-bQtakhQSk-cctt6Ht-SxW91O-J5oM_NC3CqiOMLXpQ92RgaxQE43J_yFqvRGAZY165UoLiwnM6BDYYpkGoCg9NjHh5KPfu7h1SCZsLHpxPAXA2dFwVqi3R7WegHNNapbznOykBA2SsYi7sccnVT8xJNZmmObCGw1WGlQ6YQIL-kd4pD5K4-LU6A04z0K31Fs-1JT6ObD-cMyaDffcLJ7yN_d7kgqF2FMf-yPPsdGs3zmgf1aFRYAZ1lD8f4JgYcnDMZZNEwm5gcLMtClwwRWYvS1iZV1GhpLW-PnQzw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'210', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-14 15:28:04.4819534', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435276843629466.Yzc0NzIyZmEtYmI0NC00NzRkLWI0YzAtYjU2Mjc0YThkNzc2MjUzZDhjY2EtYjU1Yi00OTA0LWI1NjAtNzM2MWI2N2JjNzU1&state=CfDJ8E__7hY1bhBFpZynpElMek6vqFSlsUgia0zlalK9NI6Lh0Ag-0Rp_shob9p7jUII8OklZH2eRUs-4ggwJ3IcqIyizgBw_6JgcQwZEQByd5vbx1YthON0ipBzDynV1fZbbjj5gRMo3DSmD-TrF21IRg_aZQZNMVCpK_5khoKXlTpZnk3RIcAG2h0nMvhbfYsrgv8f5tIV1VJ-BQl2iCGr9KfEnkx3pfbAoEliMqlkWQB2T-zeLhMEcoKkbW3YMyy3zzlYmoPvbsl8U8b2TeH6rZ0-PzdAsuDYML-YRCCHNroA9gr6Et6NXAWssGlQitbL1g&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'211', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-14 15:29:44.6896849', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435277843866676.NzI1NGU0OWItZDZiYy00Yzk5LWJhZmQtNTQyOTNkMGRiMGMxYzdmNmQ4OTktZWIyMy00OGYxLWFkMzEtMzZmNThhZDBkZjM5&state=CfDJ8E__7hY1bhBFpZynpElMek79LjTtUOOBQYu2Q6z4FNQlpaKGEdb_JdOJdJP9-_wiP_XySbg9kSG1dveHXimowC_56lt2j_bhxAuasEPqc3HRN0KlO-bQAT7DjhrhiKKsifzfiSb45Ovye-MIlrz-cXtjpsKDl3GyMkVM8D7ZgLptldbCs1nrlQ38ilsDhdAlaQeG4Og63_9oTNyK4vqlMxzmuHzfCfXvrXxKIaFByZw4PywDNZ6EEe56fVmWgTli9lqYLXBZFihWRp9uepShcIkzmgSi8nJJ774Ildfu7DL1omGVewCwwFEgqnxmot4NAA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'212', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'495', N'2020-12-14 15:30:02.0836798', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435277843866676.NzI1NGU0OWItZDZiYy00Yzk5LWJhZmQtNTQyOTNkMGRiMGMxYzdmNmQ4OTktZWIyMy00OGYxLWFkMzEtMzZmNThhZDBkZjM5&state=CfDJ8E__7hY1bhBFpZynpElMek79LjTtUOOBQYu2Q6z4FNQlpaKGEdb_JdOJdJP9-_wiP_XySbg9kSG1dveHXimowC_56lt2j_bhxAuasEPqc3HRN0KlO-bQAT7DjhrhiKKsifzfiSb45Ovye-MIlrz-cXtjpsKDl3GyMkVM8D7ZgLptldbCs1nrlQ38ilsDhdAlaQeG4Og63_9oTNyK4vqlMxzmuHzfCfXvrXxKIaFByZw4PywDNZ6EEe56fVmWgTli9lqYLXBZFihWRp9uepShcIkzmgSi8nJJ774Ildfu7DL1omGVewCwwFEgqnxmot4NAA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'213', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'107', N'2020-12-14 15:33:51.8748231', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'214', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'168', N'2020-12-14 15:34:02.6944420', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'215', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'92', N'2020-12-14 15:38:46.9286992', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'216', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1160', N'2020-12-14 15:38:57.2092872', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'217', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2020-12-14 15:38:58.6003668', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'218', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'75', N'2020-12-14 15:39:02.5095904', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'219', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'41', N'2020-12-14 15:39:02.6886006', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'220', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-14 15:39:44.4019865', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435283840769679.ZTQ1MjQ1YjMtMTU2NC00ZjE2LWFhZDEtYWQ1MjQ3NTNhNmFkZTEzYjIxOGQtNmJlYS00N2JjLTlkYjUtYTc3YzFmYjg4NDVi&state=CfDJ8E__7hY1bhBFpZynpElMek7U2U_2ivnwGDP7gZL3JZL37auGoPKaVrwf-4-TXFPZjkZQXm-PhWTMhKs2FRKOfwAYsqmaAjjY4JdrbcdnLvqq9kTvfqQCF5hqcmIPSjWu_RlIN-6go7frataVhmicEkOrKPR7Y0tWz5wGLRWLKmDu_u87NeF1Xe5-iEeQOlRZYWzVINtZL04hIQG21-ulU0NHpYxY96FUcRceHRSZXt4Kjvg4dwUp7hDfGwj9pYAnim3VzGhwddQYiknK8ctjf0UN81-2a7ZNfupBe6ilaaeQgufu5OjsHbUiXwSYqY41pA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'221', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'452', N'2020-12-14 15:39:56.5226798', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435283840769679.ZTQ1MjQ1YjMtMTU2NC00ZjE2LWFhZDEtYWQ1MjQ3NTNhNmFkZTEzYjIxOGQtNmJlYS00N2JjLTlkYjUtYTc3YzFmYjg4NDVi&state=CfDJ8E__7hY1bhBFpZynpElMek7U2U_2ivnwGDP7gZL3JZL37auGoPKaVrwf-4-TXFPZjkZQXm-PhWTMhKs2FRKOfwAYsqmaAjjY4JdrbcdnLvqq9kTvfqQCF5hqcmIPSjWu_RlIN-6go7frataVhmicEkOrKPR7Y0tWz5wGLRWLKmDu_u87NeF1Xe5-iEeQOlRZYWzVINtZL04hIQG21-ulU0NHpYxY96FUcRceHRSZXt4Kjvg4dwUp7hDfGwj9pYAnim3VzGhwddQYiknK8ctjf0UN81-2a7ZNfupBe6ilaaeQgufu5OjsHbUiXwSYqY41pA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'222', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'130', N'2020-12-14 19:03:39.9388192', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'223', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'43', N'2020-12-14 19:03:48.3362995', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'224', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'44', N'2020-12-14 19:03:51.9555065', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'225', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'117', N'2020-12-14 19:09:01.3562032', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'226', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'74773', N'2020-12-14 19:11:47.9967345', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'227', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'41', N'2020-12-14 19:13:04.2600965', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'228', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'117', N'2020-12-14 19:20:31.0806532', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'229', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'570', N'2020-12-14 19:20:46.4425318', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'230', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-14 19:20:47.0775682', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'231', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'850', N'2020-12-14 19:20:46.3765281', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'232', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'209', N'2020-12-14 19:21:24.4437054', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'233', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'319', N'2020-12-14 19:21:24.4017030', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'234', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'113', N'2020-12-14 19:22:36.5178278', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'235', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-14 19:22:47.6974672', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'236', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-14 19:22:47.8874781', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'237', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-14 19:22:58.1780667', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'238', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-14 19:23:03.5973767', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'239', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-14 19:23:05.6834960', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'240', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'57', N'2020-12-14 19:23:09.2146979', NULL, NULL, N'Login', N'{"returnUrl":"/About"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'241', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-14 19:23:11.8208470', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'242', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'64', N'2020-12-14 19:23:14.3119895', NULL, NULL, N'Login', N'{"returnUrl":"/About"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'243', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-14 19:23:15.7840737', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'244', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-14 19:50:54.3179364', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'245', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-14 19:51:20.9184579', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'246', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1390', N'2020-12-14 19:51:23.3485969', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'247', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'36', N'2020-12-14 19:51:24.9976912', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'248', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'327', N'2020-12-14 19:51:49.6491012', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'249', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'484', N'2020-12-14 19:51:49.5370948', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'250', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'568', N'2020-12-14 19:51:52.3492556', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'251', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'89', N'2020-12-14 19:51:52.9712912', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'252', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'806', N'2020-12-14 19:51:52.3082533', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'253', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'99', N'2020-12-14 19:51:54.9564047', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'254', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'22', N'2020-12-14 19:51:55.1274145', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'255', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'338', N'2020-12-14 19:51:54.8934011', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'256', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-14 19:52:32.1155301', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.AboutController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'257', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'208', N'2020-12-14 19:52:34.0936432', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'258', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'62', N'2020-12-14 19:52:34.3666589', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'259', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'427', N'2020-12-14 19:52:34.0586412', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'260', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'98', N'2020-12-14 19:52:36.0957578', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'261', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'189', N'2020-12-14 19:52:36.0637559', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'262', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-14 19:52:37.8738595', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'263', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'169', N'2020-12-14 19:52:37.8438577', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'264', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'181', N'2020-12-14 19:52:41.2630533', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'265', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-14 19:52:41.5050672', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'266', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'382', N'2020-12-14 19:52:41.2280513', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'267', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'77', N'2020-12-14 19:53:25.0825596', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'268', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2020-12-14 19:53:25.2595698', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'269', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'124', N'2020-12-14 20:07:59.3995677', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'270', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1340', N'2020-12-14 20:08:32.4174562', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'271', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-14 20:08:34.0675506', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'272', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'113', N'2020-12-14 20:08:46.4252574', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'273', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-14 20:08:46.6762718', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'274', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'117', N'2020-12-14 20:10:35.4234918', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'275', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-14 20:10:47.8011997', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'276', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'66', N'2020-12-14 20:11:39.1081343', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435446984870988.YTdkNDk1NTgtN2E0Ny00NGQwLTg3Y2ItMWE3OTRkNzkzOGQxYTA0YTg2NTUtMTFiYi00NDE3LWE0MjktYmU0MzgwZjBiM2U3&state=CfDJ8E__7hY1bhBFpZynpElMek6ciMSqFKGy9QWmvFg3EivdUzZQKaZgM4ORhwcQZMp-ofccYMQySCpsWJxb7aDpDgJnxxyb_1-zhmeH3xCU9RZJrw-UxjNODID1d1hJUN22Pgeq-2qMwou3e5okKW8jm_bagz_OVGPZNdX2DmdDQTpZKHT5WHXxt72EYUikBChXfTWHyWoEVOn3Ye7BWyjFGoTaimihVMkm948vCR-OjgOgzSj0LqnEEh3oTKIuHCX4ZgpTiV2g-awbRw7YPImRK5tC7w4zVGaN9UNc3R1Bv5N7MJMh4jIvYXuYnpoEgKRvRQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'277', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1353', N'2020-12-14 20:12:18.3133767', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435446984870988.YTdkNDk1NTgtN2E0Ny00NGQwLTg3Y2ItMWE3OTRkNzkzOGQxYTA0YTg2NTUtMTFiYi00NDE3LWE0MjktYmU0MzgwZjBiM2U3&state=CfDJ8E__7hY1bhBFpZynpElMek6ciMSqFKGy9QWmvFg3EivdUzZQKaZgM4ORhwcQZMp-ofccYMQySCpsWJxb7aDpDgJnxxyb_1-zhmeH3xCU9RZJrw-UxjNODID1d1hJUN22Pgeq-2qMwou3e5okKW8jm_bagz_OVGPZNdX2DmdDQTpZKHT5WHXxt72EYUikBChXfTWHyWoEVOn3Ye7BWyjFGoTaimihVMkm948vCR-OjgOgzSj0LqnEEh3oTKIuHCX4ZgpTiV2g-awbRw7YPImRK5tC7w4zVGaN9UNc3R1Bv5N7MJMh4jIvYXuYnpoEgKRvRQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'278', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'657', N'2020-12-14 20:19:13.7261370', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'279', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'83', N'2020-12-14 20:19:14.4521785', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'280', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'972', N'2020-12-14 20:19:13.6411321', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'281', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-14 20:19:19.3364579', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'282', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'58', N'2020-12-14 20:19:19.5774717', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'283', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'399', N'2020-12-14 20:19:19.2954555', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'284', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-14 20:19:22.5286405', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'285', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2020-12-14 20:19:22.7306520', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'286', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'60', N'2020-12-14 20:19:28.5199831', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435451683689745.ZWMyN2IwMTItYjM4MS00MDAzLTk3MGUtN2YxNzlkNTExYTBlZDBmZTc3YTItNjg3YS00MTQzLTk0OGItYjA2OWQ4ZTIxNDY1&state=CfDJ8E__7hY1bhBFpZynpElMek6uNKtX1pI7-hMlwHBnos2XiBwhJ1DAxkfifMhbaC2v9lmpFBov2QaGhD7OAAu-7Pgq5Jwwm4uSzHKa7w9fSvvbM_la2GKQEtrMgkstLFwYssfZSC4J7m-NSYfpnx--aSDaOYaUULBAsLk8SvFNJEeEXNv0S5DfasiDUccnsd8miqNMSHoxwXUQV-QVNQNphK_WSJk7BwOus6GF9lkK7FOC5BdXNDNUctkvWvFhDt7pz_S3GeaFcdpJoBHwnHsSMSvJlAbR8NePt1LQ015V2GpPNmPpUZyAqmGipX0nQAoIbA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'287', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2020-12-14 20:19:50.4512375', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'288', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-14 20:20:02.5139275', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435451683689745.ZWMyN2IwMTItYjM4MS00MDAzLTk3MGUtN2YxNzlkNTExYTBlZDBmZTc3YTItNjg3YS00MTQzLTk0OGItYjA2OWQ4ZTIxNDY1&state=CfDJ8E__7hY1bhBFpZynpElMek6uNKtX1pI7-hMlwHBnos2XiBwhJ1DAxkfifMhbaC2v9lmpFBov2QaGhD7OAAu-7Pgq5Jwwm4uSzHKa7w9fSvvbM_la2GKQEtrMgkstLFwYssfZSC4J7m-NSYfpnx--aSDaOYaUULBAsLk8SvFNJEeEXNv0S5DfasiDUccnsd8miqNMSHoxwXUQV-QVNQNphK_WSJk7BwOus6GF9lkK7FOC5BdXNDNUctkvWvFhDt7pz_S3GeaFcdpJoBHwnHsSMSvJlAbR8NePt1LQ015V2GpPNmPpUZyAqmGipX0nQAoIbA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'289', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'467', N'2020-12-14 20:20:06.7691709', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435451683689745.ZWMyN2IwMTItYjM4MS00MDAzLTk3MGUtN2YxNzlkNTExYTBlZDBmZTc3YTItNjg3YS00MTQzLTk0OGItYjA2OWQ4ZTIxNDY1&state=CfDJ8E__7hY1bhBFpZynpElMek6uNKtX1pI7-hMlwHBnos2XiBwhJ1DAxkfifMhbaC2v9lmpFBov2QaGhD7OAAu-7Pgq5Jwwm4uSzHKa7w9fSvvbM_la2GKQEtrMgkstLFwYssfZSC4J7m-NSYfpnx--aSDaOYaUULBAsLk8SvFNJEeEXNv0S5DfasiDUccnsd8miqNMSHoxwXUQV-QVNQNphK_WSJk7BwOus6GF9lkK7FOC5BdXNDNUctkvWvFhDt7pz_S3GeaFcdpJoBHwnHsSMSvJlAbR8NePt1LQ015V2GpPNmPpUZyAqmGipX0nQAoIbA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'290', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'70', N'2020-12-14 20:22:10.6212548', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'291', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'176', N'2020-12-14 20:22:26.1881452', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'292', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'75', N'2020-12-14 20:22:26.4211585', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'293', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'415', N'2020-12-14 20:22:26.1381423', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'294', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'162', N'2020-12-14 20:22:46.8463268', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'295', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-14 20:22:47.0643392', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'296', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'355', N'2020-12-14 20:22:46.8103247', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'297', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'71', N'2020-12-14 20:22:50.1175139', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'298', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'15', N'2020-12-14 20:22:50.2325204', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'299', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'297', N'2020-12-14 20:22:50.0715112', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'300', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'211', N'2020-12-14 20:22:52.3626423', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'301', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'58', N'2020-12-14 20:22:52.6366580', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'302', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'427', N'2020-12-14 20:22:52.3216399', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'303', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'153', N'2020-12-14 20:39:36.1520558', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'304', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'115', N'2020-12-14 20:40:11.5020777', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'305', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'139', N'2020-12-14 20:59:08.7181227', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'306', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1473', N'2020-12-14 20:59:21.5328557', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'307', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-14 20:59:23.3699607', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'308', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'137', N'2020-12-14 20:59:28.4582518', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'309', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-14 20:59:28.7332675', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'310', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'65', N'2020-12-14 21:00:43.1275226', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435476425984923.ODIzYjE0ZTUtODNmZi00MmU2LWIxOGMtNjRhYWFhY2JiYmUwNThhYWZlNGItMzA2ZS00MTYwLWE2OWQtMzg3ZmIyYTMwZTE4&state=CfDJ8E__7hY1bhBFpZynpElMek7vxdZHkIJTy51wpFrqPp6Dg1HI02uC6813cbIQsmNVlw5O9Q8Y7knOii8DG4GCv3LDUF9OPQbs-2qWOZQXgq3M_Xsr0C-hY2L40Kvd2u6I340Rt_LW6AkKcWSPRqLKfANFxLJgvIo272YqQSs7TsW7MWBeW8GRX_z7K8aXPI89yQaHih0QzB6qbztpwF4xtxfI1ZKpEclW2o2FZaUw8FaeIfJbxapM0FdCmYvQ_4wkTv0f8SHSvU0GI1nuFJd_Dw4UFHpRHOdLoLugKeRq66Zz-MwMa-BgxhzZGciiPsFUXg&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'311', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'519', N'2020-12-14 21:00:49.3728798', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435476425984923.ODIzYjE0ZTUtODNmZi00MmU2LWIxOGMtNjRhYWFhY2JiYmUwNThhYWZlNGItMzA2ZS00MTYwLWE2OWQtMzg3ZmIyYTMwZTE4&state=CfDJ8E__7hY1bhBFpZynpElMek7vxdZHkIJTy51wpFrqPp6Dg1HI02uC6813cbIQsmNVlw5O9Q8Y7knOii8DG4GCv3LDUF9OPQbs-2qWOZQXgq3M_Xsr0C-hY2L40Kvd2u6I340Rt_LW6AkKcWSPRqLKfANFxLJgvIo272YqQSs7TsW7MWBeW8GRX_z7K8aXPI89yQaHih0QzB6qbztpwF4xtxfI1ZKpEclW2o2FZaUw8FaeIfJbxapM0FdCmYvQ_4wkTv0f8SHSvU0GI1nuFJd_Dw4UFHpRHOdLoLugKeRq66Zz-MwMa-BgxhzZGciiPsFUXg&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'312', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'319', N'2020-12-15 08:50:26.0111751', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'313', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'104', N'2020-12-15 08:50:55.0528362', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'314', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'64', N'2020-12-15 08:50:55.5368638', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'315', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-15 08:52:02.9417192', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435903216396447.NGM3ZGM0MjYtMDAwMi00NDliLWFhZjctZTg0NjQxNmMzMTUxMTFjMmE1YTQtMDExZS00MmMwLTgzYTAtNTA3MDBiODI5NTRk&state=CfDJ8E__7hY1bhBFpZynpElMek62d96EGT-4naFTZZS3qQBA-5UAS8FkTzvdHZeer5ItdLWwQyX_XUchc3CJuJhsM7GwFe3vx5L3lgGL6okLR-fNDcFzm9JlJgCU7FboylSyGC5gLLEoQwvQDzxc-d-EtEOhTIt4xlK24f_EiUCimJ8APuezcKskOqKJ2OujfeFJgZRsO7W2rN6WUguVYxd6MK4oIKktq2iCupd1sKp8QrK8LudWWd4W7eiOcDJYz_JeLB64eGuDTuuliQKPK10rcoOCt1rcCDP0HDNAd1o8RSy6_hngyGsf49gIopFIFaR6SQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'316', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2074', N'2020-12-15 08:52:25.3740022', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435903216396447.NGM3ZGM0MjYtMDAwMi00NDliLWFhZjctZTg0NjQxNmMzMTUxMTFjMmE1YTQtMDExZS00MmMwLTgzYTAtNTA3MDBiODI5NTRk&state=CfDJ8E__7hY1bhBFpZynpElMek62d96EGT-4naFTZZS3qQBA-5UAS8FkTzvdHZeer5ItdLWwQyX_XUchc3CJuJhsM7GwFe3vx5L3lgGL6okLR-fNDcFzm9JlJgCU7FboylSyGC5gLLEoQwvQDzxc-d-EtEOhTIt4xlK24f_EiUCimJ8APuezcKskOqKJ2OujfeFJgZRsO7W2rN6WUguVYxd6MK4oIKktq2iCupd1sKp8QrK8LudWWd4W7eiOcDJYz_JeLB64eGuDTuuliQKPK10rcoOCt1rcCDP0HDNAd1o8RSy6_hngyGsf49gIopFIFaR6SQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'317', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'170', N'2020-12-15 08:58:26.3266475', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'318', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'281', N'2020-12-15 08:58:42.6625819', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'319', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'78', N'2020-12-15 08:58:43.2836174', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'320', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'180', N'2020-12-15 08:59:42.9960328', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435907793048217.Yzg0ZGU4NjUtM2Y1ZS00NDNkLWE2N2QtZmVjNDI1ZDA1ZjlkMmZjMjYzZDEtOTVlOS00NGMyLTk2MzMtNzA5ZmZmNjcyYmEx&state=CfDJ8E__7hY1bhBFpZynpElMek71ErOsrB9V7LP2cQftRyLGFHtGGjNrLvvDedUp6l6GETBi_SZNCBkf6GCllyaQ0hIDw_IuLPwAZYSdh_Ixoy1X9NEzd3mkQ0Vj6NOk5LcIk2ACo_nqF9idJsY7FUDVe_nR6aJdaojRDeq8C04fTPo7k-OVWm6-HAp5yRZahbWu9loA_FM9t8f7dX0H868cXi1pmMywmZn-Oe6hMSL85zo23VAPQ097RQqGW4tTSr9S9GWNdaaHZ_QzCUxfQnM0wt7TnSldQuu6fzUy8a8NvdF2On6EiqqPqAVsHrCLbKVv-A&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'321', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1980', N'2020-12-15 08:59:49.3873984', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435907793048217.Yzg0ZGU4NjUtM2Y1ZS00NDNkLWE2N2QtZmVjNDI1ZDA1ZjlkMmZjMjYzZDEtOTVlOS00NGMyLTk2MzMtNzA5ZmZmNjcyYmEx&state=CfDJ8E__7hY1bhBFpZynpElMek71ErOsrB9V7LP2cQftRyLGFHtGGjNrLvvDedUp6l6GETBi_SZNCBkf6GCllyaQ0hIDw_IuLPwAZYSdh_Ixoy1X9NEzd3mkQ0Vj6NOk5LcIk2ACo_nqF9idJsY7FUDVe_nR6aJdaojRDeq8C04fTPo7k-OVWm6-HAp5yRZahbWu9loA_FM9t8f7dX0H868cXi1pmMywmZn-Oe6hMSL85zo23VAPQ097RQqGW4tTSr9S9GWNdaaHZ_QzCUxfQnM0wt7TnSldQuu6fzUy8a8NvdF2On6EiqqPqAVsHrCLbKVv-A&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'322', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'161', N'2020-12-15 09:06:15.1314616', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'323', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'753', N'2020-12-15 09:06:32.0914317', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'324', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'188', N'2020-12-15 09:06:32.9534810', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'325', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1230', N'2020-12-15 09:06:31.9804254', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'326', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'144', N'2020-12-15 09:06:39.8508755', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'327', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'104', N'2020-12-15 09:06:40.1888949', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'328', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'93', N'2020-12-15 09:07:48.1517821', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435912669167115.YzI1OGU0OTMtM2RiZC00YTliLWIxMmYtNmFlMzAxOGI2MzQ5MzZkMTY4YzktMDdjNS00MDI1LTljZWUtYmRhMWYxYjRlMWVi&state=CfDJ8E__7hY1bhBFpZynpElMek7V3YhtsnNwpNLbYeECFGsLYge6yJ48peAwsK1KmIMcbxME_MFxW6SLe0BAQn6KuLu8M0M1RI-pmf6tqNFIVYDj_eq2i0Jwf6s9vNnGzJZG3t_sYpDJjv9kMuKL6rmcJ6ABaIMFNScAWCn4kZDdonMA0bquvfQ9nHzPkRcCiVtS8D-VjTa8Q94lXs5E1WjB5JVpZwFhHQj82a_zIme9vU7qikLpfZJA_hkx26p3qV70s4l95lgkoAlEp1ScKvY_PYNZ3jq_nRxWlQu06ZLkxmj-Wc9RmJZkCfU_1lVPH5f1iQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'329', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1841', N'2020-12-15 09:07:54.0391188', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435912669167115.YzI1OGU0OTMtM2RiZC00YTliLWIxMmYtNmFlMzAxOGI2MzQ5MzZkMTY4YzktMDdjNS00MDI1LTljZWUtYmRhMWYxYjRlMWVi&state=CfDJ8E__7hY1bhBFpZynpElMek7V3YhtsnNwpNLbYeECFGsLYge6yJ48peAwsK1KmIMcbxME_MFxW6SLe0BAQn6KuLu8M0M1RI-pmf6tqNFIVYDj_eq2i0Jwf6s9vNnGzJZG3t_sYpDJjv9kMuKL6rmcJ6ABaIMFNScAWCn4kZDdonMA0bquvfQ9nHzPkRcCiVtS8D-VjTa8Q94lXs5E1WjB5JVpZwFhHQj82a_zIme9vU7qikLpfZJA_hkx26p3qV70s4l95lgkoAlEp1ScKvY_PYNZ3jq_nRxWlQu06ZLkxmj-Wc9RmJZkCfU_1lVPH5f1iQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'330', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'111', N'2020-12-15 09:15:30.8962496', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'331', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'104', N'2020-12-15 09:15:44.1230061', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'332', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'79', N'2020-12-15 09:15:44.5790322', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'333', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'127', N'2020-12-15 09:16:24.7873320', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435917840702910.YzUyMDk5ODgtNzY4OC00MDZiLTliZjktYzVmMTgyMDk1MjlmMTVhOGVjNGYtODM0NS00NTg5LWJiNDAtNmI0NTVmNjg4OTM2&state=CfDJ8E__7hY1bhBFpZynpElMek7SFFP3UeLBeJEE8V6ofFPCCbLK3QzwBXc-7g8yodVOnewsfgde6Uvq9PnPFg_h14TM9Dv4Now-vDQlk5ZfSYAI2ZnPir-bDJiZxhd4QxDhYoqVm-u8BU1by3FyF0dXLA1OKH-aiqp85iYXvVSRS-cSHV-GlbCFowbwTj29svDxgU3qFZCeoc_mxbiWa4HnDsVJop3BHoyjw6vQLL-R4DX7FRRjtqAv37lK-vI6Xi3E5u3W40pmK5_m9i0jN19iRb1Lia8FVurwwnHsXD8MF8jundRl6wZyUXW-zoTdf1NZDw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'334', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1464', N'2020-12-15 09:16:32.0197456', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435917840702910.YzUyMDk5ODgtNzY4OC00MDZiLTliZjktYzVmMTgyMDk1MjlmMTVhOGVjNGYtODM0NS00NTg5LWJiNDAtNmI0NTVmNjg4OTM2&state=CfDJ8E__7hY1bhBFpZynpElMek7SFFP3UeLBeJEE8V6ofFPCCbLK3QzwBXc-7g8yodVOnewsfgde6Uvq9PnPFg_h14TM9Dv4Now-vDQlk5ZfSYAI2ZnPir-bDJiZxhd4QxDhYoqVm-u8BU1by3FyF0dXLA1OKH-aiqp85iYXvVSRS-cSHV-GlbCFowbwTj29svDxgU3qFZCeoc_mxbiWa4HnDsVJop3BHoyjw6vQLL-R4DX7FRRjtqAv37lK-vI6Xi3E5u3W40pmK5_m9i0jN19iRb1Lia8FVurwwnHsXD8MF8jundRl6wZyUXW-zoTdf1NZDw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'335', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'262', N'2020-12-15 09:35:23.6134691', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'336', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'77', N'2020-12-15 09:35:24.0274928', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'337', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-15 09:35:33.6620438', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435929335410369.ZDc3MzE3ZmQtOWZlNC00NTY5LTkzNDYtNDczZmYxYTZjYTgwNjMwNzNkNjAtNmFlNi00MWYzLWFhM2ItNGZiODAyNTE2NmFm&state=CfDJ8E__7hY1bhBFpZynpElMek6zfpJWcCOtqwbIS6ZbsUDHsKNJdO87wDCry7mfOaI6d_1y1Xt8fdwToJyvqiQUSrpbNmeulpS_9qkIDB40V1tfcWS6LMidMn5jQ5rmu7za1ezWSlwlaU1D6CX-lHY5IbHzA-mDW84mYg_Njt6PeTtajSIqA9E9dbZBA-1JgAjdl2nycv0t734BCz6sT_LQlXGNdJJMhU4b6QvRhzjKPLAzj3m0iU2U-L7zJEbdXFVhBXbn2v-c8aaqOHNTM6C97h0Yryj8XB9Y2OmLumLS-jpMtNr2rIKQlSiR7J7mqgJsAJ2jNl_zogmYmHhys_jQs9o&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'338', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'555', N'2020-12-15 09:35:35.8791707', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435929335410369.ZDc3MzE3ZmQtOWZlNC00NTY5LTkzNDYtNDczZmYxYTZjYTgwNjMwNzNkNjAtNmFlNi00MWYzLWFhM2ItNGZiODAyNTE2NmFm&state=CfDJ8E__7hY1bhBFpZynpElMek6zfpJWcCOtqwbIS6ZbsUDHsKNJdO87wDCry7mfOaI6d_1y1Xt8fdwToJyvqiQUSrpbNmeulpS_9qkIDB40V1tfcWS6LMidMn5jQ5rmu7za1ezWSlwlaU1D6CX-lHY5IbHzA-mDW84mYg_Njt6PeTtajSIqA9E9dbZBA-1JgAjdl2nycv0t734BCz6sT_LQlXGNdJJMhU4b6QvRhzjKPLAzj3m0iU2U-L7zJEbdXFVhBXbn2v-c8aaqOHNTM6C97h0Yryj8XB9Y2OmLumLS-jpMtNr2rIKQlSiR7J7mqgJsAJ2jNl_zogmYmHhys_jQs9o&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'339', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-15 09:35:48.1618732', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'340', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'112', N'2020-12-15 09:35:48.4648905', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'341', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'65', N'2020-12-15 09:35:52.5771257', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435929523521129.ZjBhMDUxZmEtNWE1NC00MTM3LTkyMTctNTdjZmRlNjkxOTFmMzEyMzBiMDMtNjRmYy00YzZkLWJhOTItMDA4YWFhODUyYzZm&state=CfDJ8E__7hY1bhBFpZynpElMek7K0EnIbbNq0F9GBGw8AKWEVcIJMFZqJXZUIhtYaiCnNh6zCTY26rrP7B43iYSdglN0bZOMrtNO1hd-GXFv_hxkza0cv7WGcCUzFkttsaR48Zlh861n7GCfmN6TblJ_40-_IsM1N5CKlbP2vwB3qX1uYlB8vlcLhVE41uGD5u9ayAEL5ZjAxoPxnROzybMbv04lj1X4AaakMINjKJ_8qBqNYqzccuLnFkR4nzvqs9i0RQEAT9Y2naG88tJQP5gX7Hz2qb5cTuHJzkmUeZnwUXLYfPxR77Z3itQw5Ej76p_-jA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'342', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'589', N'2020-12-15 09:36:11.7602229', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435929523521129.ZjBhMDUxZmEtNWE1NC00MTM3LTkyMTctNTdjZmRlNjkxOTFmMzEyMzBiMDMtNjRmYy00YzZkLWJhOTItMDA4YWFhODUyYzZm&state=CfDJ8E__7hY1bhBFpZynpElMek7K0EnIbbNq0F9GBGw8AKWEVcIJMFZqJXZUIhtYaiCnNh6zCTY26rrP7B43iYSdglN0bZOMrtNO1hd-GXFv_hxkza0cv7WGcCUzFkttsaR48Zlh861n7GCfmN6TblJ_40-_IsM1N5CKlbP2vwB3qX1uYlB8vlcLhVE41uGD5u9ayAEL5ZjAxoPxnROzybMbv04lj1X4AaakMINjKJ_8qBqNYqzccuLnFkR4nzvqs9i0RQEAT9Y2naG88tJQP5gX7Hz2qb5cTuHJzkmUeZnwUXLYfPxR77Z3itQw5Ej76p_-jA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'343', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'800', N'2020-12-15 10:15:58.7837529', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'344', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'91', N'2020-12-15 10:15:59.6408019', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'345', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1081', N'2020-12-15 10:15:58.7117488', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'346', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'77', N'2020-12-15 10:16:03.1760041', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'347', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'24', N'2020-12-15 10:16:03.5300243', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'348', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'518', N'2020-12-15 10:16:03.1280014', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'349', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'302', N'2020-12-15 10:16:09.6483743', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'350', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'71', N'2020-12-15 10:16:10.0073948', NULL, NULL, N'GetRoles', N'{}', N'MyAbp01.Users.UserAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'351', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'591', N'2020-12-15 10:16:09.5613693', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'352', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'195', N'2020-12-15 10:21:22.4252641', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'353', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'121', N'2020-12-15 10:22:07.9388673', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'354', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'54', N'2020-12-15 10:22:08.3398903', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'355', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-15 10:22:13.2211695', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435957329431536.MTE1ZTdjOGEtOGMxMS00MTM4LWFmMTItMGQyNDU5ZTc3MGM0YjkyODcyOGItNmRjYS00NGU5LTg3ZGMtNGQyNDkwNWExMGFk&state=CfDJ8E__7hY1bhBFpZynpElMek5Zfq9KaWA5ZXEC0UK1SAM3Iza8tT6KGQidQwamr93X84LW9Z7jn0_Qdf7v2AA1ozO8WJyyhN30RtaZ1ZRGdFs-iBSCpiNDZjNVXzNJoH1afmomgVRin6lKXsfziOs_nD9L_x3I4jSKdg7PgM7GP5JwOmB-i-oPDJQ1Vi4rau9uJMVXw2xPiKKmcbqmzYFI1aPfutOdqImuinxIppwixsWx2zCLBJO4rRundPEihYX7uSTYALErEyMkCFIZTcsS81vSCGq_XlI-pLZuFPsECTFJrNyVEGHASqJlPG_TvQI8Tw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'356', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1571', N'2020-12-15 10:22:20.3895795', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435957329431536.MTE1ZTdjOGEtOGMxMS00MTM4LWFmMTItMGQyNDU5ZTc3MGM0YjkyODcyOGItNmRjYS00NGU5LTg3ZGMtNGQyNDkwNWExMGFk&state=CfDJ8E__7hY1bhBFpZynpElMek5Zfq9KaWA5ZXEC0UK1SAM3Iza8tT6KGQidQwamr93X84LW9Z7jn0_Qdf7v2AA1ozO8WJyyhN30RtaZ1ZRGdFs-iBSCpiNDZjNVXzNJoH1afmomgVRin6lKXsfziOs_nD9L_x3I4jSKdg7PgM7GP5JwOmB-i-oPDJQ1Vi4rau9uJMVXw2xPiKKmcbqmzYFI1aPfutOdqImuinxIppwixsWx2zCLBJO4rRundPEihYX7uSTYALErEyMkCFIZTcsS81vSCGq_XlI-pLZuFPsECTFJrNyVEGHASqJlPG_TvQI8Tw&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'357', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'61', N'2020-12-15 10:23:04.4560999', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'358', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'41', N'2020-12-15 10:23:04.6201093', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'359', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2020-12-15 10:27:33.4444852', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435960504563143.NTRhNmIxZDktNWNiMC00ZWNiLWJkMTktYzI1YzgzMmZhNzBmODY5NDVkOGUtNjM2Ny00MDQ5LTkwMzgtYWYxMWZiNmZmODYy&state=CfDJ8E__7hY1bhBFpZynpElMek5rDPk54SYwbVe9gupg-COUO4nCvu8UQASoZx9eERAyoERhEZUdnTBwnK3DBAvXMfYb-lLJ0PHBSEGJ3p7vbu_T-oX6FxoGsWwlSencnMrA8iugwEDycAc_WdghQkGtTCSbh34FvTsoBZ2RUlz86rB8rW3GI7dPnsJehvWb38N4Yx7CE5o7AYAxD_T3vmDnwdPARhN1M7Ylb4_SHCN7inPeE0y8Qe9zzT9U5qNqRyIBN4gJHHzpzOXASu40WTapkXnzLGqbjP1lNmQ22YX8in_i1VxEH2sjrWVEsbLA-11YRA&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'360', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3', N'2020-12-15 10:27:44.9841452', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435960648471374.MjJjMDQzMTItMTUxNS00MTdmLWE2MDEtNDcyYTA1NzdlZTQ4MWJjMDhhNDYtMTQxNS00ZGQ3LTk4ZjUtOTJlNDAxNWU1NDg2&state=CfDJ8E__7hY1bhBFpZynpElMek4uC63lrieFPP0lNbBowb812npSCYo2QmzTgGtDjlr338zlg1LkwmXFgpyqTvUKJsZRw7AiGoi5PK6300XZ1bfg56jOt2vYyah-3rkShMRqR_5w6ljCddsN3m5uEHlDHTDMzSnvvtVwIF4Vx1FBiZ5Pm_NF2WH-7bFX3vbcERH8ipnPgLo4zHSjiRMwkgPCh8KMyslc9F0n6vF75J03woPc6DKm2uvg13d35L-jE0GlQacrsrcz73zvT9lIIdcukyQUkJPVc2h41V6wQ61tGbw0vNSmqBvzBtnaK2bjtYLQ1g&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'361', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1038', N'2020-12-15 10:28:49.2958236', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435960648471374.MjJjMDQzMTItMTUxNS00MTdmLWE2MDEtNDcyYTA1NzdlZTQ4MWJjMDhhNDYtMTQxNS00ZGQ3LTk4ZjUtOTJlNDAxNWU1NDg2&state=CfDJ8E__7hY1bhBFpZynpElMek4uC63lrieFPP0lNbBowb812npSCYo2QmzTgGtDjlr338zlg1LkwmXFgpyqTvUKJsZRw7AiGoi5PK6300XZ1bfg56jOt2vYyah-3rkShMRqR_5w6ljCddsN3m5uEHlDHTDMzSnvvtVwIF4Vx1FBiZ5Pm_NF2WH-7bFX3vbcERH8ipnPgLo4zHSjiRMwkgPCh8KMyslc9F0n6vF75J03woPc6DKm2uvg13d35L-jE0GlQacrsrcz73zvT9lIIdcukyQUkJPVc2h41V6wQ61tGbw0vNSmqBvzBtnaK2bjtYLQ1g&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'362', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'124', N'2020-12-15 11:26:36.9451618', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'363', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'88', N'2020-12-15 11:27:17.6084876', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'364', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'108', N'2020-12-15 11:27:17.8885037', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'365', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'58', N'2020-12-15 11:28:16.2598423', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435996955978044.NGI2M2Y3YzYtMzFkMi00YTk1LWE5ZjItNGE4YWY0ZTFmNGUxZWQyZWM0NjEtOTJiYS00Mjg3LWI2NTktMmI3MGM5NTA2NDRk&state=CfDJ8E__7hY1bhBFpZynpElMek5Fv5JOZp-DcY0rY48gx0KfXVpyXuc5gsUoECdn3BmM69HTIlt5_4cqFy0tNYVaN7MvZud5jp9bxWFvIzRH2bVIm3KOZAYFXRL4akjk_MFn2rgQQrPfi2T4baREKT8jdgyUpOS3xGaKZGs3TssG1EudDC-XHcHB6cNS4WXHpFTaU8INbhw_FeXrvjV2y54QGmqg7_8n9thBumqyXrmDJaFQVEZCUs3gTjQhbKytsP1W6o1CU6UfXz6qzyRqSI_7E14Me3YaWHE9gJUkdeE9OqvKvAnhINby5TBH0p1-OEzIFQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'366', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1046', N'2020-12-15 11:28:23.7232692', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637435996955978044.NGI2M2Y3YzYtMzFkMi00YTk1LWE5ZjItNGE4YWY0ZTFmNGUxZWQyZWM0NjEtOTJiYS00Mjg3LWI2NTktMmI3MGM5NTA2NDRk&state=CfDJ8E__7hY1bhBFpZynpElMek5Fv5JOZp-DcY0rY48gx0KfXVpyXuc5gsUoECdn3BmM69HTIlt5_4cqFy0tNYVaN7MvZud5jp9bxWFvIzRH2bVIm3KOZAYFXRL4akjk_MFn2rgQQrPfi2T4baREKT8jdgyUpOS3xGaKZGs3TssG1EudDC-XHcHB6cNS4WXHpFTaU8INbhw_FeXrvjV2y54QGmqg7_8n9thBumqyXrmDJaFQVEZCUs3gTjQhbKytsP1W6o1CU6UfXz6qzyRqSI_7E14Me3YaWHE9gJUkdeE9OqvKvAnhINby5TBH0p1-OEzIFQ&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'367', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'106', N'2020-12-15 11:34:16.5074473', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'368', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-15 11:35:03.2281196', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'369', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'78', N'2020-12-15 11:35:09.2754655', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637436001090974553.MDM2ZjViNzAtMTQyNC00MWZhLTk3YzMtNWJmZjlmOWJmMzY2NzY1NDY0YTAtYjJmNi00NmFlLTgwNzktNjAyMmNjNGIxYzZh&state=CfDJ8E__7hY1bhBFpZynpElMek6kGFcHhM-GX517vtX4U1G9FAHMvyzctzx-JLDJlea_3rz4EUNshsS5JM0JKNW_Dga8p2ojhj19ZpWWI6VXxeKJtNyxfJRyPxKEvhV5sNlgLBHMtHjEmj2eTYs8kO8tVTzMO7tlaxl-8Zlq928Wrd3LkXBa7ZHFXCVwtFupkt8yDQQWvV1D6T9PtmVh0RscYrbxTYdBO34ex5IKgXoJ3JTP8xz7t2QnbOEpkhA40HBdIz8fT6pzhaml3hQ1npyVYyY2l9NdlyUcAlJYCayhOEXqKj4sC9YwvmtuunbgdfmtizAsovWtF6yAEmfVNCOZVUo&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'370', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'649', N'2020-12-15 11:35:16.0718542', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=http%3A%2F%2Flocalhost%3A5002%2Fsignin-oidc&response_type=id_token&scope=openid%20profile&response_mode=form_post&nonce=637436001090974553.MDM2ZjViNzAtMTQyNC00MWZhLTk3YzMtNWJmZjlmOWJmMzY2NzY1NDY0YTAtYjJmNi00NmFlLTgwNzktNjAyMmNjNGIxYzZh&state=CfDJ8E__7hY1bhBFpZynpElMek6kGFcHhM-GX517vtX4U1G9FAHMvyzctzx-JLDJlea_3rz4EUNshsS5JM0JKNW_Dga8p2ojhj19ZpWWI6VXxeKJtNyxfJRyPxKEvhV5sNlgLBHMtHjEmj2eTYs8kO8tVTzMO7tlaxl-8Zlq928Wrd3LkXBa7ZHFXCVwtFupkt8yDQQWvV1D6T9PtmVh0RscYrbxTYdBO34ex5IKgXoJ3JTP8xz7t2QnbOEpkhA40HBdIz8fT6pzhaml3hQ1npyVYyY2l9NdlyUcAlJYCayhOEXqKj4sC9YwvmtuunbgdfmtizAsovWtF6yAEmfVNCOZVUo&x-client-SKU=ID_NETSTANDARD2_0&x-client-ver=5.3.0.0","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'371', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'140', N'2020-12-15 11:36:13.8421585', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'372', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-15 11:36:48.9261652', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'373', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'101', N'2020-12-15 13:34:31.7761371', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'374', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'171', N'2020-12-15 13:52:20.3512561', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'375', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'105', N'2020-12-15 13:52:34.4100602', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'376', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-15 13:52:34.8730867', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'377', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1698', N'2020-12-15 13:52:37.4022313', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'378', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'44', N'2020-12-15 13:52:39.3073403', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'379', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'76', N'2020-12-15 13:52:47.9418342', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'380', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-15 13:52:48.3328565', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'381', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'641', N'2020-12-15 13:52:53.4271479', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'382', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'69', N'2020-12-15 13:52:54.4612070', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'383', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'300', N'2020-12-15 13:53:31.7693409', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'384', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'114', N'2020-12-15 13:58:33.2815865', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'385', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'288', N'2020-12-15 14:02:33.5093267', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'386', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'250', N'2020-12-15 14:36:41.7584798', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'387', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'87', N'2020-12-15 14:49:47.9504475', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'388', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'74', N'2020-12-15 14:49:57.4449905', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'389', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'162', N'2020-12-15 15:19:02.1707831', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'390', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'61', N'2020-12-15 15:19:08.7421590', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'391', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'257', N'2020-12-15 15:19:09.0241751', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'392', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1113', N'2020-12-15 15:19:11.7293298', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'393', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'66', N'2020-12-15 15:19:13.3064200', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'394', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'67', N'2020-12-15 15:19:23.3049919', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'395', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-16 09:53:23.9515670', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'396', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'288', N'2020-12-16 09:55:50.9799765', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'397', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'365', N'2020-12-16 13:47:18.1782789', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'398', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-16 13:47:19.0023260', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'399', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'250528', N'2020-12-16 13:48:42.3230917', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'400', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-16 13:52:53.3064471', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'401', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'139', N'2020-12-16 13:59:25.2508650', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'402', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'123', N'2020-12-16 13:59:51.4323625', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'403', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-16 13:59:51.7903830', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'404', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'800079', N'2020-12-16 13:59:56.1096300', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'405', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'152', N'2020-12-16 14:13:30.8232290', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'406', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'15531', N'2020-12-16 14:13:18.4015185', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'407', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'6037', N'2020-12-16 14:13:27.9020619', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'408', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'20165', N'2020-12-16 14:13:18.5935295', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'409', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'10536', N'2020-12-16 14:13:28.1490760', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'410', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'113046', N'2020-12-16 14:13:18.8075417', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'411', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'60', N'2020-12-16 14:15:34.3372936', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'412', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5137', N'2020-12-16 14:15:37.0444484', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'413', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-16 14:15:42.3467517', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'414', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'547', N'2020-12-16 14:16:23.4591032', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'415', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'857', N'2020-12-16 14:16:23.3920994', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'416', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'207', N'2020-12-16 14:16:24.2471483', NULL, NULL, N'GetAll', N'{"input":{"keyword":null,"isActive":null,"skipCount":0,"maxResultCount":2147483647}}', N'MyAbp01.MultiTenancy.TenantAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'417', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'538', N'2020-12-16 14:16:24.0241355', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.TenantsController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'418', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'123', N'2020-12-16 14:16:27.5713384', NULL, NULL, N'GetRolesAsync', N'{"input":{"permission":null}}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'419', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'13', N'2020-12-16 14:16:27.7423482', NULL, NULL, N'GetAllPermissions', N'{}', N'MyAbp01.Roles.RoleAppService', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'420', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'483', N'2020-12-16 14:16:27.4873336', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.RolesController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'421', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'84', N'2020-12-16 14:16:30.1524860', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.AboutController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'422', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'134', N'2020-12-17 19:45:13.7956209', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'423', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'1434', N'2020-12-17 19:45:38.7220466', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'424', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'51', N'2020-12-17 19:45:40.4421450', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'425', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'92', N'2020-12-17 19:45:47.8345678', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'426', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-17 19:45:48.0625808', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'427', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-22 14:49:39.3464016', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'428', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'29', N'2020-12-22 14:50:24.8470041', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'429', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'82', N'2020-12-22 14:51:46.7666896', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'430', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-22 14:52:15.3533247', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'431', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'1231', N'2020-12-22 14:52:24.7388615', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'432', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'30', N'2020-12-22 14:52:26.1489422', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'433', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'83', N'2020-12-22 14:52:35.3434681', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'434', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-22 14:52:35.5224783', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'435', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'62', N'2020-12-22 14:52:45.9470746', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'436', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-22 14:52:56.4676763', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'437', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'384', N'2020-12-22 14:52:58.8538128', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'438', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-22 14:52:59.3488411', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'439', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'55', N'2020-12-22 14:53:27.2134349', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'440', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-22 14:53:27.3684437', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'441', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, NULL, NULL, N'93', N'2020-12-22 14:54:50.6662081', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'442', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-25 15:35:27.0005480', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'443', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'31', N'2020-12-25 15:35:48.2327624', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'444', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-25 15:35:49.2648214', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'445', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-25 15:35:49.7168473', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'446', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'31', N'2020-12-25 15:35:49.8928573', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'447', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'71', N'2020-12-25 15:35:50.0958689', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'448', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-25 15:53:50.6706743', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'449', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1219', N'2020-12-25 15:53:56.4990076', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'450', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-25 15:53:57.9370899', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'451', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'83', N'2020-12-25 15:54:05.2855102', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'452', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-25 15:54:05.4555199', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'453', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'91', N'2020-12-25 15:54:48.8990047', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'454', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'115', N'2020-12-25 17:14:24.8861756', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'455', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'83', N'2020-12-25 17:56:33.3137934', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'456', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-25 17:56:47.8186230', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'457', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'30', N'2020-12-25 17:56:51.6998450', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'458', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'87', N'2020-12-25 18:04:39.7696171', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'459', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'100', N'2020-12-29 14:30:12.5812884', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'460', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'82', N'2020-12-29 17:19:47.2282449', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'461', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'101', N'2020-12-29 17:36:41.0232307', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'462', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-29 17:37:26.9458573', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'463', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'99', N'2020-12-29 17:38:24.2161330', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'464', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5112', N'2020-12-29 17:42:01.2495466', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'465', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2789', N'2020-12-29 17:42:40.7888081', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'466', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3414', N'2020-12-29 17:52:24.9912226', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'467', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3097', N'2020-12-29 17:54:45.7252721', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'468', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3222', N'2020-12-29 17:57:53.3410031', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'469', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4808', N'2020-12-29 18:00:38.3134390', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'470', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4835', N'2020-12-29 18:08:23.8220645', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'471', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5950', N'2020-12-29 18:09:51.4570770', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'472', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4292', N'2020-12-29 18:14:40.3766022', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'473', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4207', N'2020-12-29 18:19:27.3870183', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'474', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-29 18:19:31.8102713', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'475', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'8688', N'2020-12-29 18:39:24.6844998', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'476', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3578', N'2020-12-29 18:39:40.3613964', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'477', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2377', N'2020-12-29 18:40:47.5212378', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'478', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'7985', N'2020-12-29 18:40:53.6825902', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'479', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1744', N'2020-12-29 18:41:15.4948378', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'480', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'10101', N'2020-12-29 18:41:57.4282362', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'481', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4702', N'2020-12-29 18:43:51.6527695', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'482', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2145', N'2020-12-29 18:44:08.1517132', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'483', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-29 18:45:26.8382138', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'484', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'87', N'2020-12-29 18:48:31.2147595', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'485', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-29 18:49:27.3089679', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'486', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-29 18:51:12.8780061', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'487', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2142', N'2020-12-29 18:51:35.6643094', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'488', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'51', N'2020-12-29 18:51:38.0494459', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'489', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'102', N'2020-12-29 18:56:09.7899885', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'490', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-29 18:56:10.9690560', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'491', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2274', N'2020-12-29 18:56:17.4224251', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'492', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'84', N'2020-12-29 18:56:20.1915835', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'493', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'122', N'2020-12-29 18:56:31.6982416', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'494', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'95', N'2020-12-29 19:00:50.8460640', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'495', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'207', N'2020-12-29 19:01:07.3240065', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'496', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-29 19:01:07.7030282', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'497', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1835', N'2020-12-29 19:02:17.4930199', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'498', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5124', N'2020-12-29 19:02:36.0840833', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'499', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-29 19:02:41.5083935', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'500', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'60', N'2020-12-29 19:02:48.1697745', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'501', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-29 19:02:48.3387842', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'502', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'195', N'2020-12-29 19:04:50.2107549', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'503', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1282', N'2020-12-29 19:04:50.3607635', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'504', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'11060', N'2020-12-29 19:05:03.9565411', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'505', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'28', N'2020-12-29 19:05:15.1461811', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'506', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-29 19:05:26.2278149', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'507', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'54', N'2020-12-29 19:05:26.4118255', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'508', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-29 19:05:31.9641430', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'509', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'503', N'2020-12-29 19:05:32.5841785', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'510', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-29 19:05:33.2362158', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'511', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'77', N'2020-12-29 19:05:36.4383990', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'512', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-29 19:05:36.6424106', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'513', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'53', N'2020-12-29 19:06:04.3349946', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'514', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'965', N'2020-12-29 19:06:07.9802030', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'515', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-29 19:06:09.1302688', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'516', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-29 19:06:37.2078748', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'517', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-29 19:06:37.5548946', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'518', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-29 19:06:43.4902341', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'519', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'479', N'2020-12-29 19:06:45.1603296', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'520', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-29 19:06:45.7533636', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'521', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'44', N'2020-12-29 19:07:58.0204970', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'522', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-29 19:07:58.1595049', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'523', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-29 19:08:04.9678944', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'524', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'806', N'2020-12-29 19:08:06.0739576', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'525', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'51', N'2020-12-29 19:08:06.9820096', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'526', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'91', N'2020-12-29 19:46:35.5780537', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'527', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'216', N'2020-12-29 20:07:50.0309482', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'528', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1692', N'2020-12-29 20:08:00.5865520', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'529', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-29 20:08:02.5516644', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'530', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'251', N'2020-12-29 20:12:59.3356395', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'531', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'137', N'2020-12-29 20:12:59.7866653', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'532', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'120', N'2020-12-29 20:25:42.6202968', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'533', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-29 20:26:13.2360480', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'534', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-29 20:26:48.2720519', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'535', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'114', N'2020-12-29 20:29:45.4271846', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'536', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-29 20:30:14.9268719', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'537', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'96', N'2020-12-29 20:31:44.9310198', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'538', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-29 20:32:23.3712185', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'539', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2020-12-29 20:32:29.0345424', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'540', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-29 20:34:21.8459949', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'541', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'58', N'2020-12-29 20:34:41.9861468', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'542', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-29 20:35:21.9784342', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'543', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'56', N'2020-12-29 20:35:26.2976813', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'544', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-29 20:35:40.7825098', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'545', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-29 20:35:58.3415141', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'546', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'79', N'2020-12-29 20:36:13.9604074', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'547', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'64', N'2020-12-29 20:36:57.8459175', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'548', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'164', N'2020-12-29 20:38:06.0288174', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'549', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-29 20:38:15.7023707', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'550', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'51', N'2020-12-29 20:38:44.5320196', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'551', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'72', N'2020-12-30 14:28:14.9924021', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'552', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-30 14:37:13.3311933', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'553', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'8', N'2020-12-30 14:43:42.0364259', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'554', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-30 14:49:48.2023694', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'555', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5', N'2020-12-30 14:50:16.1279667', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'556', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-30 14:54:50.4046544', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'557', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'7', N'2020-12-30 14:55:23.4975472', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'558', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-30 14:56:50.9455490', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'559', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4', N'2020-12-30 14:57:12.9888098', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'560', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'217', N'2020-12-30 14:57:20.9982679', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'561', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-30 15:28:25.7809274', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'562', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5', N'2020-12-30 15:29:04.6721518', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'563', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'9', N'2020-12-30 15:29:20.4240528', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'564', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'169', N'2020-12-30 15:29:26.9604266', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'565', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'7', N'2020-12-30 15:29:30.8296479', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'566', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'6', N'2020-12-30 15:29:36.8129902', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'567', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2020-12-30 16:19:07.7879202', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'568', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'5781', N'2020-12-30 16:23:31.4380001', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'569', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'126', N'2020-12-30 16:26:13.1212479', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'570', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2020-12-30 16:26:57.6457945', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'571', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'47', N'2020-12-30 16:27:05.2332285', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'572', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'558', N'2020-12-30 16:27:13.5707054', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'573', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'159', N'2020-12-30 16:29:08.1622596', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'574', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-30 16:29:41.8701876', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'575', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'262', N'2020-12-30 16:29:54.6749200', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'576', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'144', N'2020-12-30 16:39:04.9023912', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'577', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-30 16:39:42.5455443', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'578', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'288', N'2020-12-30 16:39:51.1360356', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'579', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-30 16:40:01.8136464', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'580', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'86', N'2020-12-30 16:48:16.8869629', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'581', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-30 16:50:11.3725111', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'582', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'219', N'2020-12-30 16:50:17.7968786', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'583', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'149', N'2020-12-30 16:54:19.5497061', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'584', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-30 16:55:10.1716015', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'585', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'218', N'2020-12-30 16:55:19.1131129', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'586', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-30 16:55:21.1672304', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'587', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'118', N'2020-12-30 17:06:55.2879318', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'588', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'84', N'2020-12-30 17:43:32.6336128', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'589', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-30 17:50:03.2609554', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'590', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'36', N'2020-12-30 17:50:42.1991825', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'591', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1211', N'2020-12-30 17:50:49.8966228', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'592', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-30 17:50:51.2557006', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'593', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'30', N'2020-12-30 17:51:21.4614282', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'594', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-30 17:51:38.7064146', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'595', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'446', N'2020-12-30 17:51:39.9454854', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'596', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-30 17:51:40.5365193', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'597', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2020-12-30 17:51:56.6574413', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'598', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'437', N'2020-12-30 17:52:03.2518185', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'599', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-30 17:52:22.5829242', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'600', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-30 17:52:32.1094691', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'601', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'454', N'2020-12-30 17:52:36.2087035', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'602', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-30 17:52:36.8117380', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'603', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-30 17:52:59.0700111', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'604', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'469', N'2020-12-30 17:53:01.1291289', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'605', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-30 17:53:01.7651653', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'606', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'95', N'2020-12-30 17:53:08.6105568', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'607', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2020-12-30 17:54:56.0347011', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'608', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'44', N'2020-12-30 17:55:43.6174227', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'609', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1137', N'2020-12-30 17:55:45.8815522', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'610', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'45', N'2020-12-30 17:55:47.1666257', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'611', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-30 17:56:32.6922296', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'612', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'479', N'2020-12-30 17:56:33.3992700', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'613', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-30 17:56:33.9973043', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'614', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-30 17:57:48.2965539', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'615', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'28047', N'2020-12-30 17:57:49.1896050', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'616', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-30 17:58:17.3702168', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'617', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-30 17:58:22.3625024', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'618', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'62', N'2020-12-30 17:58:38.7374390', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'619', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3470', N'2020-12-30 17:58:41.4075917', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'620', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-30 17:58:45.0087977', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'621', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'68', N'2020-12-30 17:59:17.5166570', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'622', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'4105', N'2020-12-30 17:59:20.3678201', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'623', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'42', N'2020-12-30 17:59:49.6064925', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'624', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2020-12-30 17:59:58.0719767', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'625', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1948', N'2020-12-30 18:00:00.3841089', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'626', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'61', N'2020-12-30 18:00:02.4922295', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'627', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-30 18:00:06.2164425', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'628', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2020-12-30 18:00:35.9651440', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'629', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5918', N'2020-12-30 18:00:40.2783907', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'630', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'49', N'2020-12-30 18:00:46.3657389', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'631', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'95', N'2020-12-30 18:01:49.0443239', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'632', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'59', N'2020-12-30 18:02:02.5570968', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'633', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3204', N'2020-12-30 18:02:04.2741950', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'634', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2020-12-30 18:02:32.1547897', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'635', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2019', N'2020-12-30 18:02:33.8198849', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'636', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'193', N'2020-12-30 18:04:24.0241883', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'637', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3873', N'2020-12-30 18:04:27.2613734', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'638', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'52', N'2020-12-30 18:05:19.9243856', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'639', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2131', N'2020-12-30 18:05:22.2375179', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'640', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-30 18:05:44.2227753', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'641', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'202', N'2020-12-30 18:08:27.3311046', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'642', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3142', N'2020-12-30 18:08:30.6882966', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'643', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'37', N'2020-12-30 18:08:53.0565760', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'644', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1765', N'2020-12-30 18:08:55.2277002', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'645', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'36', N'2020-12-30 18:09:25.2194156', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'646', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1875', N'2020-12-30 18:09:28.6816137', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'647', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'90', N'2020-12-30 18:10:25.5698675', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'648', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'34', N'2020-12-30 18:10:43.6068991', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'649', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-30 18:10:55.4725778', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'650', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'36', N'2020-12-30 18:10:55.6505880', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'651', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'35', N'2020-12-30 18:11:01.2589088', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'652', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2746', N'2020-12-30 18:11:02.1009569', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'653', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2020-12-30 18:11:05.0281244', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'654', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-30 18:11:28.5164678', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'655', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'203', N'2020-12-30 18:16:47.9247369', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'656', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'7319', N'2020-12-30 18:16:56.1702085', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'657', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-30 18:17:03.8826497', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'658', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'94', N'2020-12-30 18:18:53.0158917', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'659', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'120', N'2020-12-30 18:20:29.3454015', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'660', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'53', N'2020-12-30 18:20:55.3968915', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'661', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2020-12-30 18:21:10.1727367', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'662', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5846', N'2020-12-30 18:21:13.2559130', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'663', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'46', N'2020-12-30 18:21:55.6553381', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'664', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'7220', N'2020-12-30 18:21:59.5615615', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'665', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'430', N'2020-12-30 22:06:14.3551317', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.DummyLoginController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'666', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'318', N'2020-12-31 13:57:18.5859301', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'667', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'192114', N'2020-12-31 13:57:24.9802958', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'668', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'26', N'2020-12-31 14:00:37.5493101', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'669', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2020-12-31 14:00:45.1527450', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'670', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'12', N'2020-12-31 14:00:45.2717518', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'671', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'13', N'2020-12-31 14:03:40.1877564', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'672', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'System.InvalidOperationException: The property ''Id'' on entity type ''User'' is part of a key and so cannot be modified or marked as modified. To change the principal of an existing entity with an identifying foreign key first delete the dependent and invoke ''SaveChanges'' then associate the dependent with the new principal.
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.InternalEntityEntry.SetPropertyModified(IProperty property, Boolean changeState, Boolean isModified, Boolean isConceptualNull)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ChangeDetector.DetectChanges(InternalEntityEntry entry)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ChangeDetector.DetectChanges(IStateManager stateManager)
   at Microsoft.EntityFrameworkCore.ChangeTracking.ChangeTracker.Entries()
   at Abp.Zero.EntityFrameworkCore.AbpZeroCommonDbContext`3.SaveChangesAsync(CancellationToken cancellationToken)
   at Abp.EntityFrameworkCore.Uow.EfCoreUnitOfWork.SaveChangesInDbContextAsync(DbContext dbContext) in D:\Github\aspnetboilerplate\src\Abp.EntityFrameworkCore\EntityFrameworkCore\Uow\EfCoreUnitOfWork.cs:line 167
   at Abp.EntityFrameworkCore.Uow.EfCoreUnitOfWork.SaveChangesAsync() in D:\Github\aspnetboilerplate\src\Abp.EntityFrameworkCore\EntityFrameworkCore\Uow\EfCoreUnitOfWork.cs:line 68
   at MyAbp01.Web.Controllers.AccountController.Login(LoginViewModel loginModel, String returnUrl, String returnUrlHash) in D:\opensource\Abp\mayun\MyAbp01\4.8.0\aspnet-core\src\MyAbp01.Web.Mvc\Controllers\AccountController.cs:line 107
   at Abp.Threading.InternalAsyncHelper.AwaitTaskWithPostActionAndFinallyAndGetResult[T](Task`1 actualReturnValue, Func`1 postAction, Action`1 finalAction)
   at lambda_method(Closure , Object )
   at Microsoft.AspNetCore.Mvc.Internal.ActionMethodExecutor.TaskOfActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc....', N'13168', N'2020-12-31 14:03:42.4158839', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'673', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'118', N'2020-12-31 14:04:00.7259311', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'674', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2163', N'2020-12-31 14:04:02.6260398', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'675', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'15', N'2020-12-31 14:04:04.8671680', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'676', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'82', N'2020-12-31 14:40:00.5604666', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'677', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'8187', N'2020-12-31 14:40:35.0814411', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'678', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'43', N'2020-12-31 14:40:43.7289357', NULL, NULL, N'Index', N'{}', N'IdentityServerDemo.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'679', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'162', N'2020-12-31 14:41:29.0495279', NULL, NULL, N'Logout', N'{}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'680', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2020-12-31 14:41:29.4765523', NULL, NULL, N'Login', N'{}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'681', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'63', N'2020-12-31 14:42:04.7735712', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637449937244305516.ZDBjOWZhZGUtY2I1Yy00ZjgwLTg3ZjktODY3MTFkZTAxNDk3NTFlMmUzOGItYTk5ZC00OWU1LWJkYTUtYzMxOTBkNjg3MGIw&state=CfDJ8E__7hY1bhBFpZynpElMek7UJOlnxvK2Vlv9KFqZmjoHBuc5KM2IccoFOqPGD_6o-1aNolS0bXosyK28L0EBTMcyCmMP5AUZvSKMkpyAv0jCNAr7vbMg57y6Ys0yoaSAcKYNOBROmJIhLvwY18inoimEYVz4E0depZBENY1qWIFWcRU6O3Er5y4_V1WtQVMfzTkriDD1rxReJD3rgrBL4zdGnU7dR8NzGSy8uDBYhlOeMimg8YOhDGuH4vxAe42Vmxg0gV-nUIKVcX86Xq6hnj_wk95fwS-eVt7ATASFnRTGBjXLhE-SdsKokRi3GenpRV8wYeIWLUPdyG3vPTFScLk"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'682', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'9950', N'2020-12-31 14:42:17.1792808', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637449937244305516.ZDBjOWZhZGUtY2I1Yy00ZjgwLTg3ZjktODY3MTFkZTAxNDk3NTFlMmUzOGItYTk5ZC00OWU1LWJkYTUtYzMxOTBkNjg3MGIw&state=CfDJ8E__7hY1bhBFpZynpElMek7UJOlnxvK2Vlv9KFqZmjoHBuc5KM2IccoFOqPGD_6o-1aNolS0bXosyK28L0EBTMcyCmMP5AUZvSKMkpyAv0jCNAr7vbMg57y6Ys0yoaSAcKYNOBROmJIhLvwY18inoimEYVz4E0depZBENY1qWIFWcRU6O3Er5y4_V1WtQVMfzTkriDD1rxReJD3rgrBL4zdGnU7dR8NzGSy8uDBYhlOeMimg8YOhDGuH4vxAe42Vmxg0gV-nUIKVcX86Xq6hnj_wk95fwS-eVt7ATASFnRTGBjXLhE-SdsKokRi3GenpRV8wYeIWLUPdyG3vPTFScLk","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'683', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'33', N'2020-12-31 14:45:08.7130919', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637449939086010855.NTYzYTIyOTctN2QxNS00ODEzLWFjODgtMmRmZTFiOGFhZTk4YTE4Zjg4ZDYtYzZkOS00OWFkLWI0NDgtOThmODI3Y2ZjMWRm&state=CfDJ8E__7hY1bhBFpZynpElMek5XvHE93Lwz3eXgZUiv9Bf0c70C0vG5uKjZ6iB7m2GQrLwGPc6JyEu4AkEXHSxVVIVmUtXuk1jLy3-qsG5aM5nGeGRaa5RuoOEYhlv9L9UW0wIprZf3zYhae6qperbWY4gVYwp6kMdB_XocQ87qfdUAOBxA4TTFfhTTtn-hzO_-ZpY_RNatuZXUNarqxYZ5PqvtO89SrVfDE9hDap6SyZUYX0e1afGneFvZaiMnQyJIRL2ap9p8-cdqMk698lCQQMRvxewzOiFVL9Yd59EDF1q0ILZ2RKmt7ZYGvzoxFlNiQTrWDdc2JNvlkQHRPuSLby0"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'684', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'12909', N'2020-12-31 14:45:14.5214242', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637449939086010855.NTYzYTIyOTctN2QxNS00ODEzLWFjODgtMmRmZTFiOGFhZTk4YTE4Zjg4ZDYtYzZkOS00OWFkLWI0NDgtOThmODI3Y2ZjMWRm&state=CfDJ8E__7hY1bhBFpZynpElMek5XvHE93Lwz3eXgZUiv9Bf0c70C0vG5uKjZ6iB7m2GQrLwGPc6JyEu4AkEXHSxVVIVmUtXuk1jLy3-qsG5aM5nGeGRaa5RuoOEYhlv9L9UW0wIprZf3zYhae6qperbWY4gVYwp6kMdB_XocQ87qfdUAOBxA4TTFfhTTtn-hzO_-ZpY_RNatuZXUNarqxYZ5PqvtO89SrVfDE9hDap6SyZUYX0e1afGneFvZaiMnQyJIRL2ap9p8-cdqMk698lCQQMRvxewzOiFVL9Yd59EDF1q0ILZ2RKmt7ZYGvzoxFlNiQTrWDdc2JNvlkQHRPuSLby0","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'685', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'149', N'2020-12-31 14:46:01.5231125', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'686', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'393795', N'2020-12-31 14:46:07.2294389', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'687', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'9', N'2020-12-31 14:52:41.2749770', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'688', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-31 14:52:48.4393868', NULL, NULL, N'Logout', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'689', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'16', N'2020-12-31 14:52:48.5603937', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'690', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'48', N'2020-12-31 14:57:08.4552588', NULL, NULL, N'Login', N'{}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'691', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'5449743', N'2020-12-31 14:52:57.3728977', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","rememberMe":false},"returnUrl":"/Home","returnUrlHash":null}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'692', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'57', N'2020-12-31 16:23:47.4846263', NULL, NULL, N'Login', N'{}', N'MyAbp01.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'693', N'Visual Studio/16.8 (JSON Editor; ASP.NET and Web Tools/16.8.554.20160)', N'::1', NULL, NULL, NULL, N'36', N'2020-12-31 17:00:15.9567998', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'694', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'107', N'2021-01-04 10:37:51.4617793', NULL, NULL, N'Login', N'{"returnUrl":"/"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'695', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'50', N'2021-01-04 10:58:44.5024491', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453259220463086.MzNhODk5NDQtOGViOS00NTFjLThhMmItZmE0YWJjNDRhZThmYzdhZjg4OWUtZGEwOS00OWJiLTk0NGEtNjY4MDRlZjMzNjY0&state=CfDJ8E__7hY1bhBFpZynpElMek71UjOpBrUYWvUzF0oXn8Pu9JM7LoX7jJxZ_6JEenjRFKHM97kXTf4lX-kxP5_9B1yqIOyCWD2dzm2Dx7s9s8jMEZ4AAHetCG5TrP_wb0mOCU34HqCDF9-GdzeCguHmMszGa_m4BZ3cK9Gv9z4_jEGZnwKmNGzszdf3SOKesJGbLf4kj2xaky5x1cP_Hwr4DQMpHOIaNpfmXrj_5Qq360lT9ieM9CsyYF9ml0IG-OQ5cqtHM2-smE7IZE85fu1AVC87dZzvCSdHoHQc7xzfrXSOHoErSwzyAbe82G-4n6e7oocyQzY5ocJxiuoZZJGuuMw"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'696', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'898', N'2021-01-04 10:58:59.3322973', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453259220463086.MzNhODk5NDQtOGViOS00NTFjLThhMmItZmE0YWJjNDRhZThmYzdhZjg4OWUtZGEwOS00OWJiLTk0NGEtNjY4MDRlZjMzNjY0&state=CfDJ8E__7hY1bhBFpZynpElMek71UjOpBrUYWvUzF0oXn8Pu9JM7LoX7jJxZ_6JEenjRFKHM97kXTf4lX-kxP5_9B1yqIOyCWD2dzm2Dx7s9s8jMEZ4AAHetCG5TrP_wb0mOCU34HqCDF9-GdzeCguHmMszGa_m4BZ3cK9Gv9z4_jEGZnwKmNGzszdf3SOKesJGbLf4kj2xaky5x1cP_Hwr4DQMpHOIaNpfmXrj_5Qq360lT9ieM9CsyYF9ml0IG-OQ5cqtHM2-smE7IZE85fu1AVC87dZzvCSdHoHQc7xzfrXSOHoErSwzyAbe82G-4n6e7oocyQzY5ocJxiuoZZJGuuMw","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'697', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2021-01-04 10:59:01.2644078', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'698', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'39', N'2021-01-04 10:59:06.7627223', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'699', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1', N'2021-01-04 13:35:19.7048240', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453353195418146.ZjM3OGNmOTMtNDEyYy00N2RiLWJlNDAtY2YyYmNmYTk3MjhlZGMyMzMzOTctN2E3Yi00MGI3LWJhMzktMmNhODk3NTBjZGVh&state=CfDJ8E__7hY1bhBFpZynpElMek73IzFZETxj9viFwMqDJAv82cljOpUaVgF29zBPmxlHFK5ThXQ0c-nynneQNSn2NlqqQ3iqzJ57NUj77IwXuB-MK-_1iuA8dmHDB_ZAWj5PJLCWge34bCcz14JBjTLLCRCEsrB6aXWh3IhVDD4JYy9smFKpVwB7h-o9n6fcPOF3w421TNOMfTgtwuSzdDNjT-S97H1s_ic2wVoD_m9VU1p4BZVG9N-8P4LtcCR94ZVZOXLGBTBfO8oGhbtc0nZh2UpKb0Jn_6ne9Mdh3h6ArJRZDh2729iBZWvFP2mtVNEsVcS3rajudi6s37jvCYDKdbk"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'700', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'178', N'2021-01-04 13:35:26.8912350', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453353195418146.ZjM3OGNmOTMtNDEyYy00N2RiLWJlNDAtY2YyYmNmYTk3MjhlZGMyMzMzOTctN2E3Yi00MGI3LWJhMzktMmNhODk3NTBjZGVh&state=CfDJ8E__7hY1bhBFpZynpElMek73IzFZETxj9viFwMqDJAv82cljOpUaVgF29zBPmxlHFK5ThXQ0c-nynneQNSn2NlqqQ3iqzJ57NUj77IwXuB-MK-_1iuA8dmHDB_ZAWj5PJLCWge34bCcz14JBjTLLCRCEsrB6aXWh3IhVDD4JYy9smFKpVwB7h-o9n6fcPOF3w421TNOMfTgtwuSzdDNjT-S97H1s_ic2wVoD_m9VU1p4BZVG9N-8P4LtcCR94ZVZOXLGBTBfO8oGhbtc0nZh2UpKb0Jn_6ne9Mdh3h6ArJRZDh2729iBZWvFP2mtVNEsVcS3rajudi6s37jvCYDKdbk","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'701', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'81', N'2021-01-04 13:37:41.0739098', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'702', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'147', N'2021-01-04 13:55:48.5031072', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'703', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'60', N'2021-01-04 13:56:04.1600027', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'704', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'32', N'2021-01-04 13:56:12.5214810', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'705', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'40', N'2021-01-04 13:57:52.2761866', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453366689889986.YWE2NTRmMzQtMmUwYi00OWU1LTg5MDEtZTdhNmFlNGNlOGJjNDc3MTYxN2MtYmQ0MS00MTAzLTk4MzUtNzMxNDIxNmY4Zjlj&state=CfDJ8E__7hY1bhBFpZynpElMek7L_LHD20ZS8fyMMu7YZGeQl914QexrN5_9DwY_cOcBqzpoQj1s6QkoZqqKnbq0geDFSL8dlG_bGPuKdCEXbNVIgjczwtWHlTUK6o40liMJYPaje_YU96Q3Tb_82kTh5ojDi4UNi_6026pqcac1lGZVUVkWJ_clE2Chb8VNYqwYYzi_jW1nrfrx47Bl1iiz7NUCH_tWqtq_IZulRhmDxifoR0n502PgAUzskXB2CwnMQgLhcGFpHr_BttF_iyagmXuOA3cs18vS9i38xh7vuJvbB_Ie7R6wvyhLHAaggUQZtOElPMcSt4MZ5kuSI6SMQaA"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'706', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'1025', N'2021-01-04 13:58:02.7797874', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453366689889986.YWE2NTRmMzQtMmUwYi00OWU1LTg5MDEtZTdhNmFlNGNlOGJjNDc3MTYxN2MtYmQ0MS00MTAzLTk4MzUtNzMxNDIxNmY4Zjlj&state=CfDJ8E__7hY1bhBFpZynpElMek7L_LHD20ZS8fyMMu7YZGeQl914QexrN5_9DwY_cOcBqzpoQj1s6QkoZqqKnbq0geDFSL8dlG_bGPuKdCEXbNVIgjczwtWHlTUK6o40liMJYPaje_YU96Q3Tb_82kTh5ojDi4UNi_6026pqcac1lGZVUVkWJ_clE2Chb8VNYqwYYzi_jW1nrfrx47Bl1iiz7NUCH_tWqtq_IZulRhmDxifoR0n502PgAUzskXB2CwnMQgLhcGFpHr_BttF_iyagmXuOA3cs18vS9i38xh7vuJvbB_Ie7R6wvyhLHAaggUQZtOElPMcSt4MZ5kuSI6SMQaA","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'707', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'87', N'2021-01-04 13:58:04.9529117', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'708', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'80', N'2021-01-04 13:59:25.3285089', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'709', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'3', N'2021-01-04 13:59:37.5012051', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453367773531967.OTY2NWE1YzQtOGJjNC00ZmZmLTk5Y2YtNjNhNGQxMTMwNzkxNGUzMjA0MzgtOTg1Yy00YTYwLWI0NTctMzI0MjhmNzg0Y2Zl&state=CfDJ8E__7hY1bhBFpZynpElMek6QBImE7XwJXtPFj11NMB5evBw73vUhUjZ0ZnirN-csfMa0M50nK2-4ImNC5G_Cn6j0qjC8FC_Q1TqQ0q4JVi3l4rjCPzgWULcF5gNeXOm5DzphivMEpdCv1cZRtUPiYYo9VeT_hzM5KJMvprMz4FYb0ubeWoBCP_OuJA04DHPBCvC1kaD20hl0H_hk4VGO_e-MZZw_8aZbGFua7q7Eay_geeZtvBdW5wbX86YMUlyimtlUdQW_YdhVCuNzIP8BwwAxfg1YiGTX27-8bdzv_vp4fHtdcV4f8dmPY53Z0NW_1JPLGXtt0Mh8RcPV_SWsjtY"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'710', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'145', N'2021-01-04 13:59:43.0415220', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453367773531967.OTY2NWE1YzQtOGJjNC00ZmZmLTk5Y2YtNjNhNGQxMTMwNzkxNGUzMjA0MzgtOTg1Yy00YTYwLWI0NTctMzI0MjhmNzg0Y2Zl&state=CfDJ8E__7hY1bhBFpZynpElMek6QBImE7XwJXtPFj11NMB5evBw73vUhUjZ0ZnirN-csfMa0M50nK2-4ImNC5G_Cn6j0qjC8FC_Q1TqQ0q4JVi3l4rjCPzgWULcF5gNeXOm5DzphivMEpdCv1cZRtUPiYYo9VeT_hzM5KJMvprMz4FYb0ubeWoBCP_OuJA04DHPBCvC1kaD20hl0H_hk4VGO_e-MZZw_8aZbGFua7q7Eay_geeZtvBdW5wbX86YMUlyimtlUdQW_YdhVCuNzIP8BwwAxfg1YiGTX27-8bdzv_vp4fHtdcV4f8dmPY53Z0NW_1JPLGXtt0Mh8RcPV_SWsjtY","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'711', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'45', N'2021-01-04 13:59:43.8105660', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'712', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'53', N'2021-01-04 13:59:56.9863196', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'713', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'78', N'2021-01-04 14:01:58.2502555', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'714', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'2', N'2021-01-04 14:02:10.3049450', NULL, NULL, N'Login', N'{"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453369302009391.NjYyMDkwZWYtZTY5NS00NzhlLWJjZmYtMGM3ZThjMzg0YTkyYjE1MzlhZWUtOTIxMS00ZDMxLWI5MWEtNDgwYjZkNzRlMzY5&state=CfDJ8E__7hY1bhBFpZynpElMek43ZF5Fhen7TPxMO88RYSlELXwVS--Pdi-N-lp0km1iwghTCfpF7HhD_cHuNnXVsaIyTShSYV5upun5QSWZ6AqTYVwD-zFg8ivz-Vcv1ylYMKWj6uEODbPl1LoW03ugK5mqU8WvSthy1jjP_9BoZtSOLWShBnWdy3QZCdqIorQE8_iTcCPs51kwoRUg6lc2_2GDlhCw_TvSYxMPSSetorj-ZExjbONHsDtDvJ1FMuMtk5tpmodTUG1wcGqCwvW8VaLBR01Oi3-Vo_nRw0jZHU40d961mnU0Q9Qle6krpJ9yn8T6zjz8iIwTOmlraj7xWUc"}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'715', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'85', N'2021-01-04 14:02:15.5252436', NULL, NULL, N'Login', N'{"loginModel":{"usernameOrEmailAddress":"admin","password":"123qwe","rememberMe":false},"returnUrl":"/connect/authorize/callback?client_id=gis&redirect_uri=https%3A%2F%2Flocalhost%3A44311%2Fsignin-oidc&response_type=id_token&scope=openid%20profile%20Roles&response_mode=form_post&nonce=637453369302009391.NjYyMDkwZWYtZTY5NS00NzhlLWJjZmYtMGM3ZThjMzg0YTkyYjE1MzlhZWUtOTIxMS00ZDMxLWI5MWEtNDgwYjZkNzRlMzY5&state=CfDJ8E__7hY1bhBFpZynpElMek43ZF5Fhen7TPxMO88RYSlELXwVS--Pdi-N-lp0km1iwghTCfpF7HhD_cHuNnXVsaIyTShSYV5upun5QSWZ6AqTYVwD-zFg8ivz-Vcv1ylYMKWj6uEODbPl1LoW03ugK5mqU8WvSthy1jjP_9BoZtSOLWShBnWdy3QZCdqIorQE8_iTcCPs51kwoRUg6lc2_2GDlhCw_TvSYxMPSSetorj-ZExjbONHsDtDvJ1FMuMtk5tpmodTUG1wcGqCwvW8VaLBR01Oi3-Vo_nRw0jZHU40d961mnU0Q9Qle6krpJ9yn8T6zjz8iIwTOmlraj7xWUc","returnUrlHash":null}', N'IdentityServerDemo.Web.Controllers.AccountController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'716', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2021-01-04 14:02:16.2632858', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.IndexController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'717', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, NULL, N'38', N'2021-01-04 14:02:21.0725609', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.HomeController', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AbpAuditLogs] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CustomData], [Exception], [ExecutionDuration], [ExecutionTime], [ImpersonatorTenantId], [ImpersonatorUserId], [MethodName], [Parameters], [ServiceName], [TenantId], [UserId], [ReturnValue]) VALUES (N'718', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, NULL, N'Abp.Authorization.AbpAuthorizationException: Current user did not login to the application!
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(IEnumerable`1 authorizeAttributes) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 42
   at Abp.Authorization.AuthorizationHelper.CheckPermissions(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 107
   at Abp.Authorization.AuthorizationHelper.AuthorizeAsync(MethodInfo methodInfo, Type type) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationHelper.cs:line 56
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
--- End of stack trace from previous location where exception was thrown ---
   at System.Threading.Tasks.Task.ExecuteWithThreadLocal(Task& currentTaskSlot)
--- End of stack trace from previous location where exception was thrown ---
   at Nito.AsyncEx.Synchronous.TaskExtensions.WaitAndUnwrapException(Task task)
   at Nito.AsyncEx.AsyncContext.Run(Func`1 action)
   at Abp.Authorization.AuthorizationInterceptor.Intercept(IInvocation invocation) in D:\Github\aspnetboilerplate\src\Abp\Authorization\AuthorizationInterceptor.cs:line 20
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Domain.Uow.UnitOfWorkInterceptor.PerformAsyncUow(IInvocation invocation, UnitOfWorkOptions options) in D:\Github\aspnetboilerplate\src\Abp\Domain\Uow\UnitOfWorkInterceptor.cs:line 78
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Abp.Auditing.AuditingInterceptor.PerformAsyncAuditing(IInvocation invocation, AuditInfo auditInfo) in D:\Github\aspnetboilerplate\src\Abp\Auditing\AuditingInterceptor.cs:line 86
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castle.DynamicProxy.AbstractInvocation.Proceed()
   at Castl...', N'329', N'2021-01-04 14:02:41.5877343', NULL, NULL, N'Index', N'{}', N'MyAbp01.Web.Controllers.UsersController', NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[AbpAuditLogs] OFF
GO


-- ----------------------------
-- Table structure for AbpBackgroundJobs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpBackgroundJobs]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpBackgroundJobs]
GO

CREATE TABLE [dbo].[AbpBackgroundJobs] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [IsAbandoned] bit  NOT NULL,
  [JobArgs] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [JobType] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LastTryTime] datetime2(7)  NULL,
  [NextTryTime] datetime2(7)  NOT NULL,
  [Priority] tinyint  NOT NULL,
  [TryCount] smallint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpBackgroundJobs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpEditions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpEditions]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpEditions]
GO

CREATE TABLE [dbo].[AbpEditions] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [DisplayName] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpEditions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpEditions]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpEditions] ON
GO

INSERT INTO [dbo].[AbpEditions] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name]) VALUES (N'2', N'2020-12-10 15:39:38.7668536', NULL, NULL, NULL, N'Standard', N'0', NULL, NULL, N'Standard')
GO

SET IDENTITY_INSERT [dbo].[AbpEditions] OFF
GO


-- ----------------------------
-- Table structure for AbpEntityChanges
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpEntityChanges]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpEntityChanges]
GO

CREATE TABLE [dbo].[AbpEntityChanges] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [ChangeTime] datetime2(7)  NOT NULL,
  [ChangeType] tinyint  NOT NULL,
  [EntityChangeSetId] bigint  NOT NULL,
  [EntityId] nvarchar(48) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeFullName] nvarchar(192) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpEntityChanges] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpEntityChangeSets
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpEntityChangeSets]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpEntityChangeSets]
GO

CREATE TABLE [dbo].[AbpEntityChangeSets] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [BrowserInfo] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientIpAddress] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientName] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [ExtensionData] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [ImpersonatorTenantId] int  NULL,
  [ImpersonatorUserId] bigint  NULL,
  [Reason] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NULL
)
GO

ALTER TABLE [dbo].[AbpEntityChangeSets] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpEntityPropertyChanges
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpEntityPropertyChanges]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpEntityPropertyChanges]
GO

CREATE TABLE [dbo].[AbpEntityPropertyChanges] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [EntityChangeId] bigint  NOT NULL,
  [NewValue] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [OriginalValue] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [PropertyName] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NULL,
  [PropertyTypeFullName] nvarchar(192) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpEntityPropertyChanges] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpFeatures
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpFeatures]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpFeatures]
GO

CREATE TABLE [dbo].[AbpFeatures] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [Discriminator] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EditionId] int  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpFeatures] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpLanguages
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpLanguages]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpLanguages]
GO

CREATE TABLE [dbo].[AbpLanguages] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [DisplayName] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Icon] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDeleted] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [IsDisabled] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[AbpLanguages] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpLanguages]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpLanguages] ON
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'13', N'2020-12-10 15:39:40.1219311', NULL, NULL, NULL, N'English', N'famfamfam-flags gb', N'0', NULL, NULL, N'en', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'14', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'العربية', N'famfamfam-flags sa', N'0', NULL, NULL, N'ar', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'15', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'German', N'famfamfam-flags de', N'0', NULL, NULL, N'de', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'16', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Italiano', N'famfamfam-flags it', N'0', NULL, NULL, N'it', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'17', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Français', N'famfamfam-flags fr', N'0', NULL, NULL, N'fr', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'18', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Português', N'famfamfam-flags br', N'0', NULL, NULL, N'pt-BR', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'19', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Türkçe', N'famfamfam-flags tr', N'0', NULL, NULL, N'tr', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'20', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Русский', N'famfamfam-flags ru', N'0', NULL, NULL, N'ru', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'21', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'简体中文', N'famfamfam-flags cn', N'0', NULL, NULL, N'zh-Hans', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'22', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Español México', N'famfamfam-flags mx', N'0', NULL, NULL, N'es-MX', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'23', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'Nederlands', N'famfamfam-flags nl', N'0', NULL, NULL, N'nl', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'24', N'2020-12-10 15:39:40.1229312', NULL, NULL, NULL, N'日本語', N'famfamfam-flags jp', N'0', NULL, NULL, N'ja', NULL, N'0')
GO

INSERT INTO [dbo].[AbpLanguages] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [Icon], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [IsDisabled]) VALUES (N'25', N'2020-12-31 14:39:46.0786383', NULL, NULL, NULL, N'简体中文', N'famfamfam-flags cn', N'0', NULL, NULL, N'zh-CN', NULL, N'0')
GO

SET IDENTITY_INSERT [dbo].[AbpLanguages] OFF
GO


-- ----------------------------
-- Table structure for AbpLanguageTexts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpLanguageTexts]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpLanguageTexts]
GO

CREATE TABLE [dbo].[AbpLanguageTexts] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [Key] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LanguageName] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Source] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [Value] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpLanguageTexts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpNotifications
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpNotifications]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpNotifications]
GO

CREATE TABLE [dbo].[AbpNotifications] (
  [Id] uniqueidentifier  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [Data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [DataTypeName] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityId] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeAssemblyQualifiedName] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeName] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [ExcludedUserIds] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [NotificationName] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Severity] tinyint  NOT NULL,
  [TenantIds] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserIds] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpNotifications] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpNotificationSubscriptions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpNotificationSubscriptions]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpNotificationSubscriptions]
GO

CREATE TABLE [dbo].[AbpNotificationSubscriptions] (
  [Id] uniqueidentifier  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [EntityId] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeAssemblyQualifiedName] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeName] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [NotificationName] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpNotificationSubscriptions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpOrganizationUnitRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpOrganizationUnitRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpOrganizationUnitRoles]
GO

CREATE TABLE [dbo].[AbpOrganizationUnitRoles] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [TenantId] int  NULL,
  [RoleId] int  NOT NULL,
  [OrganizationUnitId] bigint  NOT NULL,
  [IsDeleted] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpOrganizationUnitRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpOrganizationUnits
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpOrganizationUnits]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpOrganizationUnits]
GO

CREATE TABLE [dbo].[AbpOrganizationUnits] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [Code] nvarchar(95) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [DisplayName] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [ParentId] bigint  NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpOrganizationUnits] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpPermissions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpPermissions]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpPermissions]
GO

CREATE TABLE [dbo].[AbpPermissions] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [Discriminator] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsGranted] bit  NOT NULL,
  [Name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [RoleId] int  NULL,
  [UserId] bigint  NULL
)
GO

ALTER TABLE [dbo].[AbpPermissions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpPermissions]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpPermissions] ON
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'4', N'2020-12-10 15:39:41.0689853', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'5', N'2020-12-10 15:39:41.1329889', NULL, N'RolePermissionSetting', N'1', N'Pages.Roles', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'6', N'2020-12-10 15:39:41.1329889', NULL, N'RolePermissionSetting', N'1', N'Pages.Tenants', NULL, N'2', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'7', N'2020-12-10 15:39:41.9970384', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'8', N'2020-12-10 15:39:41.9970384', NULL, N'RolePermissionSetting', N'1', N'Pages.Roles', N'1', N'3', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'9', N'2020-12-31 14:39:47.6617289', NULL, N'RolePermissionSetting', N'1', N'Pages', N'1', N'4', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'10', N'2020-12-31 14:39:47.6947307', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'4', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'11', N'2020-12-31 17:00:10.1354668', NULL, N'RolePermissionSetting', N'1', N'Pages', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'12', N'2020-12-31 17:00:10.1704688', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'5', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'13', N'2021-01-04 10:37:34.5908143', NULL, N'RolePermissionSetting', N'1', N'Pages', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'14', N'2021-01-04 10:37:34.6228162', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'6', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'15', N'2021-01-04 10:58:37.3870421', NULL, N'RolePermissionSetting', N'1', N'Pages', N'1', N'7', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'16', N'2021-01-04 10:58:37.4190440', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'7', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'17', N'2021-01-04 13:57:44.8597624', NULL, N'RolePermissionSetting', N'1', N'Pages', N'1', N'8', NULL)
GO

INSERT INTO [dbo].[AbpPermissions] ([Id], [CreationTime], [CreatorUserId], [Discriminator], [IsGranted], [Name], [TenantId], [RoleId], [UserId]) VALUES (N'18', N'2021-01-04 13:57:44.8897641', NULL, N'RolePermissionSetting', N'1', N'Pages.Users', N'1', N'8', NULL)
GO

SET IDENTITY_INSERT [dbo].[AbpPermissions] OFF
GO


-- ----------------------------
-- Table structure for AbpPersistedGrants
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpPersistedGrants]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpPersistedGrants]
GO

CREATE TABLE [dbo].[AbpPersistedGrants] (
  [Id] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Type] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SubjectId] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientId] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [Expiration] datetime2(7)  NULL,
  [Data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpPersistedGrants] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpPersistedGrants]
-- ----------------------------
INSERT INTO [dbo].[AbpPersistedGrants]  VALUES (N'1', N'id_token', N'1', N'gis', N'2020-12-25 09:00:00.0000000', N'2020-12-25 10:00:00.0000000', N'test')
GO


-- ----------------------------
-- Table structure for AbpRoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpRoleClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpRoleClaims]
GO

CREATE TABLE [dbo].[AbpRoleClaims] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [ClaimType] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [RoleId] int  NOT NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpRoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpRoles]
GO

CREATE TABLE [dbo].[AbpRoles] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ConcurrencyStamp] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [DisplayName] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [IsDefault] bit  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [IsStatic] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Name] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NormalizedName] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [Description] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpRoles]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpRoles] ON
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'2', N'af4f0b65-e304-48a2-8949-d862d283bd46', N'2020-12-10 15:39:40.8919752', NULL, NULL, NULL, N'Admin', N'1', N'0', N'1', N'2020-12-10 16:17:47.8377810', N'2', N'Admin', N'ADMIN', NULL, N'')
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'3', N'a4a0996b-cdc1-4ee6-9aca-562cdcdb7a18', N'2020-12-10 15:39:41.9180339', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'4', N'74379be5-c67b-478f-88d0-2b0395e0b705', N'2020-12-31 14:39:47.6017254', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'5', N'e3e05e2c-08b8-4118-bc05-78ddeabfd412', N'2020-12-31 17:00:09.8764520', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'6', N'9b4fd894-5461-4d81-a89a-d800e34f2814', N'2021-01-04 10:37:34.2497948', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'7', N'1bdb94d6-609e-490a-a97a-3d034d1a3ea5', N'2021-01-04 10:58:37.1610292', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

INSERT INTO [dbo].[AbpRoles] ([Id], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [DisplayName], [IsDefault], [IsDeleted], [IsStatic], [LastModificationTime], [LastModifierUserId], [Name], [NormalizedName], [TenantId], [Description]) VALUES (N'8', N'36485a9d-cab8-4bd2-a85d-b50b147764f8', N'2021-01-04 13:57:44.5077423', NULL, NULL, NULL, N'Admin', N'0', N'0', N'1', NULL, NULL, N'Admin', N'ADMIN', N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[AbpRoles] OFF
GO


-- ----------------------------
-- Table structure for AbpSettings
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpSettings]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpSettings]
GO

CREATE TABLE [dbo].[AbpSettings] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Name] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NULL,
  [Value] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpSettings] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpSettings]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpSettings] ON
GO

INSERT INTO [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (N'3', N'2020-12-10 15:39:41.5250114', NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromAddress', NULL, NULL, N'admin@mydomain.com')
GO

INSERT INTO [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (N'4', N'2020-12-10 15:39:41.5880150', NULL, NULL, NULL, N'Abp.Net.Mail.DefaultFromDisplayName', NULL, NULL, N'mydomain.com mailer')
GO

INSERT INTO [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (N'5', N'2020-12-10 15:39:41.6320175', NULL, NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, NULL, N'en')
GO

INSERT INTO [dbo].[AbpSettings] ([Id], [CreationTime], [CreatorUserId], [LastModificationTime], [LastModifierUserId], [Name], [TenantId], [UserId], [Value]) VALUES (N'6', N'2020-12-10 15:44:35.4178211', N'2', NULL, NULL, N'Abp.Localization.DefaultLanguageName', NULL, N'2', N'zh-Hans')
GO

SET IDENTITY_INSERT [dbo].[AbpSettings] OFF
GO


-- ----------------------------
-- Table structure for AbpTenantNotifications
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpTenantNotifications]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpTenantNotifications]
GO

CREATE TABLE [dbo].[AbpTenantNotifications] (
  [Id] uniqueidentifier  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [Data] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [DataTypeName] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityId] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeAssemblyQualifiedName] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityTypeName] nvarchar(250) COLLATE Chinese_PRC_CI_AS  NULL,
  [NotificationName] nvarchar(96) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Severity] tinyint  NOT NULL,
  [TenantId] int  NULL
)
GO

ALTER TABLE [dbo].[AbpTenantNotifications] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpTenants
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpTenants]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpTenants]
GO

CREATE TABLE [dbo].[AbpTenants] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ConnectionString] nvarchar(1024) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [EditionId] int  NULL,
  [IsActive] bit  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [Name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenancyName] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpTenants] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpTenants]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpTenants] ON
GO

INSERT INTO [dbo].[AbpTenants] ([Id], [ConnectionString], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EditionId], [IsActive], [IsDeleted], [LastModificationTime], [LastModifierUserId], [Name], [TenancyName]) VALUES (N'1', NULL, N'2020-12-10 15:39:41.7030216', NULL, NULL, NULL, N'2', N'1', N'0', NULL, NULL, N'Default', N'Default')
GO

SET IDENTITY_INSERT [dbo].[AbpTenants] OFF
GO


-- ----------------------------
-- Table structure for AbpUserAccounts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserAccounts]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserAccounts]
GO

CREATE TABLE [dbo].[AbpUserAccounts] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [EmailAddress] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsDeleted] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL,
  [UserLinkId] bigint  NULL,
  [UserName] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpUserAccounts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpUserAccounts]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpUserAccounts] ON
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'1', N'2020-12-10 15:39:42.4900666', NULL, NULL, NULL, N'admin@aspnetboilerplate.com', N'0', N'2020-12-10 16:12:48.2106433', N'2', NULL, N'2', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'2', N'2020-12-10 15:39:43.5731285', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'3', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'3', N'2020-12-31 14:39:47.9337444', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'5', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'4', N'2020-12-31 14:39:48.2277612', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'5', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'5', N'2020-12-31 17:00:10.2794750', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'6', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'6', N'2020-12-31 17:00:10.4164829', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'6', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'7', N'2021-01-04 10:37:34.9188331', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'7', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'8', N'2021-01-04 10:37:35.1888485', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'7', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'9', N'2021-01-04 10:58:37.6530574', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'8', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'10', N'2021-01-04 10:58:37.7680639', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'8', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'11', N'2021-01-04 13:57:45.0507733', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'9', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUserAccounts] ([Id], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [IsDeleted], [LastModificationTime], [LastModifierUserId], [TenantId], [UserId], [UserLinkId], [UserName]) VALUES (N'12', N'2021-01-04 13:57:45.1427786', NULL, NULL, NULL, N'admin@defaulttenant.com', N'0', NULL, NULL, N'1', N'9', NULL, N'admin')
GO

SET IDENTITY_INSERT [dbo].[AbpUserAccounts] OFF
GO


-- ----------------------------
-- Table structure for AbpUserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserClaims]
GO

CREATE TABLE [dbo].[AbpUserClaims] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [ClaimType] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpUserLoginAttempts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserLoginAttempts]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserLoginAttempts]
GO

CREATE TABLE [dbo].[AbpUserLoginAttempts] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [BrowserInfo] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientIpAddress] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ClientName] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [Result] tinyint  NOT NULL,
  [TenancyName] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NULL,
  [UserNameOrEmailAddress] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AbpUserLoginAttempts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpUserLoginAttempts]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpUserLoginAttempts] ON
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'1', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-10 15:40:48.7258550', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'2', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-10 18:48:11.6909159', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'3', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-11 13:41:43.0015616', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'4', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-11 13:46:04.6775286', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'5', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-11 14:16:52.1441976', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'6', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 15:25:22.1946711', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'7', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 15:27:07.9817217', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'8', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 15:30:02.5047039', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'9', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 15:38:58.2223452', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'10', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 15:39:56.8877007', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'11', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 19:12:02.6855747', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'12', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 19:51:24.5686666', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'13', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 20:08:33.5455208', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'14', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 20:12:19.4704429', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'15', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 20:20:07.1501927', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'16', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 20:59:22.7709265', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'17', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-14 21:00:49.8169052', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'18', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 08:52:26.8510867', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'19', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 08:59:51.0514935', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'20', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 09:07:55.5742066', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'21', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 09:16:33.2498160', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'22', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 09:35:36.3491975', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'23', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 09:36:12.2422505', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'24', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 10:22:21.7706585', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'25', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 10:28:50.1658734', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'26', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 11:28:24.5613171', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'27', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 11:35:16.6198855', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'28', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 13:52:38.9163179', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'29', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 13:52:53.9871799', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'30', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-15 15:19:12.7593888', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'31', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 13:48:43.5261605', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'32', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 13:59:57.1676906', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'33', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:13:30.8192288', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'34', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:13:30.9122341', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'35', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:13:31.0682430', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'36', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:13:31.1712489', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'37', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:13:31.1722490', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'38', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-16 14:15:37.7374881', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'39', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, N'2020-12-17 19:45:39.9761183', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'40', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, N'2020-12-22 14:52:25.8279238', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'41', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', N'::1', NULL, N'2020-12-22 14:52:59.1848317', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'42', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-25 15:53:57.5410672', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'43', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 18:51:37.3824077', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'44', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 18:56:19.3465351', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'45', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:02:40.9913640', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'46', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:05:14.9611705', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'47', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:05:33.0172033', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'48', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:06:08.8342519', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'49', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:06:45.5663529', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'50', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 19:08:06.7849983', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'51', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-29 20:08:02.1466412', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'52', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:50:50.9836850', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'53', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:51:40.3145066', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'54', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:52:03.6188395', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'55', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:52:36.5957257', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'56', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:53:01.5131509', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'57', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:55:46.9296121', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'58', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:56:33.7812919', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'59', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:58:02.9413916', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'60', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:58:44.8207869', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'61', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 17:59:24.3920503', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'62', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:00:02.2712168', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'63', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:00:46.1357257', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'64', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:02:07.3163690', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'65', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:02:35.7549956', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'66', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:04:30.9815862', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'67', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:05:24.3046361', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'68', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:08:33.6064635', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'69', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:08:56.9047961', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'70', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:09:30.4947174', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'71', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:11:04.6861048', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'72', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:17:03.3246178', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'73', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:21:18.9922411', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'74', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-30 18:22:06.6929694', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'75', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 13:57:26.1413622', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'76', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:03:42.5378909', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'77', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:04:02.8760541', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'78', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:40:36.2845099', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'79', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:42:17.5853040', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'80', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:45:14.9274474', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'81', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:46:08.0924882', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'82', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:52:57.4419017', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'83', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2020-12-31 14:57:14.2375896', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'84', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2021-01-04 10:59:00.1283429', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'85', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2021-01-04 13:35:27.0452438', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'86', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2021-01-04 13:58:03.6398366', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'87', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2021-01-04 13:59:43.1755297', N'1', NULL, NULL, N'2', N'admin')
GO

INSERT INTO [dbo].[AbpUserLoginAttempts] ([Id], [BrowserInfo], [ClientIpAddress], [ClientName], [CreationTime], [Result], [TenancyName], [TenantId], [UserId], [UserNameOrEmailAddress]) VALUES (N'88', N'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', N'::1', NULL, N'2021-01-04 14:02:15.5992478', N'1', NULL, NULL, N'2', N'admin')
GO

SET IDENTITY_INSERT [dbo].[AbpUserLoginAttempts] OFF
GO


-- ----------------------------
-- Table structure for AbpUserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserLogins]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserLogins]
GO

CREATE TABLE [dbo].[AbpUserLogins] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [LoginProvider] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpUserNotifications
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserNotifications]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserNotifications]
GO

CREATE TABLE [dbo].[AbpUserNotifications] (
  [Id] uniqueidentifier  NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [State] int  NOT NULL,
  [TenantId] int  NULL,
  [TenantNotificationId] uniqueidentifier  NOT NULL,
  [UserId] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUserNotifications] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpUserOrganizationUnits
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserOrganizationUnits]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserOrganizationUnits]
GO

CREATE TABLE [dbo].[AbpUserOrganizationUnits] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [OrganizationUnitId] bigint  NOT NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL,
  [IsDeleted] bit DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUserOrganizationUnits] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for AbpUserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserRoles]
GO

CREATE TABLE [dbo].[AbpUserRoles] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [RoleId] int  NOT NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpUserRoles]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpUserRoles] ON
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'3', N'2020-12-10 15:39:42.1270458', NULL, N'3', N'1', N'3')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'4', N'2020-12-10 16:12:47.6046086', N'2', N'2', NULL, N'2')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'5', N'2020-12-31 14:39:47.8887418', NULL, N'4', N'1', N'5')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'6', N'2020-12-31 17:00:10.2594739', NULL, N'5', N'1', N'6')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'7', N'2021-01-04 10:37:34.8658301', NULL, N'6', N'1', N'7')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'8', N'2021-01-04 10:58:37.6280559', NULL, N'7', N'1', N'8')
GO

INSERT INTO [dbo].[AbpUserRoles] ([Id], [CreationTime], [CreatorUserId], [RoleId], [TenantId], [UserId]) VALUES (N'9', N'2021-01-04 13:57:45.0207716', NULL, N'8', N'1', N'9')
GO

SET IDENTITY_INSERT [dbo].[AbpUserRoles] OFF
GO


-- ----------------------------
-- Table structure for AbpUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUsers]
GO

CREATE TABLE [dbo].[AbpUsers] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [AccessFailedCount] int  NOT NULL,
  [AuthenticationSource] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [CreationTime] datetime2(7)  NOT NULL,
  [CreatorUserId] bigint  NULL,
  [DeleterUserId] bigint  NULL,
  [DeletionTime] datetime2(7)  NULL,
  [EmailAddress] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [EmailConfirmationCode] nvarchar(328) COLLATE Chinese_PRC_CI_AS  NULL,
  [IsActive] bit  NOT NULL,
  [IsDeleted] bit  NOT NULL,
  [IsEmailConfirmed] bit  NOT NULL,
  [IsLockoutEnabled] bit  NOT NULL,
  [IsPhoneNumberConfirmed] bit  NOT NULL,
  [IsTwoFactorEnabled] bit  NOT NULL,
  [LastModificationTime] datetime2(7)  NULL,
  [LastModifierUserId] bigint  NULL,
  [LockoutEndDateUtc] datetime2(7)  NULL,
  [Name] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NormalizedEmailAddress] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NormalizedUserName] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Password] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PasswordResetCode] nvarchar(328) COLLATE Chinese_PRC_CI_AS  NULL,
  [PhoneNumber] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [SecurityStamp] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [Surname] nvarchar(64) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TenantId] int  NULL,
  [UserName] nvarchar(256) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AbpUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [AbpUsers]
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AbpUsers] ON
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'2', N'0', NULL, N'2a59e7a6-5da3-4fec-bb2d-a1b5ba55bada', N'2020-12-10 15:39:41.3019986', NULL, NULL, NULL, N'admin@aspnetboilerplate.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', N'2020-12-10 16:12:47.6366105', N'2', NULL, N'admin', N'ADMIN@ASPNETBOILERPLATE.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEISKWNivhVf6O8LdQvqLdLFCHeRNGplUYQ8gvQnBcKy+8qV5MY4OAlgxTeiQ/ye2aQ==', NULL, NULL, N'b65a5e3c-6790-0fb1-2108-39f95dc43b76', N'admin', NULL, N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'3', N'0', NULL, N'90501c2f-347c-48e3-95ca-72a6d1ff2fad', N'2020-12-10 15:39:42.0730427', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEBfLhPHlVKPzt+3o6VzYTK0yzQHjARGBjzv55hDU2DkcJrHUR749NSjCx8O6oyTm6w==', NULL, NULL, N'9c132aa4-1f90-fc3f-6367-39f95dc43e79', N'admin', N'1', N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'5', N'0', NULL, N'6241b59b-6fc7-45cf-b125-ba2694a9aa1f', N'2020-12-31 14:39:47.8197379', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEMMLKCVez9DWH9DgjedupG8HMt5O+IIrZjKNzeaFuGDzG65hXdrKXc4XJmMeaMKUog==', NULL, NULL, N'0f388994-c39d-8d78-ea14-39f9c9b2f26b', N'admin', N'1', N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'6', N'0', NULL, N'1c8e65e2-659a-421b-abe1-d3d6f3b8f9e9', N'2020-12-31 17:00:10.2154714', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEFrl82OeQBgNg4PyVkJa8cNVGYvrfU8gZtWBsKNe8LmLyXfvBH8S51uYRI7C/PB5yA==', NULL, NULL, N'5db41587-fe44-121e-49a0-39f9ca337667', N'admin', N'1', N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'7', N'0', NULL, N'659878d9-9cf7-442f-b755-4cb67019fd7c', N'2021-01-04 10:37:34.7328224', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAEMp9Bz5fy8qtWinUP7sHxVputbrDitFYR3/Gc8Oe/W9i9EivQVn5Cf3FYjD0k3SM0A==', NULL, NULL, N'b9e43bdf-e122-2439-ee25-39f9dd6ea08c', N'admin', N'1', N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'8', N'0', NULL, N'f466f708-f316-412e-aa3f-94e1eb9e3fd3', N'2021-01-04 10:58:37.5730528', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAELyJk7oVBL97Ca3wXHwrdkaGUyElkDw2JHCCEmYOQ0IPY8ui9NZi1oyFZjBGKVOSew==', NULL, NULL, N'7a40f31c-abce-aa8d-6cc6-39f9dd81e585', N'admin', N'1', N'admin')
GO

INSERT INTO [dbo].[AbpUsers] ([Id], [AccessFailedCount], [AuthenticationSource], [ConcurrencyStamp], [CreationTime], [CreatorUserId], [DeleterUserId], [DeletionTime], [EmailAddress], [EmailConfirmationCode], [IsActive], [IsDeleted], [IsEmailConfirmed], [IsLockoutEnabled], [IsPhoneNumberConfirmed], [IsTwoFactorEnabled], [LastModificationTime], [LastModifierUserId], [LockoutEndDateUtc], [Name], [NormalizedEmailAddress], [NormalizedUserName], [Password], [PasswordResetCode], [PhoneNumber], [SecurityStamp], [Surname], [TenantId], [UserName]) VALUES (N'9', N'0', NULL, N'aac0445c-789b-433b-a6af-81559217d079', N'2021-01-04 13:57:44.9457673', NULL, NULL, NULL, N'admin@defaulttenant.com', NULL, N'1', N'0', N'1', N'0', N'0', N'0', NULL, NULL, NULL, N'admin', N'ADMIN@DEFAULTTENANT.COM', N'ADMIN', N'AQAAAAEAACcQAAAAECxiV8RPQjbcsXMsC0DtHKcx8MWLZvavEMwuL6SNBbx0das+v7MsFP6T9g1c74kk/g==', NULL, NULL, N'cdc749ce-398e-e721-14d8-39f9de25e371', N'admin', N'1', N'admin')
GO

SET IDENTITY_INSERT [dbo].[AbpUsers] OFF
GO


-- ----------------------------
-- Table structure for AbpUserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AbpUserTokens]') AND type IN ('U'))
	DROP TABLE [dbo].[AbpUserTokens]
GO

CREATE TABLE [dbo].[AbpUserTokens] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [LoginProvider] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(128) COLLATE Chinese_PRC_CI_AS  NULL,
  [TenantId] int  NULL,
  [UserId] bigint  NOT NULL,
  [Value] nvarchar(512) COLLATE Chinese_PRC_CI_AS  NULL,
  [ExpireDate] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[AbpUserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpAuditLogs
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionDuration]
ON [dbo].[AbpAuditLogs] (
  [TenantId] ASC,
  [ExecutionDuration] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime]
ON [dbo].[AbpAuditLogs] (
  [TenantId] ASC,
  [ExecutionTime] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId]
ON [dbo].[AbpAuditLogs] (
  [TenantId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpAuditLogs
-- ----------------------------
ALTER TABLE [dbo].[AbpAuditLogs] ADD CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpBackgroundJobs
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]
ON [dbo].[AbpBackgroundJobs] (
  [IsAbandoned] ASC,
  [NextTryTime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpBackgroundJobs
-- ----------------------------
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AbpEditions
-- ----------------------------
ALTER TABLE [dbo].[AbpEditions] ADD CONSTRAINT [PK_AbpEditions] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpEntityChanges
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityChangeSetId]
ON [dbo].[AbpEntityChanges] (
  [EntityChangeSetId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_EntityTypeFullName_EntityId]
ON [dbo].[AbpEntityChanges] (
  [EntityTypeFullName] ASC,
  [EntityId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpEntityChanges
-- ----------------------------
ALTER TABLE [dbo].[AbpEntityChanges] ADD CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpEntityChangeSets
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_CreationTime]
ON [dbo].[AbpEntityChangeSets] (
  [TenantId] ASC,
  [CreationTime] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_Reason]
ON [dbo].[AbpEntityChangeSets] (
  [TenantId] ASC,
  [Reason] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpEntityChangeSets_TenantId_UserId]
ON [dbo].[AbpEntityChangeSets] (
  [TenantId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpEntityChangeSets
-- ----------------------------
ALTER TABLE [dbo].[AbpEntityChangeSets] ADD CONSTRAINT [PK_AbpEntityChangeSets] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpEntityPropertyChanges
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId]
ON [dbo].[AbpEntityPropertyChanges] (
  [EntityChangeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpEntityPropertyChanges
-- ----------------------------
ALTER TABLE [dbo].[AbpEntityPropertyChanges] ADD CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpFeatures
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_EditionId_Name]
ON [dbo].[AbpFeatures] (
  [EditionId] ASC,
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpFeatures_TenantId_Name]
ON [dbo].[AbpFeatures] (
  [TenantId] ASC,
  [Name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpFeatures
-- ----------------------------
ALTER TABLE [dbo].[AbpFeatures] ADD CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpLanguages
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpLanguages_TenantId_Name]
ON [dbo].[AbpLanguages] (
  [TenantId] ASC,
  [Name] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpLanguages
-- ----------------------------
ALTER TABLE [dbo].[AbpLanguages] ADD CONSTRAINT [PK_AbpLanguages] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpLanguageTexts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpLanguageTexts_TenantId_Source_LanguageName_Key]
ON [dbo].[AbpLanguageTexts] (
  [TenantId] ASC,
  [Source] ASC,
  [LanguageName] ASC,
  [Key] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpLanguageTexts
-- ----------------------------
ALTER TABLE [dbo].[AbpLanguageTexts] ADD CONSTRAINT [PK_AbpLanguageTexts] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AbpNotifications
-- ----------------------------
ALTER TABLE [dbo].[AbpNotifications] ADD CONSTRAINT [PK_AbpNotifications] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpNotificationSubscriptions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_NotificationName_EntityTypeName_EntityId_UserId]
ON [dbo].[AbpNotificationSubscriptions] (
  [NotificationName] ASC,
  [EntityTypeName] ASC,
  [EntityId] ASC,
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpNotificationSubscriptions_TenantId_NotificationName_EntityTypeName_EntityId_UserId]
ON [dbo].[AbpNotificationSubscriptions] (
  [TenantId] ASC,
  [NotificationName] ASC,
  [EntityTypeName] ASC,
  [EntityId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpNotificationSubscriptions
-- ----------------------------
ALTER TABLE [dbo].[AbpNotificationSubscriptions] ADD CONSTRAINT [PK_AbpNotificationSubscriptions] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpOrganizationUnitRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_OrganizationUnitId]
ON [dbo].[AbpOrganizationUnitRoles] (
  [TenantId] ASC,
  [OrganizationUnitId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_TenantId_RoleId]
ON [dbo].[AbpOrganizationUnitRoles] (
  [TenantId] ASC,
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpOrganizationUnitRoles
-- ----------------------------
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] ADD CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpOrganizationUnits
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_ParentId]
ON [dbo].[AbpOrganizationUnits] (
  [ParentId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_TenantId_Code]
ON [dbo].[AbpOrganizationUnits] (
  [TenantId] ASC,
  [Code] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpOrganizationUnits
-- ----------------------------
ALTER TABLE [dbo].[AbpOrganizationUnits] ADD CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpPermissions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_TenantId_Name]
ON [dbo].[AbpPermissions] (
  [TenantId] ASC,
  [Name] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpPermissions_RoleId]
ON [dbo].[AbpPermissions] (
  [RoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpPermissions_UserId]
ON [dbo].[AbpPermissions] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpPermissions
-- ----------------------------
ALTER TABLE [dbo].[AbpPermissions] ADD CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpPersistedGrants
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpPersistedGrants_SubjectId_ClientId_Type]
ON [dbo].[AbpPersistedGrants] (
  [SubjectId] ASC,
  [ClientId] ASC,
  [Type] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpPersistedGrants
-- ----------------------------
ALTER TABLE [dbo].[AbpPersistedGrants] ADD CONSTRAINT [PK_AbpPersistedGrants] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpRoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId]
ON [dbo].[AbpRoleClaims] (
  [RoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_TenantId_ClaimType]
ON [dbo].[AbpRoleClaims] (
  [TenantId] ASC,
  [ClaimType] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AbpRoleClaims] ADD CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpRoles_CreatorUserId]
ON [dbo].[AbpRoles] (
  [CreatorUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpRoles_DeleterUserId]
ON [dbo].[AbpRoles] (
  [DeleterUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpRoles_LastModifierUserId]
ON [dbo].[AbpRoles] (
  [LastModifierUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpRoles_TenantId_NormalizedName]
ON [dbo].[AbpRoles] (
  [TenantId] ASC,
  [NormalizedName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpRoles
-- ----------------------------
ALTER TABLE [dbo].[AbpRoles] ADD CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpSettings
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpSettings_UserId]
ON [dbo].[AbpSettings] (
  [UserId] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpSettings_TenantId_Name_UserId]
ON [dbo].[AbpSettings] (
  [TenantId] ASC,
  [Name] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpSettings
-- ----------------------------
ALTER TABLE [dbo].[AbpSettings] ADD CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpTenantNotifications
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpTenantNotifications_TenantId]
ON [dbo].[AbpTenantNotifications] (
  [TenantId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpTenantNotifications
-- ----------------------------
ALTER TABLE [dbo].[AbpTenantNotifications] ADD CONSTRAINT [PK_AbpTenantNotifications] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpTenants
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpTenants_CreatorUserId]
ON [dbo].[AbpTenants] (
  [CreatorUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpTenants_DeleterUserId]
ON [dbo].[AbpTenants] (
  [DeleterUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpTenants_EditionId]
ON [dbo].[AbpTenants] (
  [EditionId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpTenants_LastModifierUserId]
ON [dbo].[AbpTenants] (
  [LastModifierUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpTenants_TenancyName]
ON [dbo].[AbpTenants] (
  [TenancyName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpTenants
-- ----------------------------
ALTER TABLE [dbo].[AbpTenants] ADD CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserAccounts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_EmailAddress]
ON [dbo].[AbpUserAccounts] (
  [EmailAddress] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_UserName]
ON [dbo].[AbpUserAccounts] (
  [UserName] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_EmailAddress]
ON [dbo].[AbpUserAccounts] (
  [TenantId] ASC,
  [EmailAddress] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserId]
ON [dbo].[AbpUserAccounts] (
  [TenantId] ASC,
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserAccounts_TenantId_UserName]
ON [dbo].[AbpUserAccounts] (
  [TenantId] ASC,
  [UserName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserAccounts
-- ----------------------------
ALTER TABLE [dbo].[AbpUserAccounts] ADD CONSTRAINT [PK_AbpUserAccounts] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId]
ON [dbo].[AbpUserClaims] (
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_TenantId_ClaimType]
ON [dbo].[AbpUserClaims] (
  [TenantId] ASC,
  [ClaimType] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AbpUserClaims] ADD CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserLoginAttempts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_UserId_TenantId]
ON [dbo].[AbpUserLoginAttempts] (
  [UserId] ASC,
  [TenantId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserLoginAttempts_TenancyName_UserNameOrEmailAddress_Result]
ON [dbo].[AbpUserLoginAttempts] (
  [TenancyName] ASC,
  [UserNameOrEmailAddress] ASC,
  [Result] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserLoginAttempts
-- ----------------------------
ALTER TABLE [dbo].[AbpUserLoginAttempts] ADD CONSTRAINT [PK_AbpUserLoginAttempts] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_UserId]
ON [dbo].[AbpUserLogins] (
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_UserId]
ON [dbo].[AbpUserLogins] (
  [TenantId] ASC,
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_TenantId_LoginProvider_ProviderKey]
ON [dbo].[AbpUserLogins] (
  [TenantId] ASC,
  [LoginProvider] ASC,
  [ProviderKey] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AbpUserLogins] ADD CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserNotifications
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserNotifications_UserId_State_CreationTime]
ON [dbo].[AbpUserNotifications] (
  [UserId] ASC,
  [State] ASC,
  [CreationTime] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserNotifications
-- ----------------------------
ALTER TABLE [dbo].[AbpUserNotifications] ADD CONSTRAINT [PK_AbpUserNotifications] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserOrganizationUnits
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_OrganizationUnitId]
ON [dbo].[AbpUserOrganizationUnits] (
  [TenantId] ASC,
  [OrganizationUnitId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_TenantId_UserId]
ON [dbo].[AbpUserOrganizationUnits] (
  [TenantId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserOrganizationUnits
-- ----------------------------
ALTER TABLE [dbo].[AbpUserOrganizationUnits] ADD CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_UserId]
ON [dbo].[AbpUserRoles] (
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_RoleId]
ON [dbo].[AbpUserRoles] (
  [TenantId] ASC,
  [RoleId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_TenantId_UserId]
ON [dbo].[AbpUserRoles] (
  [TenantId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AbpUserRoles] ADD CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUsers
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUsers_CreatorUserId]
ON [dbo].[AbpUsers] (
  [CreatorUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUsers_DeleterUserId]
ON [dbo].[AbpUsers] (
  [DeleterUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUsers_LastModifierUserId]
ON [dbo].[AbpUsers] (
  [LastModifierUserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedEmailAddress]
ON [dbo].[AbpUsers] (
  [TenantId] ASC,
  [NormalizedEmailAddress] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUsers_TenantId_NormalizedUserName]
ON [dbo].[AbpUsers] (
  [TenantId] ASC,
  [NormalizedUserName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUsers
-- ----------------------------
ALTER TABLE [dbo].[AbpUsers] ADD CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AbpUserTokens
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_UserId]
ON [dbo].[AbpUserTokens] (
  [UserId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_AbpUserTokens_TenantId_UserId]
ON [dbo].[AbpUserTokens] (
  [TenantId] ASC,
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AbpUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AbpUserTokens] ADD CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AbpEntityChanges
-- ----------------------------
ALTER TABLE [dbo].[AbpEntityChanges] ADD CONSTRAINT [FK_AbpEntityChanges_AbpEntityChangeSets_EntityChangeSetId] FOREIGN KEY ([EntityChangeSetId]) REFERENCES [AbpEntityChangeSets] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpEntityPropertyChanges
-- ----------------------------
ALTER TABLE [dbo].[AbpEntityPropertyChanges] ADD CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY ([EntityChangeId]) REFERENCES [AbpEntityChanges] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpFeatures
-- ----------------------------
ALTER TABLE [dbo].[AbpFeatures] ADD CONSTRAINT [FK_AbpFeatures_AbpEditions_EditionId] FOREIGN KEY ([EditionId]) REFERENCES [AbpEditions] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpOrganizationUnits
-- ----------------------------
ALTER TABLE [dbo].[AbpOrganizationUnits] ADD CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [AbpOrganizationUnits] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpPermissions
-- ----------------------------
ALTER TABLE [dbo].[AbpPermissions] ADD CONSTRAINT [FK_AbpPermissions_AbpRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AbpRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpPermissions] ADD CONSTRAINT [FK_AbpPermissions_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AbpRoleClaims] ADD CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [AbpRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpRoles
-- ----------------------------
ALTER TABLE [dbo].[AbpRoles] ADD CONSTRAINT [FK_AbpRoles_AbpUsers_CreatorUserId] FOREIGN KEY ([CreatorUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpRoles] ADD CONSTRAINT [FK_AbpRoles_AbpUsers_DeleterUserId] FOREIGN KEY ([DeleterUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpRoles] ADD CONSTRAINT [FK_AbpRoles_AbpUsers_LastModifierUserId] FOREIGN KEY ([LastModifierUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpSettings
-- ----------------------------
ALTER TABLE [dbo].[AbpSettings] ADD CONSTRAINT [FK_AbpSettings_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpTenants
-- ----------------------------
ALTER TABLE [dbo].[AbpTenants] ADD CONSTRAINT [FK_AbpTenants_AbpUsers_CreatorUserId] FOREIGN KEY ([CreatorUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpTenants] ADD CONSTRAINT [FK_AbpTenants_AbpUsers_DeleterUserId] FOREIGN KEY ([DeleterUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpTenants] ADD CONSTRAINT [FK_AbpTenants_AbpEditions_EditionId] FOREIGN KEY ([EditionId]) REFERENCES [AbpEditions] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpTenants] ADD CONSTRAINT [FK_AbpTenants_AbpUsers_LastModifierUserId] FOREIGN KEY ([LastModifierUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AbpUserClaims] ADD CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AbpUserLogins] ADD CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AbpUserRoles] ADD CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpUsers
-- ----------------------------
ALTER TABLE [dbo].[AbpUsers] ADD CONSTRAINT [FK_AbpUsers_AbpUsers_CreatorUserId] FOREIGN KEY ([CreatorUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpUsers] ADD CONSTRAINT [FK_AbpUsers_AbpUsers_DeleterUserId] FOREIGN KEY ([DeleterUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AbpUsers] ADD CONSTRAINT [FK_AbpUsers_AbpUsers_LastModifierUserId] FOREIGN KEY ([LastModifierUserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AbpUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AbpUserTokens] ADD CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [AbpUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

