
/****** Object:  Table [dbo].[Actors]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActorUsers]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActorUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[ActorId] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_ActorUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/5/2026 3:51:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/5/2026 3:51:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/5/2026 3:51:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/5/2026 3:51:21 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/5/2026 3:51:21 PM ******/
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
	[DepartmentId] [uniqueidentifier] NULL,
	[DesignationId] [uniqueidentifier] NULL,
	[FirstName] [nvarchar](512) NULL,
	[Gender] [int] NOT NULL,
	[LastName] [nvarchar](512) NULL,
	[Phone] [nvarchar](max) NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[SupervisorId] [nvarchar](450) NULL,
	[SupplierPersonId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandProductSizeMLs]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandProductSizeMLs](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[SizeMLId] [uniqueidentifier] NOT NULL,
	[BrandId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_BrandProductSizeMLs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commands]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commands](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Commands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Designations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignLists]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignLists](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_DesignLists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DirectSchemaInstances]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectSchemaInstances](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RequesterUserId] [uniqueidentifier] NOT NULL,
	[FormValueId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[HasEnded] [bit] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
 CONSTRAINT [PK_DirectSchemaInstances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [int] NOT NULL,
	[Pattern] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[NameAr] [nvarchar](max) NOT NULL,
	[PredefinedValues] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormFields]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormFields](
	[Id] [uniqueidentifier] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[SortIndex] [int] NOT NULL,
	[FormId] [uniqueidentifier] NOT NULL,
	[FieldId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_FormFields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormFieldValues]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormFieldValues](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](max) NULL,
	[FormValueId] [uniqueidentifier] NOT NULL,
	[FormFieldId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_FormFieldValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forms]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forms](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[NameAr] [nvarchar](max) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[IsSubForm] [bit] NOT NULL,
 CONSTRAINT [PK_Forms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormValueAttachments]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormValueAttachments](
	[Id] [uniqueidentifier] NOT NULL,
	[FormValueId] [uniqueidentifier] NULL,
	[FormId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Length] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[AttachmentId] [uniqueidentifier] NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FormValueAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormValues]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormValues](
	[Id] [uniqueidentifier] NOT NULL,
	[FormId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_FormValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupNames]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupNames](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_GroupNames] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [uniqueidentifier] NOT NULL,
	[NotificationType] [int] NOT NULL,
	[Payload] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationTokens]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTokens](
	[Id] [uniqueidentifier] NOT NULL,
	[Token] [nvarchar](max) NOT NULL,
	[AppUserId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeviceId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_NotificationTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Mobile] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Position] [int] NULL,
	[AddressId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductionLines]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionLines](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ProductionLines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectIssues]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectIssues](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](450) NOT NULL,
	[AssignToId] [nvarchar](450) NOT NULL,
	[IssueStatus] [int] NOT NULL,
	[IssuePriority] [int] NOT NULL,
	[IssueDate] [datetime2](7) NULL,
	[DueDate] [datetime2](7) NULL,
	[ClosedDate] [datetime2](7) NULL,
	[SolutionPlan] [nvarchar](max) NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[IsSolved] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectIssues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectRisks]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectRisks](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[OwnerId] [nvarchar](450) NOT NULL,
	[ApprovedById] [nvarchar](450) NOT NULL,
	[RiskStatus] [int] NOT NULL,
	[RiskProbability] [int] NOT NULL,
	[RiskImpact] [int] NOT NULL,
	[RiskPriority] [int] NOT NULL,
	[RiskResponse] [int] NOT NULL,
	[RiskDate] [datetime2](7) NULL,
	[ResponsePlan] [nvarchar](max) NULL,
	[ContingencyPlan] [nvarchar](max) NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectRisks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[OwnerId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[SavingStatus] [int] NOT NULL,
	[ProductionLineId] [uniqueidentifier] NOT NULL,
	[BrandProductSizeMlId] [uniqueidentifier] NOT NULL,
	[BrandProductSizeMlCode] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ChatId] [uniqueidentifier] NULL,
	[ProjectType] [int] NOT NULL,
	[IsStockUpdated] [bit] NOT NULL,
	[ConsultantId] [uniqueidentifier] NULL,
	[ContractorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projectStatusLogs]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projectStatusLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Ideal] [float] NOT NULL,
	[Remaining] [float] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_projectStatusLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTags]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTags](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[TagId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectTasks]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectTasks](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[AssignedToId] [uniqueidentifier] NULL,
	[ApprovalById] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](450) NULL,
	[AcutualDateEnd] [datetime2](7) NULL,
	[AcutualDateStart] [datetime2](7) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
	[ScheduledDateStart] [datetime2](7) NOT NULL,
	[ScheduledlDateEnd] [datetime2](7) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[TaskNr] [int] IDENTITY(1,1) NOT NULL,
	[Progress] [float] NOT NULL,
	[TaskOrder] [int] NULL,
	[IsCloseWithSimilarTag] [bit] NOT NULL,
	[SortIndex] [float] NULL,
	[OutlineLevel] [int] NULL,
	[OutlineNumber] [nvarchar](max) NULL,
	[IsSummary] [bit] NOT NULL,
	[Duration] [float] NULL,
	[Weight] [float] NULL,
	[IsPrimaryTask] [bit] NOT NULL,
	[PrimaryTaskId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ProjectTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationRequestComments]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationRequestComments](
	[Id] [uniqueidentifier] NOT NULL,
	[QuotationRequestDetailId] [uniqueidentifier] NOT NULL,
	[HtmlBody] [nvarchar](max) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[FromSupplier] [bit] NOT NULL,
 CONSTRAINT [PK_QuotationRequestComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationRequestDetails]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationRequestDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[QuotationRequestId] [uniqueidentifier] NOT NULL,
	[ComponentDetailKey] [nvarchar](max) NOT NULL,
	[ComponentDetailValue] [nvarchar](max) NULL,
	[ComponentDetailType] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuotationRequestDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationRequestHistories]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationRequestHistories](
	[Id] [uniqueidentifier] NOT NULL,
	[QuotationRequestDetailId] [uniqueidentifier] NOT NULL,
	[SupplierValue] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[QuotationActionType] [int] NOT NULL,
	[QuotationRequestSupplierId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_QuotationRequestHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationRequests]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationRequests](
	[Id] [uniqueidentifier] NOT NULL,
	[ComponentId] [uniqueidentifier] NOT NULL,
	[ComponentName] [nvarchar](max) NOT NULL,
	[ComponentDescription] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[Code] [nvarchar](max) NOT NULL,
	[ProjectId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_QuotationRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationRequestSuppliers]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationRequestSuppliers](
	[Id] [uniqueidentifier] NOT NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[QuotationRequestId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[ReplyDate] [datetime2](7) NULL,
 CONSTRAINT [PK_QuotationRequestSuppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationSupplierReplyDetails]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationSupplierReplyDetails](
	[Id] [uniqueidentifier] NOT NULL,
	[QuotationDetailId] [uniqueidentifier] NOT NULL,
	[QuotationSupplierId] [uniqueidentifier] NOT NULL,
	[SupplierValue] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_QuotationSupplierReplyDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealTimeConnections]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealTimeConnections](
	[Id] [uniqueidentifier] NOT NULL,
	[ConnectionId] [nvarchar](max) NOT NULL,
	[UserAgent] [nvarchar](max) NULL,
	[Connected] [bit] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ConnectedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_RealTimeConnections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefreshTokens]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshTokens](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Token] [nvarchar](512) NOT NULL,
	[Expires] [datetime2](7) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedByIp] [nvarchar](50) NOT NULL,
	[Revoked] [datetime2](7) NULL,
	[RevokedByIp] [nvarchar](50) NULL,
	[ReplacedByToken] [nvarchar](512) NULL,
	[ReasonRevoked] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RefreshTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RiskProposedSolutions]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RiskProposedSolutions](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsAcceptedSolution] [bit] NOT NULL,
	[ProjectRiskId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_RiskProposedSolutions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaInstanceHistories]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaInstanceHistories](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[CommandName] [nvarchar](max) NOT NULL,
	[SchemaInstanceId] [uniqueidentifier] NULL,
	[DirectSchemaInstanceId] [uniqueidentifier] NULL,
	[FromActorId] [uniqueidentifier] NULL,
	[ToActorId] [uniqueidentifier] NULL,
	[FromUserId] [uniqueidentifier] NULL,
	[ToUserId] [uniqueidentifier] NULL,
	[Order] [int] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[ActionDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[FormValueId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SchemaInstanceHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaInstances]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaInstances](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[CurrentSchemaStepId] [uniqueidentifier] NOT NULL,
	[RequesterUserId] [uniqueidentifier] NOT NULL,
	[FormValueId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[CurrentStepFormId] [uniqueidentifier] NULL,
	[IsChangeRequestStep] [bit] NOT NULL,
	[HasEnded] [bit] NOT NULL,
	[IsCancelled] [bit] NOT NULL,
	[ProjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SchemaInstances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaPriorityLevels]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaPriorityLevels](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_SchemaPriorityLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schemas]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schemas](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDirect] [bit] NOT NULL,
	[PriorityLevelId] [uniqueidentifier] NOT NULL,
	[FormId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[SupplierId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Schemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaStepCommands]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaStepCommands](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemaStepId] [uniqueidentifier] NOT NULL,
	[CommandId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_SchemaStepCommands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaSteps]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaSteps](
	[Id] [uniqueidentifier] NOT NULL,
	[SchemaId] [uniqueidentifier] NOT NULL,
	[ActorId] [uniqueidentifier] NOT NULL,
	[StepId] [uniqueidentifier] NOT NULL,
	[StatusId] [uniqueidentifier] NOT NULL,
	[Order] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[FormId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SchemaSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeMLs]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeMLs](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_SizeMLs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Steps]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Steps](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsFinal] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Steps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierAddresses]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierAddresses](
	[Id] [uniqueidentifier] NOT NULL,
	[Country] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Street] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[POBox] [nvarchar](max) NULL,
	[Tel] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Fax] [nvarchar](max) NULL,
	[WebSiteUrl] [nvarchar](max) NULL,
	[AddressType] [int] NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_SupplierAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[Currency] [nvarchar](max) NOT NULL,
	[MinOrder] [int] NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](512) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskAttachments]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskAttachments](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Length] [bigint] NOT NULL,
	[ProjectTaskId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaskAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskComments]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskComments](
	[Id] [uniqueidentifier] NOT NULL,
	[HtmlBody] [nvarchar](max) NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaskComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskHistories]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskHistories](
	[Id] [uniqueidentifier] NOT NULL,
	[ProjectTaskId] [uniqueidentifier] NOT NULL,
	[ChangedValue] [int] NOT NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[ActionDescription] [int] NOT NULL,
	[AttachmentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TaskHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskPredecessors]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskPredecessors](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskId] [uniqueidentifier] NOT NULL,
	[SuccessorId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[ProjectId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TaskPredecessors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToDos]    Script Date: 2/5/2026 3:51:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToDos](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](512) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Action] [int] NOT NULL,
	[Checked] [bit] NOT NULL,
	[ProjectTaskId] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[LastModified] [datetime2](7) NULL,
	[LastModifiedBy] [nvarchar](max) NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_ToDos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [Gender]
GO
ALTER TABLE [dbo].[DirectSchemaInstances] ADD  DEFAULT (CONVERT([bit],(0))) FOR [HasEnded]
GO
ALTER TABLE [dbo].[DirectSchemaInstances] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[Fields] ADD  DEFAULT (N'') FOR [NameAr]
GO
ALTER TABLE [dbo].[Forms] ADD  DEFAULT (N'') FOR [NameAr]
GO
ALTER TABLE [dbo].[Forms] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSubForm]
GO
ALTER TABLE [dbo].[FormValueAttachments] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [AttachmentId]
GO
ALTER TABLE [dbo].[FormValueAttachments] ADD  DEFAULT (N'') FOR [FilePath]
GO
ALTER TABLE [dbo].[NotificationTokens] ADD  DEFAULT (N'') FOR [DeviceId]
GO
ALTER TABLE [dbo].[People] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDefault]
GO
ALTER TABLE [dbo].[ProductionLines] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [CategoryId]
GO
ALTER TABLE [dbo].[ProjectIssues] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSolved]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((0)) FOR [SavingStatus]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ProductionLineId]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [BrandProductSizeMlId]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT ((0)) FOR [ProjectType]
GO
ALTER TABLE [dbo].[Projects] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsStockUpdated]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ProjectId]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ScheduledDateStart]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ScheduledlDateEnd]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT (N'') FOR [Title]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsCloseWithSimilarTag]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSummary]
GO
ALTER TABLE [dbo].[ProjectTasks] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsPrimaryTask]
GO
ALTER TABLE [dbo].[QuotationRequestComments] ADD  DEFAULT (CONVERT([bit],(0))) FOR [FromSupplier]
GO
ALTER TABLE [dbo].[QuotationRequestHistories] ADD  DEFAULT ((0)) FOR [QuotationActionType]
GO
ALTER TABLE [dbo].[QuotationRequests] ADD  DEFAULT (N'') FOR [Code]
GO
ALTER TABLE [dbo].[QuotationRequests] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [ProjectId]
GO
ALTER TABLE [dbo].[RealTimeConnections] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ConnectedAt]
GO
ALTER TABLE [dbo].[SchemaInstances] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsChangeRequestStep]
GO
ALTER TABLE [dbo].[SchemaInstances] ADD  DEFAULT (CONVERT([bit],(0))) FOR [HasEnded]
GO
ALTER TABLE [dbo].[SchemaInstances] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsCancelled]
GO
ALTER TABLE [dbo].[Suppliers] ADD  DEFAULT (N'SAR') FOR [Currency]
GO
ALTER TABLE [dbo].[Suppliers] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[TaskHistories] ADD  DEFAULT ((0)) FOR [ActionDescription]
GO
ALTER TABLE [dbo].[ActorUsers]  WITH CHECK ADD  CONSTRAINT [FK_ActorUsers_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActorUsers] CHECK CONSTRAINT [FK_ActorUsers_Actors_ActorId]
GO
ALTER TABLE [dbo].[ActorUsers]  WITH CHECK ADD  CONSTRAINT [FK_ActorUsers_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActorUsers] CHECK CONSTRAINT [FK_ActorUsers_AspNetUsers_UserId]
GO
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
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_AspNetUsers_SupervisorId] FOREIGN KEY([SupervisorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_AspNetUsers_SupervisorId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Designations_DesignationId] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designations] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Designations_DesignationId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_People_SupplierPersonId] FOREIGN KEY([SupplierPersonId])
REFERENCES [dbo].[People] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_People_SupplierPersonId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BrandProductSizeMLs]  WITH CHECK ADD  CONSTRAINT [FK_BrandProductSizeMLs_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BrandProductSizeMLs] CHECK CONSTRAINT [FK_BrandProductSizeMLs_Brands_BrandId]
GO
ALTER TABLE [dbo].[BrandProductSizeMLs]  WITH CHECK ADD  CONSTRAINT [FK_BrandProductSizeMLs_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BrandProductSizeMLs] CHECK CONSTRAINT [FK_BrandProductSizeMLs_Products_ProductId]
GO
ALTER TABLE [dbo].[BrandProductSizeMLs]  WITH CHECK ADD  CONSTRAINT [FK_BrandProductSizeMLs_SizeMLs_SizeMLId] FOREIGN KEY([SizeMLId])
REFERENCES [dbo].[SizeMLs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BrandProductSizeMLs] CHECK CONSTRAINT [FK_BrandProductSizeMLs_SizeMLs_SizeMLId]
GO
ALTER TABLE [dbo].[DirectSchemaInstances]  WITH CHECK ADD  CONSTRAINT [FK_DirectSchemaInstances_Schemas_SchemaId] FOREIGN KEY([SchemaId])
REFERENCES [dbo].[Schemas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DirectSchemaInstances] CHECK CONSTRAINT [FK_DirectSchemaInstances_Schemas_SchemaId]
GO
ALTER TABLE [dbo].[FormFields]  WITH CHECK ADD  CONSTRAINT [FK_FormFields_Fields_FieldId] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FormFields] CHECK CONSTRAINT [FK_FormFields_Fields_FieldId]
GO
ALTER TABLE [dbo].[FormFields]  WITH CHECK ADD  CONSTRAINT [FK_FormFields_Forms_FormId] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FormFields] CHECK CONSTRAINT [FK_FormFields_Forms_FormId]
GO
ALTER TABLE [dbo].[FormFieldValues]  WITH CHECK ADD  CONSTRAINT [FK_FormFieldValues_FormFields_FormFieldId] FOREIGN KEY([FormFieldId])
REFERENCES [dbo].[FormFields] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FormFieldValues] CHECK CONSTRAINT [FK_FormFieldValues_FormFields_FormFieldId]
GO
ALTER TABLE [dbo].[FormFieldValues]  WITH CHECK ADD  CONSTRAINT [FK_FormFieldValues_FormValues_FormValueId] FOREIGN KEY([FormValueId])
REFERENCES [dbo].[FormValues] ([Id])
GO
ALTER TABLE [dbo].[FormFieldValues] CHECK CONSTRAINT [FK_FormFieldValues_FormValues_FormValueId]
GO
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Forms_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Forms] ([Id])
GO
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Forms_ParentId]
GO
ALTER TABLE [dbo].[FormValues]  WITH CHECK ADD  CONSTRAINT [FK_FormValues_Forms_FormId] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FormValues] CHECK CONSTRAINT [FK_FormValues_Forms_FormId]
GO
ALTER TABLE [dbo].[Notifications]  WITH CHECK ADD  CONSTRAINT [FK_Notifications_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notifications] CHECK CONSTRAINT [FK_Notifications_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NotificationTokens]  WITH CHECK ADD  CONSTRAINT [FK_NotificationTokens_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NotificationTokens] CHECK CONSTRAINT [FK_NotificationTokens_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_People_SupplierAddresses_AddressId] FOREIGN KEY([AddressId])
REFERENCES [dbo].[SupplierAddresses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_People_SupplierAddresses_AddressId]
GO
ALTER TABLE [dbo].[ProductionLines]  WITH CHECK ADD  CONSTRAINT [FK_ProductionLines_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductionLines] CHECK CONSTRAINT [FK_ProductionLines_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ProjectIssues]  WITH CHECK ADD  CONSTRAINT [FK_ProjectIssues_AspNetUsers_AssignToId] FOREIGN KEY([AssignToId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectIssues] CHECK CONSTRAINT [FK_ProjectIssues_AspNetUsers_AssignToId]
GO
ALTER TABLE [dbo].[ProjectIssues]  WITH CHECK ADD  CONSTRAINT [FK_ProjectIssues_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectIssues] CHECK CONSTRAINT [FK_ProjectIssues_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[ProjectIssues]  WITH CHECK ADD  CONSTRAINT [FK_ProjectIssues_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectIssues] CHECK CONSTRAINT [FK_ProjectIssues_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectRisks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRisks_AspNetUsers_ApprovedById] FOREIGN KEY([ApprovedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectRisks] CHECK CONSTRAINT [FK_ProjectRisks_AspNetUsers_ApprovedById]
GO
ALTER TABLE [dbo].[ProjectRisks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRisks_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectRisks] CHECK CONSTRAINT [FK_ProjectRisks_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[ProjectRisks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectRisks_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectRisks] CHECK CONSTRAINT [FK_ProjectRisks_Projects_ProjectId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_BrandProductSizeMLs_BrandProductSizeMlId] FOREIGN KEY([BrandProductSizeMlId])
REFERENCES [dbo].[BrandProductSizeMLs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_BrandProductSizeMLs_BrandProductSizeMlId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_ProductionLines_ProductionLineId] FOREIGN KEY([ProductionLineId])
REFERENCES [dbo].[ProductionLines] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_ProductionLines_ProductionLineId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Suppliers_ConsultantId] FOREIGN KEY([ConsultantId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Suppliers_ConsultantId]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Suppliers_ContractorId] FOREIGN KEY([ContractorId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Suppliers_ContractorId]
GO
ALTER TABLE [dbo].[ProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTags_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTags] CHECK CONSTRAINT [FK_ProjectTags_Projects_ProjectId]
GO
ALTER TABLE [dbo].[ProjectTags]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTags] CHECK CONSTRAINT [FK_ProjectTags_Tags_TagId]
GO
ALTER TABLE [dbo].[ProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTasks_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectTasks] CHECK CONSTRAINT [FK_ProjectTasks_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[ProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTasks_AspNetUsers_LastModifiedBy] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProjectTasks] CHECK CONSTRAINT [FK_ProjectTasks_AspNetUsers_LastModifiedBy]
GO
ALTER TABLE [dbo].[ProjectTasks]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTasks_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectTasks] CHECK CONSTRAINT [FK_ProjectTasks_Projects_ProjectId]
GO
ALTER TABLE [dbo].[QuotationRequestComments]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestComments_QuotationRequestDetails_QuotationRequestDetailId] FOREIGN KEY([QuotationRequestDetailId])
REFERENCES [dbo].[QuotationRequestDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequestComments] CHECK CONSTRAINT [FK_QuotationRequestComments_QuotationRequestDetails_QuotationRequestDetailId]
GO
ALTER TABLE [dbo].[QuotationRequestDetails]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestDetails_QuotationRequests_QuotationRequestId] FOREIGN KEY([QuotationRequestId])
REFERENCES [dbo].[QuotationRequests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequestDetails] CHECK CONSTRAINT [FK_QuotationRequestDetails_QuotationRequests_QuotationRequestId]
GO
ALTER TABLE [dbo].[QuotationRequestHistories]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestHistories_QuotationRequestDetails_QuotationRequestDetailId] FOREIGN KEY([QuotationRequestDetailId])
REFERENCES [dbo].[QuotationRequestDetails] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequestHistories] CHECK CONSTRAINT [FK_QuotationRequestHistories_QuotationRequestDetails_QuotationRequestDetailId]
GO
ALTER TABLE [dbo].[QuotationRequestHistories]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestHistories_QuotationRequestSuppliers_QuotationRequestSupplierId] FOREIGN KEY([QuotationRequestSupplierId])
REFERENCES [dbo].[QuotationRequestSuppliers] ([Id])
GO
ALTER TABLE [dbo].[QuotationRequestHistories] CHECK CONSTRAINT [FK_QuotationRequestHistories_QuotationRequestSuppliers_QuotationRequestSupplierId]
GO
ALTER TABLE [dbo].[QuotationRequests]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequests_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequests] CHECK CONSTRAINT [FK_QuotationRequests_Projects_ProjectId]
GO
ALTER TABLE [dbo].[QuotationRequestSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestSuppliers_QuotationRequests_QuotationRequestId] FOREIGN KEY([QuotationRequestId])
REFERENCES [dbo].[QuotationRequests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequestSuppliers] CHECK CONSTRAINT [FK_QuotationRequestSuppliers_QuotationRequests_QuotationRequestId]
GO
ALTER TABLE [dbo].[QuotationRequestSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_QuotationRequestSuppliers_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationRequestSuppliers] CHECK CONSTRAINT [FK_QuotationRequestSuppliers_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[QuotationSupplierReplyDetails]  WITH CHECK ADD  CONSTRAINT [FK_QuotationSupplierReplyDetails_QuotationRequestSuppliers_QuotationSupplierId] FOREIGN KEY([QuotationSupplierId])
REFERENCES [dbo].[QuotationRequestSuppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuotationSupplierReplyDetails] CHECK CONSTRAINT [FK_QuotationSupplierReplyDetails_QuotationRequestSuppliers_QuotationSupplierId]
GO
ALTER TABLE [dbo].[RealTimeConnections]  WITH CHECK ADD  CONSTRAINT [FK_RealTimeConnections_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RealTimeConnections] CHECK CONSTRAINT [FK_RealTimeConnections_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RefreshTokens]  WITH CHECK ADD  CONSTRAINT [FK_RefreshTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[RefreshTokens] CHECK CONSTRAINT [FK_RefreshTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[RiskProposedSolutions]  WITH CHECK ADD  CONSTRAINT [FK_RiskProposedSolutions_ProjectRisks_ProjectRiskId] FOREIGN KEY([ProjectRiskId])
REFERENCES [dbo].[ProjectRisks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RiskProposedSolutions] CHECK CONSTRAINT [FK_RiskProposedSolutions_ProjectRisks_ProjectRiskId]
GO
ALTER TABLE [dbo].[SchemaInstances]  WITH CHECK ADD  CONSTRAINT [FK_SchemaInstances_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[SchemaInstances] CHECK CONSTRAINT [FK_SchemaInstances_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[SchemaInstances]  WITH CHECK ADD  CONSTRAINT [FK_SchemaInstances_Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
GO
ALTER TABLE [dbo].[SchemaInstances] CHECK CONSTRAINT [FK_SchemaInstances_Projects_ProjectId]
GO
ALTER TABLE [dbo].[SchemaInstances]  WITH CHECK ADD  CONSTRAINT [FK_SchemaInstances_Schemas_SchemaId] FOREIGN KEY([SchemaId])
REFERENCES [dbo].[Schemas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaInstances] CHECK CONSTRAINT [FK_SchemaInstances_Schemas_SchemaId]
GO
ALTER TABLE [dbo].[SchemaInstances]  WITH CHECK ADD  CONSTRAINT [FK_SchemaInstances_SchemaSteps_CurrentSchemaStepId] FOREIGN KEY([CurrentSchemaStepId])
REFERENCES [dbo].[SchemaSteps] ([Id])
GO
ALTER TABLE [dbo].[SchemaInstances] CHECK CONSTRAINT [FK_SchemaInstances_SchemaSteps_CurrentSchemaStepId]
GO
ALTER TABLE [dbo].[Schemas]  WITH CHECK ADD  CONSTRAINT [FK_Schemas_SchemaPriorityLevels_PriorityLevelId] FOREIGN KEY([PriorityLevelId])
REFERENCES [dbo].[SchemaPriorityLevels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schemas] CHECK CONSTRAINT [FK_Schemas_SchemaPriorityLevels_PriorityLevelId]
GO
ALTER TABLE [dbo].[Schemas]  WITH CHECK ADD  CONSTRAINT [FK_Schemas_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Schemas] CHECK CONSTRAINT [FK_Schemas_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[SchemaStepCommands]  WITH CHECK ADD  CONSTRAINT [FK_SchemaStepCommands_Commands_CommandId] FOREIGN KEY([CommandId])
REFERENCES [dbo].[Commands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaStepCommands] CHECK CONSTRAINT [FK_SchemaStepCommands_Commands_CommandId]
GO
ALTER TABLE [dbo].[SchemaStepCommands]  WITH CHECK ADD  CONSTRAINT [FK_SchemaStepCommands_SchemaSteps_SchemaStepId] FOREIGN KEY([SchemaStepId])
REFERENCES [dbo].[SchemaSteps] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaStepCommands] CHECK CONSTRAINT [FK_SchemaStepCommands_SchemaSteps_SchemaStepId]
GO
ALTER TABLE [dbo].[SchemaSteps]  WITH CHECK ADD  CONSTRAINT [FK_SchemaSteps_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaSteps] CHECK CONSTRAINT [FK_SchemaSteps_Actors_ActorId]
GO
ALTER TABLE [dbo].[SchemaSteps]  WITH CHECK ADD  CONSTRAINT [FK_SchemaSteps_Forms_FormId] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
ALTER TABLE [dbo].[SchemaSteps] CHECK CONSTRAINT [FK_SchemaSteps_Forms_FormId]
GO
ALTER TABLE [dbo].[SchemaSteps]  WITH CHECK ADD  CONSTRAINT [FK_SchemaSteps_Schemas_SchemaId] FOREIGN KEY([SchemaId])
REFERENCES [dbo].[Schemas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaSteps] CHECK CONSTRAINT [FK_SchemaSteps_Schemas_SchemaId]
GO
ALTER TABLE [dbo].[SchemaSteps]  WITH CHECK ADD  CONSTRAINT [FK_SchemaSteps_Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaSteps] CHECK CONSTRAINT [FK_SchemaSteps_Status_StatusId]
GO
ALTER TABLE [dbo].[SchemaSteps]  WITH CHECK ADD  CONSTRAINT [FK_SchemaSteps_Steps_StepId] FOREIGN KEY([StepId])
REFERENCES [dbo].[Steps] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SchemaSteps] CHECK CONSTRAINT [FK_SchemaSteps_Steps_StepId]
GO
ALTER TABLE [dbo].[SupplierAddresses]  WITH CHECK ADD  CONSTRAINT [FK_SupplierAddresses_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SupplierAddresses] CHECK CONSTRAINT [FK_SupplierAddresses_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[TaskAttachments]  WITH CHECK ADD  CONSTRAINT [FK_TaskAttachments_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TaskAttachments] CHECK CONSTRAINT [FK_TaskAttachments_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[TaskAttachments]  WITH CHECK ADD  CONSTRAINT [FK_TaskAttachments_ProjectTasks_ProjectTaskId] FOREIGN KEY([ProjectTaskId])
REFERENCES [dbo].[ProjectTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskAttachments] CHECK CONSTRAINT [FK_TaskAttachments_ProjectTasks_ProjectTaskId]
GO
ALTER TABLE [dbo].[TaskComments]  WITH CHECK ADD  CONSTRAINT [FK_TaskComments_ProjectTasks_TaskId] FOREIGN KEY([TaskId])
REFERENCES [dbo].[ProjectTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskComments] CHECK CONSTRAINT [FK_TaskComments_ProjectTasks_TaskId]
GO
ALTER TABLE [dbo].[TaskHistories]  WITH CHECK ADD  CONSTRAINT [FK_TaskHistories_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[TaskHistories] CHECK CONSTRAINT [FK_TaskHistories_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TaskHistories]  WITH CHECK ADD  CONSTRAINT [FK_TaskHistories_ProjectTasks_ProjectTaskId] FOREIGN KEY([ProjectTaskId])
REFERENCES [dbo].[ProjectTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaskHistories] CHECK CONSTRAINT [FK_TaskHistories_ProjectTasks_ProjectTaskId]
GO
ALTER TABLE [dbo].[ToDos]  WITH CHECK ADD  CONSTRAINT [FK_ToDos_ProjectTasks_ProjectTaskId] FOREIGN KEY([ProjectTaskId])
REFERENCES [dbo].[ProjectTasks] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ToDos] CHECK CONSTRAINT [FK_ToDos_ProjectTasks_ProjectTaskId]
GO
