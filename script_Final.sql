USE [master]
GO
/****** Object:  Database [RTCI_SBDC_2]    Script Date: 05/10/2019 1:29:32 AM ******/
CREATE DATABASE [RTCI_SBDC_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RTCI_SBDC_2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\RTCI_SBDC_2.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RTCI_SBDC_2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\RTCI_SBDC_2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RTCI_SBDC_2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RTCI_SBDC_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RTCI_SBDC_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RTCI_SBDC_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RTCI_SBDC_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RTCI_SBDC_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RTCI_SBDC_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RTCI_SBDC_2] SET  MULTI_USER 
GO
ALTER DATABASE [RTCI_SBDC_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RTCI_SBDC_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RTCI_SBDC_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RTCI_SBDC_2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RTCI_SBDC_2]
GO
/****** Object:  Table [dbo].[ClientInformation]    Script Date: 05/10/2019 1:29:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[BusinessName] [varchar](50) NOT NULL,
	[HasBusinessName] [bit] NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Zip] [varchar](5) NOT NULL,
	[Country] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[PhoneType] [varchar](10) NULL,
	[BestContactMethod] [varchar](50) NULL,
	[BestTimeForContact] [varchar](50) NULL,
	[CurrentlyInBusiness] [varchar](50) NOT NULL,
	[IsHomeBased] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Race] [varchar](50) NOT NULL,
	[VeteranStatus] [varchar](50) NOT NULL,
	[BusinessStatus] [varchar](50) NOT NULL,
	[SBAClient] [varchar](50) NOT NULL,
	[Export] [varchar](50) NOT NULL,
	[BusinessType] [varchar](100) NOT NULL,
	[CounsellingType] [varchar](50) NOT NULL,
	[DescribeBusiness] [varchar](8000) NULL,
	[WebAddress] [varchar](100) NULL,
	[RequestForCounsellingInfo] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_ClientInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_BusinessStatus]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_BusinessStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessStat] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_BusinessStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_BusinessType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_BusinessType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Business] [varchar](200) NOT NULL,
 CONSTRAINT [PK_master_BusinessType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_CounsellingType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_CounsellingType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Counselling] [varchar](100) NOT NULL,
 CONSTRAINT [PK_master_CounsellingType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_Country]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_ExportType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_ExportType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Export] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_ExportType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_Gender]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GenderType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_Race1]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_Race1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RaceType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_Race1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_SBAClientType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_SBAClientType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SBAClient] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_SBAClientType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_State]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Region] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[master_VeteranStatus]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[master_VeteranStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VeteranStat] [varchar](50) NOT NULL,
 CONSTRAINT [PK_master_VeteranStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[userid] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[mobile] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[confirmPassword] [varchar](50) NOT NULL,
	[dob] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextChat]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextChat](
	[ClientName] [varchar](50) NOT NULL,
	[ClientChat] [nvarchar](1000) NULL,
	[AdvisorName] [varchar](50) NOT NULL,
	[AdvisorChat] [nvarchar](1000) NULL,
	[Chat] [nvarchar](2000) NULL,
	[EmailText] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClientInformation] ON 

INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (31, N'Mihir', N'Padechiya', N'Not Available', 0, N'66 Murray street, Apt 6, 13905', N'', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Cell', N'Phone', N'Noon', N'Yes', N'Yes', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'Not Available', N'jfdfh', N'shdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (32, N'Merwyn', N'Jones', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'hfhfh@gmail.com', N'6073740435', N'Business', N'Phone', N'hfgjfh', N'Yes', N'No', N'MALE', N'Native American', N'Gulf War Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'dfd', N'', N'sddf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (33, N'HH', N'Padechiya', N'Not Available', 1, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Email', N'dfd', N'Yes', N'Yes', N'MALE/FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'fd', N'', N'fdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (34, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Email', N'', N'No', N'No', N'MALE/FEMALE', N'Native Alaskan', N'Gulf War Veteran', N'StartUp', N'8(a)  + Surety Bond', N'Import Only', N'Educational Services', N'Home-Based Business', N'', N'', N'dfdfdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (35, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'hfgjfh', N'Yes', N'Yes', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'vvfb')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (36, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Email', N'', N'No', N'No', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hfhdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (37, N'Mihir', N'Padechiya', N'Consulting', 0, N'66 Murray street, Apt 6, 13905', N'', N'df', N'Hawaii', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Email', N'Noon', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'lolz', N'', N'lolz')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (38, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'hfgjfh', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'sfdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (39, N'gsdfsdf', N'Padechiya', N'shfgd', 0, N'66 Murray street, Apt 6, 13905', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Cell', N'Phone', N'fgfh', N'No', N'No', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'Not Available', N'jfdfh', N'bdvbfg')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (40, N'abcd', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'Noon', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'fdff')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (41, N'xxxxx', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'Noon', N'No', N'No', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'sds', N'', N'gdhffd')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (42, N'xyxyxyxyx', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'hfgjfh', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'ddj')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (43, N'jjjjkkkkkk', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'jdkjg', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hdfdf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (44, N'aqzwe', N'gfgfgfgfg', N'Not Available', 1, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Cell', N'Phone', N'hfgfh', N'Yes', N'Yes', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hdsgdgfdh')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (45, N'aqzwe', N'gfgfgfgfg', N'Not Available', 1, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Cell', N'Phone', N'hfgfh', N'Yes', N'Yes', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hdsgdgfdh')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (46, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Email', N'', N'No', N'No', N'MALE', N'Other', N'Vietnam Era Veteran', N'In Business 1-3 Yrs.', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'jff')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (47, N'Mihir', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'', N'Yes', N'Yes', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hdgfd')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (48, N'HH', N'Padechiya', N'Not Available', 0, N'jfdfh', N'', N'df', N'Florida', N'65656', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Phone', N'hfgjfh', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'gdfd')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (49, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Phone', N'', N'Yes', N'Yes', N'MALE/FEMALE', N'Native Alaskan', N'Vietnam Era Veteran', N'In Business 3-5 Yrs.', N'SBIC', N'Both Export & Import', N'Professional, Scientific & Technical Services', N'Franchising', N'Cure Dental', N'Charkop', N'vdsvds')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (50, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Phone', N'Noon', N'Yes', N'Yes', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'dhf', N'', N'shgf')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (51, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Phone', N'Noon', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'cxc', N'', N'gddgcdc')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (52, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Phone', N'Noon', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'cxc', N'', N'gddgcdc')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (53, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Email', N'Noon', N'No', N'No', N'MALE/FEMALE', N'Native American', N'Vietnam Era Veteran', N'Existing Bus. Vent. Term.', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'vbv')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (54, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Business', N'Email', N'Noon', N'No', N'No', N'MALE/FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'dcbvb')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (55, N'mihir', N'padechiya', N'Cure Dental', 0, N'66 Murray Street', N'Apartment 6', N'Binghamton', N'New York', N'13905', N'USA', N'mihir2014@gmail.com', N'6073740435', N'Home', N'Email', N'Noon', N'No', N'No', N'MALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'', N'', N'hcvcv')
INSERT [dbo].[ClientInformation] ([ID], [FirstName], [LastName], [BusinessName], [HasBusinessName], [Address1], [Address2], [City], [State], [Zip], [Country], [Email], [Phone], [PhoneType], [BestContactMethod], [BestTimeForContact], [CurrentlyInBusiness], [IsHomeBased], [Gender], [Race], [VeteranStatus], [BusinessStatus], [SBAClient], [Export], [BusinessType], [CounsellingType], [DescribeBusiness], [WebAddress], [RequestForCounsellingInfo]) VALUES (56, N'mihir', N'padechiya', N'cdc', 0, N'dfgd', N'', N'jhd', N'Indiana', N'13905', N'USA', N'mihir2014@gmail.com', N'7645565456', N'Home', N'Phone', N'noon', N'Yes', N'Yes', N'FEMALE', N'Native American', N'Veteran', N'StartUp', N'Borrower', N'Export Only', N'Agriculture, Forestry, Fishing & Hunting', N'Accounting & Records', N'g', N'', N'bdhdf')
SET IDENTITY_INSERT [dbo].[ClientInformation] OFF
SET IDENTITY_INSERT [dbo].[master_BusinessStatus] ON 

INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (1, N'StartUp')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (2, N'Buyout-Venture Proceeded')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (3, N'Existing Bus. Vent. Term.')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (4, N'In Business <1 year')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (5, N'In Business 1-3 Yrs.')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (6, N'In Business 3-5 Yrs.')
INSERT [dbo].[master_BusinessStatus] ([ID], [BusinessStat]) VALUES (7, N'In Business 5 Yrs. +')
SET IDENTITY_INSERT [dbo].[master_BusinessStatus] OFF
SET IDENTITY_INSERT [dbo].[master_BusinessType] ON 

INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (1, N'Agriculture, Forestry, Fishing & Hunting')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (2, N'Mining')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (3, N'Utilities')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (4, N'Construction')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (5, N'Manufacturing')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (6, N'Wholesale Trade')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (7, N'Retail Trade')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (8, N'Transportation & Warehousing')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (9, N'Information')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (10, N'Finance & Insurance')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (11, N'Real Estate and Rental & Leasing')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (12, N'Professional, Scientific & Technical Services')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (13, N'Management of Companies & Enterprises')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (14, N'Admin & Support and Waste Management & Remediation Svcs')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (15, N'Educational Services')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (16, N'Health Care & Social Assistance')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (17, N'Arts, Entertainment & Recreation')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (18, N'Accommodation & Food Services')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (19, N'Other Services')
INSERT [dbo].[master_BusinessType] ([ID], [Business]) VALUES (20, N'Public Administration')
SET IDENTITY_INSERT [dbo].[master_BusinessType] OFF
SET IDENTITY_INSERT [dbo].[master_CounsellingType] ON 

INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (1, N'Accounting & Records')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (2, N'Bus. Start-Up/Acquisition')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (3, N'Business Expansion')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (4, N'Business Liq./Sale')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (5, N'Business Plan')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (6, N'Buy/Sell Business')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (7, N'Cash Flow Management')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (8, N'Computer Systems')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (9, N'Customer Relations')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (10, N'eCommerce')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (11, N'Engineering, R&D')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (12, N'Financial Analysis/Cost Control')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (13, N'Franchising')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (14, N'Government Procurement')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (15, N'Home-Based Business')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (16, N'International Trade')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (17, N'Invention Assessment')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (18, N'Inventory Control')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (19, N'Legal')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (20, N'Managing a Business')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (21, N'Marketing/Sales')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (22, N'Other')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (23, N'Personnel')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (24, N'Regulatory Compliance Assistance')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (25, N'SBIR')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (26, N'Sources of Capital')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (27, N'Tax Planning')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (28, N'Technology Transfer')
INSERT [dbo].[master_CounsellingType] ([ID], [Counselling]) VALUES (29, N'Women/Minority Certification')
SET IDENTITY_INSERT [dbo].[master_CounsellingType] OFF
SET IDENTITY_INSERT [dbo].[master_Country] ON 

INSERT [dbo].[master_Country] ([ID], [CountryName]) VALUES (1, N'USA')
INSERT [dbo].[master_Country] ([ID], [CountryName]) VALUES (2, N'Canada')
INSERT [dbo].[master_Country] ([ID], [CountryName]) VALUES (3, N'Other')
SET IDENTITY_INSERT [dbo].[master_Country] OFF
SET IDENTITY_INSERT [dbo].[master_ExportType] ON 

INSERT [dbo].[master_ExportType] ([ID], [Export]) VALUES (1, N'Export Only')
INSERT [dbo].[master_ExportType] ([ID], [Export]) VALUES (2, N'Import Only')
INSERT [dbo].[master_ExportType] ([ID], [Export]) VALUES (3, N'Both Export & Import')
INSERT [dbo].[master_ExportType] ([ID], [Export]) VALUES (4, N'Interested in either Export or Import')
INSERT [dbo].[master_ExportType] ([ID], [Export]) VALUES (5, N'None')
SET IDENTITY_INSERT [dbo].[master_ExportType] OFF
SET IDENTITY_INSERT [dbo].[master_Gender] ON 

INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (1, N'MALE')
INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (2, N'FEMALE')
INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (3, N'MALE/FEMALE')
INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (4, N'MALE/MALE')
INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (5, N'FEMALE/FEMALE')
INSERT [dbo].[master_Gender] ([ID], [GenderType]) VALUES (6, N'UNKNOWN/NOT STATED')
SET IDENTITY_INSERT [dbo].[master_Gender] OFF
SET IDENTITY_INSERT [dbo].[master_Race1] ON 

INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (1, N'Native American')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (2, N'Native Alaskan')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (3, N'Asian')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (4, N'African American')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (5, N'Native Hawaiian')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (6, N'White')
INSERT [dbo].[master_Race1] ([ID], [RaceType]) VALUES (7, N'Other')
SET IDENTITY_INSERT [dbo].[master_Race1] OFF
SET IDENTITY_INSERT [dbo].[master_SBAClientType] ON 

INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (1, N'Borrower')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (2, N'Applicant')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (3, N'8(a) Client')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (4, N'Surety Bond')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (5, N'COC')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (6, N'8(a) + Borrower')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (7, N'8(a)  + Surety Bond')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (8, N'SBIR')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (9, N'SBIC')
INSERT [dbo].[master_SBAClientType] ([ID], [SBAClient]) VALUES (10, N'None')
SET IDENTITY_INSERT [dbo].[master_SBAClientType] OFF
SET IDENTITY_INSERT [dbo].[master_State] ON 

INSERT [dbo].[master_State] ([ID], [Region]) VALUES (1, N'Alabama')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (2, N'Alaska')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (3, N'Arizona')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (4, N'Arkansas')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (5, N'California')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (6, N'Colorado')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (7, N'Connecticut')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (8, N'Delaware')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (9, N'Florida')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (10, N'Georgia')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (11, N'Hawaii')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (12, N'Idaho')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (13, N'Illinois')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (14, N'Indiana')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (15, N'Iowa')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (16, N'Kansas')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (17, N'Kentucky')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (18, N'Louisiana')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (19, N'Maine')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (20, N'Maryland')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (21, N'Massachusetts')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (22, N'Michigan')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (23, N'Minnesota')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (24, N'Mississippi')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (25, N'Missouri')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (26, N'Montana')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (27, N'Nebraska')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (28, N'Nevada')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (29, N'New Hampshire')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (30, N'New Jersey')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (31, N'New Mexico')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (32, N'New York')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (33, N'North Carolina')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (34, N'North Dakota')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (35, N'Ohio')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (36, N'Oklahoma')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (37, N'Oregon')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (38, N'Pennsylvania')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (39, N'Rhode Island')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (40, N'South Carolina')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (41, N'South Dakota')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (42, N'Tennessee')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (43, N'Texas')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (44, N'Utah')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (45, N'Vermont')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (46, N'Virginia')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (47, N'Washington')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (48, N'West Virginia')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (49, N'Wisconsin')
INSERT [dbo].[master_State] ([ID], [Region]) VALUES (50, N'Wyoming')
SET IDENTITY_INSERT [dbo].[master_State] OFF
SET IDENTITY_INSERT [dbo].[master_VeteranStatus] ON 

INSERT [dbo].[master_VeteranStatus] ([ID], [VeteranStat]) VALUES (1, N'Veteran')
INSERT [dbo].[master_VeteranStatus] ([ID], [VeteranStat]) VALUES (2, N'Vietnam Era Veteran')
INSERT [dbo].[master_VeteranStatus] ([ID], [VeteranStat]) VALUES (3, N'Gulf War Veteran')
INSERT [dbo].[master_VeteranStatus] ([ID], [VeteranStat]) VALUES (4, N'Non-Veteran')
SET IDENTITY_INSERT [dbo].[master_VeteranStatus] OFF
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (1, N'mihir2014@gmail.com', N'6767887678', N'xyz123', N'xyz123', N'01/23/1989')
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (2, N'mshah@gmail.com', N'3453555468', N'hello123', N'hello123', N'01/09/1996')
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (3, N'smaru1@gmail.com', N'9876543210', N'maru123', N'maru123', N'10/26/1991')
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (4, N'smishra3@gmail.com', N'46357863765', N'sm234', N'sm234', N'01/11/1996')
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (5, N'mjones@gmail.com', N'45457382687', N'123456', N'123456', N'01/11/1967')
INSERT [dbo].[tblUser] ([userid], [email], [mobile], [password], [confirmPassword], [dob]) VALUES (6, N'rochelle@gmail.com', N'6457364567', N'admin123', N'admin123', N'01/01/1980')
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([ID], [FirstName], [LastName]) VALUES (1, N'Merwyn', N'Jones')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [LastName]) VALUES (2, N'Kubilay', N'Ozata')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [LastName]) VALUES (3, N'Mihir', N'Padechiya')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
/****** Object:  StoredProcedure [dbo].[AddNewClientDetails]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================	
CREATE PROCEDURE [dbo].[AddNewClientDetails]
	-- Add the parameters for the stored procedure here
	
   @FirstName varchar (50),  
   @LastName varchar (50),  
   @BusinessName varchar (50),
   @HasBusinessName bit,
   @Address1 varchar (50),
   @Address2 varchar (50),
   @City varchar (50),
   @State varchar (50),
   @Zip varchar (50),
   @Country varchar(50),
   @Email varchar(50),
   @Phone varchar(50),
   @PhoneType varchar(50),
   @BestContactMethod varchar(50),
   @BestTimeForContact varchar(50),
   @CurrentlyInBusiness varchar(50),
   @IsHomeBased varchar(50),
   @Gender varchar (50),
   @Race varchar(50),
   @VeteranStatus varchar(50),
   @BusinessStatus varchar(50),
   @SBAClient varchar(50),
   @Export varchar(50),
   @BusinessType varchar(100),
   @CounsellingType varchar(50),
   @DescribeBusiness varchar(8000),
   @WebAddress varchar(100),
   @RequestForCounsellingInfo varchar(1000)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[ClientInformation] values
            (@FirstName
           ,@LastName
           ,@BusinessName
		   ,@HasBusinessName
           ,@Address1
           ,@Address2
           ,@City
           ,@State
           ,@Zip
           ,@Country
           ,@Email
           ,@Phone
		   ,@PhoneType
           ,@BestContactMethod
           ,@BestTimeForContact
		    ,@CurrentlyInBusiness
   ,@IsHomeBased
   ,@Gender
   ,@Race
   ,@VeteranStatus
   ,@BusinessStatus
   ,@SBAClient
   ,@Export
   ,@BusinessType
   ,@CounsellingType
   ,@DescribeBusiness
   ,@WebAddress
   ,@RequestForCounsellingInfo)

END


GO
/****** Object:  StoredProcedure [dbo].[GetBusinessStatus]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetBusinessStatus]  
as  
begin  
   select * from master_BusinessStatus;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetBusinessType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetBusinessType]  
as  
begin  
   select * from master_BusinessType;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetClients]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetClients]  
as  
begin  
   select * from ClientInformation;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetCounsellingType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetCounsellingType]  
as  
begin  
   select * from master_CounsellingType;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetCountries]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetCountries]  
as  
begin  
   select * from master_Country;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentUser]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetCurrentUser]  

as
Begin
SELECT TOP 1 * FROM ClientInformation ORDER BY ID DESC;
End



GO
/****** Object:  StoredProcedure [dbo].[GetExportType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetExportType]  
as  
begin  
   select * from master_ExportType;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetFriends]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetFriends]  
(
@userid int
)
as
Begin
Select * from tblUser where userid <> @userid;
End



GO
/****** Object:  StoredProcedure [dbo].[GetGender]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetGender]  
as  
begin  
   select * from master_Gender;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetRace]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetRace]  
as  
begin  
   select * from master_Race1;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetRegions]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetRegions]  
as  
begin  
   select * from master_State;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetSBAClientType]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetSBAClientType]  
as  
begin  
   select * from master_SBAClientType;  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetUsers]  
(
@firstName Varchar (50),
@lastName varchar (50)
)
as
Begin
Select COUNT(*)from UserLogin where FirstName=@firstName and LastName=@lastName; 
End



GO
/****** Object:  StoredProcedure [dbo].[GetUsers_Temp]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[GetUsers_Temp]  
(
@email varchar (50),
@password varchar (50)
)
as
Begin
Select COUNT(*)from tblUser where email = @email AND password = @password; 
End



GO
/****** Object:  StoredProcedure [dbo].[GetVeteranStatus]    Script Date: 05/10/2019 1:29:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create Procedure [dbo].[GetVeteranStatus]  
as  
begin  
   select * from master_VeteranStatus;  
End 
GO
USE [master]
GO
ALTER DATABASE [RTCI_SBDC_2] SET  READ_WRITE 
GO
