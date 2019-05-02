USE [TestManager_live]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/3/2019 3:06:01 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/3/2019 3:06:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test]    Script Date: 5/3/2019 3:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ModifiedDateTime] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestResult]    Script Date: 5/3/2019 3:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[Result] [decimal](18, 2) NOT NULL,
	[ModifiedDateTime] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_TestResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestType]    Script Date: 5/3/2019 3:06:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Mesaurement] [nvarchar](max) NULL,
	[ModifiedDateTime] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_TestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.2-servicing-10034')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190502162935_inittables', N'2.2.2-servicing-10034')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190502172522_columnTypeFixes', N'2.2.2-servicing-10034')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Coach', N'Coach', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Athlete', N'Athlete', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b732817-7993-42db-a249-1dfd578e7afa', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ca34af2-e169-439e-80cc-b14759f4483e', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3774c75c-8a3b-4da1-9d0a-716292f0a16c', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5338f3fd-2d3d-4b2d-93b2-0daedc898d7d', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64b7e821-0595-4d2d-9525-cd75be904c3a', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6c158a2a-b0f2-4964-98c5-44bfbaa26e57', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7587732e-be4b-4e77-8a27-162c3fe38147', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84de8ea2-1cc2-4a22-b835-cc73c94a1cde', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6ac1757-513e-4cb7-98d0-f1210f5d33ab', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ac6054b0-6a1e-42f6-872a-1e9c0b6dd07a', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b732817-7993-42db-a249-1dfd578e7afa', N'Mitchel Fausto', N'Mitchel@GMAIL.COM', N'thila@gmail.com', N'THILA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJa6S2CJ6br09Lg56pG3aW9D0T6kdQk5OIHofsTfRcfWKWnDBpvUREe85zQu7jaHOw==', N'HHS5LTWMTSGDDY6NIRVSNXMAN5P2ZU63', N'0e5ed278-323b-4f73-a8a5-02fb20448bad', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2ca34af2-e169-439e-80cc-b14759f4483e', N'Queen Jacobi', N'test2@email.com', N'test@email.com', N'MITCHELFAUSTO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHSNTz0VlQn6yOnqy+yal+bzkw+QZxtBO2ZBo+EWEr9jiJsOgqFTQmp+gKxn+qZsFQ==', N'YCIMGL5YYYBDSOE4M3H7GZSXHSQGMG3X', N'06c2cc47-6833-4c1b-8034-37502645fef8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3774c75c-8a3b-4da1-9d0a-716292f0a16c', N'Magen Faye', N'test3@email.com', N'test@email.com', N'THILANKA6@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEOzFYJ7jpa1Znt95YjQtNGytaiGoDD5yPsk/NvWlu7fFukvFpC8Ahu4qA1UXW4caPw==', N'QO5L4RI6EDZGAKSW6KN5PSME2RUPPYZ5', N'e72f2a72-b7f0-4413-8a4e-7fbb27e47e84', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5338f3fd-2d3d-4b2d-93b2-0daedc898d7d', N'Delicia Ledonne', N'test4@email.com', N'test@email.com', N'THILANKA1@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEKRpTUx2dvaBGNtWHsKdVkdGVISeZHYGEiEOjC/D993i9bVtwCUIog/WaCkSut9sJA==', N'E6UUUY2NZ56KCQYWT2MFUTBWDC7GMIW2', N'8245b1ac-6b74-4457-97ba-b6aaabf215a9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'64b7e821-0595-4d2d-9525-cd75be904c3a', N'Camille Grantham', N'test5@email.com', N'test@email.com', N'THILANKA9@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEGxqySq47KUY3K/+/0UEZjtk57SnANJey3+FYffbRAxaZs3omO4GtX+5qgfHVAJE1A==', N'VANAJSWMUD3PYGD5YXOMB6WY5E7CTR4Z', N'e7da612a-9c9a-403b-9eae-2b9095f66dc6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c158a2a-b0f2-4964-98c5-44bfbaa26e57', N'Marc Voth', N'test6@email.com', N'test@email.com', N'THILANKA3@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAENTyFqbWF09HSnVnEkWgqdMFPydg5zKWVxbLAnCxN/hFalkWPXHqXB1OMBs7z3tYng==', N'E44T3Q34FRHEE5KGTHCMIQLSLPMBDJ6Y', N'7426d6df-5c70-48db-97bd-15f5ab02310a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7587732e-be4b-4e77-8a27-162c3fe38147', N'Randy Rondon', N'test7@email.com', N'test@email.com', N'THILANKA7@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEHpAkHNGq2ouHEtepK2zgNMlw899pkSAjXxsrypRN0R0xhEKZanHdGyJ6Xfidmi/qg==', N'W2N5G4MPPUYMWMPECG6QA3GLGBLJT5BP', N'7f698fae-3c54-4caf-8b4b-b02dea81bee0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'84de8ea2-1cc2-4a22-b835-cc73c94a1cde', N'Delora Saville', N'test8@email.com', N'test@email.com', N'THILA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGLRHf7cWcwn9oZPvnBfZAYZKsuPlEG8Zh4FMtbipdBuNYHSb8RS71vZldKIlMki1A==', N'AMDXWKX47IAJBQCNFKA5PVBUBNW2G5BO', N'fb81ffdf-56e2-49af-b662-a9207c9de92c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a6ac1757-513e-4cb7-98d0-f1210f5d33ab', N'Rosario Reuben', N'test9@email.com', N'test@email.com', N'THILANKA5@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEPPkw7/9ksxiH1CKMC70ERkBEj292bPGeSHpqt7ZN+nB8QeXblBzzMuui4DR4IXemQ==', N'I3W7QLWSMK5LSIXCB6JYX3Y7M6MJVT4I', N'5b829219-5daa-4829-ac40-04b60747a99e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ac6054b0-6a1e-42f6-872a-1e9c0b6dd07a', N'Lula Uhlman', N'test10@email.com', N'thilanka2@ascentic.se', N'THILANKA2@ASCENTIC.SE', 0, N'AQAAAAEAACcQAAAAEMoQQFmHHhsgTY2U3sJDIQmhHqS7lcktrvhl77x97omCFbaF3ABOIrPPCBOmsVSerg==', N'N2LW5KITKITI2LYIPVDSND22ZIG6BKY4', N'd3f36168-2278-451a-a63e-81e8b32707a0', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Test] ON 

INSERT [dbo].[Test] ([Id], [TypeId], [Date], [ModifiedDateTime], [ModifiedBy]) VALUES (1, 1, CAST(N'2019-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-01T22:34:46.6900000' AS DateTime2), N'2')
INSERT [dbo].[Test] ([Id], [TypeId], [Date], [ModifiedDateTime], [ModifiedBy]) VALUES (2, 1, CAST(N'2019-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-01T23:14:33.2130000' AS DateTime2), N'1')
INSERT [dbo].[Test] ([Id], [TypeId], [Date], [ModifiedDateTime], [ModifiedBy]) VALUES (3, 2, CAST(N'1992-01-25T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-01T23:17:07.2830000' AS DateTime2), N'1')
INSERT [dbo].[Test] ([Id], [TypeId], [Date], [ModifiedDateTime], [ModifiedBy]) VALUES (4, 1, CAST(N'2018-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-01T23:39:11.0070000' AS DateTime2), N'1')
SET IDENTITY_INSERT [dbo].[Test] OFF
SET IDENTITY_INSERT [dbo].[TestResult] ON 

INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (9, 1, N'84de8ea2-1cc2-4a22-b835-cc73c94a1cde', CAST(4500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (10, 1, N'7587732e-be4b-4e77-8a27-162c3fe38147', CAST(500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (11, 1, N'a6ac1757-513e-4cb7-98d0-f1210f5d33ab', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (12, 1, N'6c158a2a-b0f2-4964-98c5-44bfbaa26e57', CAST(1500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (13, 2, N'84de8ea2-1cc2-4a22-b835-cc73c94a1cde', CAST(4500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (14, 2, N'6c158a2a-b0f2-4964-98c5-44bfbaa26e57', CAST(323.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (15, 3, N'a6ac1757-513e-4cb7-98d0-f1210f5d33ab', CAST(222.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (16, 3, N'64b7e821-0595-4d2d-9525-cd75be904c3a', CAST(500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (17, 3, N'84de8ea2-1cc2-4a22-b835-cc73c94a1cde', CAST(2500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (18, 3, N'5338f3fd-2d3d-4b2d-93b2-0daedc898d7d', CAST(3000.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (19, 3, N'3774c75c-8a3b-4da1-9d0a-716292f0a16c', CAST(2300.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (20, 4, N'5338f3fd-2d3d-4b2d-93b2-0daedc898d7d', CAST(2900.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (21, 4, N'2ca34af2-e169-439e-80cc-b14759f4483e', CAST(4500.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (22, 4, N'6c158a2a-b0f2-4964-98c5-44bfbaa26e57', CAST(4000.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
INSERT [dbo].[TestResult] ([Id], [TestId], [UserId], [Result], [ModifiedDateTime], [ModifiedBy]) VALUES (23, 4, N'ac6054b0-6a1e-42f6-872a-1e9c0b6dd07a', CAST(1200.00 AS Decimal(18, 2)), CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'1b732817-7993-42db-a249-1dfd578e7afa')
SET IDENTITY_INSERT [dbo].[TestResult] OFF
SET IDENTITY_INSERT [dbo].[TestType] ON 

INSERT [dbo].[TestType] ([Id], [Name], [Description], [Mesaurement], [ModifiedDateTime], [ModifiedBy]) VALUES (1, N'Cooper Test', N'How many meters can you run in 12 minuttes.', N'meter', CAST(N'2019-05-01T20:23:19.9230000' AS DateTime2), N'0')
INSERT [dbo].[TestType] ([Id], [Name], [Description], [Mesaurement], [ModifiedDateTime], [ModifiedBy]) VALUES (2, N'Sprint Test', N'How many seconds to run 100 meters.', N'second', CAST(N'2019-05-01T20:23:19.9230000' AS DateTime2), N'0')
SET IDENTITY_INSERT [dbo].[TestType] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Test]  WITH CHECK ADD  CONSTRAINT [FK_Test_TestType_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TestType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Test] CHECK CONSTRAINT [FK_Test_TestType_TypeId]
GO
ALTER TABLE [dbo].[TestResult]  WITH CHECK ADD  CONSTRAINT [FK_TestResult_Test_TestId] FOREIGN KEY([TestId])
REFERENCES [dbo].[Test] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TestResult] CHECK CONSTRAINT [FK_TestResult_Test_TestId]
GO
