USE [master]
GO
/****** Object:  Database [EmulateDB]    Script Date: 10/25/2019 22:53:45 ******/
CREATE DATABASE [EmulateDB] ON  PRIMARY 
( NAME = N'EmulateDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EmulateDB.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmulateDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\EmulateDB_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmulateDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmulateDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmulateDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EmulateDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EmulateDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EmulateDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EmulateDB] SET ARITHABORT OFF
GO
ALTER DATABASE [EmulateDB] SET AUTO_CLOSE ON
GO
ALTER DATABASE [EmulateDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EmulateDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EmulateDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EmulateDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EmulateDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EmulateDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EmulateDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EmulateDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EmulateDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EmulateDB] SET  ENABLE_BROKER
GO
ALTER DATABASE [EmulateDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EmulateDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EmulateDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EmulateDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EmulateDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EmulateDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EmulateDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EmulateDB] SET  READ_WRITE
GO
ALTER DATABASE [EmulateDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EmulateDB] SET  MULTI_USER
GO
ALTER DATABASE [EmulateDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EmulateDB] SET DB_CHAINING OFF
GO
USE [EmulateDB]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](25) NULL,
	[UserName] [varchar](25) NULL,
	[Password] [varchar](25) NULL,
	[UserType] [varchar](25) NULL,
	[Createdby] [varchar](25) NULL,
	[Createdon] [varchar](25) NULL,
 CONSTRAINT [PK__tblUsers__1788CC4C18AE77DB] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblsavetarget]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblsavetarget](
	[saveid] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[targetid] [int] NULL,
	[targetstatus] [varchar](max) NULL,
	[createdby] [varchar](50) NULL,
	[createdon] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[saveid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLeaveDetail]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLeaveDetail](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NULL,
	[TotalLeave] [varchar](max) NULL,
	[Casualleave] [varchar](max) NULL,
	[Sickleave] [varchar](max) NULL,
	[Paidleave] [varchar](max) NULL,
	[UnPaidLeave] [varchar](max) NULL,
	[Createdby] [varchar](max) NULL,
	[Createdon] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLeaveApplyFor]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLeaveApplyFor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NULL,
	[LeaveType] [varchar](max) NULL,
	[Month] [varchar](max) NULL,
	[Date] [varchar](max) NULL,
	[ToDate] [varchar](max) NULL,
	[Days] [varchar](max) NULL,
	[Leavedescription] [varchar](max) NULL,
	[LeaveOptFor] [varchar](max) NULL,
	[WhetherApproved_DisApproved] [varchar](max) NULL,
	[Createdby] [varchar](max) NULL,
	[Createdon] [varchar](max) NULL,
 CONSTRAINT [PK__tblLeave__3214EC07A4DB42B2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpPhoto] [varchar](max) NULL,
	[Xmarksheet] [varchar](max) NULL,
	[Diplomamarksheet] [varchar](max) NULL,
	[Mastermarksheet] [varchar](max) NULL,
	[Previousexperince] [varchar](max) NULL,
	[Bachlormarksheet] [varchar](max) NULL,
	[XIImarksheet] [varchar](max) NULL,
	[Empcode] [varchar](max) NULL,
	[EmpDoJ] [varchar](max) NULL,
	[emptype] [varchar](max) NULL,
	[Designation] [varchar](max) NULL,
	[EmpFirstname] [varchar](max) NULL,
	[EmpLastname] [varchar](max) NULL,
	[EmpFathername] [varchar](max) NULL,
	[EmpMothername] [varchar](max) NULL,
	[EmpPermanentAddress] [varchar](max) NULL,
	[EmpCorrespondanceAddress] [varchar](max) NULL,
	[EmpIdDetails] [varchar](max) NULL,
	[EmpMobileNo] [varchar](max) NULL,
	[EmpPhoneNo] [varchar](max) NULL,
	[EmpClassX] [varchar](max) NULL,
	[EmpClassXII] [varchar](max) NULL,
	[EmpBachelorDegree] [varchar](max) NULL,
	[EmpMasterDegree] [varchar](max) NULL,
	[EmpDiploma] [varchar](max) NULL,
	[EmpCertification] [varchar](max) NULL,
	[EmpAchievements] [varchar](max) NULL,
	[EmpMaritalStatus] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[CurrentSalery] [varchar](max) NULL,
	[EmpDOB] [varchar](max) NULL,
	[EmpDoA] [varchar](max) NULL,
	[EmpBankname] [varchar](max) NULL,
	[EmpBranchname] [varchar](max) NULL,
	[EmpBankAccountNo] [varchar](max) NULL,
	[EmpIFSCCode] [varchar](max) NULL,
	[Empusername] [varchar](max) NULL,
	[EmpPassword] [varchar](max) NULL,
	[Createdby] [varchar](max) NULL,
	[Createdon] [varchar](max) NULL,
	[Updatedby] [varchar](max) NULL,
	[Updatedon] [varchar](max) NULL,
 CONSTRAINT [PK__tblEmplo__AF2DBB99515ECC4F] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[depid] [int] IDENTITY(1,1) NOT NULL,
	[depname] [varchar](40) NULL,
	[createdby] [varchar](40) NULL,
	[createdon] [varchar](40) NULL,
	[updatedby] [varchar](40) NULL,
	[updatedon] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[depid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblContacts]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](25) NULL,
	[CompanyName] [varchar](50) NULL,
	[Subject] [varchar](25) NULL,
	[Message] [varchar](max) NULL,
	[Createdby] [varchar](25) NULL,
	[Createdon] [varchar](25) NULL,
 CONSTRAINT [PK__tblConta__3214EC07105E2ADE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCareers]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCareers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [varchar](25) NULL,
	[Technology] [varchar](25) NULL,
	[Description] [varchar](max) NULL,
	[SourceTypeId] [varchar](2) NULL,
	[Createdby] [varchar](25) NULL,
	[Createdon] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_emptarget]    Script Date: 10/25/2019 22:53:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_emptarget](
	[targetid] [int] IDENTITY(1,1) NOT NULL,
	[empid] [int] NULL,
	[targetname] [varchar](80) NULL,
	[numdays] [int] NULL,
	[fromdate] [datetime] NULL,
	[empdepart] [int] NULL,
	[todate] [datetime] NULL,
	[createby] [varchar](20) NULL,
	[createon] [varchar](20) NULL,
	[updateon] [varchar](20) NULL,
	[updateby] [varchar](20) NULL,
 CONSTRAINT [PK__tbl_empt__300B9CDB5FB337D6] PRIMARY KEY CLUSTERED 
(
	[targetid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateLeaveDetail]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_UpdateLeaveDetail]
(
@EmpId int,
@TotalLeave varchar(max),
@CasualLeave varchar(max),
@SickLeave varchar(max),
@PaidLeave varchar(max),
@UnPaidLeave varchar(max)
)
As 
update tblLeaveDetail set TotalLeave=@TotalLeave,CasualLeave=@CasualLeave,SickLeave=@SickLeave
,Paidleave=@PaidLeave,UnPaidLeave=@UnPaidLeave where EmpId=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_updateemployee]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_updateemployee]
(
@id int,
@EmpPhoto  varchar(max)=NULL,
@Xmarksheet varchar(max)=NULL,
@Diplomamarksheet varchar(max)=NULL,
@Mastermarksheet varchar(max)=NULL,
@previousexperince varchar(max)=NULL,
@bachlormarksheet varchar(max)=NULL,
@XIImarksheet varchar(max)=NULL,
@Empcode varchar(max),
@EmpDoJ varchar(max),
@Designation varchar(max),
@EmpFirstname varchar(max),
@EmpLastname varchar(max),
@EmpFathername varchar(max),
@EmpMothername varchar(max),
@emptype varchar (max),
@EmpPermanentAddress varchar(max),
@EmpCorrespondanceAddress varchar(max),
@EmpIdDetails varchar(max),
@EmpMobileNo varchar(max),
@EmpPhoneNo varchar(max),
@EmpClassX varchar(max),
@EmpClassXII varchar(max),
@EmpBachelorDegree varchar(max),
@EmpMasterDegree varchar(max),
@EmpDiploma varchar(max),
@EmpCertification varchar(max),
@EmpAchievements varchar(max),
@EmpMaritalStatus varchar(max),
@Email varchar(max),
@CurrentSalery varchar (max),
@EmpDOB varchar(max),
@EmpDoA varchar(max),
@EmpBankname varchar(max),
@EmpBranchname varchar(max),
@EmpBankAccountNo varchar(max),
@EmpIFSCCode varchar(max),
@Empusername varchar(max),
@EmpPassword varchar(max),
@Updatedby varchar(max),
@Updatedon varchar(max)
)
As
Update tblEmployee set
EmpPhoto=@EmpPhoto,Xmarksheet=@Xmarksheet,Diplomamarksheet=@Diplomamarksheet,Mastermarksheet=@Mastermarksheet,previousexperince=@previousexperince,
bachlormarksheet=@bachlormarksheet,XIImarksheet=@XIImarksheet,Empcode=@Empcode,EmpDoJ=@EmpDoJ,Designation=@Designation,EmpFirstname=@EmpFirstname,EmpLastname=@EmpLastname,EmpFathername=@EmpFathername,EmpMothername=@EmpMothername,emptype=@emptype,
EmpPermanentAddress=@EmpPermanentAddress,EmpCorrespondanceAddress=@EmpCorrespondanceAddress,EmpIdDetails=@EmpIdDetails,EmpMobileNo=@EmpMobileNo,EmpPhoneNo=@EmpPhoneNo,EmpClassX=@EmpClassX,EmpClassXII=@EmpClassXII,
EmpBachelorDegree=@EmpBachelorDegree,EmpMasterDegree=@EmpMasterDegree,EmpDiploma=@EmpDiploma,EmpCertification=@EmpCertification,EmpAchievements=@EmpAchievements,EmpMaritalStatus=@EmpMaritalStatus,Email=@Email,CurrentSalery=@CurrentSalery,EmpDOB=@EmpDOB,EmpDoA=@EmpDoA,
EmpBankname=@EmpBankname,EmpBranchname=@EmpBranchname,EmpBankAccountNo=@EmpBankAccountNo,EmpIFSCCode=@EmpIFSCCode,Empusername=@Empusername,EmpPassword=@EmpPassword,Updatedby=@Updatedby,Updatedon=@Updatedon
where EmpId=@id
GO
/****** Object:  StoredProcedure [dbo].[Proc_updateDepartement]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Proc_updateDepartement]
(
@id int,
@depname varchar  (40),
@updatedby varchar(40),
@updatedon varchar(40)
)
As
update tblDepartment set
 depname=@depname,updatedby=@updatedby,updatedon=@updatedon
 Where depid=@id
GO
/****** Object:  StoredProcedure [dbo].[proc_UpdateCareer]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_UpdateCareer]
(
@Id int,
@Post varchar(25),
@Technology varchar(25),
@Description varchar(25),
@SourceTypeId varchar(2)
)
As
update tblCareers set 
Post=@Post,
Technology=@Technology,
Description=@Description,
SourceTypeId=@SourceTypeId where Id=@Id
GO
/****** Object:  StoredProcedure [dbo].[proc_SelecttargetEmp]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_SelecttargetEmp]
@id int
As
Select targetname,numdays,empdepart,fromdate,todate,targetid From tbl_emptarget where empid=@id
GO
/****** Object:  StoredProcedure [dbo].[proc_selecttarget]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_selecttarget]
@empid int
As
select targetid,targetstatus from tblsavetarget  where empid=@empid
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectLeaveId]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectLeaveId]
(
@EmpId int
)
As
select e.EmpId,e.EmpFirstname,l.TotalLeave,l.Casualleave,l.Sickleave,l.Paidleave,l.UnPaidLeave from tblEmployee e
inner join tblLeaveDetail l 
on e.EmpId=l.EmpId where l.EmpId=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectEmpTarget]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_SelectEmpTarget]
@EmpId int 
As
select EmpId,EmpFirstname from tblEmployee where emptype=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectEmployee]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectEmployee]
As
select EmpId,EmpFirstname from tblEmployee
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectEmpLeaveDetail]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectEmpLeaveDetail]
As
select e.EmpId,e.EmpFirstname,l.TotalLeave,l.Casualleave,l.Sickleave,l.Paidleave,l.UnPaidLeave from tblEmployee e
inner join tblLeaveDetail l 
on e.EmpId=l.EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_selectdroptype]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_selectdroptype]
AS
select depname,depid from tblDepartment
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectDepartment]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_SelectDepartment]
as
Select * from tblDepartment
GO
/****** Object:  StoredProcedure [dbo].[proc_selectdepart]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_selectdepart]
@depid int
As
select depid,depname from tblDepartment where depid=@depid
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectContactDetails]    Script Date: 10/25/2019 22:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectContactDetails]
As
select Name,Email,Phone,CompanyName,Subject,Message,Createdby,Createdon from tblContacts
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectCareer]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectCareer]
As
select Post,Technology,Description from tblCareers where SourceTypeId='1'
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectAllEmployee]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_SelectAllEmployee]
As
select EmpId,EmpPhoto,Empcode,EmpDoJ,Designation,EmpFirstname,EmpLastname,EmpFathername,EmpMothername,
EmpPermanentAddress,EmpCorrespondanceAddress,EmpIdDetails,EmpMobileNo,EmpPhoneNo,EmpClassX,EmpClassXII,
EmpBachelorDegree,EmpMasterDegree,EmpDiploma,EmpCertification,EmpAchievements,EmpMaritalStatus,Email,CurrentSalery,EmpDOB,EmpDoA,
EmpBankname,EmpBranchname,EmpBankAccountNo,EmpIFSCCode,Empusername,EmpPassword,tblEmployee.Createdby,tblEmployee.Createdon,[Xmarksheet]
      ,[Diplomamarksheet]
      ,[Mastermarksheet]
      ,[Previousexperince]
      ,[Bachlormarksheet]
      ,[XIImarksheet],depname from tblEmployee left join tblDepartment on tblEmployee.emptype=tblDepartment.depid
GO
/****** Object:  StoredProcedure [dbo].[proc_SelectAllCareer]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_SelectAllCareer]
As 
Select Id,Post,Technology,Description,SourceTypeId,Createdby,Createdon from tblCareers
GO
/****** Object:  StoredProcedure [dbo].[Proc_savetargets]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc  [dbo].[Proc_savetargets]
(
@targetstatus varchar (max),
@empid int,
@targetid int,
@createdby varchar(50),
@createdon varchar (50)

) 
As 
insert into tblsavetarget(targetstatus,empid,targetid,createdby,createdon)
 values (@targetstatus,@empid,@targetid,@createdby,@createdon)
GO
/****** Object:  StoredProcedure [dbo].[proc_LeaveDetails]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_LeaveDetails]
(
@EmpId int,
@TotalLeave varchar(max),
@Casualleave varchar(max),
@Sickleave varchar(max),
@Paidleave varchar(max),
@UnPaidLeave varchar(max),
@Createdby varchar(max),
@Createdon varchar(max)
)
As
Insert into tblLeaveDetail(EmpId,TotalLeave,Casualleave,Sickleave,Paidleave,UnPaidLeave,Createdby,Createdon)
values(@EmpId,@TotalLeave,@Casualleave,@Sickleave,@Paidleave,@UnPaidLeave,@Createdby,@Createdon)
GO
/****** Object:  StoredProcedure [dbo].[proc_LeaveApplied]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_LeaveApplied]
As
select e.EmpId,e.EmpFirstname,l.TotalLeave,l.Casualleave,l.Sickleave,l.Paidleave,l.UnPaidLeave,a.* from tblEmployee e
inner join tblLeaveDetail l on l.EmpId=e.EmpId
inner join tblLeaveApplyFor a on a.EmpId=e.EmpId
 Where WhetherApproved_DisApproved='Dis Approved'
GO
/****** Object:  StoredProcedure [dbo].[Proc_LeaveAppFor]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Proc_LeaveAppFor]
(
@EmpId int,
@WhetherApprovedDisApproved varchar(max)
)
As
update tblLeaveApplyFor 
set WhetherApproved_DisApproved=@WhetherApprovedDisApproved where EmpId=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_InsertContact]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_InsertContact]
(
@Name varchar(25),
@Email varchar(50),
@Phone varchar(25),
@CompanyName varchar(50),
@Subject varchar(25),
@Message varchar(max),
@Createdby varchar(25),
@Createdon varchar(25)
)
As
Insert into tblContacts(Name,Email,Phone,CompanyName,Subject,Message,Createdby,Createdon)
values(@Name,@Email,@Phone,@CompanyName,@Subject,@Message,@Createdby,@Createdon)
GO
/****** Object:  StoredProcedure [dbo].[proc_InsertCareer]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_InsertCareer]
(
@Post varchar(25),
@Technology varchar(25),
@Description varchar(max),
@SourceTypeId varchar(2),
@Createdby varchar(25),
@Createdon varchar(25)
)
As
Insert into tblCareers(Post,Technology,Description,SourceTypeId,Createdby,Createdon)
values(@Post,@Technology,@Description,@SourceTypeId,@Createdby,@Createdon)
GO
/****** Object:  StoredProcedure [dbo].[proc_GetApprovedJobId]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_GetApprovedJobId]
(
@EmpId int
)
As
select * from tblLeaveApplyFor where WhetherApproved_DisApproved='Approved' And Empid=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[proc_empphoto]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_empphoto]
@id int 
as
select EmpPhoto,Xmarksheet,
Diplomamarksheet,Mastermarksheet,XIImarksheet,Bachlormarksheet from tblEmployee 
where EmpId=@id
GO
/****** Object:  StoredProcedure [dbo].[proc_deleteemployee]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[proc_deleteemployee]
(
@EmpId int
)
As

Delete from tblEmployee where EmpId=@EmpId
GO
/****** Object:  StoredProcedure [dbo].[Proc_DeleteDepartment]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_DeleteDepartment]
(
@depid int
)
As
Delete from tblDepartment where depid=@depid
GO
/****** Object:  StoredProcedure [dbo].[proc_CheckLogin]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_CheckLogin]
(
@UserName varchar(25),
@Password varchar(25)
)
As
select FullName,UserName,Password,UserType from tblUsers where UserName=@UserName And Password=@Password
GO
/****** Object:  StoredProcedure [dbo].[proc_CheckEmpLogin]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CheckEmpLogin]
(
@username varchar(25),
@Password varchar(25)
)
As
select EmpId,EmpPhoto,Empcode,EmpDoJ,Designation,EmpFirstname,EmpLastname,EmpFathername,EmpMothername,
EmpPermanentAddress,EmpCorrespondanceAddress,EmpIdDetails,EmpMobileNo,EmpPhoneNo,EmpClassX,EmpClassXII,
EmpBachelorDegree,EmpMasterDegree,EmpDiploma,EmpCertification,EmpAchievements,EmpMaritalStatus,EmpDOB,EmpDoA,
EmpBankname,EmpBranchname,EmpBankAccountNo,EmpIFSCCode,Empusername,EmpPassword,Createdby,Createdon from tblEmployee
 where Empusername=@username And EmpPassword=@Password
GO
/****** Object:  StoredProcedure [dbo].[proc_addtargetemp]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_addtargetemp]
@empid int,
@targetname varchar(80),
@numdays int,
@emptype int,
@fromdate datetime,
@todate datetime,
@createby varchar(20),
@createon varchar(20)
as
insert into tbl_emptarget(empid,targetname,numdays,fromdate,todate,createby,createon,empdepart) 
values (@empid,@targetname,@numdays,@fromdate,@todate,@createby,@createon,@emptype)
GO
/****** Object:  StoredProcedure [dbo].[proc_AddLeave]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddLeave]
(
@EmpId int,
@LeaveType varchar(max),
@Month varchar(max),
@Date varchar(max),
@ToDate varchar(max),
@Days varchar(max),
@Leavedescription varchar(max),
@LeaveOptFor varchar(max),
@WhetherApproved_DisApproved varchar(max),
@Createdby varchar(max),
@Createdon varchar(max)
)
As
Insert into tblLeaveApplyFor(EmpId,LeaveType,Month,Date,ToDate,Days,Leavedescription,LeaveOptFor,
WhetherApproved_DisApproved,Createdby,Createdon)values
(@EmpId,@LeaveType,@Month,@Date,@ToDate,@Days,@Leavedescription,@LeaveOptFor,
@WhetherApproved_DisApproved,@Createdby,@Createdon)
GO
/****** Object:  StoredProcedure [dbo].[proc_AddEmployee]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[proc_AddEmployee]
(
@EmpPhoto  varchar(max),
@Xmarksheet varchar(max),
@Diplomamarksheet varchar(max),
@Mastermarksheet varchar(max),
@previousexperince varchar(max),
@bachlormarksheet varchar(max),
@XIImarksheet varchar(max),
@Empcode varchar(max),
@EmpDoJ varchar(max),
@Designation varchar(max),
@EmpFirstname varchar(max),
@EmpLastname varchar(max),
@EmpFathername varchar(max),
@EmpMothername varchar(max),
@emptype varchar (max),
@EmpPermanentAddress varchar(max),
@EmpCorrespondanceAddress varchar(max),
@EmpIdDetails varchar(max),
@EmpMobileNo varchar(max),
@EmpPhoneNo varchar(max),
@EmpClassX varchar(max),
@EmpClassXII varchar(max),
@EmpBachelorDegree varchar(max),
@EmpMasterDegree varchar(max),
@EmpDiploma varchar(max),
@EmpCertification varchar(max),
@EmpAchievements varchar(max),
@EmpMaritalStatus varchar(max),
@Email varchar(max),
@CurrentSalery varchar (max),
@EmpDOB varchar(max),
@EmpDoA varchar(max),
@EmpBankname varchar(max),
@EmpBranchname varchar(max),
@EmpBankAccountNo varchar(max),
@EmpIFSCCode varchar(max),
@Empusername varchar(max),
@EmpPassword varchar(max),
@Createdby varchar(max),
@Createdon varchar(max)
)
As
Insert into tblEmployee(EmpPhoto,Xmarksheet,Diplomamarksheet,Mastermarksheet,previousexperince,
bachlormarksheet,XIImarksheet,Empcode,EmpDoJ,Designation,EmpFirstname,EmpLastname,EmpFathername,EmpMothername,emptype,
EmpPermanentAddress,EmpCorrespondanceAddress,EmpIdDetails,EmpMobileNo,EmpPhoneNo,EmpClassX,EmpClassXII,
EmpBachelorDegree,EmpMasterDegree,EmpDiploma,EmpCertification,EmpAchievements,EmpMaritalStatus,Email,CurrentSalery,EmpDOB,EmpDoA,
EmpBankname,EmpBranchname,EmpBankAccountNo,EmpIFSCCode,Empusername,EmpPassword,Createdby,Createdon)

values(@EmpPhoto,@Xmarksheet,@Diplomamarksheet,@Mastermarksheet,@previousexperince,@bachlormarksheet,@XIImarksheet,
@Empcode,@EmpDoJ,@Designation,@EmpFirstname,@EmpLastname,@EmpFathername,@EmpMothername,@emptype,
@EmpPermanentAddress,@EmpCorrespondanceAddress,@EmpIdDetails,@EmpMobileNo,@EmpPhoneNo,@EmpClassX,@EmpClassXII,
@EmpBachelorDegree,@EmpMasterDegree,@EmpDiploma,@EmpCertification,@EmpAchievements,@EmpMaritalStatus,@Email,@CurrentSalery,@EmpDOB,@EmpDoA,
@EmpBankname,@EmpBranchname,@EmpBankAccountNo,@EmpIFSCCode,@Empusername,@EmpPassword,@Createdby,@Createdon)
GO
/****** Object:  StoredProcedure [dbo].[Proc_addDepartment]    Script Date: 10/25/2019 22:53:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[Proc_addDepartment]
(
@depname varchar  (40),
@createdby varchar(40),
@createdon varchar(40),
@updatedby varchar(40),
@updatedon varchar(40))

As
insert into tblDepartment(depname,createdby,createdon,updatedby,updatedon) values(@depname,@createdby,@createdon,@updatedby,@updatedon)
GO
