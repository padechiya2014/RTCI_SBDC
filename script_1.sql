USE [master]
GO
/****** Object:  Database [RTCI_SBDC_2]    Script Date: 11/24/2018 2:05:57 AM ******/
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
/****** Object:  Table [dbo].[ClientInformation]    Script Date: 11/24/2018 2:05:57 AM ******/
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
/****** Object:  Table [dbo].[master_BusinessStatus]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_BusinessType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_CounsellingType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_Country]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_ExportType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_Gender]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_Race1]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_SBAClientType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_State]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  Table [dbo].[master_VeteranStatus]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[AddNewClientDetails]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetBusinessStatus]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetBusinessType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetClients]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCounsellingType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetCountries]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetExportType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetGender]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetRace]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetRegions]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetSBAClientType]    Script Date: 11/24/2018 2:05:58 AM ******/
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
/****** Object:  StoredProcedure [dbo].[GetVeteranStatus]    Script Date: 11/24/2018 2:05:58 AM ******/
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
