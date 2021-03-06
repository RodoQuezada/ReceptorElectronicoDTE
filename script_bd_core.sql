USE [bd_core]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[GroupId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[changelog]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[changelog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[changelog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [tinyint] NULL,
	[version] [varchar](50) NULL,
	[description] [varchar](200) NOT NULL,
	[name] [varchar](300) NOT NULL,
	[checksum] [varchar](32) NULL,
	[installed_by] [varchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[success] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_alerts]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_alerts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_alerts](
	[Id] [varchar](128) NOT NULL,
	[IdUserTo] [varchar](128) NULL,
	[EmailTo] [nvarchar](255) NULL,
	[Icon] [varchar](128) NULL,
	[Title] [varchar](128) NULL,
	[Description] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[ExtraIcon] [varchar](128) NULL,
	[ExtraDescription] [varchar](max) NULL,
	[Readed] [bit] NULL,
	[ReadedDate] [datetime] NULL,
	[Notified] [bit] NULL,
	[NotifiedDate] [datetime] NULL,
	[Url] [varchar](max) NULL,
	[IdUserFrom] [varchar](128) NULL,
	[IdModuleFrom] [varchar](128) NULL,
	[CreatedRecord] [datetime] NULL,
	[UserRecord] [varchar](128) NULL,
	[UpdatedRecord] [datetime] NULL,
	[LastUserRecord] [varchar](128) NULL,
	[ErrorCode] [varchar](128) NULL,
	[Topic] [nvarchar](128) NULL,
	[OptionSend] [char](2) NULL,
	[Emailed] [bit] NULL,
	[EmailedDate] [datetime] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC07F04FEFAD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_eventlog]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_eventlog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_eventlog](
	[IdLog] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](128) NOT NULL,
	[EventlogTypeName] [varchar](255) NULL,
	[ProcessName] [varchar](255) NULL,
	[ServerName] [varchar](255) NULL,
	[IdUser] [varchar](128) NULL,
	[UserName] [varchar](255) NULL,
	[Source] [varchar](max) NULL,
	[KeyWords] [varchar](255) NULL,
	[StackTrace] [varchar](max) NULL,
	[FirstEvent] [datetime] NULL,
	[LastEvent] [datetime] NULL,
	[TimesNumber] [bigint] NULL,
	[Description] [varchar](max) NULL,
	[XmlDescription] [varchar](max) NULL,
	[EventHash] [varchar](28) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_groups]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_groups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_groups](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_modules]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_modules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_modules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_parameters]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_parameters]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_parameters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Owner] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [nvarchar](max) NULL,
	[DataType] [nvarchar](255) NULL,
	[CreatedRecord] [datetime] NULL,
	[UserRecord] [nvarchar](128) NULL,
	[UpdatedRecord] [datetime] NULL,
	[LastUserRecord] [nvarchar](128) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_rolesgroup]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_rolesgroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_rolesgroup](
	[IdRole] [nvarchar](128) NOT NULL,
	[IdGroup] [nvarchar](128) NOT NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_rolesmodules]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_rolesmodules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_rolesmodules](
	[IdRole] [nvarchar](128) NOT NULL,
	[IdModule] [nvarchar](128) NOT NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapchangefrequency]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapchangefrequency]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapchangefrequency](
	[Id] [int] NOT NULL,
	[changefrequency] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapmetarobotvalues]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapmetarobotvalues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapmetarobotvalues](
	[id] [int] NOT NULL,
	[metarobotvalue] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapmodules]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapmodules]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapmodules](
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapnode]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapnode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapnode](
	[key] [nvarchar](255) NULL,
	[order] [int] NULL,
	[httpmethod] [nvarchar](255) NULL,
	[resourcekey] [nvarchar](255) NULL,
	[title] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[targetframe] [nvarchar](255) NULL,
	[imageurl] [nvarchar](255) NULL,
	[imageurlprotocol] [nvarchar](255) NULL,
	[imageurlhostname] [nvarchar](255) NULL,
	[roles] [nvarchar](255) NULL,
	[visibility] [nvarchar](255) NULL,
	[visibilityprovider] [nvarchar](255) NULL,
	[dynamicnodeprovider] [nvarchar](255) NULL,
	[clickable] [bit] NULL,
	[urlresolver] [nvarchar](255) NULL,
	[url] [nvarchar](255) NULL,
	[cacheresolvedurl] [bit] NULL,
	[includeambientvaluesinurl] [bit] NULL,
	[protocol] [nvarchar](255) NULL,
	[hostName] [nvarchar](255) NULL,
	[canonicalkey] [nvarchar](255) NULL,
	[canonicalurl] [nvarchar](255) NULL,
	[canonicalurlprotocol] [nvarchar](255) NULL,
	[canonicalurlhostname] [nvarchar](255) NULL,
	[metarobotsvalueid] [int] NULL,
	[route] [nvarchar](255) NULL,
	[inheritedrouteparameters] [nvarchar](255) NULL,
	[preservedrouteparameters] [nvarchar](255) NULL,
	[area] [nvarchar](255) NULL,
	[controller] [nvarchar](255) NULL,
	[action] [nvarchar](255) NULL,
	[provider] [nvarchar](255) NULL,
	[sitemapfile] [nvarchar](255) NULL,
	[lastmodifieddate] [datetime] NULL,
	[changefrequencyid] [int] NULL,
	[updatepriorityid] [int] NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapnoderelacion]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapnoderelacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapnoderelacion](
	[keyparent] [nvarchar](255) NOT NULL,
	[keychild] [nvarchar](255) NOT NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_sitemapupdatepriority]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_sitemapupdatepriority]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_sitemapupdatepriority](
	[id] [int] NOT NULL,
	[updatepriority] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_userlog]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_userlog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_userlog](
	[IdUserLog] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [varchar](128) NOT NULL,
	[UserlogTypeName] [varchar](255) NULL,
	[AreaName] [varchar](255) NULL,
	[ControllerName] [varchar](255) NULL,
	[ActionName] [varchar](255) NULL,
	[IdUser] [varchar](128) NULL,
	[UserName] [varchar](255) NULL,
	[KeyWords] [varchar](255) NULL,
	[Description] [varchar](max) NULL,
	[Params] [text] NULL,
	[Url] [varchar](max) NULL,
	[AccessDate] [datetime] NULL,
	[LogHash] [varchar](28) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_usersdata]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_usersdata]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_usersdata](
	[IdUser] [nvarchar](128) NOT NULL,
	[ImageProfile] [image] NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL,
	[FullName] [varchar](50) NULL,
	[Observation] [nvarchar](max) NULL,
	[TeamViewerID] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_usersgroup]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_usersgroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_usersgroup](
	[IdUser] [nvarchar](128) NOT NULL,
	[IdGroup] [nvarchar](128) NOT NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_usersprefs]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_usersprefs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_usersprefs](
	[IdUser] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[dt_created] [datetime] NULL,
	[dt_updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_webclass]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_webclass]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_webclass](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WebClass] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[CreatedRecord] [datetime] NULL,
	[UserRecord] [nvarchar](128) NULL,
	[UpdatedRecord] [datetime] NULL,
	[LastUserRecord] [nvarchar](128) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tb_core_webicon]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_core_webicon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_core_webicon](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WebIcon] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[CreatedRecord] [datetime] NULL,
	[UserRecord] [nvarchar](128) NULL,
	[UpdatedRecord] [datetime] NULL,
	[LastUserRecord] [nvarchar](128) NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201603061641032_InitialCreate', N'Ultraport.Core.Web.WebSite.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C4E8DE85B76D2746C6174CDB9BBC0DD812BB4D8C446925CA6B63B15F96877C527E214589524BBCE8D2ADBE7831F0C0228BA78AC522592C16FDBFFFFC77FCC36BE05B2F384E484827F6C9E8D8B63075438FD0E5C44ED9E2BB4FF60FDFFFF10FE32B2F78B57E2AE8CE381DB4A4C9C47E662C3A779CC47DC6014A460171E33009176CE4868183BCD0393D3EFE9B7372E26080B001CBB2C65F52CA4880B30FF89C86D4C5114B917F1B7AD84F4439D4CC3254EB0E053889908B27F693CF621485311B4DC3188FFE85E7FC6746181EE58D6DEBC22708049B617F615B88D2902106629F3F2578C6E2902E67111420FFF12DC240B7407E824577CE57E45D7B767CCA7BE6AC1A16506E9AB030E80978722654E5C8CDD752B85DAA129479054A676FBCD7994227F68D87B3A22FA10F0A90199E4FFD98134FECDB92C54512DD61362A1A8E72C8EB18E07E09E36FA32AE291D5B9DD51695AA7A363FEEFC89AA63E4B633CA1388501F78FAC8774EE13F79FF8ED31FC86E9E4EC64BE38FBF4E123F2CE3EFE159F7DA8F614FA0A74B502287A88C308C7201B5E94FDB72DA7DECE911B96CD2A6D72AD802DC12CB1AD5BF4FA19D3257B86F973FAC9B6AEC92BF68A12615C4F94C0A482462C4EE1F32EF57D34F77159EF34F2E4FF37703DFDF07110AE77E8852CB3A197F8C3C489615E7DC17E569B3C93289F5EB5F1FE2AC8AEE330E0DF75FBCA6BBFCEC2347679674223C9238A9798D5A51B3B2BE3ED64D21C6A78B32E500FDFB4B9A4AA796B497987D69909058B5DCF8642DEEDF2ED6C7117510483979916D74893C1B5EE5D2309ECC832375919D64957C3A2D0E1DFF33A791520E20FB05076E0022ECB82C4012E7BF963086689686F991F5092C03AE1FD0325CF0DA2C3AF03883EC36E1A83F9CE180AA2AD737B780E29BE4B83399F15BBE335D8D03CFE125E239785F115E5AD36C6FB1CBADFC2945D51EF1231FCC4DC02907F3E92A03BC020E25CB82E4E926B3066EC4D43F0C80BC01BCACE4E7BC3F1F56ADF8ECAD44724D07B2AD2CAFAB5205D792B7A0AC5633190E9BC9626513F874B42BB895A909A45CD295A4515647D45E560DD24159466413382563973AAC1FCC06C8486770433D8C3F70437DBBC4D6B41458D335821F1DF31C5312C63DE03620CC77435025DD68D7D380BD9F071A65BDF9B324E3F213F1D9AD55AB3215B04869F0D19ECE1CF864C4C287E211EF74A3A1C8F0A6280EF44AF3F79B5CF3949B25D4F875A3777CD7C376B8069BA5C2449E8926C1668026322AC51971F7C38AB3DC691F7468E9340C7C0D009DFF2A004FA66CB46754F2FB18F19B62EDC3C703845898B3C558DD021AF8760C58EAA116C152FA90BF7178527583A8E7923C40F4109CC5442993A2D08754984FC562D492D3B6E61BCEF250FB9E61247987286AD9AE8C25C1F1EE102947CA44169D3D0D8A9585CB3211ABC56D398B7B9B0AB7157A2163BB1C916DFD96097C27FDB8A61366B6C07C6D9AC922E0218437DFB30507156E96A00F2C1E5D00C543A31190C54B8543B31D0BAC6F660A07595BC3B03CD8FA85DC75F3AAF1E9A79D60FCABBDFD61BD5B507DBACE9E3C04C33F73DA10D83163856CDF372CE2BF12BD31CCE404E713E4B84AB2B9B08079F61560FD9ACFC5DAD1FEA3483C846D404B832B416507149A8002913AA8770452CAF513AE145F4802DE26E8DB062ED97602B36A062572F4B2B84E62B55D9383B9D3ECA9E95D6A01879A7C34205476310F2E255EF7807A598E2B2AA62BAF8C27DBCE14AC7C4603428A8C5733528A9E8CCE05A2A4CB35D4B3A87AC8F4BB6919624F7C9A0A5A233836B49D868BB92344E410FB7602315D5B7F081265B11E928779BB26EECE42955A260EC1872AFC6B7288A085D5672B1448935CB13B1A6DFCDFAA724053986E3269ACCA452DA92130B63B4C4522DB00649AF499CB04BC4D01CF138CFD40B1432EDDE6A58FE0B96D5ED531DC4621F28A8F9EF625B6BBDDAAF6DBDAA6F2220AFA1C3017770B2A8BAC61CF4CD2D9E2A877C146B02F9D3D04F036AF6B7CCADF3EBBC6AFBBC4445183B92FC8A3FA5284FF17AEB23D1699CD439B29D312BBD9BF5C7CD0C61D27EE19B56F56FF257CD2845F8AA8A620A69ED6D1C4D6ECE2663273B94FD87AE15613BB34E64B1540144514F8C4A22840256A9EB8E5ACF55A962D66BBA234A09295548A9AA8794D5B4939A90D58AB5F00C1AD55374E7A0269A54D1D5DAEEC89A94932AB4A67A0D6C8DCC725D77544D564A155853DD1D7B95A222AFA907BCAF198F39436D6CF9C178B39DCD80B19D0572988DB172FF5F05AA14F7C41237FC0A98283F48E3329E0E8732AE3C3CB299711930CCEB52ED22BDBE2C35DEFE9B316BB7E3B5A5BF293BC08CD7CF84B76A28CA59512629B9976746E96C3816E7B4F6C73BCAC12D27B1AD428DB0EDBF250C07234E309AFDEC4F7D82F9225F10DC224A1638617946887D7A7C722A3DF8399CC7374E9278BEE69C6B7A81531FB31D2477D11714BBCF2856532D3678A0B20255A2D837D4C3AF13FBD7ACD5791610E1BF65C547D64DF244C9CF29543CC629B67E5353478749D86F3E911DE8F38AEE5ABDF9F7D7BCE991751FC38C39B78E255DAE33C2F54717BDA4C99B6E20CDDA4F31DEEF84AABD64D0A24A1362FD870B73C20679B45048F9A700BDFEB9AF68DA87091B216A1E1F0C8537880A4D8F0BD6C1323E2CF0E093650F0BFA7556FFD0601DD18C8F0C08ED0F263F31E8BE0C152DF7B8D5688E48BB5892323DB7A6686F94AFB9EFBD49C9E4DE68A2ABD9DA3DE036C8C85EC332DE5932F360BBA326577930EC7D9AF6D613940F252779952DB2DF54E45D661F37DC21FDAE928E0F204D4E93F6B3FFD4E25DDB9A29AC7BE0F999FD12880FCCD84432D8FED384776D6CA630EF811B5BAF64E003B3B57DED9F7BB6B4CE5BE8DE537BD52C25C3F58C2E16DC96BA9B07CEE1843F0FC108728F327F71A9CF156BCA736D61B82231333527A9C98C9589A3F055289AD9F6EBABD8F01B3B2B689AD91A523B9B788BF5BF91B7A069E66D4898DC47D2B13665519708DEB28E35654CBDA724E35A4F5A72DADB7CD6C6BBF6F794533C88526AB3C77047FC7E52880751C99053A747CAB07ADD0B7B67E52F3AC2FE9D90E50A82FF7D478ADDDAAE59D2DCD045586CDE9244058914A1B9C50C79B0A55EC48C2C90CBA09AC798B327E359DC8EDF74CCB17743EF5316A50CBA8C83B95F0B787127A0897F96175D97797C1F657FFD64882E809884C7E6EFE98F29F1BD52EE6B4D4CC800C1BD0B11D1E563C9786477F95622DD85B42390505FE9143DE220F2012CB9A733F482D7910DCCEF335E22F76D15013481B40F445DEDE34B8296310A1281B16A0F9F60C35EF0FAFDFF019CAC8CC4D8540000, N'6.1.0-30225')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'01A7AFED-9BFC-4D9A-86E7-1DCF64652C59', N'core_permission_deleteajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'06611263-609F-4DE2-BD5F-1048E9E4F78B', N'core_module_deletemodules')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'08118585-657F-46E4-98F3-E2178320646A', N'core_sitemap_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'085097AE-E216-4A87-8530-388DF7FD7170', N'core_home_formimputmask')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0906466C-7264-453D-AAE5-F0C6DD11ADE9', N'core_home_compose')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0E20AB13-BC72-4803-8DA2-A6396C9D9A04', N'core_sitemap_edit')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0F7E2241-5150-4619-80EC-5511EEC44BBD', N'core_users_detail')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'10F53C63-2698-4715-B36E-4286E9647104', N'core_home_viewmessage')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'11396E17-02DF-4BA8-B279-2820DAAE8601', N'core_sitemap_create')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'150FA6E9-0A5D-403F-A7D6-437FA2AD4F04', N'core_dashboard')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'16F6E7A1-C2EB-4481-A249-73DEC1CC60FF', N'core_home_glyphicons')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2350079C-9F30-4024-ABC6-0EEFFC5EEF5F', N'core_module_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'25DE760B-7339-4DAE-8B4D-5DBED2815078', N'core_home_charjs')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2759D407-CACF-4073-B7E1-48262785A61D', N'core_home_alerts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'286B5713-DDB1-4E08-8E4D-EA559A162E52', N'core_home_persian')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'290A73F2-9ADD-4D6A-9650-2E9EB4CC69F2', N'core_group_edit')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'29F0FC1F-4982-4335-B80F-EA8AB9F0819A', N'core_sitemap_deletesitemapnode')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2A0EF7B6-C9FA-4866-AB68-EC653DE86FBE', N'core_home_databoxes')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2EAADC15-99DA-49EB-BDBD-CA15B7276FA1', N'core_eventlog_geteventlogajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2EEADCDF-1E56-4DE3-8EE6-D2059ECA3E30', N'core_home_simpletables')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'310E2A0D-4B2A-4E0E-87F9-F0C0999D3C14', N'core_working_create')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'33BB32D5-011E-4521-8555-923046F16227', N'core_home_formvalidation')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'360257C7-4AC4-4997-B45C-9356229663EA', N'core_ui_message')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'423568A6-D632-4007-BC9D-9043EC36DAA3', N'core_home_wizards')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'42A9C083-89B1-4665-9440-9166E97E0455', N'core_users_deleteajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'471AF264-509E-49F8-94F5-8595797FEA61', N'core_home_cop')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4F173885-54AA-4803-8B3F-90FB062AD478', N'core_home_fontawesome')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'52A157E0-5400-46A1-9CE3-137D59019D33', N'core_home_administration')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'553D7978-944F-4C9E-9D59-D2CABF15996E', N'core_ficha_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'5CFF3684-DD4A-46C9-BCDA-163DE5459400', N'core_home_samples')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'61839210-3C0A-4CDB-8CF6-F68A24F6DFF4', N'core_module_updatemodules')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'6C5E1974-0F31-4E0A-8E36-1C654420E656', N'core_home_formlayouts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7100D94F-C801-40E5-ACC3-177DDCA3AF49', N'core_userlog_getuserlogajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7431ADB6-60F4-4024-BF77-2075DB66CE3B', N'core_home_buttons')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'76BB9F9A-4580-4CE0-81A2-7C9783075648', N'core_home_elements')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7E263FDE-A640-49F4-9564-522E73188E88', N'core_home_morrischarts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8271D01F-D0BB-4248-86EA-1B5DC0A80499', N'core_home_nestablelist')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'829330AE-4C8E-4172-AA92-55E48B238794', N'core_home_timeline')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'86FBA01E-2F91-45C5-866B-5D2DB551EDD1', N'core_home_inbox')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8834AEE7-3D83-4F8B-98F9-8B4E9126AC0B', N'core_home_datapickers')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'89358EB0-29E8-4EC7-8886-5A21C270C1BD', N'core_permission_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8A731CB7-7A36-4255-8B4A-163C34D65549', N'core_users_createaccount')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8E67BCF3-B400-4883-8FE1-9EA0D56D93FA', N'core_eventlog_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8E7FBEA8-EF14-4295-B5CC-406D43CFDC5D', N'core_home_calendar')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'90F86BA5-50BD-448F-97A4-F3FB7C965D6A', N'core_ficha_create')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9192D402-1139-4C62-9664-EEE5C7203B07', N'core_home_treeview')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'93302D9F-BC35-4110-83A2-C95BD077185B', N'core_home_formimputs')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'95301064-32CA-45DF-91CD-5F237BB6518B', N'core_working_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'95CC99FA-6A6F-400E-B8CE-055713529BE5', N'core_home_error404')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9A9A1327-CF81-4B84-920A-A949D34D06EA', N'core_group_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9C7CAD09-6F46-4998-AF3B-1EA8E948A3EE', N'core_userlog_Index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9DDAEB89-B9FC-4D1D-BF09-C771A88E9EDC', N'core_home_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9E4E08F4-275D-4255-A475-F87961699FB5', N'core_users_insert')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9F322582-4BFB-4B6C-9404-DC10685215B1', N'core_users_upload')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9FAD96AA-14AF-4BD2-9FB2-415121542C22', N'core_home_pricingtables')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9FFBE764-B9F2-4F9B-8681-7CE2B568E8BB', N'core_home_sparklinecharts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'A5B53FAE-C3D7-4761-BC18-DF088F332E7D', N'core_home_datatables')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'AAC369B7-AE09-44B0-9BC4-66CBD899B995', N'core_home_typography')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'B489B00D-231F-4E54-B1AB-47A01A3C911F', N'core_users_index')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'B81FF516-00CA-4366-B000-E6ED80A5B0EC', N'core_sitemap_editsitemapnode')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'BDECD32A-EA5A-494B-A3C6-2FEECBC6DD9B', N'core_home_tabs')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'C2510F5C-3065-488C-9282-7431EB87F64C', N'core_home_typicons')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'C523B4BE-4A2C-494A-8A10-2EBDE5DE43E5', N'core_ui_alerts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'C7DCF005-3473-4512-A644-1074B28072EA', N'core_home_easypiecharts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'CD097DCF-4D05-419B-83AD-D34E299425E1', N'core_home_profile')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'CE00C3CA-449C-4AE7-8AD1-535A674BF028', N'core_group_create')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'CE24F5A2-2CDA-4D47-9A7A-83EA6CA4DD57', N'core_home_formeditors')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'CFC1D7C0-A4DC-4602-8EB9-8C6DBCB4AE4C', N'core_permission_updateajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'D4139A19-9D5D-4EBF-B2E1-4310152EAA4D', N'core_home_arabic')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'D5B1BB0A-A318-4E16-88C5-E075F6113D84', N'core_home_grid')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'DBB89689-AAE7-4F03-8C9D-AD5296A34FD7', N'core_home_flotcharts')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'E18228BF-39CE-44F3-8257-BA80FFB7DC57', N'core_group_deleteajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'E39E693F-0B54-4CD1-BFDF-1971A9AD6474', N'pedd_main_menu')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'E497D48A-CA37-4272-AD57-02D3458257E2', N'core_home_modals')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'EC41CF85-E9B8-4C1C-9865-E40A218CC6BE', N'core_permission_insertajax')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ED012D5E-1F34-4C39-8ECE-0FCE3CBD4823', N'core_home_error500')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F08E6431-F053-41AC-8208-2B7F6F3AA6DF', N'core_home_blank')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F16DDB71-10DE-4CF2-A70C-18662E35B790', N'core_winper_wf_nomina')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F458C371-D095-4C8B-A4DE-1A5AF31F32D2', N'core_users_create')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F6A9ED0F-D009-46B4-B25B-74AA030E4F2E', N'core_home_weathericons')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F73B6429-47B3-49AB-B68E-08CA69CE8B0F', N'core_sitemap_createnewsitemapnode')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'F84C44CA-BB48-40C1-BF04-FE8F4B04EAFB', N'core_home_invoice')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'FCE7699B-8B60-429E-B8F3-8D59B368C4ED', N'core_home_widgets')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'FED06C37-DA6F-4A9E-8FBF-F0C182DC276F', N'core_module_insertmodules')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'01A7AFED-9BFC-4D9A-86E7-1DCF64652C59', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'06611263-609F-4DE2-BD5F-1048E9E4F78B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'08118585-657F-46E4-98F3-E2178320646A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'085097AE-E216-4A87-8530-388DF7FD7170', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'0906466C-7264-453D-AAE5-F0C6DD11ADE9', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'0E20AB13-BC72-4803-8DA2-A6396C9D9A04', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'0F7E2241-5150-4619-80EC-5511EEC44BBD', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'10F53C63-2698-4715-B36E-4286E9647104', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'11396E17-02DF-4BA8-B279-2820DAAE8601', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'150FA6E9-0A5D-403F-A7D6-437FA2AD4F04', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'16F6E7A1-C2EB-4481-A249-73DEC1CC60FF', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'2350079C-9F30-4024-ABC6-0EEFFC5EEF5F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'25DE760B-7339-4DAE-8B4D-5DBED2815078', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'2759D407-CACF-4073-B7E1-48262785A61D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'286B5713-DDB1-4E08-8E4D-EA559A162E52', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'290A73F2-9ADD-4D6A-9650-2E9EB4CC69F2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'29F0FC1F-4982-4335-B80F-EA8AB9F0819A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'2A0EF7B6-C9FA-4866-AB68-EC653DE86FBE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'2EAADC15-99DA-49EB-BDBD-CA15B7276FA1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'2EEADCDF-1E56-4DE3-8EE6-D2059ECA3E30', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'310E2A0D-4B2A-4E0E-87F9-F0C0999D3C14', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'33BB32D5-011E-4521-8555-923046F16227', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'360257C7-4AC4-4997-B45C-9356229663EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'423568A6-D632-4007-BC9D-9043EC36DAA3', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'42A9C083-89B1-4665-9440-9166E97E0455', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'471AF264-509E-49F8-94F5-8595797FEA61', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'4F173885-54AA-4803-8B3F-90FB062AD478', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'52A157E0-5400-46A1-9CE3-137D59019D33', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'553D7978-944F-4C9E-9D59-D2CABF15996E', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'5CFF3684-DD4A-46C9-BCDA-163DE5459400', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'61839210-3C0A-4CDB-8CF6-F68A24F6DFF4', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'6C5E1974-0F31-4E0A-8E36-1C654420E656', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'7100D94F-C801-40E5-ACC3-177DDCA3AF49', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'7431ADB6-60F4-4024-BF77-2075DB66CE3B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'76BB9F9A-4580-4CE0-81A2-7C9783075648', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'7E263FDE-A640-49F4-9564-522E73188E88', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'8271D01F-D0BB-4248-86EA-1B5DC0A80499', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'829330AE-4C8E-4172-AA92-55E48B238794', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'86FBA01E-2F91-45C5-866B-5D2DB551EDD1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'8834AEE7-3D83-4F8B-98F9-8B4E9126AC0B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'89358EB0-29E8-4EC7-8886-5A21C270C1BD', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'8A731CB7-7A36-4255-8B4A-163C34D65549', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'8E67BCF3-B400-4883-8FE1-9EA0D56D93FA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'8E7FBEA8-EF14-4295-B5CC-406D43CFDC5D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'90F86BA5-50BD-448F-97A4-F3FB7C965D6A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9192D402-1139-4C62-9664-EEE5C7203B07', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'93302D9F-BC35-4110-83A2-C95BD077185B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'95301064-32CA-45DF-91CD-5F237BB6518B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'95CC99FA-6A6F-400E-B8CE-055713529BE5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9A9A1327-CF81-4B84-920A-A949D34D06EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9C7CAD09-6F46-4998-AF3B-1EA8E948A3EE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9DDAEB89-B9FC-4D1D-BF09-C771A88E9EDC', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9E4E08F4-275D-4255-A475-F87961699FB5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9F322582-4BFB-4B6C-9404-DC10685215B1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9FAD96AA-14AF-4BD2-9FB2-415121542C22', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'9FFBE764-B9F2-4F9B-8681-7CE2B568E8BB', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'A5B53FAE-C3D7-4761-BC18-DF088F332E7D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'AAC369B7-AE09-44B0-9BC4-66CBD899B995', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'B489B00D-231F-4E54-B1AB-47A01A3C911F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'B81FF516-00CA-4366-B000-E6ED80A5B0EC', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'BDECD32A-EA5A-494B-A3C6-2FEECBC6DD9B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'C2510F5C-3065-488C-9282-7431EB87F64C', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'C523B4BE-4A2C-494A-8A10-2EBDE5DE43E5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'C7DCF005-3473-4512-A644-1074B28072EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'CD097DCF-4D05-419B-83AD-D34E299425E1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'CE00C3CA-449C-4AE7-8AD1-535A674BF028', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'CE24F5A2-2CDA-4D47-9A7A-83EA6CA4DD57', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'CFC1D7C0-A4DC-4602-8EB9-8C6DBCB4AE4C', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'D4139A19-9D5D-4EBF-B2E1-4310152EAA4D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'D5B1BB0A-A318-4E16-88C5-E075F6113D84', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'DBB89689-AAE7-4F03-8C9D-AD5296A34FD7', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'E18228BF-39CE-44F3-8257-BA80FFB7DC57', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'E497D48A-CA37-4272-AD57-02D3458257E2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'EC41CF85-E9B8-4C1C-9865-E40A218CC6BE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'ED012D5E-1F34-4C39-8ECE-0FCE3CBD4823', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'F08E6431-F053-41AC-8208-2B7F6F3AA6DF', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'F458C371-D095-4C8B-A4DE-1A5AF31F32D2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'F6A9ED0F-D009-46B4-B25B-74AA030E4F2E', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'F73B6429-47B3-49AB-B68E-08CA69CE8B0F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'F84C44CA-BB48-40C1-BF04-FE8F4B04EAFB', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'FCE7699B-8B60-429E-B8F3-8D59B368C4ED', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [GroupId]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'FED06C37-DA6F-4A9E-8FBF-F0C182DC276F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1111', N'rodolfo@rodolfo.com', 1, N'12345', N'bf456627-76c2-4cd7-9017-db02fd26051e', N'0', 0, 0, NULL, 1, 0, N'rodolfo@rodolfo.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'admin@admin.cl', 0, N'ALxbYYMwi7RvxoH4iBT9l4mj7zWMdl6UOBJasg32pjx4lezclDaKIWUfHOV9ve6BZA==', N'e576bb72-bece-473d-a727-a9d488f4260b', N' 56954096783', 0, 0, NULL, 1, 0, N'admin@dycsa.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'A2A51F78-2324-45A6-BE5E-3F209D3BD491', N'ebadillo@disal.cl', 0, N'AMpjfR/JoLuE4lggDVbn287tebLgfqR4RLqSoRDyauJ9IgvQVPcv3C6I7ovRE/kkTQ==', N'66c98eac-48b0-4da5-9886-52a79290b3f9', N'1111111', 0, 0, NULL, 1, 0, N'ebadillo@disal.cl')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'D6A4EC15-4DEA-438C-ADC4-42490750CE08', N'vconcha@disal.cl', 0, N'AHcJ9HWuQjEQVbWSnC03NJR9gSlRcPT4CbrQsXICmTUqolebvQ5yrXDfTqCqucfpVA==', N'bf456627-76c2-4cd7-9017-db02fd26051e', N'9999999', 0, 0, NULL, 1, 0, N'vconcha@disal.cl')
SET IDENTITY_INSERT [dbo].[tb_core_eventlog] ON 

INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (191253, N'A7B5EDC7-9B73-4A69-8C38-B41A989786C3', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@disal.cl', N'System.Web.WebPages', NULL, N'   en System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   en System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   en System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__0(AsyncCallback asyncCallback, Object asyncState)', CAST(N'2019-09-03T22:56:11.000' AS DateTime), CAST(N'2019-09-03T22:56:15.740' AS DateTime), 2, N'The provided anti-forgery token was meant for a different claims-based user than the current user.', NULL, N'27D9BA45A3115BD342D8FC5F7D7D', CAST(N'2019-09-03T22:56:11.000' AS DateTime), CAST(N'2019-09-03T22:56:15.767' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201253, N'3ED1D706-BB28-4686-ACBB-416B110F5981', N'Error', N'Core.Business', NULL, NULL, NULL, N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Empleado.SelByEmail(String IdentityUserMail) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EmpleadoDA.cs:línea 149', CAST(N'2019-10-27T09:19:29.000' AS DateTime), CAST(N'2019-10-27T09:39:07.157' AS DateTime), 6, N'No existe el procedimiento almacenado ''spPeddEmpleado_SelByMail''.', NULL, N'5F145224969DFDE4BD08B7E7B865', CAST(N'2019-10-27T09:19:29.000' AS DateTime), CAST(N'2019-10-27T09:39:07.230' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201260, N'E3BA2B3C-ADB4-4259-B3B9-F8AFB8692748', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ActionDescriptor.ExtractParameterFromDictionary(ParameterInfo parameterInfo, IDictionary`2 parameters, MethodInfo methodInfo)
   en System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-10-31T15:58:05.000' AS DateTime), CAST(N'2019-10-31T16:17:22.817' AS DateTime), 3, N'The parameters dictionary contains a null entry for parameter ''IdEmpresa'' of non-nullable type ''System.Int32'' for method ''Void Edit(Int32)'' in ''NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers.CompaniaController''. An optional parameter must be a reference type, a nullable type, or be declared as an optional parameter.
Nombre del parámetro: parameters', NULL, N'01375A7B2D475371EA4933FABEC2', CAST(N'2019-10-31T15:58:05.000' AS DateTime), CAST(N'2019-10-31T16:17:22.897' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (211253, N'87411EA1-1460-4D96-85C9-BF3DF38203DD', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ActionDescriptor.ExtractParameterFromDictionary(ParameterInfo parameterInfo, IDictionary`2 parameters, MethodInfo methodInfo)
   en System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-06T04:16:07.000' AS DateTime), CAST(N'2019-11-06T04:47:00.260' AS DateTime), 13, N'The parameters dictionary contains a null entry for parameter ''IdCabEval'' of non-nullable type ''System.Int32'' for method ''System.Web.Mvc.ActionResult Create(Int32)'' in ''NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers.FaseController''. An optional parameter must be a reference type, a nullable type, or be declared as an optional parameter.
Nombre del parámetro: parameters', NULL, N'0B175D4BE26FBCE73E90D4045E83', CAST(N'2019-11-06T04:16:07.000' AS DateTime), CAST(N'2019-11-06T04:47:00.337' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (221253, N'42CAADDF-6064-4395-992D-59BFF7B79F13', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-10T15:18:23.000' AS DateTime), CAST(N'2019-11-10T15:28:36.257' AS DateTime), 2, N'The view ''Create'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Evaluacion/Create.aspx
~/Views/Evaluacion/Create.ascx
~/Views/Shared/Create.aspx
~/Views/Shared/Create.ascx
~/Views/Evaluacion/Create.cshtml
~/Views/Evaluacion/Create.vbhtml
~/Views/Shared/Create.cshtml
~/Views/Shared/Create.vbhtml
~/__MVCSITEMAPPROVIDER/Create.ascx', NULL, N'DD8E73994BE978B69DF2200ED1C0', CAST(N'2019-11-10T15:18:23.000' AS DateTime), CAST(N'2019-11-10T15:28:36.940' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (221254, N'26C766DA-8817-494A-9FF0-BB71386D4D45', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-21T20:43:40.000' AS DateTime), CAST(N'2019-11-21T20:43:40.000' AS DateTime), 1, N'The view ''Edit'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Evaluacion/Edit.aspx
~/Views/Evaluacion/Edit.ascx
~/Views/Shared/Edit.aspx
~/Views/Shared/Edit.ascx
~/Views/Evaluacion/Edit.cshtml
~/Views/Evaluacion/Edit.vbhtml
~/Views/Shared/Edit.cshtml
~/Views/Shared/Edit.vbhtml
~/__MVCSITEMAPPROVIDER/Edit.ascx', NULL, N'0D366C387584CD9CFCBDEF8CC3C0', CAST(N'2019-11-21T20:43:40.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231254, N'F3CAE357-501A-4FFD-BCC5-B402F7D5663A', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'NetCore.PeddEval.Web.WebSite.Areas.PeddEval', NULL, N'   en NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers.EvaluacionController.CreateCabEvaluacion(CabEvaluacionModels CabEvaluacion) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.Web.WebSite.Areas.PeddEval\Controllers\EvaluacionController.cs:línea 71
   en lambda_method(Closure , ControllerBase , Object[] )
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-26T18:39:19.000' AS DateTime), CAST(N'2019-11-26T18:39:19.000' AS DateTime), 1, N'Referencia a objeto no establecida como instancia de un objeto.', NULL, N'CBD58D565DA091A0B606BB82DF08', CAST(N'2019-11-26T18:39:19.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231264, N'3BFE8BC3-418A-46CA-B401-08FFF52EE4B9', N'Error', N'Core.Business', NULL, NULL, NULL, N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Empresa.ProcedureCall(String procedure, Object[] parameters) en D:\Users\rquezada\source\repos\ReceptorElectronicoDTE\NetCore.PeddEval.DataAccess\EmpresaDA.cs:línea 61', CAST(N'2019-12-28T01:06:04.000' AS DateTime), CAST(N'2019-12-28T01:43:49.203' AS DateTime), 11, N'No existe el procedimiento almacenado ''sp_maestros_empresa_selectAll''.', NULL, N'3093DF2A062BB695E153C30B28E1', CAST(N'2019-12-28T01:06:04.000' AS DateTime), CAST(N'2019-12-28T01:43:49.203' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231268, N'E776EC23-9011-45AE-9178-9B4F1DD717EA', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'.Net SqlClient Data Provider', NULL, N'   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   en System.Data.SqlClient.SqlDataReader.get_MetaData()
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.ExecuteReader(DbCommand command)
   en NetCore.PeddEval.DataAccess.Compania.SelectAll() en D:\Users\rquezada\source\repos\ReceptorElectronicoDTE\NetCore.PeddEval.DataAccess\CompaniaDA.cs:línea 52', CAST(N'2019-12-28T16:57:49.000' AS DateTime), CAST(N'2019-12-28T16:57:49.000' AS DateTime), 1, N'Could not find stored procedure ''spPeddCompania_SelAll''.', NULL, N'70EC2EC8B17B30040094BE38D941', CAST(N'2019-12-28T16:57:49.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231267, N'4A66C52B-FC7F-445C-81D8-DBEDDEA13BA4', N'Error', N'Core.Business', NULL, NULL, NULL, N'.Net SqlClient Data Provider', NULL, N'   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   en System.Data.SqlClient.SqlDataReader.get_MetaData()
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   en System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.ExecuteReader(DbCommand command)
   en NetCore.PeddEval.DataAccess.Compania.SelectAll() en D:\Users\rquezada\source\repos\ReceptorElectronicoDTE\NetCore.PeddEval.DataAccess\CompaniaDA.cs:línea 52', CAST(N'2019-12-28T16:57:48.000' AS DateTime), CAST(N'2019-12-28T16:57:48.000' AS DateTime), 1, N'Could not find stored procedure ''spPeddCompania_SelAll''.', NULL, N'93C2E513F59984EC41C4F564541C', CAST(N'2019-12-28T16:57:48.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231266, N'A7C47F27-120B-445F-99A9-1150B6135261', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-12-28T01:06:06.000' AS DateTime), CAST(N'2019-12-28T01:06:06.000' AS DateTime), 1, N'The view ''Index'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Areas/PeddEval/Views/Empresa/Index.aspx
~/Areas/PeddEval/Views/Empresa/Index.ascx
~/Areas/PeddEval/Views/Shared/Index.aspx
~/Areas/PeddEval/Views/Shared/Index.ascx
~/Views/Empresa/Index.aspx
~/Views/Empresa/Index.ascx
~/Views/Shared/Index.aspx
~/Views/Shared/Index.ascx
~/Areas/PeddEval/Views/Empresa/Index.cshtml
~/Areas/PeddEval/Views/Empresa/Index.vbhtml
~/Areas/PeddEval/Views/Shared/Index.cshtml
~/Areas/PeddEval/Views/Shared/Index.vbhtml
~/Views/Empresa/Index.cshtml
~/Views/Empresa/Index.vbhtml
~/Views/Shared/Index.cshtml
~/Views/Shared/Index.vbhtml
~/__MVCSITEMAPPROVIDER/Index.ascx', NULL, N'7FDA7E1FD423E9EC51D3D9909F93', CAST(N'2019-12-28T01:06:06.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231265, N'4F86ED36-2BD2-46A7-AF5B-5AC7BCB71B21', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Empresa.ProcedureCall(String procedure, Object[] parameters) en D:\Users\rquezada\source\repos\ReceptorElectronicoDTE\NetCore.PeddEval.DataAccess\EmpresaDA.cs:línea 61', CAST(N'2019-12-28T01:06:06.000' AS DateTime), CAST(N'2019-12-28T01:43:49.217' AS DateTime), 11, N'No existe el procedimiento almacenado ''sp_maestros_empresa_selectAll''.', NULL, N'F719F88B2C38EC0DE36AC9070B8F', CAST(N'2019-12-28T01:06:06.000' AS DateTime), CAST(N'2019-12-28T01:43:49.217' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231269, N'AA4D0C5F-16F0-438C-8963-747FAE3AE749', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Data', NULL, N'   en System.Data.DataRow.GetDataColumn(String columnName)
   en System.Data.DataRow.get_Item(String columnName)
   en ASP._Page_Areas_PeddEval_Views_Empresa_Create_cshtml.Execute() en d:\Users\rquezada\source\repos\ReceptorElectronicoDTE\NetCore.PeddEval.Web.WebSite\Areas\PeddEval\Views\Empresa\Create.cshtml:línea 153
   en System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   en System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   en System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-12-28T18:47:41.000' AS DateTime), CAST(N'2019-12-28T18:47:41.000' AS DateTime), 1, N'La columna ''IdEstado'' no pertenece a la tabla .', NULL, N'274B92ADB548377DEA5B41A77947', CAST(N'2019-12-28T18:47:41.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231261, N'91785D36-7195-4C15-B5C2-60687620ECB1', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web', NULL, N'   en System.Web.Compilation.AssemblyBuilder.Compile()
   en System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   en System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   en System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   en System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-12-07T09:55:04.000' AS DateTime), CAST(N'2019-12-07T09:55:04.000' AS DateTime), 1, N'c:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.Web.WebSite\Areas\PeddEval\Views\EvaluacionActiva\AddEvaluado.cshtml(156): error CS0128: Ya se ha definido una variable local denominada ''dtEvalJef'' en este ámbito', NULL, N'56EE39F4673A64AD2EAB04982378', CAST(N'2019-12-07T09:55:04.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231263, N'F8D6A077-8B1A-4E3A-BD5D-D2654BD381DC', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.WebPages.Razor', NULL, N'   en System.Web.WebPages.Razor.RazorBuildProvider.EnsureGeneratedCode()
   en System.Web.WebPages.Razor.RazorBuildProvider.get_CodeCompilerType()
   en System.Web.Compilation.BuildProvider.GetCompilerTypeFromBuildProvider(BuildProvider buildProvider)
   en System.Web.Compilation.BuildProvidersCompiler.ProcessBuildProviders()
   en System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   en System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   en System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   en System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-12-08T22:39:33.000' AS DateTime), CAST(N'2019-12-10T08:28:31.160' AS DateTime), 6, N'Expected "}".
', NULL, N'04B5734E1DF957769E9CDE421F40', CAST(N'2019-12-08T22:39:33.000' AS DateTime), CAST(N'2019-12-10T08:28:31.627' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231255, N'BAD67507-9C76-4D97-B3DA-5B5AB505D61D', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'mscorlib', NULL, N'   en System.DateTimeParse.Parse(String s, DateTimeFormatInfo dtfi, DateTimeStyles styles)
   en NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers.FaseController.CreateFases(FormFaseModels FormFase) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.Web.WebSite.Areas.PeddEval\Controllers\FaseController.cs:línea 126
   en lambda_method(Closure , ControllerBase , Object[] )
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-27T22:30:21.000' AS DateTime), CAST(N'2019-11-27T22:30:21.000' AS DateTime), 1, N'No se puede reconocer la cadena como valor DateTime válido.', NULL, N'9ED6823ADE4207FA3844E7515545', CAST(N'2019-11-27T22:30:21.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201255, N'09885A85-45CF-4D9B-BD08-D2D98F7D341A', N'Error', N'Core.Business', NULL, NULL, NULL, N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Evaluacion.SelectByEmpleado(Int32 IdEmpleado, Int32 IdCompania) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 144', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:07.683' AS DateTime), 6, N'No existe el procedimiento almacenado ''SpPeddEvaluacionActiva_SelByEmp''.', NULL, N'60282E247C2B94AF12684F27E14D', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:07.743' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201257, N'3D8EF488-B67B-4E7B-8380-C9E418185AB3', N'Error', N'Core.Business', NULL, NULL, NULL, N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Evaluacion.SelectByJefatura(Int32 IdJefatura, Int32 IdCompania) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 98', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:08.190' AS DateTime), 6, N'No existe el procedimiento almacenado ''SpPeddEvaluacionActiva_SelByJef''.', NULL, N'A397B72F248A1A1BF64D8788B000', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:08.253' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201259, N'E99418C7-0C6F-4A28-83BE-591E29091377', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.PartialViewResult.FindView(ControllerContext context)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-10-27T11:14:26.000' AS DateTime), CAST(N'2019-10-29T05:48:36.653' AS DateTime), 5, N'The partial view ''_DTParticipante'' was not found or no view engine supports the searched locations. The following locations were searched:
~/Areas/PeddEval/Views/Participante/_DTParticipante.aspx
~/Areas/PeddEval/Views/Participante/_DTParticipante.ascx
~/Areas/PeddEval/Views/Shared/_DTParticipante.aspx
~/Areas/PeddEval/Views/Shared/_DTParticipante.ascx
~/Views/Participante/_DTParticipante.aspx
~/Views/Participante/_DTParticipante.ascx
~/Views/Shared/_DTParticipante.aspx
~/Views/Shared/_DTParticipante.ascx
~/Areas/PeddEval/Views/Participante/_DTParticipante.cshtml
~/Areas/PeddEval/Views/Participante/_DTParticipante.vbhtml
~/Areas/PeddEval/Views/Shared/_DTParticipante.cshtml
~/Areas/PeddEval/Views/Shared/_DTParticipante.vbhtml
~/Views/Participante/_DTParticipante.cshtml
~/Views/Participante/_DTParticipante.vbhtml
~/Views/Shared/_DTParticipante.cshtml
~/Views/Shared/_DTParticipante.vbhtml
~/__MVCSITEMAPPROVIDER/_DTParticipante.ascx', NULL, N'345B6D0EAAF29A5F4938B9FF4FFA', CAST(N'2019-10-27T11:14:26.000' AS DateTime), CAST(N'2019-10-29T05:48:36.807' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (231262, N'D2139EA4-2926-4D7E-8804-146FCC9D3F07', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web.Mvc', NULL, N'   en System.Web.Mvc.ActionDescriptor.ExtractParameterFromDictionary(ParameterInfo parameterInfo, IDictionary`2 parameters, MethodInfo methodInfo)
   en System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-12-08T22:23:08.000' AS DateTime), CAST(N'2019-12-08T22:31:40.620' AS DateTime), 5, N'The parameters dictionary contains a null entry for parameter ''IdCabEval'' of non-nullable type ''System.Int32'' for method ''System.Web.Mvc.ActionResult ShowListEvaluados(Int32, Int32)'' in ''NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers.EvaluacionActivaController''. An optional parameter must be a reference type, a nullable type, or be declared as an optional parameter.
Nombre del parámetro: parameters', NULL, N'DEF74935D2FF6087DEDEDEED8C95', CAST(N'2019-12-08T22:23:08.000' AS DateTime), CAST(N'2019-12-08T22:31:40.697' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201263, N'226A6F09-BBD2-4ABF-9D67-D15BA6A9736F', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Web', NULL, N'   en System.Web.Compilation.AssemblyBuilder.Compile()
   en System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   en System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   en System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   en System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   en System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   en System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-11-01T11:50:54.000' AS DateTime), CAST(N'2019-11-01T11:50:54.000' AS DateTime), 1, N'c:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.Web.WebSite\Areas\PeddEval\Views\Evaluacion\Edit.cshtml(142): error CS1502: La mejor coincidencia de método sobrecargado para ''string.ToString(System.IFormatProvider)'' tiene algunos argumentos no válidos', NULL, N'6A0C630C8E593E0237A5FFE2907C', CAST(N'2019-11-01T11:50:54.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201261, N'BAB884C0-790E-4754-8642-A8219064A0E2', N'Error', N'Core.Business', NULL, NULL, NULL, N'.Net SqlClient Data Provider', NULL, N'   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DoExecuteNonQuery(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.ExecuteNonQuery(DbCommand command)
   en NetCore.PeddEval.DataAccess.Evaluacion.Edit(Int32 IdCabEvaluacion, Int32 IdCompania, String NomEvaluacion, String DesEvaluacion, String InsEvaluacion, String dfInicio, String dfTermino, Int32 IdTipoEvaluacion, Int32 IdCompSucAreDep, Int32 IdEstado) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 395', CAST(N'2019-11-01T11:04:36.000' AS DateTime), CAST(N'2019-11-01T11:04:36.000' AS DateTime), 1, N'Error al intentar actualizar una Evaluacion (Fecha Termino).', NULL, N'79C6C57AA332D18C44B18EEF9306', CAST(N'2019-11-01T11:04:36.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201262, N'70609F95-577B-49BC-B187-1EB4704B063F', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'.Net SqlClient Data Provider', NULL, N'   en System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   en System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   en System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   en System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString, Boolean isInternal, Boolean forDescribeParameterEncryption, Boolean shouldCacheForAlwaysEncrypted)
   en System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite, Boolean inRetry, SqlDataReader ds, Boolean describeParameterEncryptionRequest)
   en System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, String methodName, Boolean sendToPipe, Int32 timeout, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry)
   en System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DoExecuteNonQuery(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.ExecuteNonQuery(DbCommand command)
   en NetCore.PeddEval.DataAccess.Evaluacion.Edit(Int32 IdCabEvaluacion, Int32 IdCompania, String NomEvaluacion, String DesEvaluacion, String InsEvaluacion, String dfInicio, String dfTermino, Int32 IdTipoEvaluacion, Int32 IdCompSucAreDep, Int32 IdEstado) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 395', CAST(N'2019-11-01T11:04:37.000' AS DateTime), CAST(N'2019-11-01T11:04:37.000' AS DateTime), 1, N'Error al intentar actualizar una Evaluacion (Fecha Termino).', NULL, N'E097397BF89BD0E9444A65EB6F8F', CAST(N'2019-11-01T11:04:37.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201254, N'CBF85CAE-AE4E-43FA-96B9-57D881E534C0', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Empleado.SelByEmail(String IdentityUserMail) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EmpleadoDA.cs:línea 149', CAST(N'2019-10-27T09:19:37.000' AS DateTime), CAST(N'2019-10-27T09:39:07.317' AS DateTime), 6, N'No existe el procedimiento almacenado ''spPeddEmpleado_SelByMail''.', NULL, N'1F17213A624606EECC42706A88AC', CAST(N'2019-10-27T09:19:37.000' AS DateTime), CAST(N'2019-10-27T09:39:07.383' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201256, N'AB26C5B2-C526-49CD-AB23-8D77204B9010', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Evaluacion.SelectByEmpleado(Int32 IdEmpleado, Int32 IdCompania) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 144', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:07.837' AS DateTime), 6, N'No existe el procedimiento almacenado ''SpPeddEvaluacionActiva_SelByEmp''.', NULL, N'5EDCAA322CC0DE3652822AE9F3D8', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:07.897' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (201258, N'A3CFF3CA-FEC9-428C-905D-DA1C27CE7192', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@dycsa.com', N'System.Data', NULL, N'   en System.Data.SqlClient.SqlCommand.DeriveParameters()
   en System.Data.SqlClient.SqlCommandBuilder.DeriveParameters(SqlCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.DiscoverParameters(DbCommand command)
   en Microsoft.Practices.EnterpriseLibrary.Data.ParameterCache.SetParameters(DbCommand command, Database database)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.AssignParameters(DbCommand command, Object[] parameterValues)
   en Microsoft.Practices.EnterpriseLibrary.Data.Database.GetStoredProcCommand(String storedProcedureName, Object[] parameterValues)
   en NetCore.PeddEval.DataAccess.Evaluacion.SelectByJefatura(Int32 IdJefatura, Int32 IdCompania) en C:\Trabajo\GlobalApps\PeddEval\NetCore.PeddEval.DataAccess\EvaluacionDA.cs:línea 98', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:08.333' AS DateTime), 6, N'No existe el procedimiento almacenado ''SpPeddEvaluacionActiva_SelByJef''.', NULL, N'3CD2A1D481B42507C0BA1E5139B6', CAST(N'2019-10-27T09:19:38.000' AS DateTime), CAST(N'2019-10-27T09:39:08.393' AS DateTime))
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (191254, N'462316A2-A332-4412-9054-447BBE7FEAD6', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@disal.cl', N'NetCore.Web.WebSite', NULL, N'   en NetCore.Web.WebSite.Controllers.AccountController.<Login>d__12.MoveNext() en E:\OneDrive\Fuentes Programacion\Proyectos\NetCore\NetCore.Web.WebSite\Controllers\AccountController.cs:línea 80
--- Fin del seguimiento de la pila de la ubicación anterior donde se produjo la excepción ---
   en System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   en System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   en System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass8_0.<BeginInvokeAsynchronousActionMethod>b__1(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-09-03T22:56:25.000' AS DateTime), CAST(N'2019-09-03T22:56:25.000' AS DateTime), 1, N'Referencia a objeto no establecida como instancia de un objeto.', NULL, N'9D4E5940B683EE574E05476AED2A', CAST(N'2019-09-03T22:56:25.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_eventlog] ([IdLog], [Id], [EventlogTypeName], [ProcessName], [ServerName], [IdUser], [UserName], [Source], [KeyWords], [StackTrace], [FirstEvent], [LastEvent], [TimesNumber], [Description], [XmlDescription], [EventHash], [dt_created], [dt_updated]) VALUES (191255, N'4AE062D6-8208-47C2-A589-8056934970C5', N'Error', N'Core.Web.WebSite', NULL, N'5807191B-F331-4771-9540-ABB52702E442', N'admin@disal.cl', N'System.Data', NULL, N'   en System.Data.RBTree`1.GetNodeByIndex(Int32 userIndex)
   en CoreLibrary.Web.WebSite.Areas.Administration.Controllers.UsersController.Detail(String UserId) en E:\OneDrive\Fuentes Programacion\Proyectos\NetCore\CoreLibrary\CoreLibrary.Web.WebSite.Areas.Administration\Controllers\UsersController.cs:línea 44
   en lambda_method(Closure , ControllerBase , Object[] )
   en System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c.<BeginInvokeSynchronousActionMethod>b__9_0(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   en System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_0.<InvokeActionMethodFilterAsynchronouslyRecursive>b__0()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass11_2.<InvokeActionMethodFilterAsynchronouslyRecursive>b__2()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_6.<BeginInvokeAction>b__4()
   en System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass3_1.<BeginInvokeAction>b__1(IAsyncResult asyncResult)', CAST(N'2019-09-03T23:18:08.000' AS DateTime), CAST(N'2019-09-03T23:18:08.000' AS DateTime), 1, N'No hay ninguna fila en la posición 0.', NULL, N'013B66FA4E920B0C7896C113E7E5', CAST(N'2019-09-03T23:18:08.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_core_eventlog] OFF
INSERT [dbo].[tb_core_groups] ([Id], [Name], [dt_created], [dt_updated]) VALUES (N'27140DC6-2ADC-4899-B527-51662A7ACAF3', N'Administrador', NULL, CAST(N'2017-11-10T12:35:54.247' AS DateTime))
INSERT [dbo].[tb_core_groups] ([Id], [Name], [dt_created], [dt_updated]) VALUES (N'3F966970-874E-4888-AF29-B09F86E4A019', N'Pedd_Face_Create', CAST(N'2019-10-08T15:53:14.427' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_core_modules] ON 

INSERT [dbo].[tb_core_modules] ([Id], [Name], [Description], [dt_created], [dt_updated]) VALUES (2, N'SubeExcel', N'Permisos Sube Tablas Excel', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_core_modules] OFF
SET IDENTITY_INSERT [dbo].[tb_core_parameters] ON 

INSERT [dbo].[tb_core_parameters] ([Id], [Owner], [Name], [Value], [DataType], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (1, N'AttachmentsSGR', N'StorageName', N'C:\Ultraport\SGR - QA\Web\Storage\', N'System.String', NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_core_parameters] ([Id], [Owner], [Name], [Value], [DataType], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (2, N'InicioJornada', N'InicioJornada', N'9:00', N'System.String', NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_core_parameters] ([Id], [Owner], [Name], [Value], [DataType], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (3, N'TerminoJornada', N'TerminoJornada', N'18:00', N'System.String', NULL, NULL, NULL, NULL)
INSERT [dbo].[tb_core_parameters] ([Id], [Owner], [Name], [Value], [DataType], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (4, N'Colacion', N'Colacion', N'14:00', N'System.String', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_core_parameters] OFF
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0E20AB13-BC72-4803-8DA2-A6396C9D9A04', N'3F966970-874E-4888-AF29-B09F86E4A019', CAST(N'2019-10-08T15:53:14.427' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2EAADC15-99DA-49EB-BDBD-CA15B7276FA1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.197' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8E67BCF3-B400-4883-8FE1-9EA0D56D93FA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.197' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'90F86BA5-50BD-448F-97A4-F3FB7C965D6A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.200' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'BDECD32A-EA5A-494B-A3C6-2FEECBC6DD9B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.230' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'829330AE-4C8E-4172-AA92-55E48B238794', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.230' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9192D402-1139-4C62-9664-EEE5C7203B07', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.233' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'C2510F5C-3065-488C-9282-7431EB87F64C', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.233' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'AAC369B7-AE09-44B0-9BC4-66CBD899B995', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.233' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'10F53C63-2698-4715-B36E-4286E9647104', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.233' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F6A9ED0F-D009-46B4-B25B-74AA030E4F2E', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.237' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'FCE7699B-8B60-429E-B8F3-8D59B368C4ED', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.237' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'423568A6-D632-4007-BC9D-9043EC36DAA3', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.237' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'06611263-609F-4DE2-BD5F-1048E9E4F78B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.237' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2350079C-9F30-4024-ABC6-0EEFFC5EEF5F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'FED06C37-DA6F-4A9E-8FBF-F0C182DC276F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'61839210-3C0A-4CDB-8CF6-F68A24F6DFF4', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'01A7AFED-9BFC-4D9A-86E7-1DCF64652C59', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'89358EB0-29E8-4EC7-8886-5A21C270C1BD', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'EC41CF85-E9B8-4C1C-9865-E40A218CC6BE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.240' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CFC1D7C0-A4DC-4602-8EB9-8C6DBCB4AE4C', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'11396E17-02DF-4BA8-B279-2820DAAE8601', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F73B6429-47B3-49AB-B68E-08CA69CE8B0F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'29F0FC1F-4982-4335-B80F-EA8AB9F0819A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0E20AB13-BC72-4803-8DA2-A6396C9D9A04', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.247' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'B81FF516-00CA-4366-B000-E6ED80A5B0EC', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.247' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'08118585-657F-46E4-98F3-E2178320646A', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.247' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'C523B4BE-4A2C-494A-8A10-2EBDE5DE43E5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.247' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'360257C7-4AC4-4997-B45C-9356229663EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'7100D94F-C801-40E5-ACC3-177DDCA3AF49', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9C7CAD09-6F46-4998-AF3B-1EA8E948A3EE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F458C371-D095-4C8B-A4DE-1A5AF31F32D2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8A731CB7-7A36-4255-8B4A-163C34D65549', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'42A9C083-89B1-4665-9440-9166E97E0455', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.253' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0F7E2241-5150-4619-80EC-5511EEC44BBD', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.253' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'B489B00D-231F-4E54-B1AB-47A01A3C911F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.253' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9E4E08F4-275D-4255-A475-F87961699FB5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.253' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9F322582-4BFB-4B6C-9404-DC10685215B1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.253' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'310E2A0D-4B2A-4E0E-87F9-F0C0999D3C14', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.257' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'95301064-32CA-45DF-91CD-5F237BB6518B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.257' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'150FA6E9-0A5D-403F-A7D6-437FA2AD4F04', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.197' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'553D7978-944F-4C9E-9D59-D2CABF15996E', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.200' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CE00C3CA-449C-4AE7-8AD1-535A674BF028', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.200' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'E18228BF-39CE-44F3-8257-BA80FFB7DC57', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.200' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'290A73F2-9ADD-4D6A-9650-2E9EB4CC69F2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.200' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9A9A1327-CF81-4B84-920A-A949D34D06EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.203' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'52A157E0-5400-46A1-9CE3-137D59019D33', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.203' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2759D407-CACF-4073-B7E1-48262785A61D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.203' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'D4139A19-9D5D-4EBF-B2E1-4310152EAA4D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.203' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F08E6431-F053-41AC-8208-2B7F6F3AA6DF', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.207' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'7431ADB6-60F4-4024-BF77-2075DB66CE3B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.207' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8E7FBEA8-EF14-4295-B5CC-406D43CFDC5D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.207' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'25DE760B-7339-4DAE-8B4D-5DBED2815078', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.207' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0906466C-7264-453D-AAE5-F0C6DD11ADE9', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'471AF264-509E-49F8-94F5-8595797FEA61', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2A0EF7B6-C9FA-4866-AB68-EC653DE86FBE', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8834AEE7-3D83-4F8B-98F9-8B4E9126AC0B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'A5B53FAE-C3D7-4761-BC18-DF088F332E7D', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'C7DCF005-3473-4512-A644-1074B28072EA', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'76BB9F9A-4580-4CE0-81A2-7C9783075648', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.213' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'95CC99FA-6A6F-400E-B8CE-055713529BE5', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.213' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'ED012D5E-1F34-4C39-8ECE-0FCE3CBD4823', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.213' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'DBB89689-AAE7-4F03-8C9D-AD5296A34FD7', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.213' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'4F173885-54AA-4803-8B3F-90FB062AD478', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.217' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CE24F5A2-2CDA-4D47-9A7A-83EA6CA4DD57', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.217' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'085097AE-E216-4A87-8530-388DF7FD7170', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.217' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'93302D9F-BC35-4110-83A2-C95BD077185B', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.217' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'6C5E1974-0F31-4E0A-8E36-1C654420E656', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.220' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'33BB32D5-011E-4521-8555-923046F16227', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.220' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'16F6E7A1-C2EB-4481-A249-73DEC1CC60FF', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.220' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'D5B1BB0A-A318-4E16-88C5-E075F6113D84', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.220' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'86FBA01E-2F91-45C5-866B-5D2DB551EDD1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.220' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9DDAEB89-B9FC-4D1D-BF09-C771A88E9EDC', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F84C44CA-BB48-40C1-BF04-FE8F4B04EAFB', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'E497D48A-CA37-4272-AD57-02D3458257E2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'7E263FDE-A640-49F4-9564-522E73188E88', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8271D01F-D0BB-4248-86EA-1B5DC0A80499', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'286B5713-DDB1-4E08-8E4D-EA559A162E52', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.227' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9FAD96AA-14AF-4BD2-9FB2-415121542C22', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.227' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CD097DCF-4D05-419B-83AD-D34E299425E1', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.227' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5CFF3684-DD4A-46C9-BCDA-163DE5459400', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.227' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2EEADCDF-1E56-4DE3-8EE6-D2059ECA3E30', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.230' AS DateTime), NULL)
INSERT [dbo].[tb_core_rolesgroup] ([IdRole], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9FFBE764-B9F2-4F9B-8681-7CE2B568E8BB', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:42:49.230' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (1, N'index', N'index', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (2, N'noindex', N'noindex', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (3, N'follow', N'follow', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (4, N'nofollow', N'nofollow', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (5, N'none', N'none', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (6, N'noarchive', N'noarchive', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (7, N'nocache', N'nocache', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (8, N'nosnippet', N'nosnippet', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (9, N'nopreview', N'nopreview', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (10, N'noodp', N'noodp', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (11, N'noydir', N'noydir', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (1, N'index', N'index', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (2, N'noindex', N'noindex', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (3, N'follow', N'follow', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (4, N'nofollow', N'nofollow', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (5, N'none', N'none', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (6, N'noarchive', N'noarchive', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (7, N'nocache', N'nocache', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (8, N'nosnippet', N'nosnippet', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (9, N'nopreview', N'nopreview', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (10, N'noodp', N'noodp', NULL, NULL)
INSERT [dbo].[tb_core_sitemapmetarobotvalues] ([id], [metarobotvalue], [description], [dt_created], [dt_updated]) VALUES (11, N'noydir', N'noydir', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', NULL, NULL, NULL, N'Sistema Pedd', N'Plataforma de Evaluacion de Desempeno', NULL, N'fa fa-newspaper-o', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pedd', N'Home', N'Pedd', NULL, NULL, CAST(N'2019-09-16T21:42:47.950' AS DateTime), 0, 0, CAST(N'2019-09-14T20:23:31.007' AS DateTime), CAST(N'2019-09-16T21:42:47.950' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'60DE3275-59C0-4F79-82F3-7F2F26FC20A6', NULL, NULL, NULL, N'Empresa', N'Mantenedor empresa', NULL, N'fa fa-building-o', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Compania', N'Index', NULL, NULL, CAST(N'2019-09-18T19:18:41.167' AS DateTime), 0, 0, CAST(N'2019-09-14T20:25:41.980' AS DateTime), CAST(N'2019-09-18T19:18:41.167' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'6E319E70-BAC4-42B1-AEC0-0AEAF6C99CB2', NULL, NULL, NULL, N'Area Funcional', N'Area Funcional', NULL, N'fa fa-cogs', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pedd', N'AreaFuncional', N'Index', NULL, NULL, CAST(N'2019-09-17T19:18:37.350' AS DateTime), 0, 0, CAST(N'2019-09-16T21:49:51.737' AS DateTime), CAST(N'2019-09-17T19:18:37.350' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'C2835CB1-A74B-4440-BA90-EE0DA9CE239B', NULL, NULL, NULL, N'Departamento', N'Mantenedor Departamento', NULL, N'fa fa-sitemap', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pedd', N'Departamento', N'Index', NULL, NULL, NULL, 0, 0, CAST(N'2019-09-17T20:27:24.077' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'F9ACC7EA-7DA2-4ED9-B14C-A194D3793777', NULL, NULL, NULL, N'Listar Participantes', N'Listar Participantes de una Evaluación Activa', NULL, N'fa fa-users', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Participante', N'Index', NULL, NULL, NULL, 0, 0, CAST(N'2019-11-24T22:49:55.057' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'52A6357A-DC6B-40EC-810E-CABE64737FD2', NULL, NULL, NULL, N'Eval. en Curso', N'Evaluaciones en Curso', NULL, N'fa fa-bookmark', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'EvaluacionActiva', N'home', NULL, NULL, CAST(N'2019-12-04T21:28:46.870' AS DateTime), 0, 0, CAST(N'2019-12-04T20:42:02.880' AS DateTime), CAST(N'2019-12-04T21:28:46.870' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'D37D568F-4552-4EF0-93AE-079BF3B35916', NULL, NULL, NULL, N'Agregar Evaluado', N'Agregar un Nuevo Evaluado', NULL, N'fa fa-user-plus', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'EvaluacionActiva', N'AddEvaluado', NULL, NULL, NULL, 0, 0, CAST(N'2019-12-04T21:31:19.663' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'8A25E62C-260B-48AB-8DC1-83CE9AC665AC', NULL, NULL, NULL, N'ReceptorDTE', N'Receptor de factura electrónica.', NULL, N'fa fa-file-archive-o', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ReceptorDTE', N'Home', N'ReceptorDTE', NULL, NULL, CAST(N'2019-12-27T23:46:45.663' AS DateTime), 0, 0, CAST(N'2019-12-27T23:32:02.630' AS DateTime), CAST(N'2019-12-27T23:46:45.663' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'2436357F-0F08-4B5C-87AD-DFA2B3C3ED5C', NULL, NULL, NULL, N'MantenedoresDTE', N'Mantenedores del sistema ReceptorDTE', NULL, N'fa fa-archive', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ReceptorDTE', N'Home', N'ReceptorDTE', NULL, NULL, CAST(N'2019-12-28T00:41:11.863' AS DateTime), 0, 0, CAST(N'2019-12-27T23:43:37.923' AS DateTime), CAST(N'2019-12-28T00:41:11.863' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'D79DBE07-EE42-4F42-B100-0CE51CA96063', NULL, NULL, NULL, N'Evaluaciones', N'Administración de Evaluaciones', NULL, N'fa fa-check-square-o', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Evaluacion', N'home', NULL, NULL, CAST(N'2019-11-23T13:19:56.540' AS DateTime), 0, 0, CAST(N'2019-11-23T12:51:31.133' AS DateTime), CAST(N'2019-11-23T13:19:56.540' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'F695D660-A52D-41F3-AD0C-864CF3D1AE29', NULL, NULL, NULL, N'Listar Evaluaciones', N'Listar Evaluaciones', NULL, N'fa fa-list', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Evaluacion', N'Index', NULL, NULL, CAST(N'2019-11-23T13:37:28.050' AS DateTime), 0, 0, CAST(N'2019-11-23T13:17:36.547' AS DateTime), CAST(N'2019-11-23T13:37:28.050' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'DE3803C6-8CBD-4966-A049-4998C6F2BC40', NULL, NULL, NULL, N'Empresa', N'Manasdasdasd', NULL, N'glyphicon glyphicon-leaf', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Empresa', N'Index', NULL, NULL, CAST(N'2019-12-28T01:05:19.083' AS DateTime), 0, 0, CAST(N'2019-12-28T00:41:47.807' AS DateTime), CAST(N'2019-12-28T01:05:19.083' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'A', NULL, NULL, NULL, N'Permisos', N'Permisos en el sistema', NULL, N'fa fa-key', NULL, NULL, N'core_permission_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Permission', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'B', NULL, NULL, NULL, N'Administración', N'Administración de seguridad', NULL, N'fa fa-cog', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Home', N'Administration', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'C', NULL, NULL, NULL, N'Grupos de Permisos', N'Grupos de permisos en el sistema', NULL, N'fa fa-key', NULL, NULL, N'core_group_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Group', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'D', NULL, NULL, NULL, N'Módulos', N'Módulos del sistema', NULL, N'fa fa-key', NULL, NULL, N'core_module_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Module', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'E', NULL, NULL, NULL, N'Mapa del sitio', N'Mapa de accesos del sitio', NULL, N'fa fa-key', NULL, NULL, N'core_sitemap_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'SiteMap', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'FCEF3FFE-5243-45DF-B5B0-1C4BB70785A1', NULL, NULL, NULL, N'Sucesos', N'Sucesos', NULL, N'fa fa-key', NULL, NULL, N'core_eventlog_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'EventLog', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'8B4B0D64-54C1-421F-B25F-D02429DEE37A', NULL, NULL, NULL, N'Log de Usuarios', N'Log de Usuarios', NULL, N'fa fa-crop', NULL, NULL, N'core_userlog_Index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'UserLog', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'AA90E4C5-16DD-453F-B41E-6C25128B27F8', NULL, NULL, NULL, N'Usuarios', N'Mantenedor de Usuarios', NULL, N'fa fa-user', NULL, NULL, N'core_users_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Users', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'2C0CAF65-152F-4995-9737-40522F0006C4', NULL, NULL, NULL, N'Alertas', N'Alertas', NULL, N'fa fa-warning', NULL, NULL, N'core_home_alerts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Administration', N'Alerts', N'Index', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'H', NULL, NULL, NULL, N'SGR', N'Software Gestión de Requerimiento', NULL, N'fa fa-ticket', NULL, NULL, N'sgr_dashboard_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SGR', N'Home', N'SGR', NULL, NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'CCFF1B8F-BF26-4C2F-8DC2-65ACC57D1090', NULL, NULL, NULL, N'Listar Fases', N'Fases estándar de un proceso Evaluativo', NULL, N'fa fa-list-ul', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Fase', N'Index', NULL, NULL, NULL, 0, 0, CAST(N'2019-11-23T21:40:21.303' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'064AD842-1960-4219-BEED-3C8CD83A893C', NULL, NULL, NULL, N'Crear Fases', N'Crear Fases de una Evaluación', NULL, N'fa fa-list-ol', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Fase', N'CreateFromMenu', NULL, NULL, CAST(N'2019-12-01T20:43:25.273' AS DateTime), 0, 0, CAST(N'2019-12-01T18:03:02.533' AS DateTime), CAST(N'2019-12-01T20:43:25.273' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'41BCAA6A-F8CB-437D-AAE4-EF22E186F8B2', NULL, NULL, NULL, N'Eval. Histórica', N'Evaluaciones históricas', NULL, N'fa fa-binoculars', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'EvaluacionActiva', N'home', NULL, NULL, NULL, 0, 0, CAST(N'2019-12-04T20:44:02.000' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'D1D8BD3B-6BE0-477C-8A5E-42B02EE92197', NULL, NULL, NULL, N'Listar Actuales', N'Listar Evaluaciones en Progreso', NULL, N'fa fa-book', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'EvaluacionActiva', N'Index', NULL, NULL, NULL, 0, 0, CAST(N'2019-12-04T21:06:06.347' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'20E04208-AE5F-47BC-8EA4-5BA3D395725E', NULL, NULL, NULL, N'Participantes', N'Participantes de una Evaluación', NULL, N'fa fa-users', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Participante', N'home', NULL, NULL, CAST(N'2019-11-23T15:00:03.570' AS DateTime), 0, 0, CAST(N'2019-11-23T13:39:44.590' AS DateTime), CAST(N'2019-11-23T15:00:03.570' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'CD702AA8-2D3E-45E0-9D35-B6DF6B2C02B2', NULL, NULL, NULL, N'Crear Evaluación', N'Crear Evaluación', NULL, N'fa fa-edit', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Evaluacion', N'Create', NULL, NULL, CAST(N'2019-11-23T13:19:08.227' AS DateTime), 0, 0, CAST(N'2019-11-23T13:16:37.637' AS DateTime), CAST(N'2019-11-23T13:19:08.227' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'CA698612-ECA5-4490-872E-A69EDA3FEA72', NULL, NULL, NULL, N'Fases', N'Fases de una Evaluación', NULL, N'fa fa-list-alt', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Fase', N'home', NULL, NULL, CAST(N'2019-12-01T20:28:38.407' AS DateTime), 0, 0, CAST(N'2019-11-23T20:46:19.300' AS DateTime), CAST(N'2019-12-01T20:28:38.407' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'AE9B8E56-31DC-4AE8-8DE9-3977BDDC4B48', NULL, NULL, NULL, N'Sucursal', N'Mantenedor Sucursal', NULL, N'fa fa-institution', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Sucursal', N'Index', NULL, NULL, CAST(N'2019-09-18T23:33:27.400' AS DateTime), 0, 0, CAST(N'2019-09-17T20:33:16.973' AS DateTime), CAST(N'2019-09-18T23:33:27.400' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'27A19EF3-560F-4C44-9C22-102DF45CDC44', NULL, NULL, NULL, N'Persona', N'Mantenedor de Personas', NULL, N'fa fa-user', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pedd', N'Persona', N'Index', NULL, NULL, NULL, 0, 0, CAST(N'2019-09-17T20:43:58.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'2F5F3B4A-5CA6-4F50-B70B-94556D5CB978', NULL, NULL, NULL, N'Crear Participantes', N'Crear Participantes de una Evaluación', NULL, N'fa fa-user-plus', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'PeddEval', N'Participante', N'Create', NULL, NULL, CAST(N'2019-11-24T23:16:48.593' AS DateTime), 0, 0, CAST(N'2019-11-23T14:22:13.350' AS DateTime), CAST(N'2019-11-24T23:16:48.593' AS DateTime))
INSERT [dbo].[tb_core_sitemapnode] ([key], [order], [httpmethod], [resourcekey], [title], [description], [targetframe], [imageurl], [imageurlprotocol], [imageurlhostname], [roles], [visibility], [visibilityprovider], [dynamicnodeprovider], [clickable], [urlresolver], [url], [cacheresolvedurl], [includeambientvaluesinurl], [protocol], [hostName], [canonicalkey], [canonicalurl], [canonicalurlprotocol], [canonicalurlhostname], [metarobotsvalueid], [route], [inheritedrouteparameters], [preservedrouteparameters], [area], [controller], [action], [provider], [sitemapfile], [lastmodifieddate], [changefrequencyid], [updatepriorityid], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', NULL, NULL, NULL, N'Mantenedores', N'Mantenedores de maestros Pedd', NULL, N'fa fa-archive', NULL, NULL, N'core_home_administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Pedd', N'Home', N'Pedd', NULL, NULL, CAST(N'2019-09-16T21:43:31.497' AS DateTime), 0, 0, CAST(N'2019-09-14T20:24:41.930' AS DateTime), CAST(N'2019-09-16T21:43:31.497' AS DateTime))
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'', N'004CC018-8BFD-4770-9629-D603C85A21B0', CAST(N'2019-09-14T20:23:31.147' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', N'6E319E70-BAC4-42B1-AEC0-0AEAF6C99CB2', CAST(N'2019-09-16T21:49:52.283' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', N'C2835CB1-A74B-4440-BA90-EE0DA9CE239B', CAST(N'2019-09-17T20:27:24.403' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', N'AE9B8E56-31DC-4AE8-8DE9-3977BDDC4B48', CAST(N'2019-09-17T20:33:17.050' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', N'27A19EF3-560F-4C44-9C22-102DF45CDC44', CAST(N'2019-09-17T20:43:58.417' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'20E04208-AE5F-47BC-8EA4-5BA3D395725E', CAST(N'2019-11-23T13:39:44.737' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'', N'8A25E62C-260B-48AB-8DC1-83CE9AC665AC', CAST(N'2019-12-27T23:32:02.647' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'CA698612-ECA5-4490-872E-A69EDA3FEA72', N'CCFF1B8F-BF26-4C2F-8DC2-65ACC57D1090', CAST(N'2019-11-23T21:40:21.487' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'20E04208-AE5F-47BC-8EA4-5BA3D395725E', N'F9ACC7EA-7DA2-4ED9-B14C-A194D3793777', CAST(N'2019-11-24T22:49:55.230' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'52A6357A-DC6B-40EC-810E-CABE64737FD2', N'D1D8BD3B-6BE0-477C-8A5E-42B02EE92197', CAST(N'2019-12-04T21:06:06.490' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'D79DBE07-EE42-4F42-B100-0CE51CA96063', CAST(N'2019-11-23T12:51:31.280' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D79DBE07-EE42-4F42-B100-0CE51CA96063', N'F695D660-A52D-41F3-AD0C-864CF3D1AE29', CAST(N'2019-11-23T13:17:36.613' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'A', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'C', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'D', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'E', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'8A25E62C-260B-48AB-8DC1-83CE9AC665AC', N'2436357F-0F08-4B5C-87AD-DFA2B3C3ED5C', CAST(N'2019-12-27T23:43:37.933' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'FCEF3FFE-5243-45DF-B5B0-1C4BB70785A1', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'8B4B0D64-54C1-421F-B25F-D02429DEE37A', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'AA90E4C5-16DD-453F-B41E-6C25128B27F8', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'2C0CAF65-152F-4995-9737-40522F0006C4', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'B', N'70F8B4F5-6E54-4912-81B0-082CCC8A4C23', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'2436357F-0F08-4B5C-87AD-DFA2B3C3ED5C', N'DE3803C6-8CBD-4966-A049-4998C6F2BC40', CAST(N'2019-12-28T00:41:47.813' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'H', N'Prueba', NULL, NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', CAST(N'2019-09-14T20:24:42.010' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D5FCE68A-4615-4018-B2C2-9FC564B94AD1', N'60DE3275-59C0-4F79-82F3-7F2F26FC20A6', CAST(N'2019-09-14T20:25:42.060' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'CA698612-ECA5-4490-872E-A69EDA3FEA72', CAST(N'2019-11-23T20:46:19.467' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'CA698612-ECA5-4490-872E-A69EDA3FEA72', N'064AD842-1960-4219-BEED-3C8CD83A893C', CAST(N'2019-12-01T18:03:02.733' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'41BCAA6A-F8CB-437D-AAE4-EF22E186F8B2', CAST(N'2019-12-04T20:44:02.090' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'D79DBE07-EE42-4F42-B100-0CE51CA96063', N'CD702AA8-2D3E-45E0-9D35-B6DF6B2C02B2', CAST(N'2019-11-23T13:16:37.790' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'20E04208-AE5F-47BC-8EA4-5BA3D395725E', N'2F5F3B4A-5CA6-4F50-B70B-94556D5CB978', CAST(N'2019-11-23T14:22:13.497' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'52A6357A-DC6B-40EC-810E-CABE64737FD2', N'D37D568F-4552-4EF0-93AE-079BF3B35916', CAST(N'2019-12-04T21:31:19.803' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapnoderelacion] ([keyparent], [keychild], [dt_created], [dt_updated]) VALUES (N'004CC018-8BFD-4770-9629-D603C85A21B0', N'52A6357A-DC6B-40EC-810E-CABE64737FD2', CAST(N'2019-12-04T20:42:03.060' AS DateTime), NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Undefined', N'Undefined', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Automatic', N'Automatic', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Low', N'Low', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Normal', N'Normal', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'High', N'High', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Critical', N'Critical', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_000', N'Absolute_000', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_010', N'Absolute_010', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_020', N'Absolute_020', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_030', N'Absolute_030', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_040', N'Absolute_040', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_050', N'Absolute_050', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_060', N'Absolute_060', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_070', N'Absolute_070', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_080', N'Absolute_080', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_090', N'Absolute_090', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_100', N'Absolute_100', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Undefined', N'Undefined', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Automatic', N'Automatic', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Low', N'Low', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Normal', N'Normal', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'High', N'High', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Critical', N'Critical', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_000', N'Absolute_000', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_010', N'Absolute_010', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_020', N'Absolute_020', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_030', N'Absolute_030', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_040', N'Absolute_040', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_050', N'Absolute_050', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_060', N'Absolute_060', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_070', N'Absolute_070', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_080', N'Absolute_080', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_090', N'Absolute_090', NULL, NULL)
INSERT [dbo].[tb_core_sitemapupdatepriority] ([id], [updatepriority], [description], [dt_created], [dt_updated]) VALUES (0, N'Absolute_100', N'Absolute_100', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'1FEB8305-C136-4509-8E42-CF1A19A5C45D', NULL, CAST(N'2017-02-07T17:06:23.963' AS DateTime), NULL, N'Gallardo Raul (PUQ UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'25A4D958-65EF-43A0-A08A-2054238AF10A', NULL, CAST(N'2017-02-03T11:29:31.410' AS DateTime), NULL, N'Administración BBT', N'Cuanta temporal para la creación de permisos', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'269BF811-E326-40AF-979C-2ABAB3BF3C00', NULL, CAST(N'2017-02-07T17:46:23.823' AS DateTime), NULL, N'Vargas Claudio (UCO UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'2887196F-CF69-4556-8C73-AB650CD2A46B', NULL, CAST(N'2017-02-07T17:45:03.703' AS DateTime), NULL, N'Matías Ormazabal', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'3B411426-BBF0-4B6F-A13A-8BB46BD98DC0', NULL, CAST(N'2016-08-08T11:50:38.563' AS DateTime), NULL, N'Guillermo', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'48A74563-3115-42A2-B146-C9EB33F96C6A', NULL, CAST(N'2019-06-25T19:50:05.210' AS DateTime), NULL, N'Administrador', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'49B5FA70-F52D-4996-8CE4-8D92FF5AAD49', NULL, CAST(N'2017-08-28T17:02:53.723' AS DateTime), NULL, N'Victor Concha', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'4A7EDB0A-D996-46B3-840F-EC4B3F4C9EB9', NULL, CAST(N'2017-02-07T17:43:23.353' AS DateTime), NULL, N'Documental', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'4b6044d9-64bb-4da7-a454-ab8e3150afd3', NULL, CAST(N'2016-07-18T18:50:49.263' AS DateTime), NULL, N'the boss', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'4bd44b7e-c7eb-4cb9-b7b6-e5288f9e7878', NULL, NULL, NULL, N'Miguel Peredo', N'', N'1634407-UaCkLdbJvigZtxAoPgEd')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'4bd44b7e-c7eb-4cb9-b7b6-f5288f9e7878', NULL, NULL, NULL, N'Guillermo Cuevas', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'4bd44b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, NULL, NULL, N'Marcelo Rojas', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', NULL, CAST(N'2019-06-26T15:14:07.073' AS DateTime), NULL, N'Administrador', N'Cuenta Inicial', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'5FCA669A-C74B-4974-BFED-6D285F089E1A', NULL, CAST(N'2017-02-07T17:39:28.813' AS DateTime), NULL, N'Oyarzo Ivan (PUQ UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'6787E87D-BDA1-4FC4-9B80-69CC2D014F7A', NULL, CAST(N'2016-07-18T18:28:23.827' AS DateTime), NULL, N'jaime pizarro gaete', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'6FB0A10D-82E0-40BD-8CED-F81C1A91C39F', NULL, CAST(N'2018-02-19T17:08:03.227' AS DateTime), NULL, N'Nicole Navarro', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'86A68939-B37B-4BE0-84CF-1B907D666E17', NULL, CAST(N'2016-07-21T21:30:52.817' AS DateTime), NULL, N'Francisco Munita', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'9638810A-AF1F-4698-85F3-39FE28F8DDF3', NULL, CAST(N'2016-08-08T11:54:08.180' AS DateTime), NULL, N'a', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'98AAC162-1C84-4FEF-8DEE-C4E83808355F', NULL, CAST(N'2017-02-07T16:56:40.460' AS DateTime), NULL, N'Navarro Nelson (PUQ UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'9F1C4E53-AE6D-4B22-9F18-3FECACFF1577', NULL, CAST(N'2017-02-23T14:26:06.943' AS DateTime), NULL, N'helpdesk', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'9FB7AAA6-3767-4409-86C7-95D2CF7813AC', NULL, CAST(N'2018-01-10T10:42:01.343' AS DateTime), NULL, N'Bastian Guitierrez', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'A2A51F78-2324-45A6-BE5E-3F209D3BD491', NULL, CAST(N'2019-10-13T16:26:34.823' AS DateTime), NULL, N'Enzo Badillo', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'A4BAB7C8-ACFA-44F3-86C3-69A58213C744', NULL, CAST(N'2016-07-18T13:37:39.787' AS DateTime), NULL, N'Jaime Pizarro', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'AE1BE410-99F1-4D40-A701-19CCCA4F6416', NULL, CAST(N'2016-07-18T18:06:51.480' AS DateTime), NULL, N'jaime pizarro gaete', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'BB1714D2-DA63-45BF-B49F-DC01FFD04966', NULL, CAST(N'2017-05-23T12:15:26.277' AS DateTime), NULL, N'Guido Anziani', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'C10A05E2-71E6-4C33-8877-7F3D1F8E1500', NULL, CAST(N'2016-07-21T21:17:40.643' AS DateTime), NULL, N'Francisco Munita', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'C1245005-9EA2-44B4-A623-11D421DC0743', NULL, CAST(N'2018-04-10T15:36:45.080' AS DateTime), NULL, N'Francisco Munita', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'c8cf1590-b2c9-4123-a0b6-7ad367287ed9', NULL, NULL, NULL, N'Demo ', N'', N'asda')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'CBDDF53F-2497-47AB-9984-558C46091A2F', NULL, CAST(N'2018-10-09T16:52:32.907' AS DateTime), NULL, N'Gino Santangelo', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'CDBB6EF2-23A4-479A-88DB-F74B74D355D1', NULL, CAST(N'2016-07-18T18:17:20.167' AS DateTime), NULL, N'jaime pizarro gaete', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'CFF06C2B-C5CA-46B7-A470-F2475ABB6DD3', NULL, CAST(N'2017-02-07T17:41:25.460' AS DateTime), NULL, N'Carcamo Gonzalo (PUQ UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0144b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:52.973' AS DateTime), CAST(N'2016-07-15T12:46:52.973' AS DateTime), N'Francisco Ramirez', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0244b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:52.990' AS DateTime), CAST(N'2016-07-15T12:46:52.990' AS DateTime), N'Iván Moya', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0344b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:52.997' AS DateTime), CAST(N'2016-07-15T12:46:52.997' AS DateTime), N'Patricio Ahumada', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0444b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:53.003' AS DateTime), CAST(N'2016-07-15T12:46:53.003' AS DateTime), N'Daniel Oliva', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0544b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:53.077' AS DateTime), CAST(N'2016-07-15T12:46:53.077' AS DateTime), N'Renato Astudillo', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', NULL, CAST(N'2016-07-15T12:46:53.083' AS DateTime), CAST(N'2016-07-15T12:46:53.083' AS DateTime), N'Ricardo Vergara', NULL, NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'D19A8615-BFB6-4ADE-8AB7-77F6D3940CEC', NULL, CAST(N'2016-07-21T17:38:39.080' AS DateTime), NULL, N'Álvaro Ulloa I.', N'Responsable tickets SGR', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'D6A4EC15-4DEA-438C-ADC4-42490750CE08', NULL, CAST(N'2019-10-05T19:20:02.533' AS DateTime), NULL, N'Victor Concha', N'Cuenta de prueba', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'DFF65996-CE2D-403D-8532-7E78F0CB6B97', NULL, CAST(N'2017-11-09T17:10:20.490' AS DateTime), NULL, N'Iván Moya', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'E75673AE-8712-4D2B-B972-BA143150BF75', NULL, CAST(N'2017-02-07T17:17:20.410' AS DateTime), NULL, N'Diaz Edgard (PUQ UPOR)', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'EA157B5E-BEC6-47A3-AFF8-DEB239F8A8FF', NULL, CAST(N'2016-07-29T16:17:02.540' AS DateTime), NULL, N'Marcelo', N'.', N'178 208 320')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'EB9759FF-7088-4CBD-A4BF-AAD0CA45B93D', NULL, CAST(N'2016-08-08T11:52:13.623' AS DateTime), NULL, N'm', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'EEE68BCF-9C7B-4BFA-BF02-12F6C3AB6CE8', NULL, CAST(N'2016-07-18T18:19:24.477' AS DateTime), NULL, N'jaime pizarro gaete', N'', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'EEF0C0AA-B045-4916-9C72-DBBA24071F21', NULL, CAST(N'2016-07-18T18:21:13.070' AS DateTime), NULL, N'f', N'ff', NULL)
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'F6FDB677-AB28-4AFA-A873-64DA2B2A1626', NULL, CAST(N'2017-08-22T17:47:13.313' AS DateTime), NULL, N'Andres', N'', N'Sin Id Asociado')
INSERT [dbo].[tb_core_usersdata] ([IdUser], [ImageProfile], [dt_created], [dt_updated], [FullName], [Observation], [TeamViewerID]) VALUES (N'FDDA5C37-5B69-4ED2-B8E7-2EEE3263AE6F', NULL, CAST(N'2016-07-18T18:05:12.727' AS DateTime), NULL, N'jaime pizarro gaete', N'', NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'EA157B5E-BEC6-47A3-AFF8-DEB239F8A8FF', N'F12BF8AA-9963-4CAE-9F57-6409FB7C4968', CAST(N'2016-09-06T16:45:28.490' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-01-13T15:30:26.590' AS DateTime), CAST(N'2017-01-13T15:30:26.590' AS DateTime))
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-01-13T15:30:31.170' AS DateTime), CAST(N'2017-01-13T15:30:31.170' AS DateTime))
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0144b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'F12BF8AA-9963-4CAE-9F57-6409FB7C4968', CAST(N'2017-01-16T10:07:23.050' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'F12BF8AA-9963-4CAE-9F57-6409FB7C4968', CAST(N'2017-01-16T10:14:46.500' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'c8cf1590-b2c9-4123-a0b6-7ad367287ed9', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-03T12:54:37.273' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-05-23T12:30:18.317' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'c8cf1590-b2c9-4123-a0b6-7ad367287ed9', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-02-03T14:57:49.410' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'c8cf1590-b2c9-4123-a0b6-7ad367287ed9', N'F798D8E4-1BC7-4100-9E2A-2B3C619ED612', CAST(N'2017-02-03T14:59:57.787' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'B7D928BA-D668-4E49-979B-117B933178D3', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T16:47:57.040' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9F1C4E53-AE6D-4B22-9F18-3FECACFF1577', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-02-23T14:27:39.320' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9F1C4E53-AE6D-4B22-9F18-3FECACFF1577', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-23T14:27:39.357' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9F1C4E53-AE6D-4B22-9F18-3FECACFF1577', N'5DC4695E-CAA6-4718-A59F-F5A88FD47FDA', CAST(N'2017-02-23T14:27:39.377' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9F1C4E53-AE6D-4B22-9F18-3FECACFF1577', N'F12BF8AA-9963-4CAE-9F57-6409FB7C4968', CAST(N'2017-02-23T14:27:39.460' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'BB1714D2-DA63-45BF-B49F-DC01FFD04966', N'F798D8E4-1BC7-4100-9E2A-2B3C619ED612', CAST(N'2017-08-08T09:47:39.297' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'98AAC162-1C84-4FEF-8DEE-C4E83808355F', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T16:58:43.857' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'1FEB8305-C136-4509-8E42-CF1A19A5C45D', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:08:50.820' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'E75673AE-8712-4D2B-B972-BA143150BF75', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:18:27.757' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5FCA669A-C74B-4974-BFED-6D285F089E1A', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:40:28.377' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CFF06C2B-C5CA-46B7-A470-F2475ABB6DD3', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:42:14.607' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'4A7EDB0A-D996-46B3-840F-EC4B3F4C9EB9', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:44:24.463' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'2887196F-CF69-4556-8C73-AB650CD2A46B', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:45:45.797' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'269BF811-E326-40AF-979C-2ABAB3BF3C00', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-02-07T17:47:14.037' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'4bd44b7e-c7eb-4cb9-b7b6-e5288f9e7878', N'251EE010-FDA9-41D6-BB4A-D596E95C3560', CAST(N'2017-08-07T14:29:49.837' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0144b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'A0353196-66C2-470C-A840-7F7A1ED7FC47', CAST(N'2017-08-10T12:35:16.543' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0144b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2017-08-10T13:11:06.867' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F6FDB677-AB28-4AFA-A873-64DA2B2A1626', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-09-27T10:07:03.510' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'F6FDB677-AB28-4AFA-A873-64DA2B2A1626', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-09-27T19:11:20.310' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0544b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-08-24T12:43:54.860' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'F798D8E4-1BC7-4100-9E2A-2B3C619ED612', CAST(N'2017-09-11T12:45:59.083' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'D161271B-3896-426E-BFEB-616C7A0B95B3', CAST(N'2017-11-10T15:31:39.840' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-11-10T10:43:10.373' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'b174cd03-ba40-42b4-8b07-e3b8e9565a5d', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-11-10T12:32:47.143' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'b174cd03-ba40-42b4-8b07-e3b8e9565a5d', N'D161271B-3896-426E-BFEB-616C7A0B95B3', CAST(N'2017-11-10T15:31:52.903' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'b174cd03-ba40-42b4-8b07-e3b8e9565a5d', N'2D556E93-AC18-48DD-93ED-EE6063BC34E3', CAST(N'2017-11-23T17:39:57.110' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'b174cd03-ba40-42b4-8b07-e3b8e9565a5d', N'391DE1D2-EDFA-4201-9359-EF54426A8DB5', CAST(N'2017-12-15T15:06:05.980' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'9FB7AAA6-3767-4409-86C7-95D2CF7813AC', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2018-01-10T10:52:14.287' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'F5FBC754-BA90-4BED-BCF9-00032C1A6C9D', CAST(N'2018-01-11T17:00:18.873' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'243E8F8C-A5B9-4925-8E1A-E2778476DF9D', CAST(N'2018-01-25T16:10:09.797' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2018-01-25T16:10:10.193' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'2D556E93-AC18-48DD-93ED-EE6063BC34E3', CAST(N'2018-01-25T16:10:10.217' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a0c3ac0-07ca-4917-8f1d-e886f9b81ed3', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2018-04-10T15:34:56.773' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2018-01-25T16:10:10.337' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2018-01-25T16:10:10.370' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'4bd44b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-08-25T15:40:42.163' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd0644b7e-c7eb-4cb9-b7b6-f5388f9e7878', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-09-21T11:55:53.733' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'D161271B-3896-426E-BFEB-616C7A0B95B3', CAST(N'2018-01-25T16:10:10.383' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'F5FBC754-BA90-4BED-BCF9-00032C1A6C9D', CAST(N'2018-01-25T16:10:10.397' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'F798D8E4-1BC7-4100-9E2A-2B3C619ED612', CAST(N'2018-01-25T16:10:10.690' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'E469C25B-7BEF-40DD-AA4C-DA6944D83E57', CAST(N'2018-02-22T17:45:50.873' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-02-19T17:06:10.713' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0ac0c411-7247-4ffa-b50f-90a2901c7648', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-02-19T17:06:58.490' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'C1245005-9EA2-44B4-A623-11D421DC0743', N'57FAF4F4-9AFA-46A1-A21D-19E27EC8E35D', CAST(N'2018-04-10T15:37:10.443' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'83af0114-1f38-4280-800c-e05e36d3e4c2', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2019-03-16T13:14:55.530' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'6dbe44ed-1211-4258-b401-c9275ecebfd5', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-06-01T15:05:13.317' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'6dbe44ed-1211-4258-b401-c9275ecebfd5', N'D1707EFE-F327-4E5F-8336-795E1B310587', CAST(N'2018-06-01T15:05:13.340' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'D1707EFE-F327-4E5F-8336-795E1B310587', CAST(N'2018-06-01T15:05:41.643' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'243E8F8C-A5B9-4925-8E1A-E2778476DF9D', CAST(N'2018-06-07T17:25:27.293' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-06-25T18:10:25.827' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'D1707EFE-F327-4E5F-8336-795E1B310587', CAST(N'2018-06-25T18:10:25.870' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'E7B60E1B-4970-4074-86A0-93781AF1E49D', CAST(N'2018-07-11T17:48:35.393' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'0B044FDE-9D02-464D-9BCD-CC79B59434A3', CAST(N'2018-08-22T11:54:45.433' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'D9B4F4FE-560B-40C7-8E6C-3917B3345873', CAST(N'2018-09-05T15:04:39.160' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'391DE1D2-EDFA-4201-9359-EF54426A8DB5', CAST(N'2018-09-25T16:29:07.473' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'925e0041-3874-4370-bca1-5853d5f7b903', N'391DE1D2-EDFA-4201-9359-EF54426A8DB5', CAST(N'2018-09-25T16:29:36.420' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-10-09T16:49:45.627' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'c94717cb-19bb-40be-90ab-dd09d0add708', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-10-09T16:51:39.137' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CBDDF53F-2497-47AB-9984-558C46091A2F', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-10-09T16:53:09.300' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'E7B60E1B-4970-4074-86A0-93781AF1E49D', CAST(N'2018-10-10T11:34:33.727' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CBDDF53F-2497-47AB-9984-558C46091A2F', N'E7B60E1B-4970-4074-86A0-93781AF1E49D', CAST(N'2018-10-10T11:37:30.180' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'c94717cb-19bb-40be-90ab-dd09d0add708', N'E7B60E1B-4970-4074-86A0-93781AF1E49D', CAST(N'2018-10-10T11:45:00.213' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'FBC7ECCC-88F3-43D8-8EC2-5495C8A1C014', CAST(N'2018-10-25T10:56:44.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'FBC7ECCC-88F3-43D8-8EC2-5495C8A1C014', CAST(N'2018-10-25T11:55:39.107' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'391DE1D2-EDFA-4201-9359-EF54426A8DB5', CAST(N'2018-11-16T11:04:49.583' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a0c3ac0-07ca-4917-8f1d-e886f9b81ed3', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2019-02-18T15:48:08.857' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'16AC88BA-606D-4CB7-BDA3-2B2D80C9BA5E', CAST(N'2019-02-20T15:49:57.890' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'f6b6d105-1280-4466-9462-3c39843f8507', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2019-03-29T17:02:19.807' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'6EEF06CF-2BBE-48E4-BE13-3E1ED74C2077', CAST(N'2019-04-11T18:22:24.567' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'B8A946E3-3F96-47D6-94D5-4AD976459C4E', CAST(N'2019-04-11T18:22:57.187' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'8447485b-aba1-4669-bbdd-06a706b30fca', N'5EE44BC2-EADA-4FFC-B8D6-E57D2B750849', CAST(N'2019-05-09T10:42:46.983' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'6EEF06CF-2BBE-48E4-BE13-3E1ED74C2077', CAST(N'2019-05-23T14:51:15.590' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'B8A946E3-3F96-47D6-94D5-4AD976459C4E', CAST(N'2019-05-23T14:51:15.603' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'CAAA8D27-BBEA-41BC-9173-B7F89907BC85', CAST(N'2019-05-23T14:51:15.613' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'EE26192C-2E9E-4DD2-925C-FE1EAB96324B', CAST(N'2019-05-23T14:51:15.620' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'238BD88A-7635-4DB4-B62E-FC5E91FBC96D', CAST(N'2019-05-28T14:47:42.320' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'6EEF06CF-2BBE-48E4-BE13-3E1ED74C2077', CAST(N'2019-05-28T14:47:42.330' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'B8A946E3-3F96-47D6-94D5-4AD976459C4E', CAST(N'2019-05-28T14:47:42.337' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'CAAA8D27-BBEA-41BC-9173-B7F89907BC85', CAST(N'2019-05-28T14:47:42.357' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'49B5FA70-F52D-4996-8CE4-8D92FF5AAD49', N'243E8F8C-A5B9-4925-8E1A-E2778476DF9D', CAST(N'2017-08-28T17:06:24.243' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'49B5FA70-F52D-4996-8CE4-8D92FF5AAD49', N'73D008CB-A35B-46A6-8E38-DDC4CA563541', CAST(N'2017-08-28T17:06:24.250' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:50:16.953' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'b174cd03-ba40-42b4-8b07-e3b8e9565a5d', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2017-11-10T12:50:36.850' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-02-19T17:06:39.333' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'6FB0A10D-82E0-40BD-8CED-F81C1A91C39F', N'AE939F06-00AE-4910-9574-159DB2570234', CAST(N'2018-02-19T17:09:25.313' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5065c6aa-2b0a-4ed1-94c9-effa5f1a7e14', N'7068E767-28B6-46ED-8FC1-1BDA07739CB8', CAST(N'2019-04-09T17:04:34.293' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a0c3ac0-07ca-4917-8f1d-e886f9b81ed3', N'B8A946E3-3F96-47D6-94D5-4AD976459C4E', CAST(N'2019-05-29T16:31:23.367' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'EE26192C-2E9E-4DD2-925C-FE1EAB96324B', CAST(N'2019-05-28T14:47:42.370' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'5807191B-F331-4771-9540-ABB52702E442', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2019-06-26T15:14:44.423' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a471a93-7c92-48a1-9886-bd6d6a7a46dc', N'B8A946E3-3F96-47D6-94D5-4AD976459C4E', CAST(N'2019-04-25T17:10:06.140' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'374D5817-90FA-43CB-BDAA-B23CD5CC5560', CAST(N'2018-08-28T10:34:01.810' AS DateTime), NULL)
GO
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a471a93-7c92-48a1-9886-bd6d6a7a46dc', N'CAAA8D27-BBEA-41BC-9173-B7F89907BC85', CAST(N'2019-04-25T17:10:06.210' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2018-02-16T16:57:27.940' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'2D0CDF2F-0944-46BD-AD33-8D141BA65576', CAST(N'2019-05-16T19:10:10.763' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'C8859559-9483-4DE2-9140-FC9368F8303B', CAST(N'2019-05-16T19:11:05.423' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2018-06-07T17:27:08.223' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'f6b6d105-1280-4466-9462-3c39843f8507', N'391DE1D2-EDFA-4201-9359-EF54426A8DB5', CAST(N'2019-03-07T16:34:29.873' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'f6b6d105-1280-4466-9462-3c39843f8507', N'7068E767-28B6-46ED-8FC1-1BDA07739CB8', CAST(N'2019-04-11T18:00:32.417' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'0a0c3ac0-07ca-4917-8f1d-e886f9b81ed3', N'5EE44BC2-EADA-4FFC-B8D6-E57D2B750849', CAST(N'2019-05-09T10:15:38.197' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'1A77C43F-5AED-47C1-8553-4E3AEC0180CC', CAST(N'2019-05-16T19:09:38.050' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'5EE44BC2-EADA-4FFC-B8D6-E57D2B750849', CAST(N'2019-05-16T19:10:40.570' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'CBDDF53F-2497-47AB-9984-558C46091A2F', N'27140DC6-2ADC-4899-B527-51662A7ACAF3', CAST(N'2018-10-09T16:52:53.350' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'6dbe44ed-1211-4258-b401-c9275ecebfd5', N'E7B60E1B-4970-4074-86A0-93781AF1E49D', CAST(N'2018-10-10T11:45:46.023' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'cd7276ef-04c0-44c9-a130-9f4c73f7b6fd', N'2D0CDF2F-0944-46BD-AD33-8D141BA65576', CAST(N'2019-05-08T15:28:31.800' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'cd7276ef-04c0-44c9-a130-9f4c73f7b6fd', N'5EE44BC2-EADA-4FFC-B8D6-E57D2B750849', CAST(N'2019-05-08T15:28:31.813' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'cd7276ef-04c0-44c9-a130-9f4c73f7b6fd', N'C8859559-9483-4DE2-9140-FC9368F8303B', CAST(N'2019-05-08T15:28:31.820' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'FBC7ECCC-88F3-43D8-8EC2-5495C8A1C014', CAST(N'2019-05-15T16:00:52.640' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'd9b6a33d-194e-4379-b651-87c31f65971f', N'5EE44BC2-EADA-4FFC-B8D6-E57D2B750849', CAST(N'2019-05-08T17:31:37.287' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'615d17f5-08ab-4c79-be12-26ad6ea27939', N'7068E767-28B6-46ED-8FC1-1BDA07739CB8', CAST(N'2019-04-15T16:11:25.050' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'E469C25B-7BEF-40DD-AA4C-DA6944D83E57', CAST(N'2019-04-16T16:25:22.477' AS DateTime), NULL)
INSERT [dbo].[tb_core_usersgroup] ([IdUser], [IdGroup], [dt_created], [dt_updated]) VALUES (N'121656ed-068b-43ee-997a-3f2f33647137', N'238BD88A-7635-4DB4-B62E-FC5E91FBC96D', CAST(N'2019-05-23T14:34:20.820' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_core_webclass] ON 

INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (1, N'default', N'Predeterminado', CAST(N'2016-06-29T12:39:15.473' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (2, N'primary', N'Primario', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (3, N'info', N'Información', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (4, N'success', N'Exitoso', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (5, N'danger', N'Error', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (6, N'warning', N'Advertencia', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (7, N'sky', N'Cielo', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (8, N'blueberry', N'Arándano', CAST(N'2016-06-29T12:39:15.480' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (9, N'yellow', N'Amarillo', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (10, N'darkorange', N'Naranja Oscuro', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (11, N'magenta', N'Magenta', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (12, N'purple', N'Púrpura', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (13, N'maroon', N'Marrón', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (14, N'darkpink', N'Rosa Oscuro', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (15, N'pink', N'Rosa', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (16, N'azure', N'Celeste', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webclass] ([Id], [WebClass], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (17, N'orange', N'Naranja', CAST(N'2016-06-29T12:39:15.483' AS DateTime), N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_core_webclass] OFF
SET IDENTITY_INSERT [dbo].[tb_core_webicon] ON 

INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (1, N'fa fa-bed', N'bed', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (2, N'fa fa-buysellads', N'buysellads', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (3, N'fa fa-cart-arrow-down', N'cart-arrow-down', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (4, N'fa fa-cart-plus', N'cart-plus', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (5, N'fa fa-connectdevelop', N'connectdevelop', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (6, N'fa fa-dashcube', N'dashcube', CAST(N'2016-06-29T12:39:15.040' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (7, N'fa fa-diamond', N'diamond', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (8, N'fa fa-facebook-official', N'facebook-official', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (9, N'fa fa-forumbee', N'forumbee', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (10, N'fa fa-heartbeat', N'heartbeat', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (11, N'fa fa-hotel', N'hotel', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (12, N'fa fa-leanpub', N'leanpub', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (13, N'fa fa-mars', N'mars', CAST(N'2016-06-29T12:39:15.043' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (14, N'fa fa-mars-double', N'mars-double', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (15, N'fa fa-mars-stroke', N'mars-stroke', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (16, N'fa fa-mars-stroke-h', N'mars-stroke-h', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (17, N'fa fa-mars-stroke-v', N'mars-stroke-v', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (18, N'fa fa-medium', N'medium', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (19, N'fa fa-mercury', N'mercury', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (20, N'fa fa-motorcycle', N'motorcycle', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (21, N'fa fa-neuter', N'neuter', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (22, N'fa fa-pinterest-p', N'pinterest-p', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (23, N'fa fa-sellsy', N'sellsy', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (24, N'fa fa-server', N'server', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (25, N'fa fa-ship', N'ship', CAST(N'2016-06-29T12:39:15.047' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (26, N'fa fa-shirtsinbulk', N'shirtsinbulk', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (27, N'fa fa-simplybuilt', N'simplybuilt', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (28, N'fa fa-skyatlas', N'skyatlas', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (29, N'fa fa-street-view', N'street-view', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (30, N'fa fa-subway', N'subway', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (31, N'fa fa-train', N'train', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (32, N'fa fa-transgender', N'transgender', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (33, N'fa fa-transgender-alt', N'transgender-alt', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (34, N'fa fa-user-plus', N'user-plus', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (35, N'fa fa-user-secret', N'user-secret', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (36, N'fa fa-user-times', N'user-times', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (37, N'fa fa-venus', N'venus', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (38, N'fa fa-venus-double', N'venus-double', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (39, N'fa fa-venus-mars', N'venus-mars', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (40, N'fa fa-viacoin', N'viacoin', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (41, N'fa fa-whatsapp', N'whatsapp', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (42, N'fa fa-adjust', N'adjust', CAST(N'2016-06-29T12:39:15.050' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (43, N'fa fa-anchor', N'anchor', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (44, N'fa fa-archive', N'archive', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (45, N'fa fa-area-chart', N'area-chart', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (46, N'fa fa-arrows', N'arrows', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (47, N'fa fa-arrows-h', N'arrows-h', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (48, N'fa fa-arrows-v', N'arrows-v', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (49, N'fa fa-asterisk', N'asterisk', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (50, N'fa fa-at', N'at', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (51, N'fa fa-automobile', N'automobile', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (52, N'fa fa-ban', N'ban', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (53, N'fa fa-bank', N'bank', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (54, N'fa fa-bar-chart', N'bar-chart', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (55, N'fa fa-bar-chart-o', N'bar-chart-o', CAST(N'2016-06-29T12:39:15.053' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (56, N'fa fa-barcode', N'barcode', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (57, N'fa fa-bars', N'bars', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (58, N'fa fa-bed', N'bed', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (59, N'fa fa-beer', N'beer', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (60, N'fa fa-bell', N'bell', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (61, N'fa fa-bell-o', N'bell-o', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (62, N'fa fa-bell-slash', N'bell-slash', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (63, N'fa fa-bell-slash-o', N'bell-slash-o', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (64, N'fa fa-bicycle', N'bicycle', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (65, N'fa fa-binoculars', N'binoculars', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (66, N'fa fa-birthday-cake', N'birthday-cake', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (67, N'fa fa-bolt', N'bolt', CAST(N'2016-06-29T12:39:15.057' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (68, N'fa fa-bomb', N'bomb', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (69, N'fa fa-book', N'book', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (70, N'fa fa-bookmark', N'bookmark', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (71, N'fa fa-bookmark-o', N'bookmark-o', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (72, N'fa fa-briefcase', N'briefcase', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (73, N'fa fa-bug', N'bug', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (74, N'fa fa-building', N'building', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (75, N'fa fa-building-o', N'building-o', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (76, N'fa fa-bullhorn', N'bullhorn', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (77, N'fa fa-bullseye', N'bullseye', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (78, N'fa fa-bus', N'bus', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (79, N'fa fa-cab', N'cab', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (80, N'fa fa-calculator', N'calculator', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (81, N'fa fa-calendar', N'calendar', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (82, N'fa fa-calendar-o', N'calendar-o', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (83, N'fa fa-camera', N'camera', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (84, N'fa fa-camera-retro', N'camera-retro', CAST(N'2016-06-29T12:39:15.060' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (85, N'fa fa-car', N'car', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (86, N'fa fa-caret-square-o-down', N'caret-square-o-down', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (87, N'fa fa-caret-square-o-left', N'caret-square-o-left', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (88, N'fa fa-caret-square-o-right', N'caret-square-o-right', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (89, N'fa fa-caret-square-o-up', N'caret-square-o-up', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (90, N'fa fa-cart-arrow-down', N'cart-arrow-down', CAST(N'2016-06-29T12:39:15.063' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (91, N'fa fa-cart-plus', N'cart-plus', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (92, N'fa fa-cc', N'cc', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (93, N'fa fa-certificate', N'certificate', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (94, N'fa fa-check', N'check', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (95, N'fa fa-check-circle', N'check-circle', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (96, N'fa fa-check-circle-o', N'check-circle-o', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (97, N'fa fa-check-square', N'check-square', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (98, N'fa fa-check-square-o', N'check-square-o', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (99, N'fa fa-child', N'child', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (100, N'fa fa-circle', N'circle', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (101, N'fa fa-circle-o', N'circle-o', CAST(N'2016-06-29T12:39:15.067' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (102, N'fa fa-circle-o-notch', N'circle-o-notch', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (103, N'fa fa-circle-thin', N'circle-thin', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (104, N'fa fa-clock-o', N'clock-o', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (105, N'fa fa-close', N'close', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (106, N'fa fa-cloud', N'cloud', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (107, N'fa fa-cloud-download', N'cloud-download', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (108, N'fa fa-cloud-upload', N'cloud-upload', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (109, N'fa fa-code', N'code', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (110, N'fa fa-code-fork', N'code-fork', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (111, N'fa fa-coffee', N'coffee', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (112, N'fa fa-cog', N'cog', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (113, N'fa fa-cogs', N'cogs', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (114, N'fa fa-comment', N'comment', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (115, N'fa fa-comment-o', N'comment-o', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (116, N'fa fa-comments', N'comments', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (117, N'fa fa-comments-o', N'comments-o', CAST(N'2016-06-29T12:39:15.070' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (118, N'fa fa-compass', N'compass', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (119, N'fa fa-copyright', N'copyright', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (120, N'fa fa-credit-card', N'credit-card', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (121, N'fa fa-crop', N'crop', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (122, N'fa fa-crosshairs', N'crosshairs', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (123, N'fa fa-cube', N'cube', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (124, N'fa fa-cubes', N'cubes', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (125, N'fa fa-cutlery', N'cutlery', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (126, N'fa fa-dashboard', N'dashboard', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (127, N'fa fa-database', N'database', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (128, N'fa fa-desktop', N'desktop', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (129, N'fa fa-diamond', N'diamond', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (130, N'fa fa-dot-circle-o', N'dot-circle-o', CAST(N'2016-06-29T12:39:15.073' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (131, N'fa fa-download', N'download', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (132, N'fa fa-edit', N'edit', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (133, N'fa fa-ellipsis-h', N'ellipsis-h', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (134, N'fa fa-ellipsis-v', N'ellipsis-v', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (135, N'fa fa-envelope', N'envelope', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (136, N'fa fa-envelope-o', N'envelope-o', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (137, N'fa fa-envelope-square', N'envelope-square', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (138, N'fa fa-eraser', N'eraser', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (139, N'fa fa-exchange', N'exchange', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (140, N'fa fa-exclamation', N'exclamation', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (141, N'fa fa-exclamation-circle', N'exclamation-circle', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (142, N'fa fa-exclamation-triangle', N'exclamation-triangle', CAST(N'2016-06-29T12:39:15.077' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (143, N'fa fa-external-link', N'external-link', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (144, N'fa fa-external-link-square', N'external-link-square', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (145, N'fa fa-eye', N'eye', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (146, N'fa fa-eye-slash', N'eye-slash', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (147, N'fa fa-eyedropper', N'eyedropper', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (148, N'fa fa-fax', N'fax', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (149, N'fa fa-female', N'female', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (150, N'fa fa-fighter-jet', N'fighter-jet', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (151, N'fa fa-file-archive-o', N'file-archive-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (152, N'fa fa-file-audio-o', N'file-audio-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (153, N'fa fa-file-code-o', N'file-code-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (154, N'fa fa-file-excel-o', N'file-excel-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (155, N'fa fa-file-image-o', N'file-image-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (156, N'fa fa-file-movie-o', N'file-movie-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (157, N'fa fa-file-pdf-o', N'file-pdf-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (158, N'fa fa-file-photo-o', N'file-photo-o', CAST(N'2016-06-29T12:39:15.080' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (159, N'fa fa-file-picture-o', N'file-picture-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (160, N'fa fa-file-powerpoint-o', N'file-powerpoint-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (161, N'fa fa-file-sound-o', N'file-sound-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (162, N'fa fa-file-video-o', N'file-video-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (163, N'fa fa-file-word-o', N'file-word-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (164, N'fa fa-file-zip-o', N'file-zip-o', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (165, N'fa fa-film', N'film', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (166, N'fa fa-filter', N'filter', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (167, N'fa fa-fire', N'fire', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (168, N'fa fa-fire-extinguisher', N'fire-extinguisher', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (169, N'fa fa-flag', N'flag', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (170, N'fa fa-flag-checkered', N'flag-checkered', CAST(N'2016-06-29T12:39:15.083' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (171, N'fa fa-flag-o', N'flag-o', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (172, N'fa fa-flash', N'flash', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (173, N'fa fa-flask', N'flask', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (174, N'fa fa-folder', N'folder', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (175, N'fa fa-folder-o', N'folder-o', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (176, N'fa fa-folder-open', N'folder-open', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (177, N'fa fa-folder-open-o', N'folder-open-o', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (178, N'fa fa-frown-o', N'frown-o', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (179, N'fa fa-futbol-o', N'futbol-o', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (180, N'fa fa-gamepad', N'gamepad', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (181, N'fa fa-gavel', N'gavel', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (182, N'fa fa-gear', N'gear', CAST(N'2016-06-29T12:39:15.087' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (183, N'fa fa-gears', N'gears', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (184, N'fa fa-genderless', N'genderless', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (185, N'fa fa-gift', N'gift', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (186, N'fa fa-glass', N'glass', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (187, N'fa fa-globe', N'globe', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (188, N'fa fa-graduation-cap', N'graduation-cap', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (189, N'fa fa-group', N'group', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (190, N'fa fa-hdd-o', N'hdd-o', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (191, N'fa fa-headphones', N'headphones', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (192, N'fa fa-heart', N'heart', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (193, N'fa fa-heart-o', N'heart-o', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (194, N'fa fa-heartbeat', N'heartbeat', CAST(N'2016-06-29T12:39:15.090' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (195, N'fa fa-history', N'history', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (196, N'fa fa-home', N'home', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (197, N'fa fa-hotel', N'hotel', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (198, N'fa fa-image', N'image', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (199, N'fa fa-inbox', N'inbox', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (200, N'fa fa-info', N'info', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (201, N'fa fa-info-circle', N'info-circle', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (202, N'fa fa-institution', N'institution', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (203, N'fa fa-key', N'key', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (204, N'fa fa-keyboard-o', N'keyboard-o', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (205, N'fa fa-language', N'language', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (206, N'fa fa-laptop', N'laptop', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (207, N'fa fa-leaf', N'leaf', CAST(N'2016-06-29T12:39:15.093' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (208, N'fa fa-legal', N'legal', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (209, N'fa fa-lemon-o', N'lemon-o', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (210, N'fa fa-level-down', N'level-down', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (211, N'fa fa-level-up', N'level-up', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (212, N'fa fa-life-bouy', N'life-bouy', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (213, N'fa fa-life-buoy', N'life-buoy', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (214, N'fa fa-life-ring', N'life-ring', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (215, N'fa fa-life-saver', N'life-saver', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (216, N'fa fa-lightbulb-o', N'lightbulb-o', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (217, N'fa fa-line-chart', N'line-chart', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (218, N'fa fa-location-arrow', N'location-arrow', CAST(N'2016-06-29T12:39:15.097' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (219, N'fa fa-lock', N'lock', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (220, N'fa fa-magic', N'magic', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (221, N'fa fa-magnet', N'magnet', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (222, N'fa fa-mail-forward', N'mail-forward', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (223, N'fa fa-mail-reply', N'mail-reply', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (224, N'fa fa-mail-reply-all', N'mail-reply-all', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (225, N'fa fa-male', N'male', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (226, N'fa fa-map-marker', N'map-marker', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (227, N'fa fa-meh-o', N'meh-o', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (228, N'fa fa-microphone', N'microphone', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (229, N'fa fa-microphone-slash', N'microphone-slash', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (230, N'fa fa-minus', N'minus', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (231, N'fa fa-minus-circle', N'minus-circle', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (232, N'fa fa-minus-square', N'minus-square', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (233, N'fa fa-minus-square-o', N'minus-square-o', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (234, N'fa fa-mobile', N'mobile', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (235, N'fa fa-mobile-phone', N'mobile-phone', CAST(N'2016-06-29T12:39:15.100' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (236, N'fa fa-money', N'money', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (237, N'fa fa-moon-o', N'moon-o', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (238, N'fa fa-mortar-board', N'mortar-board', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (239, N'fa fa-motorcycle', N'motorcycle', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (240, N'fa fa-music', N'music', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (241, N'fa fa-navicon', N'navicon', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (242, N'fa fa-newspaper-o', N'newspaper-o', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (243, N'fa fa-paint-brush', N'paint-brush', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (244, N'fa fa-paper-plane', N'paper-plane', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (245, N'fa fa-paper-plane-o', N'paper-plane-o', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (246, N'fa fa-paw', N'paw', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (247, N'fa fa-pencil', N'pencil', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (248, N'fa fa-pencil-square', N'pencil-square', CAST(N'2016-06-29T12:39:15.103' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (249, N'fa fa-pencil-square-o', N'pencil-square-o', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (250, N'fa fa-phone', N'phone', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (251, N'fa fa-phone-square', N'phone-square', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (252, N'fa fa-photo', N'photo', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (253, N'fa fa-picture-o', N'picture-o', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (254, N'fa fa-pie-chart', N'pie-chart', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (255, N'fa fa-plane', N'plane', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (256, N'fa fa-plug', N'plug', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (257, N'fa fa-plus', N'plus', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (258, N'fa fa-plus-circle', N'plus-circle', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (259, N'fa fa-plus-square', N'plus-square', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (260, N'fa fa-plus-square-o', N'plus-square-o', CAST(N'2016-06-29T12:39:15.107' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (261, N'fa fa-power-off', N'power-off', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (262, N'fa fa-print', N'print', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (263, N'fa fa-puzzle-piece', N'puzzle-piece', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (264, N'fa fa-qrcode', N'qrcode', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (265, N'fa fa-question', N'question', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (266, N'fa fa-question-circle', N'question-circle', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (267, N'fa fa-quote-left', N'quote-left', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (268, N'fa fa-quote-right', N'quote-right', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (269, N'fa fa-random', N'random', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (270, N'fa fa-recycle', N'recycle', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (271, N'fa fa-refresh', N'refresh', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (272, N'fa fa-remove', N'remove', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (273, N'fa fa-reorder', N'reorder', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (274, N'fa fa-reply', N'reply', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (275, N'fa fa-reply-all', N'reply-all', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (276, N'fa fa-retweet', N'retweet', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (277, N'fa fa-road', N'road', CAST(N'2016-06-29T12:39:15.110' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (278, N'fa fa-rocket', N'rocket', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (279, N'fa fa-rss', N'rss', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (280, N'fa fa-rss-square', N'rss-square', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (281, N'fa fa-search', N'search', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (282, N'fa fa-search-minus', N'search-minus', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (283, N'fa fa-search-plus', N'search-plus', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (284, N'fa fa-send', N'send', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (285, N'fa fa-send-o', N'send-o', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (286, N'fa fa-server', N'server', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (287, N'fa fa-share', N'share', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (288, N'fa fa-share-alt', N'share-alt', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (289, N'fa fa-share-alt-square', N'share-alt-square', CAST(N'2016-06-29T12:39:15.113' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (290, N'fa fa-share-square', N'share-square', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (291, N'fa fa-share-square-o', N'share-square-o', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (292, N'fa fa-shield', N'shield', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (293, N'fa fa-ship', N'ship', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (294, N'fa fa-shopping-cart', N'shopping-cart', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (295, N'fa fa-sign-in', N'sign-in', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (296, N'fa fa-sign-out', N'sign-out', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (297, N'fa fa-signal', N'signal', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (298, N'fa fa-sitemap', N'sitemap', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (299, N'fa fa-sliders', N'sliders', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (300, N'fa fa-smile-o', N'smile-o', CAST(N'2016-06-29T12:39:15.117' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (301, N'fa fa-soccer-ball-o', N'soccer-ball-o', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (302, N'fa fa-sort', N'sort', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (303, N'fa fa-sort-alpha-asc', N'sort-alpha-asc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (304, N'fa fa-sort-alpha-desc', N'sort-alpha-desc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (305, N'fa fa-sort-amount-asc', N'sort-amount-asc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (306, N'fa fa-sort-amount-desc', N'sort-amount-desc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (307, N'fa fa-sort-asc', N'sort-asc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (308, N'fa fa-sort-desc', N'sort-desc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (309, N'fa fa-sort-down', N'sort-down', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (310, N'fa fa-sort-numeric-asc', N'sort-numeric-asc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (311, N'fa fa-sort-numeric-desc', N'sort-numeric-desc', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (312, N'fa fa-sort-up', N'sort-up', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (313, N'fa fa-space-shuttle', N'space-shuttle', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (314, N'fa fa-spinner', N'spinner', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (315, N'fa fa-spoon', N'spoon', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (316, N'fa fa-square', N'square', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (317, N'fa fa-square-o', N'square-o', CAST(N'2016-06-29T12:39:15.120' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (318, N'fa fa-star', N'star', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (319, N'fa fa-star-half', N'star-half', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (320, N'fa fa-star-half-empty', N'star-half-empty', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (321, N'fa fa-star-half-full', N'star-half-full', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (322, N'fa fa-star-half-o', N'star-half-o', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (323, N'fa fa-star-o', N'star-o', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (324, N'fa fa-street-view', N'street-view', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (325, N'fa fa-suitcase', N'suitcase', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (326, N'fa fa-sun-o', N'sun-o', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (327, N'fa fa-support', N'support', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (328, N'fa fa-tablet', N'tablet', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (329, N'fa fa-tachometer', N'tachometer', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (330, N'fa fa-tag', N'tag', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (331, N'fa fa-tags', N'tags', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (332, N'fa fa-tasks', N'tasks', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (333, N'fa fa-taxi', N'taxi', CAST(N'2016-06-29T12:39:15.123' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (334, N'fa fa-terminal', N'terminal', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (335, N'fa fa-thumb-tack', N'thumb-tack', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (336, N'fa fa-thumbs-down', N'thumbs-down', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (337, N'fa fa-thumbs-o-down', N'thumbs-o-down', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (338, N'fa fa-thumbs-o-up', N'thumbs-o-up', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (339, N'fa fa-thumbs-up', N'thumbs-up', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (340, N'fa fa-ticket', N'ticket', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (341, N'fa fa-times', N'times', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (342, N'fa fa-times-circle', N'times-circle', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (343, N'fa fa-times-circle-o', N'times-circle-o', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (344, N'fa fa-tint', N'tint', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (345, N'fa fa-toggle-down', N'toggle-down', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (346, N'fa fa-toggle-left', N'toggle-left', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (347, N'fa fa-toggle-off', N'toggle-off', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (348, N'fa fa-toggle-on', N'toggle-on', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (349, N'fa fa-toggle-right', N'toggle-right', CAST(N'2016-06-29T12:39:15.127' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (350, N'fa fa-toggle-up', N'toggle-up', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (351, N'fa fa-trash', N'trash', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (352, N'fa fa-trash-o', N'trash-o', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (353, N'fa fa-tree', N'tree', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (354, N'fa fa-trophy', N'trophy', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (355, N'fa fa-truck', N'truck', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (356, N'fa fa-tty', N'tty', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (357, N'fa fa-umbrella', N'umbrella', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (358, N'fa fa-university', N'university', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (359, N'fa fa-unlock', N'unlock', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (360, N'fa fa-unlock-alt', N'unlock-alt', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (361, N'fa fa-unsorted', N'unsorted', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (362, N'fa fa-upload', N'upload', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (363, N'fa fa-user', N'user', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (364, N'fa fa-user-plus', N'user-plus', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (365, N'fa fa-user-secret', N'user-secret', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (366, N'fa fa-user-times', N'user-times', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (367, N'fa fa-users', N'users', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (368, N'fa fa-video-camera', N'video-camera', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (369, N'fa fa-volume-down', N'volume-down', CAST(N'2016-06-29T12:39:15.130' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (370, N'fa fa-volume-off', N'volume-off', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (371, N'fa fa-volume-up', N'volume-up', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (372, N'fa fa-warning', N'warning', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (373, N'fa fa-wheelchair', N'wheelchair', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (374, N'fa fa-wifi', N'wifi', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (375, N'fa fa-wrench', N'wrench', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (376, N'fa fa-ambulance', N'ambulance', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (377, N'fa fa-automobile', N'automobile', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (378, N'fa fa-bicycle', N'bicycle', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (379, N'fa fa-bus', N'bus', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (380, N'fa fa-cab', N'cab', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (381, N'fa fa-car', N'car', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (382, N'fa fa-fighter-jet', N'fighter-jet', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (383, N'fa fa-motorcycle', N'motorcycle', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (384, N'fa fa-plane', N'plane', CAST(N'2016-06-29T12:39:15.133' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (385, N'fa fa-rocket', N'rocket', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (386, N'fa fa-ship', N'ship', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (387, N'fa fa-space-shuttle', N'space-shuttle', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (388, N'fa fa-subway', N'subway', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (389, N'fa fa-taxi', N'taxi', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (390, N'fa fa-train', N'train', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (391, N'fa fa-truck', N'truck', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (392, N'fa fa-wheelchair', N'wheelchair', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (393, N'fa fa-circle-thin', N'circle-thin', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (394, N'fa fa-genderless', N'genderless', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (395, N'fa fa-mars', N'mars', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (396, N'fa fa-mars-double', N'mars-double', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (397, N'fa fa-mars-stroke', N'mars-stroke', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (398, N'fa fa-mars-stroke-h', N'mars-stroke-h', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (399, N'fa fa-mars-stroke-v', N'mars-stroke-v', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (400, N'fa fa-mercury', N'mercury', CAST(N'2016-06-29T12:39:15.137' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (401, N'fa fa-neuter', N'neuter', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (402, N'fa fa-transgender', N'transgender', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (403, N'fa fa-transgender-alt', N'transgender-alt', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (404, N'fa fa-venus', N'venus', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (405, N'fa fa-venus-double', N'venus-double', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (406, N'fa fa-venus-mars', N'venus-mars', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (407, N'fa fa-file', N'file', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (408, N'fa fa-file-archive-o', N'file-archive-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (409, N'fa fa-file-audio-o', N'file-audio-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (410, N'fa fa-file-code-o', N'file-code-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (411, N'fa fa-file-excel-o', N'file-excel-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (412, N'fa fa-file-image-o', N'file-image-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (413, N'fa fa-file-movie-o', N'file-movie-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (414, N'fa fa-file-o', N'file-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (415, N'fa fa-file-pdf-o', N'file-pdf-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (416, N'fa fa-file-photo-o', N'file-photo-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (417, N'fa fa-file-picture-o', N'file-picture-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (418, N'fa fa-file-powerpoint-o', N'file-powerpoint-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (419, N'fa fa-file-sound-o', N'file-sound-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (420, N'fa fa-file-text', N'file-text', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (421, N'fa fa-file-text-o', N'file-text-o', CAST(N'2016-06-29T12:39:15.140' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (422, N'fa fa-file-video-o', N'file-video-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (423, N'fa fa-file-word-o', N'file-word-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (424, N'fa fa-file-zip-o', N'file-zip-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (425, N'fa fa-circle-o-notch', N'circle-o-notch', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (426, N'fa fa-cog', N'cog', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (427, N'fa fa-gear', N'gear', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (428, N'fa fa-refresh', N'refresh', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (429, N'fa fa-spinner', N'spinner', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (430, N'fa fa-check-square', N'check-square', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (431, N'fa fa-check-square-o', N'check-square-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (432, N'fa fa-circle', N'circle', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (433, N'fa fa-circle-o', N'circle-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (434, N'fa fa-dot-circle-o', N'dot-circle-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (435, N'fa fa-minus-square', N'minus-square', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (436, N'fa fa-minus-square-o', N'minus-square-o', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (437, N'fa fa-plus-square', N'plus-square', CAST(N'2016-06-29T12:39:15.143' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (438, N'fa fa-plus-square-o', N'plus-square-o', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (439, N'fa fa-square', N'square', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (440, N'fa fa-square-o', N'square-o', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (441, N'fa fa-cc-amex', N'cc-amex', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (442, N'fa fa-cc-discover', N'cc-discover', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (443, N'fa fa-cc-mastercard', N'cc-mastercard', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (444, N'fa fa-cc-paypal', N'cc-paypal', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (445, N'fa fa-cc-stripe', N'cc-stripe', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (446, N'fa fa-cc-visa', N'cc-visa', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (447, N'fa fa-credit-card', N'credit-card', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (448, N'fa fa-google-wallet', N'google-wallet', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (449, N'fa fa-paypal', N'paypal', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (450, N'fa fa-area-chart', N'area-chart', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (451, N'fa fa-bar-chart', N'bar-chart', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (452, N'fa fa-bar-chart-o', N'bar-chart-o', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (453, N'fa fa-line-chart', N'line-chart', CAST(N'2016-06-29T12:39:15.147' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (454, N'fa fa-pie-chart', N'pie-chart', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (455, N'fa fa-bitcoin', N'bitcoin', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (456, N'fa fa-btc', N'btc', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (457, N'fa fa-cny', N'cny', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (458, N'fa fa-dollar', N'dollar', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (459, N'fa fa-eur', N'eur', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (460, N'fa fa-euro', N'euro', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (461, N'fa fa-gbp', N'gbp', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (462, N'fa fa-ils', N'ils', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (463, N'fa fa-inr', N'inr', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (464, N'fa fa-jpy', N'jpy', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (465, N'fa fa-krw', N'krw', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (466, N'fa fa-money', N'money', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (467, N'fa fa-rmb', N'rmb', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (468, N'fa fa-rouble', N'rouble', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (469, N'fa fa-rub', N'rub', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (470, N'fa fa-ruble', N'ruble', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (471, N'fa fa-rupee', N'rupee', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (472, N'fa fa-shekel', N'shekel', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (473, N'fa fa-sheqel', N'sheqel', CAST(N'2016-06-29T12:39:15.150' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (474, N'fa fa-try', N'try', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (475, N'fa fa-turkish-lira', N'turkish-lira', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (476, N'fa fa-usd', N'usd', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (477, N'fa fa-won', N'won', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (478, N'fa fa-yen', N'yen', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (479, N'fa fa-align-center', N'align-center', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (480, N'fa fa-align-justify', N'align-justify', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (481, N'fa fa-align-left', N'align-left', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (482, N'fa fa-align-right', N'align-right', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (483, N'fa fa-bold', N'bold', CAST(N'2016-06-29T12:39:15.153' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (484, N'fa fa-chain', N'chain', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (485, N'fa fa-chain-broken', N'chain-broken', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (486, N'fa fa-clipboard', N'clipboard', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (487, N'fa fa-columns', N'columns', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (488, N'fa fa-copy', N'copy', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (489, N'fa fa-cut', N'cut', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (490, N'fa fa-dedent', N'dedent', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (491, N'fa fa-eraser', N'eraser', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (492, N'fa fa-file', N'file', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (493, N'fa fa-file-o', N'file-o', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (494, N'fa fa-file-text', N'file-text', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (495, N'fa fa-file-text-o', N'file-text-o', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (496, N'fa fa-files-o', N'files-o', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (497, N'fa fa-floppy-o', N'floppy-o', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (498, N'fa fa-font', N'font', CAST(N'2016-06-29T12:39:15.157' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (499, N'fa fa-header', N'header', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (500, N'fa fa-indent', N'indent', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (501, N'fa fa-italic', N'italic', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (502, N'fa fa-link', N'link', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (503, N'fa fa-list', N'list', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (504, N'fa fa-list-alt', N'list-alt', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (505, N'fa fa-list-ol', N'list-ol', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (506, N'fa fa-list-ul', N'list-ul', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (507, N'fa fa-outdent', N'outdent', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (508, N'fa fa-paperclip', N'paperclip', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (509, N'fa fa-paragraph', N'paragraph', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (510, N'fa fa-paste', N'paste', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (511, N'fa fa-repeat', N'repeat', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (512, N'fa fa-rotate-left', N'rotate-left', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (513, N'fa fa-rotate-right', N'rotate-right', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (514, N'fa fa-save', N'save', CAST(N'2016-06-29T12:39:15.160' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (515, N'fa fa-scissors', N'scissors', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (516, N'fa fa-strikethrough', N'strikethrough', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (517, N'fa fa-subscript', N'subscript', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (518, N'fa fa-superscript', N'superscript', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (519, N'fa fa-table', N'table', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (520, N'fa fa-text-height', N'text-height', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (521, N'fa fa-text-width', N'text-width', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (522, N'fa fa-th', N'th', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (523, N'fa fa-th-large', N'th-large', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (524, N'fa fa-th-list', N'th-list', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (525, N'fa fa-underline', N'underline', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (526, N'fa fa-undo', N'undo', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (527, N'fa fa-unlink', N'unlink', CAST(N'2016-06-29T12:39:15.163' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (528, N'fa fa-angle-double-down', N'angle-double-down', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (529, N'fa fa-angle-double-left', N'angle-double-left', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (530, N'fa fa-angle-double-right', N'angle-double-right', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (531, N'fa fa-angle-double-up', N'angle-double-up', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (532, N'fa fa-angle-down', N'angle-down', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (533, N'fa fa-angle-left', N'angle-left', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (534, N'fa fa-angle-right', N'angle-right', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (535, N'fa fa-angle-up', N'angle-up', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (536, N'fa fa-arrow-circle-down', N'arrow-circle-down', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (537, N'fa fa-arrow-circle-left', N'arrow-circle-left', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (538, N'fa fa-arrow-circle-o-down', N'arrow-circle-o-down', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (539, N'fa fa-arrow-circle-o-left', N'arrow-circle-o-left', CAST(N'2016-06-29T12:39:15.167' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (540, N'fa fa-arrow-circle-o-right', N'arrow-circle-o-right', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (541, N'fa fa-arrow-circle-o-up', N'arrow-circle-o-up', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (542, N'fa fa-arrow-circle-right', N'arrow-circle-right', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (543, N'fa fa-arrow-circle-up', N'arrow-circle-up', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (544, N'fa fa-arrow-down', N'arrow-down', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (545, N'fa fa-arrow-left', N'arrow-left', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (546, N'fa fa-arrow-right', N'arrow-right', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (547, N'fa fa-arrow-up', N'arrow-up', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (548, N'fa fa-arrows', N'arrows', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (549, N'fa fa-arrows-alt', N'arrows-alt', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (550, N'fa fa-arrows-h', N'arrows-h', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (551, N'fa fa-arrows-v', N'arrows-v', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (552, N'fa fa-caret-down', N'caret-down', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (553, N'fa fa-caret-left', N'caret-left', CAST(N'2016-06-29T12:39:15.170' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (554, N'fa fa-caret-right', N'caret-right', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (555, N'fa fa-caret-square-o-down', N'caret-square-o-down', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (556, N'fa fa-caret-square-o-left', N'caret-square-o-left', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (557, N'fa fa-caret-square-o-right', N'caret-square-o-right', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (558, N'fa fa-caret-square-o-up', N'caret-square-o-up', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (559, N'fa fa-caret-up', N'caret-up', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (560, N'fa fa-chevron-circle-down', N'chevron-circle-down', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (561, N'fa fa-chevron-circle-left', N'chevron-circle-left', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (562, N'fa fa-chevron-circle-right', N'chevron-circle-right', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (563, N'fa fa-chevron-circle-up', N'chevron-circle-up', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (564, N'fa fa-chevron-down', N'chevron-down', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (565, N'fa fa-chevron-left', N'chevron-left', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (566, N'fa fa-chevron-right', N'chevron-right', CAST(N'2016-06-29T12:39:15.173' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (567, N'fa fa-chevron-up', N'chevron-up', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (568, N'fa fa-hand-o-down', N'hand-o-down', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (569, N'fa fa-hand-o-left', N'hand-o-left', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (570, N'fa fa-hand-o-right', N'hand-o-right', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (571, N'fa fa-hand-o-up', N'hand-o-up', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (572, N'fa fa-long-arrow-down', N'long-arrow-down', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (573, N'fa fa-long-arrow-left', N'long-arrow-left', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (574, N'fa fa-long-arrow-right', N'long-arrow-right', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (575, N'fa fa-long-arrow-up', N'long-arrow-up', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (576, N'fa fa-toggle-down', N'toggle-down', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (577, N'fa fa-toggle-left', N'toggle-left', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (578, N'fa fa-toggle-right', N'toggle-right', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (579, N'fa fa-toggle-up', N'toggle-up', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (580, N'fa fa-arrows-alt', N'arrows-alt', CAST(N'2016-06-29T12:39:15.177' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (581, N'fa fa-backward', N'backward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (582, N'fa fa-compress', N'compress', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (583, N'fa fa-eject', N'eject', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (584, N'fa fa-expand', N'expand', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (585, N'fa fa-fast-backward', N'fast-backward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (586, N'fa fa-fast-forward', N'fast-forward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (587, N'fa fa-forward', N'forward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (588, N'fa fa-pause', N'pause', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (589, N'fa fa-play', N'play', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (590, N'fa fa-play-circle', N'play-circle', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (591, N'fa fa-play-circle-o', N'play-circle-o', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (592, N'fa fa-step-backward', N'step-backward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (593, N'fa fa-step-forward', N'step-forward', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (594, N'fa fa-stop', N'stop', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (595, N'fa fa-youtube-play', N'youtube-play', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (596, N'fa fa-adn', N'adn', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (597, N'fa fa-android', N'android', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (598, N'fa fa-angellist', N'angellist', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (599, N'fa fa-apple', N'apple', CAST(N'2016-06-29T12:39:15.180' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (600, N'fa fa-behance', N'behance', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (601, N'fa fa-behance-square', N'behance-square', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (602, N'fa fa-bitbucket', N'bitbucket', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (603, N'fa fa-bitbucket-square', N'bitbucket-square', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (604, N'fa fa-bitcoin', N'bitcoin', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (605, N'fa fa-btc', N'btc', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (606, N'fa fa-buysellads', N'buysellads', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (607, N'fa fa-cc-amex', N'cc-amex', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (608, N'fa fa-cc-discover', N'cc-discover', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (609, N'fa fa-cc-mastercard', N'cc-mastercard', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (610, N'fa fa-cc-paypal', N'cc-paypal', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (611, N'fa fa-cc-stripe', N'cc-stripe', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (612, N'fa fa-cc-visa', N'cc-visa', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (613, N'fa fa-codepen', N'codepen', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (614, N'fa fa-connectdevelop', N'connectdevelop', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (615, N'fa fa-css3', N'css3', CAST(N'2016-06-29T12:39:15.183' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (616, N'fa fa-dashcube', N'dashcube', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (617, N'fa fa-delicious', N'delicious', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (618, N'fa fa-deviantart', N'deviantart', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (619, N'fa fa-digg', N'digg', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (620, N'fa fa-dribbble', N'dribbble', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (621, N'fa fa-dropbox', N'dropbox', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (622, N'fa fa-drupal', N'drupal', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (623, N'fa fa-empire', N'empire', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (624, N'fa fa-facebook', N'facebook', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (625, N'fa fa-facebook-f', N'facebook-f', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (626, N'fa fa-facebook-official', N'facebook-official', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (627, N'fa fa-facebook-square', N'facebook-square', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (628, N'fa fa-flickr', N'flickr', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (629, N'fa fa-forumbee', N'forumbee', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (630, N'fa fa-foursquare', N'foursquare', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (631, N'fa fa-ge', N'ge', CAST(N'2016-06-29T12:39:15.187' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (632, N'fa fa-git', N'git', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (633, N'fa fa-git-square', N'git-square', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (634, N'fa fa-github', N'github', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (635, N'fa fa-github-alt', N'github-alt', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (636, N'fa fa-github-square', N'github-square', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (637, N'fa fa-gittip', N'gittip', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (638, N'fa fa-google', N'google', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (639, N'fa fa-google-plus', N'google-plus', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (640, N'fa fa-google-plus-square', N'google-plus-square', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (641, N'fa fa-google-wallet', N'google-wallet', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (642, N'fa fa-gratipay', N'gratipay', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (643, N'fa fa-hacker-news', N'hacker-news', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (644, N'fa fa-html5', N'html5', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (645, N'fa fa-instagram', N'instagram', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (646, N'fa fa-ioxhost', N'ioxhost', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (647, N'fa fa-joomla', N'joomla', CAST(N'2016-06-29T12:39:15.190' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (648, N'fa fa-jsfiddle', N'jsfiddle', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (649, N'fa fa-lastfm', N'lastfm', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (650, N'fa fa-lastfm-square', N'lastfm-square', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (651, N'fa fa-leanpub', N'leanpub', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (652, N'fa fa-linkedin', N'linkedin', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (653, N'fa fa-linkedin-square', N'linkedin-square', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (654, N'fa fa-linux', N'linux', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (655, N'fa fa-maxcdn', N'maxcdn', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (656, N'fa fa-meanpath', N'meanpath', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (657, N'fa fa-medium', N'medium', CAST(N'2016-06-29T12:39:15.193' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (658, N'fa fa-openid', N'openid', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (659, N'fa fa-pagelines', N'pagelines', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (660, N'fa fa-paypal', N'paypal', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (661, N'fa fa-pied-piper', N'pied-piper', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (662, N'fa fa-pied-piper-alt', N'pied-piper-alt', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (663, N'fa fa-pinterest', N'pinterest', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (664, N'fa fa-pinterest-p', N'pinterest-p', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (665, N'fa fa-pinterest-square', N'pinterest-square', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (666, N'fa fa-qq', N'qq', CAST(N'2016-06-29T12:39:15.197' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (667, N'fa fa-ra', N'ra', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (668, N'fa fa-rebel', N'rebel', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (669, N'fa fa-reddit', N'reddit', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (670, N'fa fa-reddit-square', N'reddit-square', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (671, N'fa fa-renren', N'renren', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (672, N'fa fa-sellsy', N'sellsy', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (673, N'fa fa-share-alt', N'share-alt', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (674, N'fa fa-share-alt-square', N'share-alt-square', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (675, N'fa fa-shirtsinbulk', N'shirtsinbulk', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (676, N'fa fa-simplybuilt', N'simplybuilt', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (677, N'fa fa-skyatlas', N'skyatlas', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (678, N'fa fa-skype', N'skype', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (679, N'fa fa-slack', N'slack', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (680, N'fa fa-slideshare', N'slideshare', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (681, N'fa fa-soundcloud', N'soundcloud', CAST(N'2016-06-29T12:39:15.200' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (682, N'fa fa-spotify', N'spotify', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (683, N'fa fa-stack-exchange', N'stack-exchange', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (684, N'fa fa-stack-overflow', N'stack-overflow', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (685, N'fa fa-steam', N'steam', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (686, N'fa fa-steam-square', N'steam-square', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (687, N'fa fa-stumbleupon', N'stumbleupon', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (688, N'fa fa-stumbleupon-circle', N'stumbleupon-circle', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (689, N'fa fa-tencent-weibo', N'tencent-weibo', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (690, N'fa fa-trello', N'trello', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (691, N'fa fa-tumblr', N'tumblr', CAST(N'2016-06-29T12:39:15.203' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (692, N'fa fa-tumblr-square', N'tumblr-square', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (693, N'fa fa-twitch', N'twitch', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (694, N'fa fa-twitter', N'twitter', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (695, N'fa fa-twitter-square', N'twitter-square', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (696, N'fa fa-viacoin', N'viacoin', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (697, N'fa fa-vimeo-square', N'vimeo-square', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (698, N'fa fa-vine', N'vine', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (699, N'fa fa-vk', N'vk', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (700, N'fa fa-wechat', N'wechat', CAST(N'2016-06-29T12:39:15.207' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (701, N'fa fa-weibo', N'weibo', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (702, N'fa fa-weixin', N'weixin', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (703, N'fa fa-whatsapp', N'whatsapp', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (704, N'fa fa-windows', N'windows', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (705, N'fa fa-wordpress', N'wordpress', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (706, N'fa fa-xing', N'xing', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (707, N'fa fa-xing-square', N'xing-square', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (708, N'fa fa-yahoo', N'yahoo', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (709, N'fa fa-yelp', N'yelp', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (710, N'fa fa-youtube', N'youtube', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (711, N'fa fa-youtube-play', N'youtube-play', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (712, N'fa fa-youtube-square', N'youtube-square', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (713, N'fa fa-ambulance', N'ambulance', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (714, N'fa fa-h-square', N'h-square', CAST(N'2016-06-29T12:39:15.210' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (715, N'fa fa-heart', N'heart', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (716, N'fa fa-heart-o', N'heart-o', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (717, N'fa fa-heartbeat', N'heartbeat', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (718, N'fa fa-hospital-o', N'hospital-o', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (719, N'fa fa-medkit', N'medkit', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (720, N'fa fa-plus-square', N'plus-square', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (721, N'fa fa-stethoscope', N'stethoscope', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (722, N'fa fa-user-md', N'user-md', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (723, N'fa fa-wheelchair', N'wheelchair', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (724, N'glyphicon glyphicon-asterisk', N'th-large', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (725, N'glyphicon glyphicon-plus', N'th', CAST(N'2016-06-29T12:39:15.213' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (726, N'glyphicon glyphicon-euro', N'th-list', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (727, N'glyphicon glyphicon-minus', N'ok', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (728, N'glyphicon glyphicon-cloud', N'remove', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (729, N'glyphicon glyphicon-envelope', N'zoom-in', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (730, N'glyphicon glyphicon-pencil', N'zoom-out', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (731, N'glyphicon glyphicon-glass', N'off', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (732, N'glyphicon glyphicon-music', N'signal', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (733, N'glyphicon glyphicon-search', N'cog', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (734, N'glyphicon glyphicon-heart', N'trash', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (735, N'glyphicon glyphicon-star', N'home', CAST(N'2016-06-29T12:39:15.217' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (736, N'glyphicon glyphicon-star-empty', N'file', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (737, N'glyphicon glyphicon-user', N'time', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (738, N'glyphicon glyphicon-film', N'road', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (739, N'glyphicon glyphicon-th-large', N'download-alt', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (740, N'glyphicon glyphicon-th', N'download', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (741, N'glyphicon glyphicon-th-list', N'upload', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (742, N'glyphicon glyphicon-ok', N'inbox', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (743, N'glyphicon glyphicon-remove', N'play-circle', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (744, N'glyphicon glyphicon-zoom-in', N'repeat', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (745, N'glyphicon glyphicon-zoom-out', N'refresh', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (746, N'glyphicon glyphicon-off', N'list-alt', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (747, N'glyphicon glyphicon-signal', N'lock', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (748, N'glyphicon glyphicon-cog', N'flag', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (749, N'glyphicon glyphicon-trash', N'headphones', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (750, N'glyphicon glyphicon-home', N'volume-off', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (751, N'glyphicon glyphicon-file', N'volume-down', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (752, N'glyphicon glyphicon-time', N'volume-up', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (753, N'glyphicon glyphicon-road', N'qrcode', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (754, N'glyphicon glyphicon-download-alt', N'barcode', CAST(N'2016-06-29T12:39:15.220' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (755, N'glyphicon glyphicon-download', N'tag', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (756, N'glyphicon glyphicon-upload', N'tags', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (757, N'glyphicon glyphicon-inbox', N'book', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (758, N'glyphicon glyphicon-play-circle', N'bookmark', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (759, N'glyphicon glyphicon-repeat', N'print', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (760, N'glyphicon glyphicon-refresh', N'camera', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (761, N'glyphicon glyphicon-list-alt', N'font', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (762, N'glyphicon glyphicon-lock', N'bold', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (763, N'glyphicon glyphicon-flag', N'italic', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (764, N'glyphicon glyphicon-headphones', N'text-height', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (765, N'glyphicon glyphicon-volume-off', N'text-width', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (766, N'glyphicon glyphicon-volume-down', N'align-left', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (767, N'glyphicon glyphicon-volume-up', N'align-center', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (768, N'glyphicon glyphicon-qrcode', N'align-right', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (769, N'glyphicon glyphicon-barcode', N'align-justify', CAST(N'2016-06-29T12:39:15.223' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (770, N'glyphicon glyphicon-tag', N'list', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (771, N'glyphicon glyphicon-tags', N'indent-left', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (772, N'glyphicon glyphicon-book', N'indent-right', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (773, N'glyphicon glyphicon-bookmark', N'facetime-video', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (774, N'glyphicon glyphicon-print', N'picture', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (775, N'glyphicon glyphicon-camera', N'map-marker', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (776, N'glyphicon glyphicon-font', N'adjust', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (777, N'glyphicon glyphicon-bold', N'tint', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (778, N'glyphicon glyphicon-italic', N'edit', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (779, N'glyphicon glyphicon-text-height', N'share', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (780, N'glyphicon glyphicon-text-width', N'check', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (781, N'glyphicon glyphicon-align-left', N'move', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (782, N'glyphicon glyphicon-align-center', N'step-backward', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (783, N'glyphicon glyphicon-align-right', N'fast-backward', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (784, N'glyphicon glyphicon-align-justify', N'backward', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (785, N'glyphicon glyphicon-list', N'play', CAST(N'2016-06-29T12:39:15.227' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (786, N'glyphicon glyphicon-indent-left', N'pause', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (787, N'glyphicon glyphicon-indent-right', N'stop', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (788, N'glyphicon glyphicon-facetime-video', N'forward', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (789, N'glyphicon glyphicon-picture', N'fast-forward', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (790, N'glyphicon glyphicon-map-marker', N'step-forward', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (791, N'glyphicon glyphicon-adjust', N'eject', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (792, N'glyphicon glyphicon-tint', N'chevron-left', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (793, N'glyphicon glyphicon-edit', N'chevron-right', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (794, N'glyphicon glyphicon-share', N'plus-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (795, N'glyphicon glyphicon-check', N'minus-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (796, N'glyphicon glyphicon-move', N'remove-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (797, N'glyphicon glyphicon-step-backward', N'ok-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (798, N'glyphicon glyphicon-fast-backward', N'question-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (799, N'glyphicon glyphicon-backward', N'info-sign', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (800, N'glyphicon glyphicon-play', N'screenshot', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (801, N'glyphicon glyphicon-pause', N'remove-circle', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (802, N'glyphicon glyphicon-stop', N'ok-circle', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (803, N'glyphicon glyphicon-forward', N'ban-circle', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (804, N'glyphicon glyphicon-fast-forward', N'arrow-left', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (805, N'glyphicon glyphicon-step-forward', N'arrow-right', CAST(N'2016-06-29T12:39:15.230' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (806, N'glyphicon glyphicon-eject', N'arrow-up', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (807, N'glyphicon glyphicon-chevron-left', N'arrow-down', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (808, N'glyphicon glyphicon-chevron-right', N'share-alt', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (809, N'glyphicon glyphicon-plus-sign', N'resize-full', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (810, N'glyphicon glyphicon-minus-sign', N'resize-small', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (811, N'glyphicon glyphicon-remove-sign', N'exclamation-sign', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (812, N'glyphicon glyphicon-ok-sign', N'gift', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (813, N'glyphicon glyphicon-question-sign', N'leaf', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (814, N'glyphicon glyphicon-info-sign', N'fire', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (815, N'glyphicon glyphicon-screenshot', N'eye-open', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (816, N'glyphicon glyphicon-remove-circle', N'eye-close', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (817, N'glyphicon glyphicon-ok-circle', N'warning-sign', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (818, N'glyphicon glyphicon-ban-circle', N'plane', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (819, N'glyphicon glyphicon-arrow-left', N'calendar', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (820, N'glyphicon glyphicon-arrow-right', N'random', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (821, N'glyphicon glyphicon-arrow-up', N'comment', CAST(N'2016-06-29T12:39:15.233' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (822, N'glyphicon glyphicon-arrow-down', N'magnet', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (823, N'glyphicon glyphicon-share-alt', N'chevron-up', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (824, N'glyphicon glyphicon-resize-full', N'chevron-down', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (825, N'glyphicon glyphicon-resize-small', N'retweet', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (826, N'glyphicon glyphicon-exclamation-sign', N'shopping-cart', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (827, N'glyphicon glyphicon-gift', N'folder-close', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (828, N'glyphicon glyphicon-leaf', N'folder-open', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (829, N'glyphicon glyphicon-fire', N'resize-vertical', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (830, N'glyphicon glyphicon-eye-open', N'resize-horizontal', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (831, N'glyphicon glyphicon-eye-close', N'hdd', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (832, N'glyphicon glyphicon-warning-sign', N'bullhorn', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (833, N'glyphicon glyphicon-plane', N'bell', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (834, N'glyphicon glyphicon-calendar', N'certificate', CAST(N'2016-06-29T12:39:15.237' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (835, N'glyphicon glyphicon-random', N'thumbs-up', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (836, N'glyphicon glyphicon-comment', N'thumbs-down', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (837, N'glyphicon glyphicon-magnet', N'hand-right', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (838, N'glyphicon glyphicon-chevron-up', N'hand-left', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (839, N'glyphicon glyphicon-chevron-down', N'hand-up', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (840, N'glyphicon glyphicon-retweet', N'hand-down', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (841, N'glyphicon glyphicon-shopping-cart', N'circle-arrow-right', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (842, N'glyphicon glyphicon-folder-close', N'circle-arrow-left', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (843, N'glyphicon glyphicon-folder-open', N'circle-arrow-up', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (844, N'glyphicon glyphicon-resize-vertical', N'circle-arrow-down', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (845, N'glyphicon glyphicon-resize-horizontal', N'globe', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (846, N'glyphicon glyphicon-hdd', N'wrench', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (847, N'glyphicon glyphicon-bullhorn', N'tasks', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (848, N'glyphicon glyphicon-bell', N'filter', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (849, N'glyphicon glyphicon-certificate', N'briefcase', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (850, N'glyphicon glyphicon-thumbs-up', N'fullscreen', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (851, N'glyphicon glyphicon-thumbs-down', N'dashboard', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (852, N'glyphicon glyphicon-hand-right', N'paperclip', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (853, N'glyphicon glyphicon-hand-left', N'heart-empty', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (854, N'glyphicon glyphicon-hand-up', N'link', CAST(N'2016-06-29T12:39:15.240' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (855, N'glyphicon glyphicon-hand-down', N'phone', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (856, N'glyphicon glyphicon-circle-arrow-right', N'pushpin', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (857, N'glyphicon glyphicon-circle-arrow-left', N'usd', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (858, N'glyphicon glyphicon-circle-arrow-up', N'gbp', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (859, N'glyphicon glyphicon-circle-arrow-down', N'sort', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (860, N'glyphicon glyphicon-globe', N'sort-by-alphabet', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (861, N'glyphicon glyphicon-wrench', N'sort-by-alphabet-alt', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (862, N'glyphicon glyphicon-tasks', N'sort-by-order', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (863, N'glyphicon glyphicon-filter', N'sort-by-order-alt', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (864, N'glyphicon glyphicon-briefcase', N'sort-by-attributes', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (865, N'glyphicon glyphicon-fullscreen', N'sort-by-attributes-alt', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (866, N'glyphicon glyphicon-dashboard', N'unchecked', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (867, N'glyphicon glyphicon-paperclip', N'expand', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (868, N'glyphicon glyphicon-heart-empty', N'collapse-down', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (869, N'glyphicon glyphicon-link', N'collapse-up', CAST(N'2016-06-29T12:39:15.243' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (870, N'glyphicon glyphicon-phone', N'log-in', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (871, N'glyphicon glyphicon-pushpin', N'flash', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (872, N'glyphicon glyphicon-usd', N'log-out', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (873, N'glyphicon glyphicon-gbp', N'new-window', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (874, N'glyphicon glyphicon-sort', N'record', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (875, N'glyphicon glyphicon-sort-by-alphabet', N'save', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (876, N'glyphicon glyphicon-sort-by-alphabet-alt', N'open', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (877, N'glyphicon glyphicon-sort-by-order', N'saved', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (878, N'glyphicon glyphicon-sort-by-order-alt', N'import', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (879, N'glyphicon glyphicon-sort-by-attributes', N'export', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (880, N'glyphicon glyphicon-sort-by-attributes-alt', N'send', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (881, N'glyphicon glyphicon-unchecked', N'floppy-disk', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (882, N'glyphicon glyphicon-expand', N'floppy-saved', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (883, N'glyphicon glyphicon-collapse-down', N'floppy-remove', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (884, N'glyphicon glyphicon-collapse-up', N'floppy-save', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (885, N'glyphicon glyphicon-log-in', N'floppy-open', CAST(N'2016-06-29T12:39:15.247' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (886, N'glyphicon glyphicon-flash', N'credit-card', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (887, N'glyphicon glyphicon-log-out', N'transfer', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (888, N'glyphicon glyphicon-new-window', N'cutlery', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (889, N'glyphicon glyphicon-record', N'header', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (890, N'glyphicon glyphicon-save', N'compressed', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (891, N'glyphicon glyphicon-open', N'earphone', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (892, N'glyphicon glyphicon-saved', N'phone-alt', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (893, N'glyphicon glyphicon-import', N'tower', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (894, N'glyphicon glyphicon-export', N'stats', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (895, N'glyphicon glyphicon-send', N'sd-video', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (896, N'glyphicon glyphicon-floppy-disk', N'hd-video', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (897, N'glyphicon glyphicon-floppy-saved', N'subtitles', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (898, N'glyphicon glyphicon-floppy-remove', N'sound-stereo', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (899, N'glyphicon glyphicon-floppy-save', N'sound-dolby', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
GO
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (900, N'glyphicon glyphicon-floppy-open', N'sound-5-1', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (901, N'glyphicon glyphicon-credit-card', N'sound-6-1', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (902, N'glyphicon glyphicon-transfer', N'sound-7-1', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (903, N'glyphicon glyphicon-cutlery', N'copyright-mark', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (904, N'glyphicon glyphicon-header', N'registration-mark', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (905, N'glyphicon glyphicon-compressed', N'cloud-download', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (906, N'glyphicon glyphicon-earphone', N'cloud-upload', CAST(N'2016-06-29T12:39:15.250' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (907, N'glyphicon glyphicon-phone-alt', N'tree-conifer', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (908, N'glyphicon glyphicon-tower', N'tree-deciduous', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (909, N'glyphicon glyphicon-stats', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (910, N'glyphicon glyphicon-sd-video', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (911, N'glyphicon glyphicon-hd-video', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (912, N'glyphicon glyphicon-subtitles', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (913, N'glyphicon glyphicon-sound-stereo', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (914, N'glyphicon glyphicon-sound-dolby', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (915, N'glyphicon glyphicon-sound-5-1', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (916, N'glyphicon glyphicon-sound-6-1', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (917, N'glyphicon glyphicon-sound-7-1', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (918, N'glyphicon glyphicon-copyright-mark', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (919, N'glyphicon glyphicon-registration-mark', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (920, N'glyphicon glyphicon-cloud-download', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (921, N'glyphicon glyphicon-cloud-upload', N'', CAST(N'2016-06-29T12:39:15.253' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (922, N'glyphicon glyphicon-tree-conifer', N'', CAST(N'2016-06-29T12:39:15.257' AS DateTime), N'', NULL, NULL)
INSERT [dbo].[tb_core_webicon] ([Id], [WebIcon], [Name], [CreatedRecord], [UserRecord], [UpdatedRecord], [LastUserRecord]) VALUES (923, N'glyphicon glyphicon-tree-deciduous', N'', CAST(N'2016-06-29T12:39:15.257' AS DateTime), N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tb_core_webicon] OFF
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__changelog__insta__0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[changelog] ADD  DEFAULT (getdate()) FOR [installed_on]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tb_core_s__chang__286302EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_core_sitemapnode] ADD  DEFAULT ((0)) FOR [changefrequencyid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tb_core_s__updat__29572725]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_core_sitemapnode] ADD  DEFAULT ((0)) FOR [updatepriorityid]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[sp_core_tablecolumns_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_core_tablecolumns_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_core_tablecolumns_select] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_core_tablecolumns_select]
@tablename VARCHAR(MAX)
AS 
SET NOCOUNT ON

SELECT name FROM sys.columns WHERE object_id = OBJECT_ID(@tablename)
GO
/****** Object:  StoredProcedure [dbo].[sp_generate]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_generate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_generate] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_generate]  
@dbName AS VARCHAR(100) ,
  @tableName AS VARCHAR(100)  
AS  

exec("use " +@dbName + ' go')

-- sp_generate "Tb_Mae_Pais"
--CAPITALIZE TABLENAME  
SET @tableName = UPPER(LEFT(@tableName,1)) + RIGHT(@tableName, LEN(@tableName) -1)  
  
--SALTO DE LÍNEA  
DECLARE @nl AS CHAR  
SET @nl = CHAR(10) + CHAR(13)   
  
--CABECERA  
DECLARE @spHeaders AS VARCHAR(1000)  
SET @spHeaders = 'SET ANSI_NULLS ON' + @nl +  
'GO' + @nl +  
'SET QUOTED_IDENTIFIER ON' + @nl +  
'GO' + @nl +  
'-- =============================================' + @nl +  
'-- Author:  TU_NOMBRE' + @nl +  
'-- Create date: ' + CONVERT(VARCHAR, GETDATE(), 3) + @nl +  
'-- ============================================='  
  
DECLARE @table AS VARCHAR(MAX)  
DECLARE @column AS VARCHAR(MAX)  
DECLARE @data_type AS VARCHAR(MAX)  
DECLARE @length AS INT  
DECLARE @precision AS INT  
DECLARE @scale AS INT  
  
--PARÁMETROS  
DECLARE @spParameters AS VARCHAR(MAX) SET @spParameters = ''  
  
--LISTA DE CAMPOS  
DECLARE @fieldList AS VARCHAR(MAX) SET @fieldList = ''  
  
--LISTA DE CAMPOS PARA EL SET DEL UPDATE  
DECLARE @fieldSetList AS VARCHAR(MAX) SET @fieldSetList = ''  
  
--LISTA DE PARÁMETROS PARA EL INSERT  
DECLARE @insertParameters AS VARCHAR(MAX) SET @insertParameters = ''  
  
--CONDICIONES  
DECLARE @spConditions AS VARCHAR(MAX) SET @spConditions = ''  
  
DECLARE c CURSOR STATIC FOR  
select table_name, column_name, data_type, character_maximum_length,numeric_precision, numeric_scale from information_schema.columns where table_name = @tableName order by ordinal_position  
OPEN c FETCH NEXT FROM c INTO @table, @column, @data_type, @length, @precision, @scale  
WHILE @@FETCH_STATUS = 0 BEGIN  
  
 SET @spParameters = @spParameters + (CASE WHEN LEN(@spParameters) >0 THEN @nl + ' ,' ELSE '  ' END) + '@' + @column + ' ' + UPPER(@data_type) + (CASE @data_type WHEN 'VARCHAR' THEN '('+CAST(@length AS VARCHAR)+')' WHEN 'DECIMAL' THEN '('+CAST(@precision AS VARCHAR)+', '+CAST(@scale AS VARCHAR)+')' ELSE '' END) + ' = NULL'  
 SET @fieldList = @fieldList + (CASE WHEN LEN(@fieldList) >0 THEN @nl + '    ,' ELSE '' END) + @column  
 SET @spConditions = @spConditions + (CASE WHEN LEN(@spConditions) >0 THEN @nl + '   AND ' ELSE '' END) + '(@' + @column + ' IS NULL OR @' + @column + '=' + @column + ')'  
 SET @fieldSetList = @fieldSetList + (CASE WHEN LEN(@fieldSetList) >0 THEN @nl + '     ,' ELSE '      ' END) + @column + ' = @' + @column  
 SET @insertParameters = @insertParameters + (CASE WHEN LEN(@insertParameters) >0 THEN @nl + '    ,' ELSE '' END) + '@' + @column  
  
 FETCH NEXT FROM c INTO @table, @column, @data_type, @length, @precision, @scale  
END  
CLOSE c DEALLOCATE c  
  
--********************************  
--*********** SELECT *************  
--********************************  
DECLARE @SELECT AS VARCHAR(MAX)  
SET @SELECT = @spHeaders + @nl  
SET @SELECT = @SELECT + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) ) + '_Select' + @nl  
SET @SELECT = @SELECT + @spParameters + @nl  
SET @SELECT = @SELECT + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @SELECT = @SELECT + '    SELECT ' + @fieldList + @nl  
SET @SELECT = @SELECT + '    FROM ' + @table + @nl  
SET @SELECT = @SELECt + '    WHERE ' + @spConditions + @nl  
--********************************  
--*********** SELECT ALL**********  
--********************************  
DECLARE @SELECTALL AS VARCHAR(MAX)  
SET @SELECTALL = @spHeaders + @nl  
SET @SELECTALL = @SELECTALL + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_SelAll' + @nl  
-- SET @SELECT = @SELECT + @spParameters + @nl  
SET @SELECTALL = @SELECTALL + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @SELECTALL = @SELECTALL + '    SELECT ' + @fieldList + @nl  
SET @SELECTALL = @SELECTALL + '    FROM ' + @table + @nl    
--********************************  
--*********** UPDATE *************  
--********************************  
DECLARE @UPDATE AS VARCHAR(MAX)  
SET @UPDATE = @spHeaders + @nl  
SET @UPDATE = @UPDATE + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) ) + '_Update' + @nl  
SET @UPDATE = @UPDATE + @spParameters + @nl  
SET @UPDATE = @UPDATE + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @UPDATE = @UPDATE + '    UPDATE ' + @table + ' SET ' + @nl  
SET @UPDATE = @UPDATE + @fieldSetList + @nl  
SET @UPDATE = @UPDATE + '    WHERE ' + @spConditions + @nl  
  
--********************************  
--*********** DELETE *************  
--********************************  
DECLARE @DELETE AS VARCHAR(MAX)  
SET @DELETE = @spHeaders + @nl  
SET @DELETE = @DELETE + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Delete' + @nl  
SET @DELETE = @DELETE + @spParameters + @nl  
SET @DELETE = @DELETE + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @DELETE = @DELETE + '    DELETE FROM ' + @table + @nl  
SET @DELETE = @DELETE + '    WHERE ' + @spConditions + @nl  
  
--********************************  
--*********** INSERT *************  
--********************************  
DECLARE @INSERT AS VARCHAR(MAX)  
SET @INSERT = @spHeaders + @nl  
SET @INSERT = @INSERT + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Insert' + @nl  
SET @INSERT = @INSERT + @spParameters + @nl  
SET @INSERT = @INSERT + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @INSERT = @INSERT + '    INSERT INTO ' + @table + '(' + @nl  
SET @INSERT = @INSERT + '     ' + @fieldList + @nl  
SET @INSERT = @INSERT + ' )' + @nl + ' VALUES(' + @nl + '     ' + @insertParameters + @nl  
SET @INSERT = @INSERT + ' )' + @nl  
  
--********************************  
--*********** EXISTS *************  
--********************************  
DECLARE @EXISTS AS VARCHAR(MAX)  
SET @EXISTS = @spHeaders + @nl  
SET @EXISTS = @EXISTS + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Exists' + @nl  
SET @EXISTS = @EXISTS + @spParameters + @nl  
SET @EXISTS = @EXISTS + ' ,@exists BIT OUT' + @nl  
SET @EXISTS = @EXISTS + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @EXISTS = @EXISTS + '    IF EXISTS (' + @nl + ' SELECT ' + LEFT(@fieldList,CHARINDEX(@nl,@fieldList))  
SET @EXISTS = @EXISTS + '    FROM ' + @table + @nl  
SET @EXISTS = @EXISTS + '    WHERE ' + @spConditions + @nl + ' )' + @nl  
SET @EXISTS = @EXISTS + ' SET @exists = 1' + @nl + ' ELSE SET @exists = 0'  
  
--MOSTRAR GENERADOS  
PRINT + '-- =====INSERT==================================' + @nl + @INSERT  
PRINT + '-- =====DELETE==================================' + @nl + @DELETE  
PRINT + '-- =====UPDATE==================================' + @nl + @UPDATE  
PRINT + '-- =====SELECT==================================' + @nl + @SELECT  
PRINT + '-- =====SELECT==================================' + @nl + @SELECTALL
PRINT + '-- =====EXISTS==================================' + @nl + @EXISTS

GO
/****** Object:  StoredProcedure [dbo].[sp_get_NodeName]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_get_NodeName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_get_NodeName] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_get_NodeName]
@key nvarchar(255) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[title]
FROM [dbo].[tb_core_sitemapnode] s
WHERE s.[key]=@Key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_Is_Node_Parent]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Is_Node_Parent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Is_Node_Parent] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_Is_Node_Parent]
@key nvarchar(255) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT
isnull(Count(keyparent),0) as ChildNumber
FROM [tb_core_sitemapnoderelacion] 
WHERE keyparent=@Key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_obtencion_datos_entidades]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_obtencion_datos_entidades]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_obtencion_datos_entidades] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_obtencion_datos_entidades]
@EntId varchar(128) = null
,@EntRut varchar(128) = null
,@texto varchar(128) = null
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT [EntId]
      ,[EntRut]
      ,[EntRazonSocial]
      ,[EntNomFantasia]
      ,[EntFecActivacion]
      ,[EntTipoSociedadCod]
      ,[GirCod]
      ,[AecCod]
      ,[EntProcedencia]
      ,[EstEntCod]
      ,[NivId]
      ,[pEntRutHolding]
      ,[EntSitioWeb]
      ,[EntRutRetenedor]
      ,[EntRutDifFisica]
      ,[EntTipoRazonSocial]
      ,[Estado_Reg]
      ,[Fec_Estado_Reg]
      ,[Fec_Ing_Reg]
      ,[Id_Usuario_Ing_Reg]
      ,[Fec_Ult_Modif_Reg]
      ,[Id_Usuario_Ult_Modif_Reg]
      ,[Id_Funcion_Ult_Modif_Reg]
      ,[EntIndElectronico]
      ,[EntFormatoEnvioDte]
      ,[EntMail]
      ,[EntTipoCategoria]
  FROM [RS_SGF_Local_Fin700].[dbo].[GlbT_Entidad]
-- returning the error code if any
WHERE [EntId] is null or [EntId] = @EntId and ([EntRut] is null or [EntRut]= @EntRut) 
OR ([EntRazonSocial] like CONCAT('%',@texto,'%')) 
OR ([EntNomFantasia] like CONCAT('%',@texto,'%')) 
OR ([EntSitioWeb] like CONCAT('%',@texto,'%')) 
OR ([Id_Usuario_Ing_Reg] like CONCAT('%',@texto,'%')) 
OR ([Id_Usuario_Ult_Modif_Reg] like CONCAT('%',@texto,'%')) 
OR ([Id_Funcion_Ult_Modif_Reg] like CONCAT('%',@texto,'%')) 
OR ([EntMail] like CONCAT('%',@texto,'%'))
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetRoles_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetRoles_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetRoles_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetRoles_delete]
@Id nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetRoles]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetRoles_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetRoles_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetRoles_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_AspNetRoles_insert]
@Id nvarchar(128) OUTPUT
, @Name nvarchar(256) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON

SET @Id = NEWID()
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[AspNetRoles]
(
[Id]
,[Name]
)
VALUES
(
@Id
,@Name
)
SELECT 
@Id = [Id]
,@Name = [Name]
FROM [dbo].[AspNetRoles]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetRoles_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetRoles_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetRoles_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetRoles_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Name]
FROM [dbo].[AspNetRoles]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetRoles_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetRoles_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetRoles_select] AS' 
END
GO


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetRoles_select]
@Id nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Name]
FROM [dbo].[AspNetRoles]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetRoles_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetRoles_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetRoles_update] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetRoles_update]
@Id nvarchar(128) OUTPUT
, @Name nvarchar(256) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[AspNetRoles]
SET
[Name] = @Name
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Name = [Name]
FROM [dbo].[AspNetRoles]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_delete]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetUserClaims]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_insert] AS' 
END
GO






-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_insert]
@Id int OUTPUT
, @UserId nvarchar(128) OUTPUT
, @ClaimType nvarchar(4000) OUTPUT
, @ClaimValue nvarchar(4000) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[AspNetUserClaims]
(
[UserId]
,[ClaimType]
,[ClaimValue]
)
VALUES
(
@UserId
,@ClaimType
,@ClaimValue
)
SELECT 
@Id = [Id]
,@UserId = [UserId]
,@ClaimType = [ClaimType]
,@ClaimValue = [ClaimValue]
FROM [dbo].[AspNetUserClaims]
WHERE 
Id = SCOPE_IDENTITY()
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_search]
@Id int = null
, @UserId nvarchar(128) = null
, @ClaimType nvarchar(4000) = null
, @ClaimValue nvarchar(4000) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[UserId],
[ClaimType],
[ClaimValue]
FROM [dbo].[AspNetUserClaims]
WHERE 
([Id] LIKE @Id OR @Id is null)
AND ([UserId] LIKE @UserId OR @UserId is null)
AND ([ClaimType] LIKE @ClaimType OR @ClaimType is null)
AND ([ClaimValue] LIKE @ClaimValue OR @ClaimValue is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[UserId]
,[ClaimType]
,[ClaimValue]
FROM [dbo].[AspNetUserClaims]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_select] AS' 
END
GO



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_select]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[UserId]
,[ClaimType]
,[ClaimValue]
FROM [dbo].[AspNetUserClaims]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserClaims_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserClaims_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserClaims_update] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserClaims_update]
@Id int OUTPUT
, @UserId nvarchar(128) OUTPUT
, @ClaimType nvarchar(4000) OUTPUT
, @ClaimValue nvarchar(4000) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[AspNetUserClaims]
SET
[UserId] = @UserId
,[ClaimType] = @ClaimType
,[ClaimValue] = @ClaimValue
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@UserId = [UserId]
,@ClaimType = [ClaimType]
,@ClaimValue = [ClaimValue]
FROM [dbo].[AspNetUserClaims]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserLogins_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserLogins_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserLogins_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserLogins_delete]
@LoginProvider nvarchar(128)
, @ProviderKey nvarchar(128)
, @UserId nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetUserLogins]
WHERE 
[LoginProvider] = @LoginProvider
AND [ProviderKey] = @ProviderKey
AND [UserId] = @UserId
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserLogins_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserLogins_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserLogins_insert] AS' 
END
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserLogins_insert]
@LoginProvider nvarchar(128) OUTPUT
, @ProviderKey nvarchar(128) OUTPUT
, @UserId nvarchar(128) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[AspNetUserLogins]
(
[LoginProvider]
,[ProviderKey]
,[UserId]
)
VALUES
(
@LoginProvider
,@ProviderKey
,@UserId
)
SELECT 
@LoginProvider = [LoginProvider]
,@ProviderKey = [ProviderKey]
,@UserId = [UserId]
FROM [dbo].[AspNetUserLogins]
WHERE 
[LoginProvider] = @LoginProvider
AND [ProviderKey] = @ProviderKey
AND [UserId] = @UserId
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserLogins_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserLogins_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserLogins_search] AS' 
END
GO


------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserLogins_search]
@LoginProvider nvarchar(128) = null
, @ProviderKey nvarchar(128) = null
, @UserId nvarchar(128) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[LoginProvider],
[ProviderKey],
[UserId]
FROM [dbo].[AspNetUserLogins]
WHERE 
([LoginProvider] LIKE @LoginProvider OR @LoginProvider is null)
AND ([ProviderKey] LIKE @ProviderKey OR @ProviderKey is null)
AND ([UserId] LIKE @UserId OR @UserId is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserLogins_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserLogins_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserLogins_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserLogins_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[LoginProvider]
,[ProviderKey]
,[UserId]
FROM [dbo].[AspNetUserLogins]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserLogins_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserLogins_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserLogins_select] AS' 
END
GO



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserLogins_select]
@LoginProvider nvarchar(128)
, @ProviderKey nvarchar(128)
, @UserId nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[LoginProvider]
,[ProviderKey]
,[UserId]
FROM [dbo].[AspNetUserLogins]
WHERE 
[LoginProvider] = @LoginProvider
AND [ProviderKey] = @ProviderKey
AND [UserId] = @UserId
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_delete]
@UserId nvarchar(128)
, @RoleId nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetUserRoles]
WHERE 
[UserId] = @UserId
AND [RoleId] = @RoleId
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_group_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_group_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_group_delete] AS' 
END
GO
-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_group_delete]
@UserId nvarchar(128)
, @GroupId nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetUserRoles]
WHERE 
[UserId] = @UserId
--AND [GroupId] = @GroupId
AND [GroupId] <> ''
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_insert] AS' 
END
GO

-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_insert]
@UserId nvarchar(128) OUTPUT
, @RoleId nvarchar(128) OUTPUT
, @GroupId nvarchar(128) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
if (SELECT ISNULL(COUNT(RoleId),0)
		FROM [dbo].[AspNetUserRoles]
		WHERE 
		[UserId] = @UserId
		AND [RoleId] = @RoleId)=0
BEGIN
	INSERT [dbo].[AspNetUserRoles]
	(
	[UserId]
	,[RoleId]
	,[GroupId]
	)
	VALUES
	(
	@UserId
	,@RoleId
	,@GroupId 
	)
	SELECT 
	@UserId = [UserId]
	,@RoleId = [RoleId]
	FROM [dbo].[AspNetUserRoles]
	WHERE 
	[UserId] = @UserId
	AND [RoleId] = @RoleId
END
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_search] AS' 
END
GO



------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_search]
@UserId nvarchar(128) = null
, @RoleId nvarchar(128) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[UserId],
[RoleId]
FROM [dbo].[AspNetUserRoles]
WHERE 
([UserId] LIKE @UserId OR @UserId is null)
AND ([RoleId] LIKE @RoleId OR @RoleId is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[UserId]
,[RoleId]
FROM [dbo].[AspNetUserRoles]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUserRoles_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUserRoles_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUserRoles_select] AS' 
END
GO


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUserRoles_select]
@UserId nvarchar(128)
, @RoleId nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[UserId]
,[RoleId]
FROM [dbo].[AspNetUserRoles]
WHERE 
[UserId] = @UserId
AND [RoleId] = @RoleId
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_delete]
@Id nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[AspNetUsers]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_insert]
@Id nvarchar(128) OUTPUT
, @Email nvarchar(256) OUTPUT
, @EmailConfirmed bit OUTPUT
, @PasswordHash nvarchar(4000) OUTPUT
, @SecurityStamp nvarchar(4000) OUTPUT
, @PhoneNumber nvarchar(4000) OUTPUT
, @PhoneNumberConfirmed bit OUTPUT
, @TwoFactorEnabled bit OUTPUT
, @LockoutEndDateUtc datetime OUTPUT
, @LockoutEnabled bit OUTPUT
, @AccessFailedCount int OUTPUT
, @UserName nvarchar(256) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
SET @Id = NEWID()
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[AspNetUsers]
(
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
)
VALUES
(
@Id
,@Email
,@EmailConfirmed
,HASHBYTES('SHA2_512',@PasswordHash)
,'KID1412'--@SecurityStamp
,@PhoneNumber
,@PhoneNumberConfirmed
,@TwoFactorEnabled
,@LockoutEndDateUtc
,@LockoutEnabled
,@AccessFailedCount
,@UserName
)
SELECT 
@Id = [Id]
,@Email = [Email]
,@EmailConfirmed = [EmailConfirmed]
,@PasswordHash = [PasswordHash]
,@SecurityStamp = [SecurityStamp]
,@PhoneNumber = [PhoneNumber]
,@PhoneNumberConfirmed = [PhoneNumberConfirmed]
,@TwoFactorEnabled = [TwoFactorEnabled]
,@LockoutEndDateUtc = [LockoutEndDateUtc]
,@LockoutEnabled = [LockoutEnabled]
,@AccessFailedCount = [AccessFailedCount]
,@UserName = [UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_search] AS' 
END
GO



------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_search]
@Id nvarchar(128) = null
, @Email nvarchar(256) = null
, @EmailConfirmed bit = null
, @PasswordHash nvarchar(4000) = null
, @SecurityStamp nvarchar(4000) = null
, @PhoneNumber nvarchar(4000) = null
, @PhoneNumberConfirmed bit = null
, @TwoFactorEnabled bit = null
, @LockoutEndDateUtc datetime = null
, @LockoutEnabled bit = null
, @AccessFailedCount int = null
, @UserName nvarchar(256) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[Email],
[EmailConfirmed],
[PasswordHash],
[SecurityStamp],
[PhoneNumber],
[PhoneNumberConfirmed],
[TwoFactorEnabled],
[LockoutEndDateUtc],
[LockoutEnabled],
[AccessFailedCount],
[UserName]
FROM [dbo].[AspNetUsers]
WHERE 
([Id] LIKE @Id OR @Id is null)
AND ([Email] LIKE @Email OR @Email is null)
AND ([EmailConfirmed] LIKE @EmailConfirmed OR @EmailConfirmed is null)
AND ([PasswordHash] LIKE @PasswordHash OR @PasswordHash is null)
AND ([SecurityStamp] LIKE @SecurityStamp OR @SecurityStamp is null)
AND ([PhoneNumber] LIKE @PhoneNumber OR @PhoneNumber is null)
AND ([PhoneNumberConfirmed] LIKE @PhoneNumberConfirmed OR @PhoneNumberConfirmed is null)
AND ([TwoFactorEnabled] LIKE @TwoFactorEnabled OR @TwoFactorEnabled is null)
AND ([LockoutEndDateUtc] LIKE @LockoutEndDateUtc OR @LockoutEndDateUtc is null)
AND ([LockoutEnabled] LIKE @LockoutEnabled OR @LockoutEnabled is null)
AND ([AccessFailedCount] LIKE @AccessFailedCount OR @AccessFailedCount is null)
AND ([UserName] LIKE @UserName OR @UserName is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
FROM [dbo].[AspNetUsers]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_select] AS' 
END
GO

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_select]
@Id nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_select_byEmail]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_select_byEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_select_byEmail] AS' 
END
GO


ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_select_byEmail]
@Email nvarchar(256)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[Email] = @Email
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_select_byUserName]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_select_byUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_select_byUserName] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_select_byUserName]
@UserName nvarchar(256)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[UserName] = @UserName
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_AspNetUsers_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_AspNetUsers_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_AspNetUsers_update] AS' 
END
GO


-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_AspNetUsers_update]
@Id nvarchar(128) OUTPUT
, @Email nvarchar(256) OUTPUT
, @EmailConfirmed bit OUTPUT
, @PasswordHash nvarchar(4000) OUTPUT
, @SecurityStamp nvarchar(4000) OUTPUT
, @PhoneNumber nvarchar(4000) OUTPUT
, @PhoneNumberConfirmed bit OUTPUT
, @TwoFactorEnabled bit OUTPUT
, @LockoutEndDateUtc datetime OUTPUT
, @LockoutEnabled bit OUTPUT
, @AccessFailedCount int OUTPUT
, @UserName nvarchar(256) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[AspNetUsers]
SET
[Email] = @Email
,[EmailConfirmed] = @EmailConfirmed
,[PasswordHash] = @PasswordHash
,[SecurityStamp] = @SecurityStamp
,[PhoneNumber] = @PhoneNumber
,[PhoneNumberConfirmed] = @PhoneNumberConfirmed
,[TwoFactorEnabled] = @TwoFactorEnabled
,[LockoutEndDateUtc] = @LockoutEndDateUtc
,[LockoutEnabled] = @LockoutEnabled
,[AccessFailedCount] = @AccessFailedCount
,[UserName] = @UserName
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Email = [Email]
,@EmailConfirmed = [EmailConfirmed]
,@PasswordHash = [PasswordHash]
,@SecurityStamp = [SecurityStamp]
,@PhoneNumber = [PhoneNumber]
,@PhoneNumberConfirmed = [PhoneNumberConfirmed]
,@TwoFactorEnabled = [TwoFactorEnabled]
,@LockoutEndDateUtc = [LockoutEndDateUtc]
,@LockoutEnabled = [LockoutEnabled]
,@AccessFailedCount = [AccessFailedCount]
,@UserName = [UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_delete]
@Id varchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_detalle]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_detalle]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_detalle] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_detalle]
@idUser varchar(128),
@idAlert varchar(128)
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[IdUserTo]
,[Icon]
,[Title]
,[Description]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
      ,isnull(CreatedRecord, '1900-01-01') as CreatedRecord
      ,[UserRecord]
      ,isnull(UpdatedRecord, '1900-01-01') as UpdatedRecord
      ,[LastUserRecord]
FROM [dbo].[tb_core_alerts]
-- returning the error code if any
WHERE IdUserTo = @idUser and Id = @idAlert
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_emailed_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_emailed_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_emailed_select] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_emailed_select]
@Emailed BIT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
a.[Id]
,a.[IdUserTo]
,a.[Icon]
,a.[Title]
,a.[Description]
,a.[Body]
,a.[ExtraIcon]
,a.[ExtraDescription]
,a.[Readed]
,a.[ReadedDate]
,a.[Notified]
,a.[NotifiedDate]
,a.[Emailed]
,a.[EmailedDate]
,a.[Url]
,a.[IdUserFrom]
,a.[ErrorCode]
,a.[Topic]
,a.[OptionSend]
,a.[IdModuleFrom]
,a.[CreatedRecord]
,a.[UserRecord]
,a.[UpdatedRecord]
,a.[LastUserRecord]
,CASE WHEN u.Email is null THEN a.EmailTo ELSE u.Email END AS 'UserEmailTo'
FROM [dbo].[tb_core_alerts] a
LEFT JOIN [AspNetUsers] u
ON u.Id = a.IdUserTo
WHERE a.[Emailed] IS NULL OR a.[Emailed] = @Emailed
ORDER BY a.[CreatedRecord] ASC, a.[Topic]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR



-- update [tb_core_alerts] set Emailed
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_insert]
@Id varchar(128) OUTPUT
, @IdUserTo varchar(128) OUTPUT
, @EmailTo varchar(255) OUTPUT
, @Icon varchar(128) OUTPUT
, @Title varchar(128) OUTPUT
, @Description varchar(4000) OUTPUT
, @Body nvarchar(max) OUTPUT
, @ExtraIcon varchar(128) OUTPUT
, @ExtraDescription varchar(4000) OUTPUT
, @Readed bit OUTPUT
, @ReadedDate datetime OUTPUT
, @Notified bit OUTPUT
, @NotifiedDate datetime OUTPUT
, @Url varchar(4000) OUTPUT
, @IdUserFrom varchar(128) OUTPUT
, @IdModuleFrom varchar(128) OUTPUT
, @CreatedRecord datetime OUTPUT
, @UserRecord datetime OUTPUT
, @ErrorCode int OUTPUT
,@Topic nvarchar(128) OUTPUT
,@OptionSend char(2) OUTPUT
,@Emailed bit OUTPUT
,@EmailedDate datetime OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_alerts]
(
[Id]
,[IdUserTo]
,[EmailTo]
,[Icon]
,[Title]
,[Description]
,[Body]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
,[CreatedRecord]
,[UserRecord]
,[ErrorCode]
,[Topic]
,[OptionSend]
,[Emailed]
,[EmailedDate]
)
VALUES
(
@Id
,@IdUserTo
,@EmailTo
,@Icon
,@Title
,@Description
,@Body
,@ExtraIcon
,@ExtraDescription
,@Readed
,@ReadedDate
,@Notified
,@NotifiedDate
,@Url
,@IdUserFrom
,@IdModuleFrom
,@CreatedRecord
,@UserRecord
,@ErrorCode
,@Topic
,@OptionSend
,@Emailed
,@EmailedDate
)
SELECT 
@Id = [Id]
,@IdUserTo = [IdUserTo]
,@EmailTo = [EmailTo]
,@Icon = [Icon]
,@Title = [Title]
,@Description = [Description]
,@Body = [Body]
,@ExtraIcon = [ExtraIcon]
,@ExtraDescription = [ExtraDescription]
,@Readed = [Readed]
,@ReadedDate = [ReadedDate]
,@Notified = [Notified]
,@NotifiedDate = [NotifiedDate]
,@Url = [Url]
,@IdUserFrom = [IdUserFrom]
,@IdModuleFrom = [IdModuleFrom]
,@CreatedRecord = [CreatedRecord]
,@UserRecord = [UserRecord]
,@ErrorCode = [ErrorCode]
,@Topic = [Topic]
,@OptionSend = [OptionSend]
,@Emailed = [Emailed]
,@EmailedDate = [EmailedDate]
FROM [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_markAlertReaded]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_markAlertReaded]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_markAlertReaded] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_markAlertReaded]
@Id varchar(128) OUTPUT
, @IdUserTo varchar(128) OUTPUT
, @Icon varchar(128) OUTPUT
, @Title varchar(128) OUTPUT
, @Description varchar(4000) OUTPUT
, @ExtraIcon varchar(128) OUTPUT
, @ExtraDescription varchar(4000) OUTPUT
, @Readed bit OUTPUT
, @ReadedDate datetime OUTPUT
, @Notified bit OUTPUT
, @NotifiedDate datetime OUTPUT
, @Url varchar(4000) OUTPUT
, @IdUserFrom varchar(128) OUTPUT
, @IdModuleFrom varchar(128) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[tb_core_alerts]
SET
 [Readed] = @Readed
,[ReadedDate] = @ReadedDate
,[UpdatedRecord] = @dt_updated
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@IdUserTo = [IdUserTo]
,@Icon = [Icon]
,@Title = [Title]
,@Description = [Description]
,@ExtraIcon = [ExtraIcon]
,@ExtraDescription = [ExtraDescription]
,@Readed = [Readed]
,@ReadedDate = [ReadedDate]
,@Notified = [Notified]
,@NotifiedDate = [NotifiedDate]
,@Url = [Url]
,@IdUserFrom = [IdUserFrom]
,@IdModuleFrom = [IdModuleFrom]
,@dt_created = [CreatedRecord]
,@dt_updated = [UpdatedRecord]
FROM [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_search]
@Id varchar(128) = null
, @IdUserTo varchar(128) = null
, @Icon varchar(128) = null
, @Title varchar(128) = null
, @Description varchar(4000) = null
, @ExtraIcon varchar(128) = null
, @ExtraDescription varchar(4000) = null
, @Readed bit = null
, @ReadedDate datetime = null
, @Notified bit = null
, @NotifiedDate datetime = null
, @Url varchar(4000) = null
, @IdUserFrom varchar(128) = null
, @IdModuleFrom varchar(128) = null
, @CreatedRecord datetime OUTPUT
, @UserRecord datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[IdUserTo],
[EmailTo],
[Icon],
[Title],
[Description],
[ExtraIcon],
[ExtraDescription],
[Readed],
[ReadedDate],
[Notified],
[NotifiedDate],
[Url],
[IdUserFrom],
[IdModuleFrom],
[CreatedRecord],
[UserRecord]
FROM [dbo].[tb_core_alerts]
WHERE 
([Id] LIKE @Id OR @Id is null)
AND ([IdUserTo] LIKE @IdUserTo OR @IdUserTo is null)
AND ([Icon] LIKE @Icon OR @Icon is null)
AND ([Title] LIKE @Title OR @Title is null)
AND ([Description] LIKE @Description OR @Description is null)
AND ([ExtraIcon] LIKE @ExtraIcon OR @ExtraIcon is null)
AND ([ExtraDescription] LIKE @ExtraDescription OR @ExtraDescription is null)
AND ([Readed] LIKE @Readed OR @Readed is null)
AND ([ReadedDate] LIKE @ReadedDate OR @ReadedDate is null)
AND ([Notified] LIKE @Notified OR @Notified is null)
AND ([NotifiedDate] LIKE @NotifiedDate OR @NotifiedDate is null)
AND ([Url] LIKE @Url OR @Url is null)
AND ([IdUserFrom] LIKE @IdUserFrom OR @IdUserFrom is null)
AND ([IdModuleFrom] LIKE @IdModuleFrom OR @IdModuleFrom is null)

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[IdUserTo]
,[EmailTo]
,[Icon]
,[Title]
,[Description]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
,[CreatedRecord]
,[UpdatedRecord]
FROM [dbo].[tb_core_alerts]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_select] AS' 
END
GO


-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_select]
@IdAlert varchar(128) OUTPUT,
@IdUser varchar(128) OUTPUT,
@Readed varchar(128) OUTPUT,
@Notified varchar(128) OUTPUT,

@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[IdUserTo]
,[EmailTo]
,[Icon]
,[Title]
,[Description]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
,[CreatedRecord]
,[UpdatedRecord]
FROM [dbo].[tb_core_alerts]
WHERE 
([Id] = @IdAlert and [IdUserTo] = @IdUser and [Readed] = @Readed) or ([Id] = @IdAlert and [IdUserTo] = @IdUser and [Notified] = @Notified )
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_select_by_id]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_select_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_select_by_id] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_select_by_id]
@idAlert varchar(128)
,@idUser varchar(128)

AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[IdUserTo]
,EmailTo
,[Icon]
,[Title]
,[Description]
,[Body]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
,[CreatedRecord]
,[UpdatedRecord]
FROM [dbo].[tb_core_alerts]
-- returning the error code if any
WHERE IdUserTo = @idUser and Id = @idAlert
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_selOne]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_selOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_selOne] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_selOne]
@idUser varchar(128)
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[IdUserTo]
,[EmailTo]
,[Icon]
,[Title]
,[Description]
,[ExtraIcon]
,[ExtraDescription]
,[Readed]
,[ReadedDate]
,[Notified]
,[NotifiedDate]
,[Url]
,[IdUserFrom]
,[IdModuleFrom]
,[CreatedRecord]
,[UpdatedRecord]
FROM [dbo].[tb_core_alerts]
-- returning the error code if any
WHERE IdUserTo = @idUser
ORDER BY [CreatedRecord] desc
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_update] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_update]
@Id varchar(128) OUTPUT
, @IdUserTo varchar(128) OUTPUT
, @EmailTo varchar(255) OUTPUT
, @Icon varchar(128) OUTPUT
, @Title varchar(128) OUTPUT
, @Description varchar(4000) OUTPUT
, @ExtraIcon varchar(128) OUTPUT
, @ExtraDescription varchar(4000) OUTPUT
, @Readed bit OUTPUT
, @ReadedDate datetime OUTPUT
, @Notified bit OUTPUT
, @NotifiedDate datetime OUTPUT
, @Url varchar(4000) OUTPUT
, @IdUserFrom varchar(128) OUTPUT
, @IdModuleFrom varchar(128) OUTPUT
, @CreatedRecord datetime OUTPUT
, @UserRecord datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[tb_core_alerts]
SET
[IdUserTo] = @IdUserTo
,[EmailTo] = @EmailTo
,[Icon] = @Icon
,[Title] = @Title
,[Description] = @Description
,[ExtraIcon] = @ExtraIcon
,[ExtraDescription] = @ExtraDescription
,[Readed] = @Readed
,[ReadedDate] = @ReadedDate
,[Notified] = @Notified
,[NotifiedDate] = @NotifiedDate
,[Url] = @Url
,[IdUserFrom] = @IdUserFrom
,[IdModuleFrom] = @IdModuleFrom
,[CreatedRecord] = @CreatedRecord
,[UserRecord] = UserRecord
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@IdUserTo = [IdUserTo]
,@EmailTo = [EmailTo]
,@Icon = [Icon]
,@Title = [Title]
,@Description = [Description]
,@ExtraIcon = [ExtraIcon]
,@ExtraDescription = [ExtraDescription]
,@Readed = [Readed]
,@ReadedDate = [ReadedDate]
,@Notified = [Notified]
,@NotifiedDate = [NotifiedDate]
,@Url = [Url]
,@IdUserFrom = [IdUserFrom]
,@IdModuleFrom = [IdModuleFrom]
,@CreatedRecord = [CreatedRecord]
,@UserRecord = [UserRecord]
FROM [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_update_markemailed]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_update_markemailed]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_markemailed] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_markemailed]
@Id varchar(128) OUTPUT
, @Emailed bit OUTPUT
, @EmailedDate datetime OUTPUT
, @dt_updated datetime OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[tb_core_alerts]
SET
 [Emailed] = @Emailed
,[EmailedDate] = @EmailedDate
,UpdatedRecord = @dt_updated
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Emailed = [Emailed]
,@EmailedDate = [EmailedDate]
,@dt_updated = UpdatedRecord
FROM [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_update_marknotified]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_update_marknotified]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_marknotified] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_marknotified]
@Id varchar(128)  
,@Notified bit OUTPUT
,@NotifiedDate datetime OUTPUT
,@dt_updated datetime OUTPUT


AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[tb_core_alerts]
SET
 [Notified] = @Notified
,[NotifiedDate] = @NotifiedDate
,[UpdatedRecord] = @dt_updated
WHERE 
[Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_alerts_update_markreaded]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_alerts_update_markreaded]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_markreaded] AS' 
END
GO



-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_alerts_update_markreaded]
@Id varchar(128) OUTPUT
, @Readed bit OUTPUT
, @ReadedDate datetime OUTPUT
, @dt_updated datetime OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any

UPDATE [dbo].[tb_core_alerts]
SET
 [Readed] = @Readed
,[ReadedDate] = @ReadedDate
,UpdatedRecord = @dt_updated
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Readed = [Readed]
,@ReadedDate = [ReadedDate]
,@dt_updated = UpdatedRecord
FROM [dbo].[tb_core_alerts]
WHERE 
[Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_eventhash_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_eventhash_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_eventhash_select] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_eventhash_select]
@EventHash VARCHAR(128)
,@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdLog]
,[Id]
,[EventlogTypeName]
,[ProcessName]
,[ServerName]
,[IdUser]
,[UserName]
,[Source]
,[KeyWords]
,[StackTrace]
,[FirstEvent]
,[LastEvent]
,[TimesNumber]
,[Description]
,[XmlDescription]
,[EventHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_eventlog]
WHERE [EventHash] = @EventHash
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_id_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_id_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_id_select] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_id_select]
@Id VARCHAR(128)
,@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdLog]
,[Id]
,[EventlogTypeName]
,[ProcessName]
,[ServerName]
,[IdUser]
,[UserName]
,[Source]
,[KeyWords]
,[StackTrace]
,[FirstEvent]
,[LastEvent]
,[TimesNumber]
,[Description]
,[XmlDescription]
,[EventHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_eventlog]
WHERE [Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_idlog_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_idlog_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_idlog_select] AS' 
END
GO


ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_idlog_select]
@IdLog BIGINT
,@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdLog]
,[Id]
,[EventlogTypeName]
,[ProcessName]
,[ServerName]
,[IdUser]
,[UserName]
,[Source]
,[KeyWords]
,[StackTrace]
,[FirstEvent]
,[LastEvent]
,[TimesNumber]
,[Description]
,[XmlDescription]
,[EventHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_eventlog]
WHERE [IdLog] = @IdLog
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_insert]
@IdLog bigint OUTPUT
, @Id varchar(128) OUTPUT
, @EventlogTypeName varchar(255) OUTPUT
, @ProcessName varchar(255) OUTPUT
, @ServerName varchar(255) OUTPUT
, @IdUser varchar(128) OUTPUT
, @UserName varchar(255) OUTPUT
, @Source varchar(4000) OUTPUT
, @KeyWords varchar(255) OUTPUT
, @StackTrace varchar(4000) OUTPUT
, @FirstEvent datetime OUTPUT
, @LastEvent datetime OUTPUT
, @TimesNumber bigint OUTPUT
, @Description varchar(4000) OUTPUT
, @XmlDescription varchar(4000) OUTPUT
, @EventHash varchar(28) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_eventlog]
(
[Id]
,[EventlogTypeName]
,[ProcessName]
,[ServerName]
,[IdUser]
,[UserName]
,[Source]
,[KeyWords]
,[StackTrace]
,[FirstEvent]
,[LastEvent]
,[TimesNumber]
,[Description]
,[XmlDescription]
,[EventHash]
,[dt_created]
,[dt_updated]
)
VALUES
(
NEWID()
,@EventlogTypeName
,@ProcessName
,@ServerName
,@IdUser
,@UserName
,@Source
,@KeyWords
,@StackTrace
,@FirstEvent
,@LastEvent
,@TimesNumber
,@Description
,@XmlDescription
,@EventHash
,@dt_created
,@dt_updated
)
SELECT 
@IdLog = [IdLog]
,@Id = [Id]
,@EventlogTypeName = [EventlogTypeName]
,@ProcessName = [ProcessName]
,@ServerName = [ServerName]
,@IdUser = [IdUser]
,@UserName = [UserName]
,@Source = [Source]
,@KeyWords = [KeyWords]
,@StackTrace = [StackTrace]
,@FirstEvent = [FirstEvent]
,@LastEvent = [LastEvent]
,@TimesNumber = [TimesNumber]
,@Description = [Description]
,@XmlDescription = [XmlDescription]
,@EventHash = [EventHash]
,@dt_created = [dt_created]
,@dt_updated = [dt_updated]
FROM [dbo].[tb_core_eventlog]
WHERE 
IdLog = SCOPE_IDENTITY()
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_lastevent_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_lastevent_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_lastevent_update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_lastevent_update]
@IdLog bigint 
, @LastEvent datetime 
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON

DECLARE @NewTimesNumber BIGINT
SELECT @NewTimesNumber = MAX([TimesNumber]) + 1 FROM [dbo].[tb_core_eventlog] WHERE [IdLog] = @IdLog

-- returning the error code if any, and the identity field, if any
UPDATE [dbo].[tb_core_eventlog] SET [LastEvent] = @LastEvent, [TimesNumber] = @NewTimesNumber, dt_updated = GETDATE() WHERE [IdLog] = @IdLog

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_search]
@IdLog bigint = null
, @Id varchar(128) = null
, @EventlogTypeName varchar(255) = null
, @ProcessName varchar(255) = null
, @ServerName varchar(255) = null
, @IdUser varchar(128) = null
, @UserName varchar(255) = null
, @Source varchar(4000) = null
, @KeyWords varchar(255) = null
, @StackTrace varchar(4000) = null
, @FirstEvent datetime = null
, @LastEvent datetime = null
, @TimesNumber bigint = null
, @Description varchar(4000) = null
, @XmlDescription varchar(4000) = null
, @EventHash varchar(28) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdLog],
[Id],
[EventlogTypeName],
[ProcessName],
[ServerName],
[IdUser],
[UserName],
[Source],
[KeyWords],
[StackTrace],
[FirstEvent],
[LastEvent],
[TimesNumber],
[Description],
[XmlDescription],
[EventHash],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_eventlog]
WHERE 
([IdLog] LIKE @IdLog OR @IdLog is null)
AND ([Id] LIKE @Id OR @Id is null)
AND ([EventlogTypeName] LIKE @EventlogTypeName OR @EventlogTypeName is null)
AND ([ProcessName] LIKE @ProcessName OR @ProcessName is null)
AND ([ServerName] LIKE @ServerName OR @ServerName is null)
AND ([IdUser] LIKE @IdUser OR @IdUser is null)
AND ([UserName] LIKE @UserName OR @UserName is null)
AND ([Source] LIKE @Source OR @Source is null)
AND ([KeyWords] LIKE @KeyWords OR @KeyWords is null)
AND ([StackTrace] LIKE @StackTrace OR @StackTrace is null)
AND ([FirstEvent] LIKE @FirstEvent OR @FirstEvent is null)
AND ([LastEvent] LIKE @LastEvent OR @LastEvent is null)
AND ([TimesNumber] LIKE @TimesNumber OR @TimesNumber is null)
AND ([Description] LIKE @Description OR @Description is null)
AND ([XmlDescription] LIKE @XmlDescription OR @XmlDescription is null)
AND ([EventHash] LIKE @EventHash OR @EventHash is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdLog]
,[Id]
,[EventlogTypeName]
,[ProcessName]
,[ServerName]
,[IdUser]
,[UserName]
,[Source]
,[KeyWords]
,[StackTrace]
,[FirstEvent]
,[LastEvent]
,[TimesNumber]
,[Description]
,[XmlDescription]
,[EventHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_eventlog]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_eventlog_selall_Paginado]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_eventlog_selall_Paginado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_eventlog_selall_Paginado] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_eventlog_selall_Paginado]
@draw int,
@start int,
@lenght int,
@orderdir nvarchar(10),
@orderby int,
@Search varchar(MAX),
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any

-- returning the error code if any
SELECT  (select count(id) from [tb_core_eventlog]) as RowTotal,* FROM    ( SELECT 
                                  ROW_NUMBER() OVER 
                                     ( ORDER BY 
                                               CASE WHEN @orderby =0 and UPPER(@orderdir) = 'ASC'  THEN [EventHash] END ASC,
                                               CASE WHEN @orderby =0 and UPPER(@orderdir) = 'DESC' THEN [EventHash] END DESC,
                                               CASE WHEN @orderby =1 and UPPER(@orderdir) = 'ASC'  THEN [EventlogTypeName] END ASC,
                                               CASE WHEN @orderby =1 and UPPER(@orderdir) = 'DESC' THEN [EventlogTypeName] END DESC,
                                               CASE WHEN @orderby =2 and UPPER(@orderdir) = 'ASC'  THEN [ProcessName] END ASC,
                                               CASE WHEN @orderby =2 and UPPER(@orderdir) = 'DESC' THEN [ProcessName] END DESC,
                                               CASE WHEN @orderby =3 and UPPER(@orderdir) = 'ASC'  THEN [UserName] END ASC,
                                               CASE WHEN @orderby =3 and UPPER(@orderdir) = 'DESC' THEN [UserName] END DESC,
                                               CASE WHEN @orderby =4 and UPPER(@orderdir) = 'ASC'  THEN [Source] END ASC,
                                               CASE WHEN @orderby =4 and UPPER(@orderdir) = 'DESC' THEN [Source] END DESC,
                                               CASE WHEN @orderby =5 and UPPER(@orderdir) = 'ASC'  THEN [UserName] END ASC,
                                               CASE WHEN @orderby =5 and UPPER(@orderdir) = 'DESC' THEN [UserName] END DESC,
                                               CASE WHEN @orderby =6 and UPPER(@orderdir) = 'ASC'  THEN [LastEvent] END ASC,
                                               CASE WHEN @orderby =6 and UPPER(@orderdir) = 'DESC' THEN [LastEvent] END DESC,
                                               CASE WHEN @orderby =7 and UPPER(@orderdir) = 'ASC'  THEN [TimesNumber] END ASC,
                                               CASE WHEN @orderby =7 and UPPER(@orderdir) = 'DESC' THEN [TimesNumber] END DESC
                                        ) AS RowNum
                                               ,[EventHash]
                                               ,[EventlogTypeName]
                                               ,[ProcessName]
                                               ,[UserName]
                                               ,[Source]
                                               ,[LastEvent]
                                               ,[TimesNumber]
                                        FROM [dbo].[tb_core_eventlog]
                                        Where 
                                        CAST([EventHash] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([EventlogTypeName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([ProcessName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([UserName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([Source] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([LastEvent] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([TimesNumber] AS varchar(MAX)) like '%' + @Search + '%'
             ) as RowsCollection
             where 
       RowNum > @start
    AND RowNum <= (@lenght+@start)
ORDER BY RowNum
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_delete]
@Id varchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[tb_core_groups]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_insert]
@Id nvarchar(128) OUTPUT
, @Name nvarchar(256) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
set @dt_created=getdate()
set @Id=NEWID()
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_groups]
(
[Id]
,[Name]
,[dt_created]
,[dt_updated]
)
VALUES
(
@Id
,@Name
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_search] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_search]
@Id nvarchar(128) = null
, @Name nvarchar(256) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
g.[Id]
,g.[Name]
,g.[dt_created]
,g.[dt_updated]
,
    (SELECT STUFF((
        select ','+ Name 
        from [dbo].[tb_core_rolesgroup] r
		left join AspNetRoles a on r.IdRole = a.id
		where r.IdGroup=g.Id
        FOR XML PATH('')
        )
        ,1,1,'')) AS RolesName
FROM [dbo].[tb_core_groups] g
WHERE 
(g.[Id] LIKE @Id OR @Id is null)
AND (g.[Name] LIKE @Name OR @Name is null)
AND (g.[dt_created] LIKE @dt_created OR @dt_created is null)
AND (g.[dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_selall] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
g.[Id]
,g.[Name]
,g.[dt_created]
,g.[dt_updated]
,
    (SELECT STUFF((
        select ', '+ name 
        from [dbo].[tb_core_rolesgroup] r
		left join AspNetRoles a on r.IdRole = a.id
		where r.IdGroup=g.Id
        FOR XML PATH('')
        )
        ,1,1,'')) AS RolesName
FROM [dbo].[tb_core_groups] g
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_select] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_select]
@Id nvarchar(128),
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
g.[Id]
,g.[Name]
,g.[dt_created]
,g.[dt_updated]
,
    (SELECT STUFF((
        select ','+ name 
        from [dbo].[tb_core_rolesgroup] r
		left join AspNetRoles a on r.IdRole = a.id
		where r.IdGroup=g.Id
        FOR XML PATH('')
        )
        ,1,1,'')) AS RolesName
		,
    (SELECT STUFF((
        select ','+ a.Id 
        from [dbo].[tb_core_rolesgroup] r
		left join AspNetRoles a on r.IdRole = a.id
		where r.IdGroup=g.Id
        FOR XML PATH('')
        )
        ,1,1,'')) AS RolesId
FROM [dbo].[tb_core_groups] g
WHERE Id = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_groups_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_groups_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_groups_update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_groups_update]
@Id varchar(128) OUTPUT
, @Name nvarchar(255) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any
set @dt_updated=getdate()
UPDATE [dbo].[tb_core_groups]
SET
[Name] = @Name
,[dt_created] = @dt_created
,[dt_updated] = @dt_updated
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Name = [Name]
,@dt_created = [dt_created]
,@dt_updated = [dt_updated]
FROM [dbo].[tb_core_groups]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_delete]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[tb_core_modules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_insert]
@Id int OUTPUT
,@Name varchar(4000) OUTPUT
, @Description varchar(4000) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any

INSERT [dbo].[tb_core_modules]
(
--[Id]
[Name]
,[Description]
,[dt_created]
,[dt_updated]
)
VALUES
(
--@Id
@Name
,@Description
,@dt_created
,@dt_updated
)
SELECT 
@Id = [Id]
,@Name = [Name]
,@Description = [Description]
,@dt_created = [dt_created]
,@dt_updated = [dt_updated]
FROM [dbo].[tb_core_modules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_search]
@Id int = null
, @Name varchar(4000) = null
, @Description varchar(4000) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[Name],
[Description],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_modules]
WHERE 
([Id] LIKE @Id OR @Id is null)
AND ([Name] LIKE @Name OR @Name is null)
AND ([Description] LIKE @Description OR @Description is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Name]
,[Description]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_modules]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_select] AS' 
END
GO



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_select]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[Name]
,[Description]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_modules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_modules_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_modules_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_modules_update] AS' 
END
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_modules_update]
@Id int OUTPUT
, @Name varchar(4000) OUTPUT
, @Description varchar(4000) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- updates a row in the table based on the primary key
-- returning the error code if any, and the identity field, if any
set @dt_updated=getdate()
UPDATE [dbo].[tb_core_modules]
SET
[Name] = @Name
,[Description] = @Description
,[dt_created] = @dt_created
,[dt_updated] = @dt_updated
WHERE 
[Id] = @Id
SELECT 
@Id = [Id]
,@Name = [Name]
,@Description = [Description]
,@dt_created = [dt_created]
,@dt_updated = [dt_updated]
FROM [dbo].[tb_core_modules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_parameters_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_parameters_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_parameters_search] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_parameters_search]
 @Owner nvarchar(255) = null
, @Name nvarchar(255) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[Owner],
[Name],
[Value],
[DataType],
[CreatedRecord],
[UserRecord],
[UpdatedRecord],
[LastUserRecord]
FROM [dbo].[tb_core_parameters]
WHERE 
([Owner] LIKE @Owner OR @Owner is null OR [Owner] IS NULL)
AND ([Name] LIKE @Name OR @Name is null)

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_delete]
@IdGroup nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON

--DELETE FROM AspNetUserRoles WHERE GroupId = @IdGroup
DELETE FROM [dbo].[tb_core_rolesgroup] WHERE IdGroup = @IdGroup
--DELETE FROM tb_core_groups WHERE Id = @IdGroup
-- returning the error code if any
SELECT @ErrorCode = @@ERROR


--[sp_ui_tb_core_rolesgroup_delete] '66D3A29F-B107-40CE-874C-A22240ED8E2A', null
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_delete_complete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_delete_complete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_delete_complete] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_delete_complete]
@IdGroup nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON

DELETE FROM AspNetUserRoles WHERE GroupId = @IdGroup
DELETE FROM [dbo].[tb_core_rolesgroup] WHERE IdGroup = @IdGroup
DELETE FROM tb_core_groups WHERE Id = @IdGroup
-- returning the error code if any
SELECT @ErrorCode = @@ERROR


--[sp_ui_tb_core_rolesgroup_delete] '66D3A29F-B107-40CE-874C-A22240ED8E2A', null
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_insert]
@IdRole nvarchar(128) OUTPUT
, @IdGroup nvarchar(128) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
SET @dt_created = Getdate()
INSERT [dbo].[tb_core_rolesgroup]
(
[IdRole]
,[IdGroup]
,[dt_created]
,[dt_updated]
)
VALUES
(
@IdRole
,@IdGroup
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_search]
@IdRole nvarchar(128) = null
, @IdGroup nvarchar(128) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdRole],
[IdGroup],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_rolesgroup]
WHERE 
([IdRole] LIKE @IdRole OR @IdRole is null)
AND ([IdGroup] LIKE @IdGroup OR @IdGroup is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_search_byGroup]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_search_byGroup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_search_byGroup] AS' 
END
GO
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_search_byGroup]
@UserId nvarchar(128) = null
,@IdGroup nvarchar(128) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
RoleGroup.[IdRole]
FROM [dbo].[tb_core_rolesgroup] RoleGroup
WHERE 
 (RoleGroup.[IdGroup] = @IdGroup)
 AND RoleGroup.[IdRole] NOT IN
 (
	 SELECT
	  [RoleId] 
	 FROM [AspNetUserRoles] 
	 WHERE 
	 [RoleId] = RoleGroup.IdRole
	 AND
	 UserId =@UserId
 )
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdRole]
,[IdGroup]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_rolesgroup]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesgroup_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesgroup_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_select] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesgroup_select]
@IdGroup nvarchar(128) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
g.[Id]
,g.[Name]
,g.[dt_created]
,g.[dt_updated]
,
    (SELECT STUFF((
        select ', '+ name 
        from [dbo].[tb_core_rolesgroup] r
		left join AspNetRoles a on r.IdRole = a.id
		where r.IdGroup=g.Id
        FOR XML PATH('')
        )
        ,1,1,'')) AS RolesName
FROM [dbo].[tb_core_groups] g
WHERE Id=@IdGroup
ORDER BY 2
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesmodules_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesmodules_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_insert]
@IdRole nvarchar(128) OUTPUT
, @IdModule nvarchar(128) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_rolesmodules]
(
[IdRole]
,[IdModule]
,[dt_created]
,[dt_updated]
)
VALUES
(
@IdRole
,@IdModule
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesmodules_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesmodules_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_search]
@IdRole nvarchar(128) = null
, @IdModule nvarchar(128) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdRole],
[IdModule],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_rolesmodules]
WHERE 
([IdRole] LIKE @IdRole OR @IdRole is null)
AND ([IdModule] LIKE @IdModule OR @IdModule is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_rolesmodules_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_rolesmodules_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_rolesmodules_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdRole]
,[IdModule]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_rolesmodules]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapchangefrequency_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapchangefrequency_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_insert]
@Id int OUTPUT
, @changefrequency nvarchar(255) OUTPUT
, @description nvarchar(255) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_sitemapchangefrequency]
(
[Id]
,[changefrequency]
,[description]
,[dt_created]
,[dt_updated]
)
VALUES
(
@Id
,@changefrequency
,@description
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapchangefrequency_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapchangefrequency_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_search] AS' 
END
GO


------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_search]
@Id int = null
, @changefrequency nvarchar(255) = null
, @description nvarchar(255) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id],
[changefrequency],
[description],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_sitemapchangefrequency]
WHERE 
([Id] LIKE @Id OR @Id is null)
AND ([changefrequency] LIKE @changefrequency OR @changefrequency is null)
AND ([description] LIKE @description OR @description is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapchangefrequency_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapchangefrequency_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapchangefrequency_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
,[changefrequency]
,[description]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_sitemapchangefrequency]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmetarobotvalues_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_insert] AS' 
END
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_insert]
@id int OUTPUT
, @metarobotvalue nvarchar(255) OUTPUT
, @description nvarchar(255) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_sitemapmetarobotvalues]
(
[id]
,[metarobotvalue]
,[description]
,[dt_created]
,[dt_updated]
)
VALUES
(
@id
,@metarobotvalue
,@description
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmetarobotvalues_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_search] AS' 
END
GO


------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_search]
@id int = null
, @metarobotvalue nvarchar(255) = null
, @description nvarchar(255) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[id],
[metarobotvalue],
[description],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_sitemapmetarobotvalues]
WHERE 
([id] LIKE @id OR @id is null)
AND ([metarobotvalue] LIKE @metarobotvalue OR @metarobotvalue is null)
AND ([description] LIKE @description OR @description is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmetarobotvalues_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmetarobotvalues_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[id]
,[metarobotvalue]
,[description]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_sitemapmetarobotvalues]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmodules_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmodules_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_delete] AS' 
END
GO



-- Delete a row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_delete]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- delete all matching from the table
-- returning the error code if any
DELETE [dbo].[tb_core_sitemapmodules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmodules_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmodules_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_insert]
@Id int OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_sitemapmodules]
(
[Id]
)
VALUES
(
@Id
)
SELECT 
@Id = [Id]
FROM [dbo].[tb_core_sitemapmodules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmodules_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmodules_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_search]
@Id int = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[Id]
FROM [dbo].[tb_core_sitemapmodules]
WHERE 
([Id] LIKE @Id OR @Id is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmodules_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmodules_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
FROM [dbo].[tb_core_sitemapmodules]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapmodules_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapmodules_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_select] AS' 
END
GO



-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapmodules_select]
@Id int
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[Id]
FROM [dbo].[tb_core_sitemapmodules]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_Delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_Delete] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_Delete]
@key nvarchar(255) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
DELETE 
FROM [dbo].[tb_core_sitemapnode]
WHERE [key]=@Key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_insert] AS' 
END
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_insert]
  @key nvarchar(255) OUTPUT
, @order int OUTPUT
, @httpmethod nvarchar(255) OUTPUT
, @resourcekey nvarchar(255) OUTPUT
, @title nvarchar(255) OUTPUT
, @description nvarchar(255) OUTPUT
, @targetframe nvarchar(255) OUTPUT
, @imageurl nvarchar(255) OUTPUT
, @imageurlprotocol nvarchar(255) OUTPUT
, @imageurlhostname nvarchar(255) OUTPUT
, @roles nvarchar(255) OUTPUT
, @visibility nvarchar(255) OUTPUT
, @visibilityprovider nvarchar(255) OUTPUT
, @dynamicnodeprovider nvarchar(255) OUTPUT
, @clickable bit OUTPUT
, @urlresolver nvarchar(255) OUTPUT
, @url nvarchar(255) OUTPUT
, @cacheresolvedurl bit OUTPUT
, @includeambientvaluesinurl bit OUTPUT
, @protocol nvarchar(255) OUTPUT
, @hostName nvarchar(255) OUTPUT
, @canonicalkey nvarchar(255) OUTPUT
, @canonicalurl nvarchar(255) OUTPUT
, @canonicalurlprotocol nvarchar(255) OUTPUT
, @canonicalurlhostname nvarchar(255) OUTPUT
, @metarobotsvalueid int OUTPUT
, @route nvarchar(255) OUTPUT
, @inheritedrouteparameters nvarchar(255) OUTPUT
, @preservedrouteparameters nvarchar(255) OUTPUT
, @area nvarchar(255) OUTPUT
, @controller nvarchar(255) OUTPUT
, @action nvarchar(255) OUTPUT
, @provider nvarchar(255) OUTPUT
, @sitemapfile nvarchar(255) OUTPUT
, @lastmodifieddate datetime OUTPUT
, @changefrequencyid int OUTPUT
, @updatepriorityid int OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
--SELECT TOP 1 @roles=Name FROM [dbo].[AspNetRoles] WHERE id=@roles
set @key=NEWID()
INSERT [dbo].[tb_core_sitemapnode]
(
[key]
,[order]
,[httpmethod]
,[resourcekey]
,[title]
,[description]
,[targetframe]
,[imageurl]
,[imageurlprotocol]
,[imageurlhostname]
,[roles]
,[visibility]
,[visibilityprovider]
,[dynamicnodeprovider]
,[clickable]
,[urlresolver]
,[url]
,[cacheresolvedurl]
,[includeambientvaluesinurl]
,[protocol]
,[hostName]
,[canonicalkey]
,[canonicalurl]
,[canonicalurlprotocol]
,[canonicalurlhostname]
,[metarobotsvalueid]
,[route]
,[inheritedrouteparameters]
,[preservedrouteparameters]
,[area]
,[controller]
,[action]
,[provider]
,[sitemapfile]
,[lastmodifieddate]
,[changefrequencyid]
,[updatepriorityid]
,[dt_created]
,[dt_updated]
)
VALUES
(
@key
--NEWID()
,@order
,@httpmethod
,@resourcekey
,@title
,@description
,@targetframe
,@imageurl
,@imageurlprotocol
,@imageurlhostname
,@roles
,@visibility
,@visibilityprovider
,@dynamicnodeprovider
,@clickable
,@urlresolver
,@url
,@cacheresolvedurl
,@includeambientvaluesinurl
,@protocol
,@hostName
,@canonicalkey
,@canonicalurl
,@canonicalurlprotocol
,@canonicalurlhostname
,@metarobotsvalueid
,@route
,@inheritedrouteparameters
,@preservedrouteparameters
,@area
,@controller
,@action
,@provider
,@sitemapfile
,@lastmodifieddate
,@changefrequencyid
,@updatepriorityid
,Getdate()--@dt_created
,@dt_updated
)
SELECT 
@key = [key]
FROM [dbo].[tb_core_sitemapnode]
WHERE 
[key] = @key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_search] AS' 
END
GO



------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_search]
@key nvarchar(255) = null
, @order int = null
, @httpmethod nvarchar(255) = null
, @resourcekey nvarchar(255) = null
, @title nvarchar(255) = null
, @description nvarchar(255) = null
, @targetframe nvarchar(255) = null
, @imageurl nvarchar(255) = null
, @imageurlprotocol nvarchar(255) = null
, @imageurlhostname nvarchar(255) = null
, @roles nvarchar(255) = null
, @visibility nvarchar(255) = null
, @visibilityprovider nvarchar(255) = null
, @dynamicnodeprovider nvarchar(255) = null
, @clickable bit = null
, @urlresolver nvarchar(255) = null
, @url nvarchar(255) = null
, @cacheresolvedurl bit = null
, @includeambientvaluesinurl bit = null
, @protocol nvarchar(255) = null
, @hostName nvarchar(255) = null
, @canonicalkey nvarchar(255) = null
, @canonicalurl nvarchar(255) = null
, @canonicalurlprotocol nvarchar(255) = null
, @canonicalurlhostname nvarchar(255) = null
, @metarobotsvalueid int = null
, @route nvarchar(255) = null
, @inheritedrouteparameters nvarchar(255) = null
, @preservedrouteparameters nvarchar(255) = null
, @area nvarchar(255) = null
, @controller nvarchar(255) = null
, @action nvarchar(255) = null
, @provider nvarchar(255) = null
, @sitemapfile nvarchar(255) = null
, @lastmodifieddate datetime = null
, @changefrequencyid int = null
, @updatepriorityid int = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[key],
[order],
[httpmethod],
[resourcekey],
[title],
[description],
[targetframe],
[imageurl],
[imageurlprotocol],
[imageurlhostname],
[roles],
[visibility],
[visibilityprovider],
[dynamicnodeprovider],
[clickable],
[urlresolver],
[url],
[cacheresolvedurl],
[includeambientvaluesinurl],
[protocol],
[hostName],
[canonicalkey],
[canonicalurl],
[canonicalurlprotocol],
[canonicalurlhostname],
[metarobotsvalueid],
[route],
[inheritedrouteparameters],
[preservedrouteparameters],
[area],
[controller],
[action],
[provider],
[sitemapfile],
[lastmodifieddate],
[changefrequencyid],
[updatepriorityid],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_sitemapnode]
WHERE 
([key] LIKE @key OR @key is null)
AND ([order] LIKE @order OR @order is null)
AND ([httpmethod] LIKE @httpmethod OR @httpmethod is null)
AND ([resourcekey] LIKE @resourcekey OR @resourcekey is null)
AND ([title] LIKE @title OR @title is null)
AND ([description] LIKE @description OR @description is null)
AND ([targetframe] LIKE @targetframe OR @targetframe is null)
AND ([imageurl] LIKE @imageurl OR @imageurl is null)
AND ([imageurlprotocol] LIKE @imageurlprotocol OR @imageurlprotocol is null)
AND ([imageurlhostname] LIKE @imageurlhostname OR @imageurlhostname is null)
AND ([roles] LIKE @roles OR @roles is null)
AND ([visibility] LIKE @visibility OR @visibility is null)
AND ([visibilityprovider] LIKE @visibilityprovider OR @visibilityprovider is null)
AND ([dynamicnodeprovider] LIKE @dynamicnodeprovider OR @dynamicnodeprovider is null)
AND ([clickable] LIKE @clickable OR @clickable is null)
AND ([urlresolver] LIKE @urlresolver OR @urlresolver is null)
AND ([url] LIKE @url OR @url is null)
AND ([cacheresolvedurl] LIKE @cacheresolvedurl OR @cacheresolvedurl is null)
AND ([includeambientvaluesinurl] LIKE @includeambientvaluesinurl OR @includeambientvaluesinurl is null)
AND ([protocol] LIKE @protocol OR @protocol is null)
AND ([hostName] LIKE @hostName OR @hostName is null)
AND ([canonicalkey] LIKE @canonicalkey OR @canonicalkey is null)
AND ([canonicalurl] LIKE @canonicalurl OR @canonicalurl is null)
AND ([canonicalurlprotocol] LIKE @canonicalurlprotocol OR @canonicalurlprotocol is null)
AND ([canonicalurlhostname] LIKE @canonicalurlhostname OR @canonicalurlhostname is null)
AND ([metarobotsvalueid] LIKE @metarobotsvalueid OR @metarobotsvalueid is null)
AND ([route] LIKE @route OR @route is null)
AND ([inheritedrouteparameters] LIKE @inheritedrouteparameters OR @inheritedrouteparameters is null)
AND ([preservedrouteparameters] LIKE @preservedrouteparameters OR @preservedrouteparameters is null)
AND ([area] LIKE @area OR @area is null)
AND ([controller] LIKE @controller OR @controller is null)
AND ([action] LIKE @action OR @action is null)
AND ([provider] LIKE @provider OR @provider is null)
AND ([sitemapfile] LIKE @sitemapfile OR @sitemapfile is null)
AND ([lastmodifieddate] LIKE @lastmodifieddate OR @lastmodifieddate is null)
AND ([changefrequencyid] LIKE @changefrequencyid OR @changefrequencyid is null)
AND ([updatepriorityid] LIKE @updatepriorityid OR @updatepriorityid is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[key]
,[order]
,[httpmethod]
,[resourcekey]
,[title]
,[description]
,[targetframe]
,[imageurl]
,[imageurlprotocol]
,[imageurlhostname]
,[roles]
,[visibility]
,[visibilityprovider]
,[dynamicnodeprovider]
,[clickable]
,[urlresolver]
,[url]
,[cacheresolvedurl]
,[includeambientvaluesinurl]
,[protocol]
,[hostName]
,[canonicalkey]
,[canonicalurl]
,[canonicalurlprotocol]
,[canonicalurlhostname]
,[metarobotsvalueid]
,[route]
,[inheritedrouteparameters]
,[preservedrouteparameters]
,[area]
,[controller]
,[action]
,[provider]
,[sitemapfile]
,[lastmodifieddate]
,[changefrequencyid]
,[updatepriorityid]
,s.[dt_created]
,s.[dt_updated]
,sr.keyparent
FROM [dbo].[tb_core_sitemapnode] s
LEFT JOIN [tb_core_sitemapnoderelacion] sr
ON sr.keychild = s.[key]
ORDER BY [order] ASC
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_selone]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_selone]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_selone] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_selone]
@key nvarchar(255) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[key]
,[order]
,[httpmethod]
,[resourcekey]
,[title]
,[description]
,[targetframe]
,[imageurl]
,[imageurlprotocol]
,[imageurlhostname]
,[roles]
,[visibility]
,[visibilityprovider]
,[dynamicnodeprovider]
,[clickable]
,[urlresolver]
,[url]
,[cacheresolvedurl]
,[includeambientvaluesinurl]
,[protocol]
,[hostName]
,[canonicalkey]
,[canonicalurl]
,[canonicalurlprotocol]
,[canonicalurlhostname]
,[metarobotsvalueid]
,[route]
,[inheritedrouteparameters]
,[preservedrouteparameters]
,[area]
,[controller]
,[action]
,[provider]
,[sitemapfile]
,[lastmodifieddate]
,[changefrequencyid]
,[updatepriorityid]
,s.[dt_created]
,s.[dt_updated]
,sr.keyparent
FROM [dbo].[tb_core_sitemapnode] s
LEFT JOIN [tb_core_sitemapnoderelacion] sr
ON sr.keychild = s.[key]
WHERE s.[key]=@Key
ORDER BY [order] ASC
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnode_Update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnode_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_Update] AS' 
END
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnode_Update]
  @key nvarchar(255) OUTPUT
, @order int OUTPUT
, @httpmethod nvarchar(255) OUTPUT
, @resourcekey nvarchar(255) OUTPUT
, @title nvarchar(255) OUTPUT
, @description nvarchar(255) OUTPUT
, @targetframe nvarchar(255) OUTPUT
, @imageurl nvarchar(255) OUTPUT
, @imageurlprotocol nvarchar(255) OUTPUT
, @imageurlhostname nvarchar(255) OUTPUT
, @roles nvarchar(255) OUTPUT
, @visibility nvarchar(255) OUTPUT
, @visibilityprovider nvarchar(255) OUTPUT
, @dynamicnodeprovider nvarchar(255) OUTPUT
, @clickable bit OUTPUT
, @urlresolver nvarchar(255) OUTPUT
, @url nvarchar(255) OUTPUT
, @cacheresolvedurl bit OUTPUT
, @includeambientvaluesinurl bit OUTPUT
, @protocol nvarchar(255) OUTPUT
, @hostName nvarchar(255) OUTPUT
, @canonicalkey nvarchar(255) OUTPUT
, @canonicalurl nvarchar(255) OUTPUT
, @canonicalurlprotocol nvarchar(255) OUTPUT
, @canonicalurlhostname nvarchar(255) OUTPUT
, @metarobotsvalueid int OUTPUT
, @route nvarchar(255) OUTPUT
, @inheritedrouteparameters nvarchar(255) OUTPUT
, @preservedrouteparameters nvarchar(255) OUTPUT
, @area nvarchar(255) OUTPUT
, @controller nvarchar(255) OUTPUT
, @action nvarchar(255) OUTPUT
, @provider nvarchar(255) OUTPUT
, @sitemapfile nvarchar(255) OUTPUT
, @lastmodifieddate datetime OUTPUT
, @changefrequencyid int OUTPUT
, @updatepriorityid int OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
--SELECT TOP 1 @roles=Name FROM [dbo].[AspNetRoles] WHERE id=@roles
UPDATE [dbo].[tb_core_sitemapnode]
SET
[order] = @order
,[httpmethod]=@httpmethod
,[resourcekey]=@resourcekey
,[title]=@title
,[description]=@description
,[targetframe]=@targetframe
,[imageurl]=@imageurl
,[imageurlprotocol]=@imageurlprotocol
,[imageurlhostname]=@imageurlhostname
,[roles]=@roles
,[visibility]=@visibility
,[visibilityprovider]=@visibilityprovider
,[dynamicnodeprovider]=@dynamicnodeprovider
,[clickable]=@clickable
,[urlresolver]=@urlresolver
,[url]=@url
,[cacheresolvedurl]=@cacheresolvedurl
,[includeambientvaluesinurl]=@includeambientvaluesinurl
,[protocol]=@protocol
,[hostName]=@hostName
,[canonicalkey]=@canonicalkey
,[canonicalurl]=@canonicalurl
,[canonicalurlprotocol]=@canonicalurlprotocol
,[canonicalurlhostname]=@canonicalurlhostname
,[metarobotsvalueid]=@metarobotsvalueid
,[route]=@route
,[inheritedrouteparameters]=@inheritedrouteparameters
,[preservedrouteparameters]=@preservedrouteparameters
,[area]=@area
,[controller]=@controller
,[action]=@action
,[provider]=@provider
,[sitemapfile]=@sitemapfile
,[lastmodifieddate]=Getdate()
,[changefrequencyid]=@changefrequencyid
,[updatepriorityid]=@updatepriorityid
,[dt_updated]=Getdate()
WHERE 
[key] = @key
SELECT 
@key = [key]
FROM [dbo].[tb_core_sitemapnode]
WHERE 
[key] = @key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnoderelacion_Delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnoderelacion_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_Delete] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_Delete]
@key nvarchar(255) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
DELETE
FROM [dbo].[tb_core_sitemapnoderelacion]
WHERE [keychild]=@Key
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnoderelacion_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnoderelacion_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_insert]
@keyparent nvarchar(255) OUTPUT
, @keychild nvarchar(255) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_sitemapnoderelacion]
(
[keyparent]
,[keychild]
,[dt_created]
,[dt_updated]
)
VALUES
(
@keyparent
,@keychild
,getdate()
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnoderelacion_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnoderelacion_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_search] AS' 
END
GO



------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_search]
@keyparent nvarchar(255) = null
, @keychild nvarchar(255) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[keyparent],
[keychild],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_sitemapnoderelacion]
WHERE 
([keyparent] LIKE @keyparent OR @keyparent is null)
AND ([keychild] LIKE @keychild OR @keychild is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnoderelacion_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnoderelacion_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[keyparent]
,[keychild]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_sitemapnoderelacion]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapnoderelacion_update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapnoderelacion_update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_update] AS' 
END
GO
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapnoderelacion_update]
@keyparent nvarchar(255) 
, @keychild nvarchar(255) 
, @dt_updated datetime 
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
UPDATE [dbo].[tb_core_sitemapnoderelacion]
SET
[keyparent] = @keyparent
,[keychild] = @keychild
,[dt_updated] = GETDATE()
WHERE keychild = @keychild
-- returning the error code if any
SELECT @ErrorCode = @@ERROR

GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapupdatepriority_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapupdatepriority_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:41
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_insert]
@id int OUTPUT
, @updatepriority nvarchar(255) OUTPUT
, @description nvarchar(255) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_sitemapupdatepriority]
(
[id]
,[updatepriority]
,[description]
,[dt_created]
,[dt_updated]
)
VALUES
(
@id
,@updatepriority
,@description
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapupdatepriority_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapupdatepriority_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_search] AS' 
END
GO


------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:41
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_search]
@id int = null
, @updatepriority nvarchar(255) = null
, @description nvarchar(255) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[id],
[updatepriority],
[description],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_sitemapupdatepriority]
WHERE 
([id] LIKE @id OR @id is null)
AND ([updatepriority] LIKE @updatepriority OR @updatepriority is null)
AND ([description] LIKE @description OR @description is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_sitemapupdatepriority_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_sitemapupdatepriority_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:41
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_sitemapupdatepriority_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[id]
,[updatepriority]
,[description]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_sitemapupdatepriority]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userlog_id_select]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userlog_id_select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userlog_id_select] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userlog_id_select]
@Id VARCHAR(128)
,@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdUserLog]
,[Id]
,[UserlogTypeName]
,[AreaName]
,[ControllerName]
,[ActionName]
,[IdUser]
,[UserName]
,[KeyWords]
,[Description]
,[Params]
,[Url]
,[AccessDate]
,[LogHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_userlog]
WHERE [Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userlog_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userlog_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userlog_insert] AS' 
END
GO
-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userlog_insert]
@Params text
, @IdUserLog bigint OUTPUT -- AUTONUMERICO AUTOGENERADO POR LA BASE DE DATOS CAMPO IDENTITY
, @Id varchar(128) OUTPUT -- CAMPO STRING GENERADO A PARTIR DEL GUID QUE ENTREGA LA FUNCION NEWID()
, @UserlogTypeName varchar(255) OUTPUT
, @AreaName varchar(255) OUTPUT
, @ControllerName varchar(255) OUTPUT
, @ActionName varchar(255) OUTPUT
, @IdUser varchar(128) OUTPUT
, @UserName varchar(255) OUTPUT
, @KeyWords varchar(255) OUTPUT
, @Description varchar(4000) OUTPUT
, @Url varchar(4000) OUTPUT
, @AccessDate datetime OUTPUT
, @LogHash varchar(28) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
set @Id = newid()
SET @dt_created = GETDATE()


set transaction isolation level read uncommitted
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any

-- -- -- INSERT [dbo].[tb_core_userlog]
-- -- -- (
-- -- -- [Id]
-- -- -- ,[UserlogTypeName]
-- -- -- ,[AreaName]
-- -- -- ,[ControllerName]
-- -- -- ,[ActionName]
-- -- -- ,[IdUser]
-- -- -- ,[UserName]
-- -- -- ,[KeyWords]
-- -- -- ,[Description]
-- -- -- ,[Params]
-- -- -- ,[Url]
-- -- -- ,[AccessDate]
-- -- -- ,[LogHash]
-- -- -- ,[dt_created]
-- -- -- ,[dt_updated]
-- -- -- )
-- -- -- VALUES
-- -- -- (
-- -- -- @Id
-- -- -- ,@UserlogTypeName
-- -- -- ,@AreaName
-- -- -- ,@ControllerName
-- -- -- ,@ActionName
-- -- -- ,@IdUser
-- -- -- ,@UserName
-- -- -- ,@KeyWords
-- -- -- ,@Description
-- -- -- ,@Params
-- -- -- ,@Url
-- -- -- ,@AccessDate
-- -- -- ,@LogHash
-- -- -- ,@dt_created
-- -- -- ,@dt_updated
-- -- -- )
-- -- -- SELECT 
-- -- -- @IdUserLog = [IdUserLog]
-- -- -- ,@Id = [Id]
-- -- -- ,@UserlogTypeName = [UserlogTypeName]
-- -- -- ,@AreaName = [AreaName]
-- -- -- ,@ControllerName = [ControllerName]
-- -- -- ,@ActionName = [ActionName]
-- -- -- ,@IdUser = [IdUser]
-- -- -- ,@UserName = [UserName]
-- -- -- ,@KeyWords = [KeyWords]
-- -- -- ,@Description = [Description]
-- -- -- ,@Url = [Url]
-- -- -- ,@AccessDate = [AccessDate]
-- -- -- ,@LogHash = [LogHash]
-- -- -- ,@dt_created = [dt_created]
-- -- -- ,@dt_updated = [dt_updated]
-- -- -- FROM [dbo].[tb_core_userlog]
-- -- -- WHERE 
-- -- -- IdUserLog = SCOPE_IDENTITY()
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userlog_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userlog_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userlog_search] AS' 
END
GO






------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userlog_search]
@IdUserLog bigint = null
, @Id varchar(128) = null
, @UserlogTypeName varchar(255) = null
, @AreaName varchar(255) = null
, @ControllerName varchar(255) = null
, @ActionName varchar(255) = null
, @IdUser varchar(128) = null
, @UserName varchar(255) = null
, @KeyWords varchar(255) = null
, @Description varchar(4000) = null
, @Url varchar(4000) = null
, @AccessDate datetime = null
, @LogHash varchar(28) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdUserLog],
[Id],
[UserlogTypeName],
[AreaName],
[ControllerName],
[ActionName],
[IdUser],
[UserName],
[KeyWords],
[Description],
[Params],
[Url],
[AccessDate],
[LogHash],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_userlog]
WHERE 
([IdUserLog] LIKE @IdUserLog OR @IdUserLog is null)
AND ([Id] LIKE @Id OR @Id is null)
AND ([UserlogTypeName] LIKE @UserlogTypeName OR @UserlogTypeName is null)
AND ([AreaName] LIKE @AreaName OR @AreaName is null)
AND ([ControllerName] LIKE @ControllerName OR @ControllerName is null)
AND ([ActionName] LIKE @ActionName OR @ActionName is null)
AND ([IdUser] LIKE @IdUser OR @IdUser is null)
AND ([UserName] LIKE @UserName OR @UserName is null)
AND ([KeyWords] LIKE @KeyWords OR @KeyWords is null)
AND ([Description] LIKE @Description OR @Description is null)
AND ([Url] LIKE @Url OR @Url is null)
AND ([AccessDate] LIKE @AccessDate OR @AccessDate is null)
AND ([LogHash] LIKE @LogHash OR @LogHash is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userlog_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userlog_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userlog_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userlog_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdUserLog]
,[Id]
,[UserlogTypeName]
,[AreaName]
,[ControllerName]
,[ActionName]
,[IdUser]
,[UserName]
,[KeyWords]
,[Description]
,[Params]
,[Url]
,[AccessDate]
,[LogHash]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_userlog]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userlog_selall_Paginado]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userlog_selall_Paginado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userlog_selall_Paginado] AS' 
END
GO
-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 31/3/2016 12:28:52
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userlog_selall_Paginado]
@draw int,
@start int,
@lenght int,
@orderdir nvarchar(10),
@orderby int,
@Search varchar(MAX),
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
             SELECT  (select count(id) from tb_core_userlog) as RowTotal,* FROM    ( SELECT 
                                  ROW_NUMBER() OVER 
                                     ( ORDER BY 
                                               CASE WHEN @orderby =0 and UPPER(@orderdir) = 'ASC'  THEN Id END ASC,
                                               CASE WHEN @orderby =0 and UPPER(@orderdir) = 'DESC' THEN Id END DESC,
                                               CASE WHEN @orderby =1 and UPPER(@orderdir) = 'ASC'  THEN [UserlogTypeName] END ASC,
                                               CASE WHEN @orderby =1 and UPPER(@orderdir) = 'DESC' THEN [UserlogTypeName] END DESC,
                                               CASE WHEN @orderby =2 and UPPER(@orderdir) = 'ASC'  THEN [AreaName] END ASC,
                                               CASE WHEN @orderby =2 and UPPER(@orderdir) = 'DESC' THEN [AreaName] END DESC,
                                               CASE WHEN @orderby =3 and UPPER(@orderdir) = 'ASC'  THEN [ControllerName] END ASC,
                                               CASE WHEN @orderby =3 and UPPER(@orderdir) = 'DESC' THEN [ControllerName] END DESC,
                                               CASE WHEN @orderby =4 and UPPER(@orderdir) = 'ASC'  THEN [ActionName] END ASC,
                                               CASE WHEN @orderby =4 and UPPER(@orderdir) = 'DESC' THEN [ActionName] END DESC,
                                               CASE WHEN @orderby =5 and UPPER(@orderdir) = 'ASC'  THEN [UserName] END ASC,
                                               CASE WHEN @orderby =5 and UPPER(@orderdir) = 'DESC' THEN [UserName] END DESC,
                                               CASE WHEN @orderby =6 and UPPER(@orderdir) = 'ASC'  THEN [AccessDate] END ASC,
                                               CASE WHEN @orderby =6 and UPPER(@orderdir) = 'DESC' THEN [AccessDate] END DESC
                                        ) AS RowNum
                                        ,[Id]
                                        ,[UserlogTypeName]
                                        ,[AreaName]
                                        ,[ControllerName]
                                        ,[ActionName]
                                        ,[UserName]
                                        ,[AccessDate]
                                        FROM [dbo].[tb_core_userlog]
                                        Where 
                                        [Id] like '%' + @Search + '%'
                                        OR CAST([UserlogTypeName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([AreaName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([ControllerName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([ActionName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([UserName] AS varchar(MAX)) like '%' + @Search + '%'
                                        OR CAST([AccessDate] AS varchar(MAX)) like '%' + @Search + '%'
             ) as RowsCollection
             where 
       RowNum > @start
    AND RowNum <= (@lenght+@start)
ORDER BY RowNum
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdata_aspnetusers_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdata_aspnetusers_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdata_aspnetusers_selall] AS' 
END
GO

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdata_aspnetusers_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
select 
US.[ID],
US.[Email],
US.[UserName],
REL.[FullName],
REL.[Observation]
from AspNetUsers US
left join tb_core_usersdata REL on US.[Id]=REL.[IdUser]
ORDER BY US.[Id]
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdata_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdata_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdata_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdata_insert]
@ImageProfile image
, @IdUser nvarchar(128) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
, @Observation nvarchar(MAX)
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_usersdata]
(
[IdUser]
,[ImageProfile]
,[dt_created]
,[dt_updated]
,Observation
)
VALUES
(
@IdUser
,@ImageProfile
,@dt_created
,@dt_updated
,@Observation
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdata_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdata_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdata_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdata_search]
@IdUser nvarchar(128) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdUser],
[ImageProfile],
[dt_created],
[dt_updated],
Observation
FROM [dbo].[tb_core_usersdata]
WHERE 
([IdUser] LIKE @IdUser OR @IdUser is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdata_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdata_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdata_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdata_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdUser]
,[ImageProfile]
,[dt_created]
,[dt_updated]
,[FullName]
,Observation
FROM [dbo].[tb_core_usersdata]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdetail_Sel2Filtered]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdetail_Sel2Filtered]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdetail_Sel2Filtered] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdetail_Sel2Filtered]
@Filter nvarchar(max) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
select 
[id],
[Email] as Email,
[UserName]as UserName,
[FullName],
--isnull([Observation],'') as [Observation],
isnull([PhoneNumber],'') as [PhoneNumber],
[ImageProfile],
Observation,
TeamViewerID
from AspNetUsers US
Left Join [bd_utp_core_qa].[dbo].[tb_core_usersdata] Dt on Dt.IdUser=US.Id
where FullName like '&' + @Filter + '%'
-- returning the error code if any
SELECT @ErrorCode = @@ERROR

GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersdetail_SelOne]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersdetail_SelOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersdetail_SelOne] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersdetail_SelOne] 
@IdUser nvarchar(128) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
-- [dbo].[sp_ui_tb_core_usersdetail_SelOne] '980573dd-54e3-4bc8-a53e-6f7485d0e767',0

/*
 SELECT *
 FROM AspNetUsers
 */

/*SE OBTIENEN DATOS DESDE AD Y PAYROLL*/

       DECLARE @RutJefe VARCHAR(15),
            @MailJefe VARCHAR(50),
            @MailUsuario VARCHAR(50),
            @RutUsuario VARCHAR(50),
            @FullName VARCHAR(200),
            @FullNameJefe VARCHAR(200)
            
    

    /*OBTENEMOS EMAIL REGISTRADO EN CORE*/    
    SELECT  @MailUsuario = [Email]
    FROM    [dbo].[AspNetUsers]
    WHERE   [Id] = @IdUser

    /*OBTENEMOS RUT EN AD*/   

    
 --   SELECT  @RutUsuario = SUBSTRING ([EmployeeID], 1, Len([EmployeeID]) - 2 ),
 --           @FullName = Name
 --   FROM    [lansweeperdb].[dbo].[tblADusers]
 --   WHERE   RTRIM(LTRIM(email)) = @MailUsuario


	--DECLARE @RutJefDirSinGuion INT

	--BEGIN TRY 
	--	SELECT	@RutJefDirSinGuion = CONVERT(VARCHAR(10),REPLACE(PD.[valor_columna],'.0000','')) 
	--	FROM	LINK_WINPER.[winper].[dbo].[personal_dinamico] PD
	--	WHERE	PD.[nombre_interno] = 'RutJefDir'
	--	AND		PD.[nro_trabajador] = @RutUsuario
	--END TRY
	--BEGIN CATCH
	--	SET @RutJefDirSinGuion = ''
	--END CATCH
	

 --   SELECT  @RutJefe = CONVERT(VARCHAR(10),REPLACE(PC.[nro_trabajador],'.0000','')) + '-' + CONVERT(VARCHAR(10),PC.[dv_trabajador])
	--FROM  LINK_WINPER.[winper].[dbo].[personal_control] PC
	--where PC.[nro_trabajador] = @RutJefDirSinGuion

	  
    
 --   IF( @RutJefe = '') 
 --   BEGIN
 --       SET @RutJefe = '12848446-9'
 --   END 


 --   /*OBTENEMOS MAIL DEL JEFE EN AD*/    
 --   SELECT  @MailJefe = email,
 --           @FullNameJefe = Name
 --   FROM    [lansweeperdb].[dbo].[tblADusers]
 --   WHERE   RTRIM(LTRIM(EmployeeID)) = IsNull(@RutJefe,'12848446-9')-- si no esta, debemos indicar un rut por defecto
    


select 
    [id],
    [Email] as Email,
    [UserName]as UserName,
    @FullName as FullName,--[FullName],
    --isnull([Observation],'') as [Observation],
    isnull([PhoneNumber],'') as [PhoneNumber],
    [ImageProfile],
    Observation,
    TeamViewerID,
    @RutUsuario AS RutUsuario,
    @RutJefe    AS RutJefe,
    @MailJefe   AS MailJefe,
    @FullNameJefe AS NombreJefe,
    'ci.upor@ultraport.cl' AS LintingCtrlInt 
    
from AspNetUsers US
Left Join [dbo].[tb_core_usersdata] Dt on Dt.IdUser=US.Id
where id=@IdUser
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_delete]
@IdUser nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any

DELETE FROM [dbo].[tb_core_usersgroup] WHERE IdUser = @IdUser

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_group_delete]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_group_delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_group_delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_group_delete]
@IdUser nvarchar(128)
,@IdGroup nvarchar(128)
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any

DELETE FROM [dbo].[tb_core_usersgroup] WHERE IdUser = @IdUser AND IdGroup=@IdGroup

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_group_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_group_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_group_search] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_group_search]
@IdUser nvarchar(128) = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT
[IdGroup]
FROM [dbo].[tb_core_usersgroup]
WHERE 
[IdUser] = @IdUser
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_insert]
@IdUser nvarchar(128) OUTPUT
, @IdGroup nvarchar(128) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
SET @dt_created = Getdate()
INSERT [dbo].[tb_core_usersgroup]
(
[IdUser]
,[IdGroup]
,[dt_created]
,[dt_updated]
)
VALUES
(
@IdUser
,@IdGroup
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_search] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_search]
@IdUser nvarchar(128) = null
, @IdGroup nvarchar(128) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdUser],
[IdGroup],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_usersgroup]
WHERE 
([IdUser] LIKE @IdUser OR @IdUser is null)
AND ([IdGroup] LIKE @IdGroup OR @IdGroup is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersgroup_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersgroup_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersgroup_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdUser]
,[IdGroup]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_usersgroup]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_userspermission_sel]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_userspermission_sel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_userspermission_sel] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_userspermission_sel]
@IdUser nvarchar(128) OUTPUT,
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any

select 
 Gr.Name as Name
,Gr.Id as Id
,'Grupo' as [Type]
from [dbo].tb_core_usersgroup RoUs
left join [dbo].[AspNetUsers] Us on Us.id=RoUs.IdUser
left join [dbo].[tb_core_groups] Gr on RoUs.IdGroup=Gr.Id
where US.Id = @IdUser
Union
select 
AR.Name as Name
,Rl.RoleId as Id
,'Permiso' as [Type]
from 
[dbo].[AspNetUserRoles] Rl
left join [dbo].[AspNetRoles] AR on AR.Id=Rl.RoleId
where Rl.UserId=@IdUser
and (Rl.GroupId='' or Rl.GroupId IS NULL)
Order by 3

-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersprefs_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersprefs_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_insert] AS' 
END
GO



-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_insert]
@IdUser nvarchar(128) OUTPUT
, @Name nvarchar(128) OUTPUT
, @Value nvarchar(4000) OUTPUT
, @dt_created datetime OUTPUT
, @dt_updated datetime OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[tb_core_usersprefs]
(
[IdUser]
,[Name]
,[Value]
,[dt_created]
,[dt_updated]
)
VALUES
(
@IdUser
,@Name
,@Value
,@dt_created
,@dt_updated
)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersprefs_search]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersprefs_search]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_search] AS' 
END
GO




------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_search]
@IdUser nvarchar(128) = null
, @Name nvarchar(128) = null
, @Value nvarchar(4000) = null
, @dt_created datetime = null
, @dt_updated datetime = null
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table according to search criteria
-- returning the error code if any
SELECT 
[IdUser],
[Name],
[Value],
[dt_created],
[dt_updated]
FROM [dbo].[tb_core_usersprefs]
WHERE 
([IdUser] LIKE @IdUser OR @IdUser is null)
AND ([Name] LIKE @Name OR @Name is null)
AND ([Value] LIKE @Value OR @Value is null)
AND ([dt_created] LIKE @dt_created OR @dt_created is null)
AND ([dt_updated] LIKE @dt_updated OR @dt_updated is null)
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_usersprefs_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_usersprefs_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_selall] AS' 
END
GO



-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 29/3/2016 16:31:04
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_tb_core_usersprefs_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT 
[IdUser]
,[Name]
,[Value]
,[dt_created]
,[dt_updated]
FROM [dbo].[tb_core_usersprefs]
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_webclass_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_webclass_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_webclass_selall] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_ui_tb_core_webclass_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT [Id]
      ,[WebClass]
      ,[Name]
      ,[CreatedRecord]
      ,[UserRecord]
      ,[UpdatedRecord]
      ,[LastUserRecord]
  FROM [dbo].[tb_core_webclass]

SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_tb_core_webicon_selall]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_tb_core_webicon_selall]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_tb_core_webicon_selall] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_ui_tb_core_webicon_selall]
@ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- selects all rows from the table
-- returning the error code if any
SELECT [Id]
      ,[WebIcon]
      ,[Name]
      ,[CreatedRecord]
      ,[UserRecord]
      ,[UpdatedRecord]
      ,[LastUserRecord]
  FROM [dbo].[tb_core_webicon]

SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_UserAccount_insert]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_UserAccount_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_UserAccount_insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_ui_UserAccount_insert]
@Id nvarchar(128) OUTPUT
, @Email nvarchar(256) OUTPUT
, @EmailConfirmed bit OUTPUT
, @PasswordHash nvarchar(4000) OUTPUT
, @SecurityStamp nvarchar(4000) OUTPUT
, @PhoneNumber nvarchar(4000) OUTPUT
, @PhoneNumberConfirmed bit OUTPUT
, @TwoFactorEnabled bit OUTPUT
, @LockoutEndDateUtc datetime OUTPUT
, @LockoutEnabled bit OUTPUT
, @AccessFailedCount int OUTPUT
, @UserName nvarchar(256) OUTPUT
, @Name nvarchar(128) OUTPUT
, @Observation nvarchar(MAX) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
SET @Id = NEWID()
-- inserts a new row into the table
-- returning the error code if any, and the identity field, if any
INSERT [dbo].[AspNetUsers]
(
[Id]
,[Email]
,[EmailConfirmed]
,[PasswordHash]
,[SecurityStamp]
,[PhoneNumber]
,[PhoneNumberConfirmed]
,[TwoFactorEnabled]
,[LockoutEndDateUtc]
,[LockoutEnabled]
,[AccessFailedCount]
,[UserName]
)
VALUES
(
@Id
,@Email
,@EmailConfirmed
,@PasswordHash
,@SecurityStamp
,@PhoneNumber
,@PhoneNumberConfirmed
,@TwoFactorEnabled
,@LockoutEndDateUtc
,@LockoutEnabled
,@AccessFailedCount
,@UserName
)
INSERT [dbo].[tb_core_usersdata]
(
[IdUser]
--,[ImageProfile]
,[Observation]
,[FullName]
,[dt_created]
,[TeamViewerID]
)
VALUES
(
@Id
--,@ImageProfile
,@Observation
,@Name
,getdate()
,'Sin Id Asociado'
)
SELECT 
@Id = [Id]
,@Email = [Email]
,@EmailConfirmed = [EmailConfirmed]
,@PasswordHash = [PasswordHash]
,@SecurityStamp = [SecurityStamp]
,@PhoneNumber = [PhoneNumber]
,@PhoneNumberConfirmed = [PhoneNumberConfirmed]
,@TwoFactorEnabled = [TwoFactorEnabled]
,@LockoutEndDateUtc = [LockoutEndDateUtc]
,@LockoutEnabled = [LockoutEnabled]
,@AccessFailedCount = [AccessFailedCount]
,@UserName = [UserName]
FROM [dbo].[AspNetUsers]
WHERE 
[Id] = @Id
-- returning the error code if any
SELECT @ErrorCode = @@ERROR
GO
/****** Object:  StoredProcedure [dbo].[sp_ui_UserAccount_Update]    Script Date: 03-01-2020 21:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ui_UserAccount_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ui_UserAccount_Update] AS' 
END
GO
-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- CodeTrigger is an Exotechnic Corporation (UK) Ltd Product
-- This script was generated on 9/3/2016 18:23:40
------------------------------------------------------------
ALTER PROCEDURE [dbo].[sp_ui_UserAccount_Update]
@Email nvarchar(256) OUTPUT
, @PasswordHash nvarchar(4000) OUTPUT
, @SecurityStamp nvarchar(4000) OUTPUT
, @Name nvarchar(128) OUTPUT
, @PhoneNumber nvarchar(4000) OUTPUT
, @Observation nvarchar(MAX) OUTPUT
, @Id nvarchar(128) OUTPUT
, @TeamViewerId nvarchar(128) OUTPUT
, @ErrorCode int OUTPUT
AS
SET NOCOUNT ON
-- insert info on data table
       UPDATE [tb_core_usersdata] 
             SET
             Observation = @Observation
             ,FullName=@Name
             ,TeamViewerID=@TeamViewerId
       WHERE [IdUser]=@Id

       UPDATE AspNetUsers set
       Email = @Email,
       PhoneNumber=@PhoneNumber
       where id=@Id
SELECT @ErrorCode = @@ERROR
GO
