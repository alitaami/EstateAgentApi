USE [EstateProject]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/03/2023 12:04:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 25/03/2023 12:04:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAdvertises]    Script Date: 25/03/2023 12:04:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAdvertises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AdvertiseText] [nvarchar](100) NOT NULL,
	[AdvertiserName] [nvarchar](50) NOT NULL,
	[AdvertiserNumber] [nvarchar](11) NOT NULL,
	[HomeAddress] [nvarchar](200) NOT NULL,
	[RoomCount] [int] NOT NULL,
	[Meterage] [bigint] NOT NULL,
	[PricePerMeter] [bigint] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[HasElevator] [bit] NOT NULL,
	[HasBalcony] [bit] NOT NULL,
	[HasWarehouse] [bit] NOT NULL,
	[CreatedDate] [datetimeoffset](7) NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_UserAdvertises] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 25/03/2023 12:04:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/03/2023 12:04:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](500) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Age] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
	[IsEstateConsultant] [bit] NOT NULL,
	[EstateAddress] [nvarchar](200) NULL,
	[EstatePhoneNumber] [nvarchar](11) NULL,
	[EstateCode] [nvarchar](10) NULL,
	[LastLoginDate] [datetimeoffset](7) NULL,
	[SecurityStamp] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322093236_init', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230322180522_update', N'7.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230324182622_addIsDelete', N'7.0.4')
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name], [Description]) VALUES (1, N'املاک', N'املاک')
INSERT [dbo].[Roles] ([Id], [Name], [Description]) VALUES (2, N'کاربر', N'کاربر')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAdvertises] ON 

INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [HomeAddress], [RoomCount], [Meterage], [PricePerMeter], [TotalPrice], [Description], [HasElevator], [HasBalcony], [HasWarehouse], [CreatedDate], [IsDelete]) VALUES (6, 15, N'مغازه 30 متری', N'املاک محسن', N'04133334174', N'میرداماد', 1, 30, 100, 3000, N'--', 0, 0, 1, CAST(N'2023-03-24T23:14:57.4060175+04:30' AS DateTimeOffset), 0)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [HomeAddress], [RoomCount], [Meterage], [PricePerMeter], [TotalPrice], [Description], [HasElevator], [HasBalcony], [HasWarehouse], [CreatedDate], [IsDelete]) VALUES (7, 14, N'ویلای 200 متری', N'املاک علی', N'04133319284', N'مرند', 1, 200, 220, 44000, N'--', 0, 1, 0, CAST(N'2023-03-24T23:19:24.8350686+04:30' AS DateTimeOffset), 1)
INSERT [dbo].[UserAdvertises] ([Id], [UserId], [AdvertiseText], [AdvertiserName], [AdvertiserNumber], [HomeAddress], [RoomCount], [Meterage], [PricePerMeter], [TotalPrice], [Description], [HasElevator], [HasBalcony], [HasWarehouse], [CreatedDate], [IsDelete]) VALUES (8, 14, N'خانه 100 متری', N'املاک علی', N'04133319284', N'الهی پرست', 2, 100, 200000, 20000000, N'--', 1, 1, 1, CAST(N'2023-03-24T23:16:32.5606497+04:30' AS DateTimeOffset), 0)
SET IDENTITY_INSERT [dbo].[UserAdvertises] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 

INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (3, 12, 2)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (5, 14, 1)
INSERT [dbo].[UserRoles] ([Id], [UserId], [RoleId]) VALUES (6, 15, 1)
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp]) VALUES (12, N'Alii', N'user@example.com', N'8jr0nptvznD5VS2WniCx5y6jYyQOSw1ZpfsulA8c/3A=', N'ali', 320, 1, N'09301327624', 0, NULL, NULL, NULL, CAST(N'2023-03-24T23:41:38.4869097+04:30' AS DateTimeOffset), N'17245544-24c9-4cb5-addf-f5c9a19eb782')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp]) VALUES (14, N'Admin', N'user@example.com', N'Q3ztxqIjJ8KLqRS2uX6BwQWylKvBZLD7EagITk88lYk=', N'ali', 230, 1, N'09141706696', 1, N'elahiparast', N'04133319284', N'dadsasd', CAST(N'2023-03-24T23:47:03.7619496+04:30' AS DateTimeOffset), N'2a8f7479-1ab3-4a78-b28e-a5cf62a02985')
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FullName], [Age], [IsActive], [PhoneNumber], [IsEstateConsultant], [EstateAddress], [EstatePhoneNumber], [EstateCode], [LastLoginDate], [SecurityStamp]) VALUES (15, N'Mohsen', N'Mohsen@example.com', N'8jr0nptvznD5VS2WniCx5y6jYyQOSw1ZpfsulA8c/3A=', N'MohsenAbbasi', 22, 1, N'09141706695', 1, N'میرداماد', N'04133334174', N'ADasdad33', CAST(N'2023-03-24T23:42:32.1011272+04:30' AS DateTimeOffset), N'a2e186aa-2163-4c9d-8177-4b73cc7e905e')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT ('0001-01-01T00:00:00.0000000+00:00') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserAdvertises] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDelete]
GO
ALTER TABLE [dbo].[UserAdvertises]  WITH CHECK ADD  CONSTRAINT [FK_UserAdvertises_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserAdvertises] CHECK CONSTRAINT [FK_UserAdvertises_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
