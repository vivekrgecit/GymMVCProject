/****** Object:  Table [dbo].[SchemeMaster]    Script Date: 09/01/2015 22:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemeMaster](
	[SchemeID] [int] IDENTITY(1,1) NOT NULL,
	[SchemeName] [nvarchar](50) NULL,
	[Createdby] [int] NULL,
	[Createddate] [datetime] NULL,
	[schemebit] [bit] NULL,
 CONSTRAINT [PK_SchemeMaster] PRIMARY KEY CLUSTERED 
(
	[SchemeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SchemeMaster] ON
INSERT [dbo].[SchemeMaster] ([SchemeID], [SchemeName], [Createdby], [Createddate], [schemebit]) VALUES (6, N'GYM+CARDIO1', 0, CAST(0x0000A4E6009D47A2 AS DateTime), NULL)
INSERT [dbo].[SchemeMaster] ([SchemeID], [SchemeName], [Createdby], [Createddate], [schemebit]) VALUES (7, N'GYM', 1, CAST(0x0000A31300000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SchemeMaster] OFF
/****** Object:  Table [dbo].[ReceiptDetails]    Script Date: 09/01/2015 22:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetails](
	[ReceiptID] [bigint] IDENTITY(1,1) NOT NULL,
	[Memberid] [bigint] NULL,
	[generateby] [bigint] NULL,
	[createdby] [bigint] NULL,
	[createddate] [datetime] NULL,
 CONSTRAINT [PK_RecepitTB] PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ReceiptDetails] ON
INSERT [dbo].[ReceiptDetails] ([ReceiptID], [Memberid], [generateby], [createdby], [createddate]) VALUES (1, 1, 2, 2, CAST(0x0000A4FC00DA21F9 AS DateTime))
INSERT [dbo].[ReceiptDetails] ([ReceiptID], [Memberid], [generateby], [createdby], [createddate]) VALUES (2, 1, 2, 2, CAST(0x0000A4FD00C4E65A AS DateTime))
INSERT [dbo].[ReceiptDetails] ([ReceiptID], [Memberid], [generateby], [createdby], [createddate]) VALUES (3, 1, 2, 2, CAST(0x0000A4FD00C5555E AS DateTime))
INSERT [dbo].[ReceiptDetails] ([ReceiptID], [Memberid], [generateby], [createdby], [createddate]) VALUES (4, 1, 2, 2, CAST(0x0000A4FD00C5DD50 AS DateTime))
SET IDENTITY_INSERT [dbo].[ReceiptDetails] OFF
/****** Object:  Table [dbo].[PlanMaster]    Script Date: 09/01/2015 22:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanMaster](
	[PlanID] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [varchar](50) NULL,
	[PlanAmount] [decimal](18, 0) NULL,
	[ServicetaxAmout] [decimal](18, 0) NULL,
	[ServiceTax] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUserID] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [int] NULL,
	[RecStatus] [char](1) NULL,
	[SchemeID] [int] NULL,
	[PeriodID] [int] NULL,
	[TotalAmout] [decimal](18, 0) NULL,
	[ServicetaxNo] [varchar](50) NULL,
 CONSTRAINT [PK_PlanMaster] PRIMARY KEY CLUSTERED 
(
	[PlanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PlanMaster] ON
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (1, N'Quaretly', CAST(1200 AS Decimal(18, 0)), CAST(148 AS Decimal(18, 0)), N'12.36', CAST(0x0000A4E800C7CCA5 AS DateTime), 2, CAST(0x0000A4E800000000 AS DateTime), 0, N'A', 7, 3, CAST(1348 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (2, N'Half Yearly', CAST(2000 AS Decimal(18, 0)), CAST(247 AS Decimal(18, 0)), N'12.36', CAST(0x0000A4E800C7CF6B AS DateTime), 2, CAST(0x0000A4E800000000 AS DateTime), 0, N'A', 7, 6, CAST(2247 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (3, N'Yearly', CAST(3500 AS Decimal(18, 0)), CAST(432 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 1, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 7, 12, CAST(3932 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (4, N'Yearly', CAST(4800 AS Decimal(18, 0)), CAST(593 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 1, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 12, CAST(5393 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (5, N'Quaretly', CAST(1800 AS Decimal(18, 0)), CAST(222 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 1, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 6, CAST(2022 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (6, N'Half Yearly', CAST(3000 AS Decimal(18, 0)), CAST(370 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 1, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 6, CAST(3370 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (7, N'policeMonthly', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 6, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 3, CAST(0 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (8, N'policehalfyearly', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 6, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 6, CAST(0 AS Decimal(18, 0)), N'BHCPM6927JSD001')
INSERT [dbo].[PlanMaster] ([PlanID], [PlanName], [PlanAmount], [ServicetaxAmout], [ServiceTax], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [SchemeID], [PeriodID], [TotalAmout], [ServicetaxNo]) VALUES (9, N'policeyearly', CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), N'12.36', CAST(0x0000A33B016D34C6 AS DateTime), 6, CAST(0x0000A33B016D34C6 AS DateTime), 0, N'A', 6, 12, CAST(0 AS Decimal(18, 0)), N'BHCPM6927JSD001')
SET IDENTITY_INSERT [dbo].[PlanMaster] OFF
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 09/01/2015 22:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[PlanID] [int] NULL,
	[WorkouttypeID] [int] NULL,
	[Paymenttype] [nvarchar](50) NULL,
	[PaymentFromdt] [datetime] NULL,
	[PaymentTodt] [datetime] NULL,
	[PaymentAmount] [numeric](18, 0) NULL,
	[NextRenwalDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreateUserID] [int] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyUserID] [int] NULL,
	[RecStatus] [char](1) NULL,
	[MemberID] [bigint] NULL,
	[MemberNo] [nvarchar](30) NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentDetails] ON
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (1, 4, 6, N'Cash', CAST(0x0000A4F600000000 AS DateTime), CAST(0x0000A66400000000 AS DateTime), CAST(5393 AS Numeric(18, 0)), CAST(0x0000A66400000000 AS DateTime), CAST(0x0000A4F600BDE04E AS DateTime), 2, NULL, 0, N'A', 1, NULL)
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (2, 4, 6, N'Cash', CAST(0x0000A66400000000 AS DateTime), CAST(0x0000A7D100000000 AS DateTime), CAST(5393 AS Numeric(18, 0)), CAST(0x0000A7D100000000 AS DateTime), CAST(0x0000A4F600BE2B37 AS DateTime), 2, NULL, 0, N'A', 1, NULL)
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (3, 4, 6, N'Cash', CAST(0x0000A7D100000000 AS DateTime), CAST(0x0000A93E00000000 AS DateTime), CAST(5393 AS Numeric(18, 0)), CAST(0x0000A93E00000000 AS DateTime), CAST(0x0000A4F600BE39D5 AS DateTime), 2, NULL, 0, N'A', 1, NULL)
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (4, 1, 7, N'Cash', CAST(0x0000A93E00000000 AS DateTime), CAST(0x0000A99A00000000 AS DateTime), CAST(1348 AS Numeric(18, 0)), CAST(0x0000A99A00000000 AS DateTime), CAST(0x0000A4F600BF1BF8 AS DateTime), 2, NULL, 0, N'A', 1, NULL)
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (5, 4, 6, N'Cash', CAST(0x0000A50400000000 AS DateTime), CAST(0x0000A67200000000 AS DateTime), CAST(5393 AS Numeric(18, 0)), CAST(0x0000A67200000000 AS DateTime), CAST(0x0000A504011C07E1 AS DateTime), 2, NULL, 0, N'A', 2, NULL)
INSERT [dbo].[PaymentDetails] ([PaymentID], [PlanID], [WorkouttypeID], [Paymenttype], [PaymentFromdt], [PaymentTodt], [PaymentAmount], [NextRenwalDate], [CreateDate], [CreateUserID], [ModifyDate], [ModifyUserID], [RecStatus], [MemberID], [MemberNo]) VALUES (6, 4, 6, N'Cash', CAST(0x0000A50400000000 AS DateTime), CAST(0x0000A67200000000 AS DateTime), CAST(5393 AS Numeric(18, 0)), CAST(0x0000A67200000000 AS DateTime), CAST(0x0000A50401286A93 AS DateTime), 2, NULL, 0, N'A', 3, NULL)
SET IDENTITY_INSERT [dbo].[PaymentDetails] OFF
/****** Object:  Table [dbo].[MemberRegistration]    Script Date: 09/01/2015 22:41:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberRegistration](
	[MemID] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberNo] [nvarchar](20) NULL,
	[MemberFName] [nvarchar](100) NULL,
	[MemberLName] [nvarchar](100) NULL,
	[MemberMName] [nvarchar](100) NULL,
	[DOB] [datetime] NULL,
	[Age] [nvarchar](10) NULL,
	[Contactno] [nvarchar](10) NULL,
	[EmailID] [nvarchar](30) NULL,
	[Gender] [nvarchar](30) NULL,
	[PlantypeID] [int] NULL,
	[WorkouttypeID] [int] NULL,
	[Createdby] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[MemImagename] [nvarchar](500) NULL,
	[MemImagePath] [nvarchar](500) NULL,
	[JoiningDate] [datetime] NULL,
	[Address] [nvarchar](500) NULL,
	[MainMemberID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberRegistration] ON
INSERT [dbo].[MemberRegistration] ([MemID], [MemberNo], [MemberFName], [MemberLName], [MemberMName], [DOB], [Age], [Contactno], [EmailID], [Gender], [PlantypeID], [WorkouttypeID], [Createdby], [CreatedDate], [ModifiedDate], [ModifiedBy], [MemImagename], [MemImagePath], [JoiningDate], [Address], [MainMemberID]) VALUES (1, N'GYMONE/1/2016', N'SAINESHWAR', N'Bageri', N'Balkrishna', CAST(0x0000816500000000 AS DateTime), N'25', N'5050505005', N'saihacksoft@gmail.com', N'1', 4, 6, 2, CAST(0x0000A4F600BDE02D AS DateTime), NULL, 0, NULL, NULL, CAST(0x0000A4F600000000 AS DateTime), N'Mumbai', 1)
INSERT [dbo].[MemberRegistration] ([MemID], [MemberNo], [MemberFName], [MemberLName], [MemberMName], [DOB], [Age], [Contactno], [EmailID], [Gender], [PlantypeID], [WorkouttypeID], [Createdby], [CreatedDate], [ModifiedDate], [ModifiedBy], [MemImagename], [MemImagePath], [JoiningDate], [Address], [MainMemberID]) VALUES (2, N'GYMONE/2/2016', N'Prashant', N'More', N'Yashwant', CAST(0x0000816500000000 AS DateTime), N'25', N'9090909090', N'saihacksoft@gmail.com', N'1', 4, 6, 2, CAST(0x0000A504011C07C0 AS DateTime), NULL, 0, NULL, NULL, CAST(0x0000A50400000000 AS DateTime), N'Mumbai', 2)
INSERT [dbo].[MemberRegistration] ([MemID], [MemberNo], [MemberFName], [MemberLName], [MemberMName], [DOB], [Age], [Contactno], [EmailID], [Gender], [PlantypeID], [WorkouttypeID], [Createdby], [CreatedDate], [ModifiedDate], [ModifiedBy], [MemImagename], [MemImagePath], [JoiningDate], [Address], [MainMemberID]) VALUES (3, N'GYMONE/3/2016', N'Shravan', N'Patil', N'Pandurang', CAST(0x00008D0900000000 AS DateTime), N'25', N'9090909090', N'shravanpatil@testmail.com', N'2', 4, 6, 2, CAST(0x0000A50401286A85 AS DateTime), NULL, 0, NULL, NULL, CAST(0x0000A50400000000 AS DateTime), N'mumbai', 3)
SET IDENTITY_INSERT [dbo].[MemberRegistration] OFF
/****** Object:  UserDefinedFunction [dbo].[fnNumberToWords]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnNumberToWords]

(

    @Number AS BIGINT

) RETURNS VARCHAR(MAX)

AS

BEGIN

    DECLARE @Below20 TABLE (ID INT IDENTITY(0,1), Word VARCHAR(32))

    DECLARE @Below100 TABLE (ID INT IDENTITY(2,1), Word VARCHAR(32))

    DECLARE @BelowHundred AS VARCHAR(126) 

    

    INSERT @Below20 (Word) VALUES ('ZERO')

    INSERT @Below20 (Word) VALUES ('ONE')

    INSERT @Below20 (Word) VALUES ( 'TWO' )

    INSERT @Below20 (Word) VALUES ( 'THREE')

    INSERT @Below20 (Word) VALUES ( 'FOUR' )

    INSERT @Below20 (Word) VALUES ( 'FIVE' )

    INSERT @Below20 (Word) VALUES ( 'SIX' )

    INSERT @Below20 (Word) VALUES ( 'SEVEN' )

    INSERT @Below20 (Word) VALUES ( 'EIGHT')

    INSERT @Below20 (Word) VALUES ( 'NINE')

    INSERT @Below20 (Word) VALUES ( 'TEN')

    INSERT @Below20 (Word) VALUES ( 'ELEVEN' )

    INSERT @Below20 (Word) VALUES ( 'TWELVE' )

    INSERT @Below20 (Word) VALUES ( 'THIRTEEN' )

    INSERT @Below20 (Word) VALUES ( 'FOURTEEN')

    INSERT @Below20 (Word) VALUES ( 'FIFTEEN' )

    INSERT @Below20 (Word) VALUES ( 'SIXTEEN' )

    INSERT @Below20 (Word) VALUES ( 'SEVENTEEN')

    INSERT @Below20 (Word) VALUES ( 'EIGHTEEN' )

    INSERT @Below20 (Word) VALUES ( 'NINETEEN' )

 

    INSERT @Below100 VALUES ('TWENTY')

    INSERT @Below100 VALUES ('THIRTY')

    INSERT @Below100 VALUES ('FORTY')

    INSERT @Below100 VALUES ('FIFTY')

    INSERT @Below100 VALUES ('SIXTY')

    INSERT @Below100 VALUES ('SEVENTY')

    INSERT @Below100 VALUES ('EIGHTY')

    INSERT @Below100 VALUES ('NINETY')

 

    IF @Number > 99

    BEGIN

        SELECT @belowHundred = dbo.fnNumberToWords( @Number % 100)

    END

 

    DECLARE @NumberInWords VARCHAR(MAX)

    SET @NumberInWords  = 

    (

      SELECT

        CASE 

            WHEN @Number = 0 THEN  ''

 

            WHEN @Number BETWEEN 1 AND 19 

                THEN (SELECT Word FROM @Below20 WHERE ID=@Number)

 

            WHEN @Number BETWEEN 20 AND 99

                THEN (SELECT Word FROM @Below100 WHERE ID=@Number/10)+ '-' + dbo.fnNumberToWords( @Number % 10) 

 

            WHEN @Number BETWEEN 100 AND 999 

                THEN (dbo.fnNumberToWords( @Number / 100)) + ' HUNDRED '+ 

                        CASE

                            WHEN @belowHundred <> '' 

                                THEN 'AND ' + @belowHundred else @belowHundred

                        END

 

            WHEN @Number BETWEEN 1000 AND 999999 

                THEN (dbo.fnNumberToWords( @Number / 1000))+ ' THOUSAND '+ dbo.fnNumberToWords( @Number % 1000)  

 

            WHEN @Number BETWEEN 1000000 AND 999999999 

                THEN (dbo.fnNumberToWords( @Number / 1000000)) + ' MILLION '+ dbo.fnNumberToWords( @Number % 1000000) 

 

            WHEN @Number BETWEEN 1000000000 AND 999999999999 

                THEN (dbo.fnNumberToWords( @Number / 1000000000))+' BILLION '+ dbo.fnNumberToWords( @Number % 1000000000) 

            

            ELSE ' INVALID INPUT'

        END

    )

 

    SELECT @NumberInWords = RTRIM(@NumberInWords)

 

    SELECT @NumberInWords = RTRIM(LEFT(@NumberInWords,LEN(@NumberInWords)-1)) WHERE RIGHT(@NumberInWords,1)='-'

 

    RETURN (@NumberInWords)

 

END
GO
/****** Object:  Table [dbo].[Fiscalyear]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fiscalyear](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[FiscalyearFromDate] [datetime] NULL,
	[FiscalyearToDate] [datetime] NULL,
	[Year] [varchar](4) NULL,
 CONSTRAINT [PK_Fiscalyear] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Fiscalyear] ON
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (1, CAST(0x0000A02600000000 AS DateTime), CAST(0x0000A19200000000 AS DateTime), N'2013')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (2, CAST(0x0000A19300000000 AS DateTime), CAST(0x0000A2FF00000000 AS DateTime), N'2014')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (3, CAST(0x0000A30000000000 AS DateTime), CAST(0x0000A46C00000000 AS DateTime), N'2015')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (4, CAST(0x0000A46D00000000 AS DateTime), CAST(0x0000A5DA00000000 AS DateTime), N'2016')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (5, CAST(0x0000A5DB00000000 AS DateTime), CAST(0x0000A74700000000 AS DateTime), N'2017')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (6, CAST(0x0000A74800000000 AS DateTime), CAST(0x0000A8B400000000 AS DateTime), N'2018')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (7, CAST(0x0000A8B500000000 AS DateTime), CAST(0x0000AA2100000000 AS DateTime), N'2019')
INSERT [dbo].[Fiscalyear] ([Fid], [FiscalyearFromDate], [FiscalyearToDate], [Year]) VALUES (8, CAST(0x0000AA2200000000 AS DateTime), CAST(0x0000AB8F00000000 AS DateTime), N'2020')
SET IDENTITY_INSERT [dbo].[Fiscalyear] OFF
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'SystemUser')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A4AB011E2399 AS DateTime), NULL, 1, CAST(0x0000A502011E8434 AS DateTime), 0, N'e10adc3949ba59abbe56e057f20f883e', CAST(0x0000A4AD003E141E AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A4AD0031C115 AS DateTime), NULL, 1, CAST(0x0000A50400C7C99B AS DateTime), 0, N'e10adc3949ba59abbe56e057f20f883e', CAST(0x0000A4AD0031C115 AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[Users]    Script Date: 09/01/2015 22:41:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
	[FullName] [nvarchar](200) NULL,
	[EmailID] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [UserName], [FullName], [EmailID]) VALUES (1, N'Admin', N'Admin', N'saihacksoft@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [FullName], [EmailID]) VALUES (2, N'User', N'User', N'User@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[sprocSchemeMasterInsertUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocSchemeMasterInsertUpdateSingleItem]    
(    
 @SchemeID int=0    
,@SchemeName nvarchar(50)    
,@Createdby int=0    
    
)    
AS    
DECLARE @ReturnValue int    
IF (@SchemeID =0) -- New Item    
BEGIN    
    
 INSERT    
 INTO [SchemeMaster]    
 (    
  SchemeName    
,Createdby    
,Createddate    
    
 )    
  VALUES    
  (    
  @SchemeName    
,@Createdby    
,GETDATE()
    
 )    
     
 SELECT @ReturnValue = SCOPE_IDENTITY()    
    
 END    
 ELSE    
 BEGIN    
    
 UPDATE [SchemeMaster]    
 SET    
  SchemeName = @SchemeName    
,Createdby = @Createdby    
,Createddate = GETDATE() 
    
 WHERE    
  [SchemeID] = @SchemeID    
    
SELECT @ReturnValue = @SchemeID    
    
END    
  IF (@@ERROR != 0)    
  BEGIN    
    RETURN -1    
  END    
  ELSE    
  BEGIN    
    RETURN @ReturnValue    
  END
GO
/****** Object:  StoredProcedure [dbo].[sprocSchemeMasterDeleteSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocSchemeMasterDeleteSingleItem]
(
	@SchemeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SchemeMaster]
	WHERE
		[SchemeID] = @SchemeID
	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocRecepitTBInsertUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocRecepitTBInsertUpdateSingleItem]    
(    
 @RecepitID bigint=0    
,@Memberid bigint=0    
,@generateby bigint=0    
,@createdby bigint=0    
  
)    
AS    
DECLARE @ReturnValue int    
IF (@RecepitID =0) -- New Item    
BEGIN    
    
 INSERT    
 INTO [ReceiptDetails]    
 (    
  Memberid    
,generateby    
,createdby    
,createddate    
    
 )    
  VALUES    
  (    
  @Memberid    
,@generateby    
,@createdby    
,GETDATE()
    
    
 )    
     
 SELECT @ReturnValue = SCOPE_IDENTITY()    
    
 END    
 ELSE    
 BEGIN    
    
 UPDATE [ReceiptDetails]    
 SET    
  Memberid = @Memberid    
,generateby = @generateby    
,createdby = @createdby    
,createddate = GETDATE()  
    
 WHERE    
  [ReceiptID] = @RecepitID    
    
SELECT @ReturnValue = @RecepitID    
    
END    
  IF (@@ERROR != 0)    
  BEGIN    
    RETURN -1    
  END    
  ELSE    
  BEGIN    
    RETURN @ReturnValue    
  END
GO
/****** Object:  StoredProcedure [dbo].[sprocPlanMasterSelectSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPlanMasterSelectSingleItem]  
(  
 @PlanID int  
)  
AS  
BEGIN  
 SET NOCOUNT ON  
 DECLARE @Err int  
  
 SELECT  
 *
  
 FROM [PlanMaster]  
 WHERE  
  ([PlanID] = @PlanID)  
  
 SET @Err = @@Error  
  
 RETURN @Err  
END
GO
/****** Object:  StoredProcedure [dbo].[sprocPlanMasterSelectList]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPlanMasterSelectList]  
AS  
BEGIN  
  
 SET NOCOUNT ON  
 DECLARE @Err int  
  
 SELECT  
  PlanID  
,PlanName  
,PlanAmount  
,ServiceTax  
,CreateDate  
,CreateUserID  
,ModifyDate  
,ModifyUserID  
,RecStatus ,TotalAmout 
  
 FROM [PlanMaster]  
  
 SET @Err = @@Error  
  
 RETURN @Err  
END
GO
/****** Object:  StoredProcedure [dbo].[sprocPlanMasterInsertUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sprocPlanMasterInsertUpdateSingleItem]                
(                
 @PlanID int=0                
,@SchemeID int=0            
,@PeriodID int=0             
,@PlanName varchar(50)=NULL                
,@PlanAmount decimal(18,2)  =NULL                
,@ServiceTax decimal(18,2)  =NULL                
,@CreateDate datetime=NULL                
,@CreateUserID int=0                
,@ModifyDate datetime                
,@ModifyUserID int=0                
,@RecStatus char(1)=NULL                
 )             
AS                
DECLARE @ReturnValue int         
DECLARE @servicetaxAM decimal(18,2) =12.36       
IF (@PlanID =0) -- New Item                
BEGIN                
                
 Declare @tax decimal(18,0)               
          set @tax = @PlanAmount * @ServiceTax      
        set @servicetaxAM = @tax / 100      
              
              
       Declare @totalamt decimal(18,0)           
       set  @totalamt = @PlanAmount + @servicetaxAM        
                
 INSERT                
 INTO [PlanMaster]                
 (                
  PlanName                
,PlanAmount                
,ServiceTax                
,CreateDate                
,CreateUserID                
,ModifyDate                
,ModifyUserID                
,RecStatus                
,SchemeID            
,PeriodID         
,TotalAmout       
,ServicetaxAmout      
 )                
  VALUES                
  (                
  @PlanName                
,@PlanAmount                
,@ServiceTax               
,GETDATE()                
,@CreateUserID                
,@ModifyDate                
,@ModifyUserID                
,@RecStatus                
,@SchemeID           
,@PeriodID        
,@totalamt      
,@servicetaxAM      
      
 )                
                 
 SELECT @ReturnValue = SCOPE_IDENTITY()                
                
 END                
 ELSE                
 BEGIN                
    declare @CreatedDate datetime    
 select @CreatedDate = CreateDate from [PlanMaster] where [PlanID] = @PlanID     
    
 UPDATE [PlanMaster]                
 SET                
  PlanName = @PlanName                
,PlanAmount = @PlanAmount                
,ServiceTax = @ServiceTax                
,CreateDate = @CreatedDate                 
,CreateUserID = @CreateUserID                
,ModifyDate = @ModifyDate                
,ModifyUserID = @ModifyUserID                
,RecStatus = @RecStatus                
,SchemeID =@SchemeID             
,PeriodID =@PeriodID            
 WHERE                
  [PlanID] = @PlanID                
                
SELECT @ReturnValue = @PlanID                
                
END                
  IF (@@ERROR != 0)                
  BEGIN                
    RETURN -1                
  END                
  ELSE                
  BEGIN                
    RETURN @ReturnValue                
 END

GO
/****** Object:  StoredProcedure [dbo].[sprocPlanMasterDeleteSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPlanMasterDeleteSingleItem]  
(  
 @PlanID int  
)  
AS  
BEGIN  
  
 SET NOCOUNT OFF  
 DECLARE @Err int  
  
 DELETE  
 FROM [PlanMaster]  
 WHERE  
  [PlanID] = @PlanID
 SET @Err = @@Error  
  
 RETURN @Err  
END
GO
/****** Object:  StoredProcedure [dbo].[sprocPaymentDetailsSelectSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPaymentDetailsSelectSingleItem]
(
	@PaymentID bigint
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		PaymentID
,PlanID
,WorkouttypeID
,Paymenttype
,PaymentFromdt
,PaymentTodt
,PaymentAmount
,NextRenwalDate
,CreateDate
,CreateUserID
,ModifyDate
,ModifyUserID
,RecStatus
,MemberID
,MemberNo

	FROM [PaymentDetails]
	WHERE
		([PaymentID] = @PaymentID)

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocPaymentDetailsSelectList]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPaymentDetailsSelectList]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		PaymentID
,PlanID
,WorkouttypeID
,Paymenttype
,PaymentFromdt
,PaymentTodt
,PaymentAmount
,NextRenwalDate
,CreateDate
,CreateUserID
,ModifyDate
,ModifyUserID
,RecStatus
,MemberID
,MemberNo

	FROM [PaymentDetails]

	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocPaymentDetailsInsertUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPaymentDetailsInsertUpdateSingleItem]    
(    
 @PaymentID bigint=0    
,@PlanID int=NULL    
,@WorkouttypeID int=NULL    
,@Paymenttype nvarchar(50)=NULL    
,@PaymentFromdt datetime=NULL    
,@PaymentAmount numeric(18, 0)=NULL    
,@CreateUserID int=NULL    
,@ModifyUserID int=NULL    
,@RecStatus char(1)=NULL    
,@MemberID bigint=NULL
,@PaymentIDOUT int out        
)    
AS    
DECLARE @ReturnValue int
Declare @period int
Declare @PaymentTodt datetime
Declare @tempdate datetime
Declare @NextRenwalDate datetime


IF (@PaymentID =0) -- New Item    
BEGIN

SET @period = (SELECT
	PeriodID
FROM PlanMaster
WHERE PlanID = @PlanID)
SET @tempdate = @PaymentFromdt
SET @PaymentTodt = DATEADD(mm, @period, @PaymentFromdt)
set @NextRenwalDate = DATEADD(mm, @period, @PaymentFromdt)



INSERT INTO [PaymentDetails] (PlanID
, WorkouttypeID
, Paymenttype
, PaymentFromdt
, PaymentTodt
, PaymentAmount
, NextRenwalDate
, CreateDate
, CreateUserID
, ModifyDate
, ModifyUserID
, RecStatus
, MemberID
, MemberNo)
	VALUES (@PlanID,
	 @WorkouttypeID, 
	 @Paymenttype,
	  @PaymentFromdt,
	   @PaymentTodt,
	    @PaymentAmount, 
	    @NextRenwalDate,
	     GETDATE(),
	      @CreateUserID,
	       null, 
	       @ModifyUserID, 
	       @RecStatus,
	        @MemberID,
	         null)

SELECT
	@ReturnValue = SCOPE_IDENTITY()
	
	set @PaymentIDOUT = SCOPE_IDENTITY()
 END
    
   
  IF (@@ERROR != 0)    
  BEGIN
    
    RETURN -1
    
  END    
  ELSE    
  BEGIN
    
    RETURN @ReturnValue
    
  END
GO
/****** Object:  StoredProcedure [dbo].[sprocPaymentDetailsDeleteSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocPaymentDetailsDeleteSingleItem]
(
	@PaymentID bigint
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PaymentDetails]
	WHERE
		[PaymentID] = @PaymentID
	SET @Err = @@Error

	RETURN @Err
END
GO
/****** Object:  StoredProcedure [dbo].[sprocMemberRegistrationUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sprocMemberRegistrationUpdateSingleItem]
 @PaymentID bigint=0      
,@PlanID int=NULL      
,@WorkouttypeID int=NULL      
,@Paymenttype nvarchar(50)=NULL      
,@PaymentFromdt datetime=NULL      
,@PaymentAmount numeric(18, 0)=NULL         
,@ModifyUserID int=NULL      
,@RecStatus char(1)=NULL      
,@MemberID bigint=NULL  
,@PaymentIDOUT int out      
as
begin	

DECLARE @ReturnValue int  
Declare @period int  
Declare @PaymentTodt datetime  
Declare @tempdate datetime  
Declare @NextRenwalDate datetime 

SET @period = (SELECT  
 PeriodID  
FROM PlanMaster  
WHERE PlanID = @PlanID)  
SET @tempdate = @PaymentFromdt  
SET @PaymentTodt = DATEADD(mm, @period, @PaymentFromdt)  
set @NextRenwalDate = DATEADD(mm, @period, @PaymentFromdt)  


UPDATE [PaymentDetails]    
 SET    
  PlanID = @PlanID    
,WorkouttypeID = @WorkouttypeID    
,Paymenttype = @Paymenttype    
,PaymentFromdt = @PaymentFromdt    
,PaymentTodt = @PaymentTodt    
,PaymentAmount = @PaymentAmount    
,NextRenwalDate = @NextRenwalDate    
,ModifyDate =GETDATE()    
,ModifyUserID = @ModifyUserID    
,RecStatus = @RecStatus    
 where PaymentID =@PaymentID
   
set @PaymentIDOUT = @PaymentID 

end
GO
/****** Object:  StoredProcedure [dbo].[sprocMemberRegistrationSelectSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocMemberRegistrationSelectSingleItem]      
(      
 @MemID bigint      
)      
AS      
BEGIN      
 SET NOCOUNT ON      
 DECLARE @Err int      
      
 SELECT top 1  
  MemID      
,MemberRegistration.MemberNo  s    
,MemberFName      
,MemberLName      
,MemberMName      
,CONVERT(date,DOB,103) as DOB      
,Age      
,Contactno      
,EmailID      
,Gender      
,PlantypeID      
,MemberRegistration.WorkouttypeID       
,Createdby      
,CreatedDate      
,ModifiedDate      
,ModifiedBy      
,MemImagename      
,MemImagePath      
,CONVERT(date,JoiningDate,103) as JoiningDate        
,pd.PaymentAmount as Amount      
,Address    
,pd.PaymentID  
      
 FROM [MemberRegistration]      
  inner JOIN PaymentDetails pd ON MemberRegistration.MemID = pd.MemberID      
 WHERE      
  ([MemID] = @MemID)      
  
  order BY pd.PaymentID desc 
      
 SET @Err = @@Error      
      
 RETURN @Err      
END
GO
/****** Object:  StoredProcedure [dbo].[sprocMemberRegistrationSelectList]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sprocMemberRegistrationSelectList]    
AS    
BEGIN    
    
 SET NOCOUNT ON    
 DECLARE @Err int    
    
 SELECT    
  MemID    
,MemberRegistration.MemberNo    
,MemberFName    
,MemberLName    
,MemberMName    
,MemberLName +' '+MemberFName+' '+MemberMName as  FullName  
,DOB    
,Age    
,Contactno    
,EmailID    
,Gender    
,PlantypeID    
,MemberRegistration.WorkouttypeID    
,Createdby    
,CreatedDate    
,ModifiedDate    
,ModifiedBy    
,MemImagename    
,MemImagePath    
,JoiningDate  
 FROM [MemberRegistration]  
     
    
 SET @Err = @@Error    
    
 RETURN @Err    
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_UserNamebyUserID]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UserNamebyUserID]  
@UserId varchar(200)  
as  
begin  
  
select UserName FROM Users where Id =@UserId  
  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_UserIDbyUserName]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_UserIDbyUserName]  
@UserName varchar(200)  
as  
begin  
  
select Id FROM Users where UserName =@UserName  
  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_PaymentDetailinfo_Name]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_PaymentDetailinfo_Name]              
@MemberFName varchar(50)               
as              
              
begin              
              
SELECT TOP 10              
MemberID,            
PaymentID,            
 m.MemberFName + ' | ' + m.MemberLName + ' | ' + m.MemberMName  AS Name  ,         
 m.Address,        
 m.Contactno,        
 m.EmailID,                
 PD.MemberNo,              
 PM.PlanName,              
 SM.SchemeName,              
 CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,              
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,              
 PD.PaymentAmount  ,            
 PD.WorkouttypeID,            
 PD.PlanID as PlantypeID            
FROM PaymentDetails PD              
INNER JOIN PlanMaster PM              
 ON PD.PlanID = PM.PlanID              
 INNER JOIN SchemeMaster SM on  PD.WorkouttypeID = SM.SchemeID              
 INNER JOIN MemberRegistration m  ON PD.MemberID = m.MemID              
               
--WHERE PD.MemberID =@MemberID          
              
--    order BY PD.PaymentID desc          
              
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_PaymentDetailinfo]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_PaymentDetailinfo]                  
@MemberID bigint                   
as                  
                  
begin                  
                  
SELECT   
m.MemberNo as MemberReg,                
MemberID,                
PaymentID,                
 m.MemberFName + ' | ' + m.MemberLName + ' | ' + m.MemberMName  AS Name  ,             
 m.Address,            
 m.Contactno,            
 m.EmailID,                    
 m.MainMemberID as Memberno,                  
 PM.PlanName,                  
 SM.SchemeName,                  
 CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,                  
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,                  
 PD.PaymentAmount  ,                
 PD.WorkouttypeID,                
 PD.PlanID as PlantypeID                
FROM PaymentDetails PD                  
INNER JOIN PlanMaster PM                  
 ON PD.PlanID = PM.PlanID                  
 INNER JOIN SchemeMaster SM on  PD.WorkouttypeID = SM.SchemeID                  
 INNER JOIN MemberRegistration m  ON PD.MemberID = m.MemID                  
                   
WHERE m.MemID =@MemberID              
                  
    order BY PD.PaymentID desc              
                  
end
GO
/****** Object:  StoredProcedure [dbo].[USP_listofMemberno]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_listofMemberno]    
@MemberID varchar(6)    
as    
    
begin    
    
select MemID as MemberNo ,MemID from MemberRegistration where MemID like +'%' +@MemberID+'%'    
    
end
GO
/****** Object:  StoredProcedure [dbo].[USP_listofMemberName]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_listofMemberName]    
@MemberFName varchar(20)    
as    
    
begin    
    
SELECT      
MemberFName + ' | ' + MemberLName + ' | ' + MemberMName +' | '+ Convert(varchar, MemID) as Name ,MainMemberID from MemberRegistration   
where MemberFName like +'%' +@MemberFName+'%'    
    
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetYearwisepaymentdetails]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetYearwisepaymentdetails]         
--exec Usp_GetYearwisepaymentdetails 2014        
@year bigint        
as        
        
begin  
        
        
declare @leap char(3)  
declare @totalsum numeric(18,2)  
  
declare @mm bigint  
declare @year1 bigint  
  
SET @mm = (SELECT  
 DATEPART(MM, GETDATE()))  
  
if(@mm = 1)  
begin  
SET @year1 = @year + 1  
  
  
end  
  
  
  
SET @leap = (SELECT  
 CASE  
  WHEN (@YEAR % 4 = 0 AND @YEAR % 100 <> 0) OR @YEAR % 400 = 0 THEN 'YES' ELSE 'NO'  
 END AS LeapYear)  
  
declare @mainsum4 numeric(19,2)  
declare @mainsum5 numeric(19,2)  
declare @mainsum6 numeric(19,2)  
declare @mainsum7 numeric(19,2)  
declare @mainsum8 numeric(19,2)  
declare @mainsum9 numeric(19,2)  
declare @mainsum10 numeric(19,2)  
declare @mainsum11 numeric(19,2)  
declare @mainsum12 numeric(19,2)  
declare @mainsum3 numeric(19,2)  
declare @mainsum2 numeric(19,2)  
declare @mainsum1 numeric(19,2)  
       
Declare @total bigint  
  
SET @mainsum4 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126)  
BETWEEN (CONVERT(varchar, @year) + '-04-01') AND (CONVERT(varchar, @year) + '-04-30')  
AND DATEPART(yyyy, M.CreateDate) = @year)  
  
  
SET @mainsum5 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-05-01') AND (CONVERT(varchar, @year) + '-05-31')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
  
SET @mainsum6 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-06-01') AND (CONVERT(varchar, @year) + '-06-30')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum7 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-07-01') AND (CONVERT(varchar, @year) + '-07-31')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum8 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-08-01') AND (CONVERT(varchar, @year) + '-08-31')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum9 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-09-01') AND (CONVERT(varchar, @year) + '-09-30')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum10 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-10-01') AND (CONVERT(varchar, @year) + '-10-31')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum11 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-11-01') AND (CONVERT(varchar, @year) + '-11-30')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum12 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year) + '-12-01') AND (CONVERT(varchar, @year) + '-12-31')  
AND DATEPART(yyyy, M.CreateDate) = @year) ---may  
  
SET @mainsum3 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year1) + '-01-01') AND (CONVERT(varchar, @year1) + '-01-31')  
AND DATEPART(yyyy, M.CreateDate) = @year1)  
 ---may  
  
   
   
  
if(@leap ='NO')  
begin  
SET @mainsum2 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year1) + '-02-01') AND (CONVERT(varchar, @year1) + '-02-28')  
AND DATEPART(yyyy, M.CreateDate) = @year1)  
 ---may  
end  
  
if(@leap ='YES')  
begin  
SET @mainsum2 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year1) + '-02-01') AND (CONVERT(varchar, @year1) + '-02-29')  
AND DATEPART(yyyy, M.CreateDate) = @year1)  
 ---may  
end  
  
  
SET @mainsum1 = (SELECT  
 SUM(PaymentAmount) AS Total  
FROM PaymentDetails M  
WHERE CONVERT(varchar(10), M.CreateDate, 126) BETWEEN (CONVERT(varchar, @year1) + '-03-01') AND (CONVERT(varchar, @year1) + '-03-31')  
AND DATEPART(yyyy, M.CreateDate) = @year1) ---may  
  
  
SET @totalsum = (ISNULL(@mainsum4, 0) +  
ISNULL(@mainsum5, 0) +  
ISNULL(@mainsum6, 0) +  
ISNULL(@mainsum7, 0) +  
ISNULL(@mainsum8, 0) +  
ISNULL(@mainsum9, 0) +  
ISNULL(@mainsum10, 0) +  
ISNULL(@mainsum11, 0) +  
ISNULL(@mainsum12, 0) +  
ISNULL(@mainsum1, 0) +  
ISNULL(@mainsum2, 0) +  
ISNULL(@mainsum3, 0))  
  
SELECT  
 CONVERT(varchar, @year + 1) AS CurrentYear,  
 @mainsum4 AS april,  
 @mainsum5 AS may,  
 @mainsum6 AS june,  
 @mainsum7 AS july,  
 @mainsum8 AS august,  
 @mainsum9 AS sept,  
 @mainsum10 AS oct,  
 @mainsum11 AS nov,  
 @mainsum12 AS Decm,  
 @mainsum3 AS jan,  
 @mainsum2 AS feb,  
 @mainsum1 AS march,  
 @totalsum AS Total  
  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetRoles]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetRoles]
as

BEGIN
SELECT * from webpages_Roles
end
GO
/****** Object:  StoredProcedure [dbo].[sprocMemberRegistrationDeleteSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sprocMemberRegistrationDeleteSingleItem]      
(      
 @MemID bigint      
)      
AS      
BEGIN

DELETE FROM [MemberRegistration]
WHERE [MainMemberID] = @MemID

DELETE FROM PaymentDetails
WHERE MemberID = @MemID
    
END
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (2, 2)
/****** Object:  StoredProcedure [dbo].[Usp_checkUsernameExits]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_checkUsernameExits]
@UserName varchar(200)
as

begin

IF exists(SELECT UserName FROM Users where UserName =@UserName)
BEGIN
SELECT 1
end
else
begin
SELECT 0
end

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_checkscheme]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_checkscheme]  
@SchemeName varchar(50)  
as  
  
begin  


IF exists (SELECT SchemeName from [SchemeMaster]WHERE SchemeName LIKE '%' + @SchemeName + '%' )
BEGIN
SELECT '1'
END
else
BEGIN
SELECT '0'
END
 
  
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_checkplan]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_checkplan]  
@Planmaster varchar(50)      
as      
      
begin      
    
    
IF exists (SELECT PlanName from Planmaster WHERE PlanName = @Planmaster)    
BEGIN    
SELECT '1'    
END    
else    
BEGIN    
SELECT '0'    
END    
     
      
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_ALLPaymentDetailinfo]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_ALLPaymentDetailinfo]                
                
as                
                
begin                
                
SELECT   
 m.MemberNo as MemberReg,                       
 m.MemberFName + ' | ' + m.MemberLName + ' | ' + m.MemberMName  AS Name  ,           
 m.Address,          
 m.Contactno,          
 m.EmailID,                  
 m.MainMemberID as Memberno,                
 PM.PlanName,                
 SM.SchemeName,                
 CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,                
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,                
 PD.PaymentAmount  ,              
 PD.WorkouttypeID,              
 PD.PlanID as PlantypeID              
FROM PaymentDetails PD                
INNER JOIN PlanMaster PM                
 ON PD.PlanID = PM.PlanID                
 INNER JOIN SchemeMaster SM on  PD.WorkouttypeID = SM.SchemeID                
 INNER JOIN MemberRegistration m  ON PD.MemberID = m.MemID                
 order BY PD.PaymentID asc            
                
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_getPlanPeriodID]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_getPlanPeriodID]
@PlanID int
as

begin

SELECT PeriodID FROM PlanMaster Where PlanID =@PlanID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetPlanByWorkTypeID]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetPlanByWorkTypeID]
@SchemeID int
as
begin

SELECT PlanID , PlanName FROM PlanMaster Where SchemeID =@SchemeID

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetMonthwisepaymentdetails]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetMonthwisepaymentdetails]           
--exec Usp_GetMonthwisepaymentdetails 8         
@month bigint          
as          
          
begin    
          
          
         
Declare @Year nvarchar(4)    
--set @Year = (select Year FROM Fiscalyear where GETDATE() BETWEEN FiscalyearFromDate AND FiscalyearToDate)          
SET @Year = DATEPART(YEAR, GETDATE())    
      
         
Declare @total bigint    
    
SET @total = (SELECT    
 SUM(PaymentAmount) AS Total    
FROM PaymentDetails p    
WHERE DATEPART(MM, CreateDate) = @month AND DATEPART(YEAR, CreateDate) = @Year)    
    
SELECT    
 m.MemberFName,    
 m.MemberNo,    
 m.MemberLName,    
 m.MemberMName,    
 CONVERT(varchar, p.CreateDate, 103) AS CreateDate,    
 @total AS Total,    
 DATENAME(MM, p.CreateDate) AS Paymentmonth,    
 p.PaymentAmount,    
 AL.Username    
FROM PaymentDetails p    
INNER JOIN MemberRegistration m    
 ON m.MainMemberID = p.MemberID    
INNER JOIN Users AL    
 ON  AL.id = p.CreateUserID     
WHERE DATEPART(MM, p.CreateDate) = @month AND DATEPART(YEAR, p.CreateDate) = @Year    
          
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_getDec]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_getDec]          
   @Memberid bigint             
as          
          
begin          
              
SELECT              
 m.MemberNo,            
 CONVERT(varchar, m.DOB, 103) AS DOB,             
 UPPER(m.MemberFName) AS FName,           
 UPPER( m.MemberLName) AS LName,          
 CASE WHEN m.Gender = 1 THEN 'MALE' ELSE 'FEMALE' end as Gender,             
 UPPER(m.Address) as Address,              
 m.Contactno,              
 m.EmailID,                
 UPPER(PM.PlanName)as PlanName,              
 UPPER(SM.SchemeName) as SchemeName ,          
 CONVERT(varchar, m.CreatedDate, 103) AS JoiningDate,              
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,              
 PD.PaymentAmount,              
 UPPER(AM.Username )as Recivedby             
FROM PaymentDetails PD              
INNER JOIN PlanMaster PM              
 ON PD.PlanID = PM.PlanID              
INNER JOIN SchemeMaster SM              
 ON PD.WorkouttypeID = SM.SchemeID              
INNER JOIN MemberRegistration m              
 ON PD.MemberID = m.MainMemberID              
 INNER JOIN Users AM ON PD.CreateUserID =AM.id               
 where PD.PaymentTodt in (SELECT MAX(PaymentTodt) from PaymentDetails where PaymentDetails.MemberID =@Memberid  group BY MemberID)                  
            and PD.MemberID =@Memberid  
ORDER BY PD.PaymentID DESC             
          
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetDataofMemberbyID]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetDataofMemberbyID]                          
     @MainMemberID bigint                     
as                          
                          
begin                          
                          
SELECT TOP 1            
 m.MemberNo ,                                 
 m.MemberFName + ' | ' + m.MemberLName + ' | ' + m.MemberMName  AS Name  ,                     
 m.MainMemberID as MainMemberID,                                            
 CONVERT(char(10), PD.PaymentFromdt, 126) AS JoiningDate,                          
 CONVERT(char(10), PD.PaymentTodt, 126) AS RenwalDate,                          
 PD.PaymentAmount  ,                        
 PD.WorkouttypeID,                        
 PD.PlanID as PlantypeID,      
 MemberID,                      
PaymentID                          
FROM PaymentDetails PD                          
INNER JOIN PlanMaster PM                          
 ON PD.PlanID = PM.PlanID                          
 INNER JOIN SchemeMaster SM on  PD.WorkouttypeID = SM.SchemeID                          
 INNER JOIN MemberRegistration m  ON PD.MemberID = m.MemID                          
         
 where m.MemID = @MainMemberID           
         
 ORDER BY PD.PaymentID desc                  
                          
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAmount_reg]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetAmount_reg]
@PlanID int,
@SchemeID int
as
begin
SELECT TotalAmout FROM PlanMaster where PlanID =@PlanID and SchemeID=@SchemeID
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllUsers]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetAllUsers]

as

begin

select * from Users

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllRenwalrecordsFromBetweenDate]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetAllRenwalrecordsFromBetweenDate]              
     @Paymentfromdt datetime = null,      
     @Paymenttodt datetime = null,
     @exactdate  datetime = null    
as              
              
begin
 
     
  IF(@Paymentfromdt is not null and @Paymenttodt is not null)
  begin

SELECT
	MemberID,
	PaymentID,
	m.MemberFName + ' | ' + m.MemberLName AS Name,
	m.Address,
	m.Contactno,
	m.EmailID,
	m.MemberNo,
	PM.PlanName,
	SM.SchemeName,
	CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,
	CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,
	PD.PaymentAmount,
	PD.WorkouttypeID,
	PD.PlanID AS PlantypeID
FROM PaymentDetails PD
INNER JOIN PlanMaster PM
	ON PD.PlanID = PM.PlanID
INNER JOIN SchemeMaster SM
	ON PD.WorkouttypeID = SM.SchemeID
INNER JOIN MemberRegistration m
	ON PD.MemberID = m.MemID
WHERE CONVERT(varchar(10), PaymentTodt, 126) IN (SELECT
	CONVERT(varchar(10), MAX(PaymentTodt), 126)
FROM PaymentDetails

WHERE CONVERT(varchar(10), PaymentTodt, 126) BETWEEN CONVERT(varchar(10), @Paymentfromdt, 126) AND
CASE
	WHEN @Paymenttodt = '1990-01-01 00:00:00.000' THEN CONVERT(varchar(10), GETDATE(), 126)
	 ELSE CONVERT(varchar(10), @Paymenttodt, 126) 
END
GROUP BY MemberID)
ORDER BY PD.PaymentID DESC
      
      end
      
      else
      
      begin
SELECT
	MemberID,
	PaymentID,
	m.MemberFName + ' | ' + m.MemberLName AS Name,
	m.Address,
	m.Contactno,
	m.EmailID,
	PD.MemberNo,
	PM.PlanName,
	SM.SchemeName,
	CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,
	CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,
	PD.PaymentAmount,
	PD.WorkouttypeID,
	PD.PlanID AS PlantypeID
FROM PaymentDetails PD
INNER JOIN PlanMaster PM
	ON PD.PlanID = PM.PlanID
INNER JOIN SchemeMaster SM
	ON PD.WorkouttypeID = SM.SchemeID
INNER JOIN MemberRegistration m
	ON PD.MemberID = m.MemID
WHERE CONVERT(varchar(10), PaymentTodt, 126) IN (SELECT
	CONVERT(varchar(10), MAX(PaymentTodt), 126)
FROM PaymentDetails
WHERE CONVERT(varchar(10), PaymentTodt, 126) = @exactdate

GROUP BY MemberID)
ORDER BY PD.PaymentID DESC
      
      end
          
              
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllRenwalrecords]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GetAllRenwalrecords]            
         
as            
            
begin            
            
SELECT             
MemberID,          
PaymentID,          
 m.MemberFName + ' | ' + m.MemberLName  AS Name  ,       
 m.Address,      
 m.Contactno,      
 m.EmailID,           
 m.MemberNo,            
 PM.PlanName,            
 SM.SchemeName,            
 CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,            
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,            
 PD.PaymentAmount  ,          
 PD.WorkouttypeID,          
 PD.PlanID as PlantypeID          
FROM PaymentDetails PD            
INNER JOIN PlanMaster PM            
 ON PD.PlanID = PM.PlanID            
 INNER JOIN SchemeMaster SM on  PD.WorkouttypeID = SM.SchemeID            
 INNER JOIN MemberRegistration m  ON PD.MemberID = m.MainMemberID       
 where PD.PaymentTodt in (SELECT MAX(PaymentTodt) from PaymentDetails group BY MemberID)      
 order BY PD.PaymentID desc        
            
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_GenerateRecepit]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_GenerateRecepit]    
           
     @Memberid bigint             
                 
as                      
                      
begin            
             
Declare @Recepitno bigint          
declare @Memnum bigint          
set @Memnum = (SELECT Isnull(MAX(ReceiptID),0) FROM ReceiptDetails)          
          
IF(@Memnum =0)          
begin          
set @Recepitno = 1          
end          
else           
begin          
set @Recepitno = (SELECT MAX(ReceiptID+1) FROM ReceiptDetails)          
end          
          
                    
IF(1 <> 0)             
        begin            
            
SELECT top 1           
 MemberID,            
 PaymentID,            
 UPPER(m.MemberFName + '  ' + m.MemberLName) AS Name,            
 m.Address,            
 m.Contactno,            
 m.EmailID,            
 m.MemberNo,            
 PM.PlanName,            
 SM.SchemeName,            
 CONVERT(varchar, PD.PaymentFromdt, 103) AS JoiningDate,            
 CONVERT(varchar, PD.PaymentTodt, 103) AS RenwalDate,            
 PD.PaymentAmount,            
 dbo.fnNumberToWords(PaymentAmount)+' '+'ONLY' as AMtWords,      
 PM.PlanAmount,    
 PM.ServicetaxAmout,    
 PM.ServiceTax,    
 PM.ServicetaxNo,    
 PM.TotalAmout ,         
 PD.WorkouttypeID,            
 PD.PlanID AS PlantypeID,            
 AM.Username as Recivedby  ,          
 @Recepitno as Recepitno ,        
 PD.PaymentTodt          
FROM PaymentDetails PD            
INNER JOIN PlanMaster PM            
 ON PD.PlanID = PM.PlanID            
INNER JOIN SchemeMaster SM            
 ON PD.WorkouttypeID = SM.SchemeID            
INNER JOIN MemberRegistration m            
 ON  m.MemID =PD.MemberID           
 INNER JOIN Users AM ON PD.CreateUserID =AM.Id             
 where PD.PaymentTodt in (SELECT MAX(PaymentTodt) from PaymentDetails where PaymentDetails.MemberID =@Memberid group BY MemberID)                
           and PD.MemberID =@Memberid  
ORDER BY PD.PaymentID DESC            
                  
 end            
             
             
end
GO
/****** Object:  StoredProcedure [dbo].[Usp_Generatenumber]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_Generatenumber]                    
as                      
begin            
            
BEGIN TRANSACTION            
            
Declare @Memnum nvarchar(4)            
Declare @Name nvarchar(6)            
Declare @MemberNo nvarchar(20)            
Declare @Year nvarchar(4)            
            
set @Year =(select YEAR(GETDATE()))            
            
set @Name = 'GYMONE'            
            
set @Memnum = (SELECT Isnull(max(MainMemberID),0) FROM MemberRegistration WITH(HOLDLOCK))            
            
if(@Memnum = 0)            
begin                 
set @MemberNo = @Name+'/'+'1'+'/'+@Year       
set @Memnum = 1         
end            
else            
begin            
set @Memnum = (SELECT (max(MainMemberID )+ 1) FROM MemberRegistration WITH(HOLDLOCK))            
set @MemberNo = @Name+'/'+@Memnum+'/'+@Year            
end            
COMMIT TRANSACTION            
            
select @MemberNo as MemberNo  ,@Memnum as Memnumber          
            
end 
GO
/****** Object:  StoredProcedure [dbo].[Usp_DisplayAllUser_And_Roles]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Usp_DisplayAllUser_And_Roles]


as


begin

SELECT
	U.UserName,
	CASE WHEN ro.RoleName is NULL THEN 'Role not Assign' ELSE ro.RoleName end as RoleName
FROM Users U
LEFT JOIN webpages_UsersInRoles WU
	ON U.Id = WU.UserId
LEFT JOIN webpages_Roles ro
	ON WU.RoleId = ro.RoleId

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_CheckUserRoles]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_CheckUserRoles]
@UserId int
as
begin

if((select COUNT(WR.UserId) FROM webpages_UsersInRoles WR  
inner JOIN webpages_Roles R on WR.RoleId = R.RoleId  
where WR.UserId =@UserId)> 0 )
begin

SELECT 1

end
else
begin

select 0
end

end
GO
/****** Object:  StoredProcedure [dbo].[Usp_getRoleByUserID]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Usp_getRoleByUserID]
@UserId int
as
begin
select R.RoleName FROM webpages_UsersInRoles WR
inner JOIN webpages_Roles R on WR.RoleId = R.RoleId
where WR.UserId =@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[sprocMemberRegistrationInsertUpdateSingleItem]    Script Date: 09/01/2015 22:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    
 PROCEDURE [dbo].[sprocMemberRegistrationInsertUpdateSingleItem] (    
  @MemID BIGINT = 0    
 ,@MemberFName NVARCHAR(100) = NULL    
 ,@MemberLName NVARCHAR(100) = NULL    
 ,@MemberMName NVARCHAR(100) = NULL    
 ,@Address NVARCHAR(500) = NULL    
 ,@DOB DATETIME    
 ,@Age NVARCHAR(10) = NULL    
 ,@Contactno NVARCHAR(10) = NULL    
 ,@EmailID NVARCHAR(30) = NULL    
 ,@Gender NVARCHAR(30) = NULL    
 ,@PlantypeID INT = 0    
 ,@WorkouttypeID INT = 0    
 ,@Createdby BIGINT = 0    
 ,@ModifiedBy BIGINT = 0    
 ,@JoiningDate DATETIME    
 ,@MemIDOUT int out    
 )    
AS    
DECLARE @ReturnValue INT    
    
IF (@MemID = 0) -- New Item                    
BEGIN    
 DECLARE @MemberNo VARCHAR(20)    
 DECLARE @MainMemberID VARCHAR(20)    
 DECLARE @tables TABLE (    
  MemberNo VARCHAR(20)    
  ,Memnumber VARCHAR(20)    
  )    
    
 INSERT INTO @tables    
 EXEC Usp_Generatenumber    
    
 SELECT @MemberNo = MemberNo    
  ,@MainMemberID = Memnumber    
 FROM @tables    
    
 INSERT INTO [MemberRegistration] (    
  MemberFName    
  ,MemberLName    
  ,MemberMName    
  ,DOB    
  ,Age    
  ,Contactno    
  ,EmailID    
  ,Gender    
  ,PlantypeID    
  ,WorkouttypeID    
  ,Createdby    
  ,CreatedDate    
  ,ModifiedBy    
  ,JoiningDate    
  ,Address    
  ,MainMemberID    
  ,MemberNo    
  )    
 VALUES (    
  @MemberFName    
  ,@MemberLName    
  ,@MemberMName    
  ,@DOB    
  ,@Age    
  ,@Contactno    
  ,@EmailID    
  ,@Gender    
  ,@PlantypeID    
  ,@WorkouttypeID    
  ,@Createdby    
  ,GETDATE()    
  ,@ModifiedBy    
  ,@JoiningDate    
  ,@Address    
  ,@MainMemberID    
  ,@MemberNo    
  )    
    
 SELECT @ReturnValue = SCOPE_IDENTITY()    
 set @MemIDOUT =SCOPE_IDENTITY()    
END    
ELSE    
BEGIN    
 UPDATE [MemberRegistration]    
 SET MemberFName = @MemberFName    
  ,MemberLName = @MemberLName    
  ,MemberMName = @MemberMName    
  ,DOB = @DOB    
  ,Age = @Age    
  ,Contactno = @Contactno    
  ,EmailID = @EmailID    
  ,Gender = @Gender    
  ,PlantypeID = @PlantypeID    
  ,WorkouttypeID = @WorkouttypeID    
  ,Createdby = @Createdby    
  ,CreatedDate = GETDATE()    
  ,ModifiedBy = @ModifiedBy    
  ,JoiningDate = @JoiningDate    
  ,Address = @Address    
 WHERE MemID = @MemID    
    
 SELECT @ReturnValue = @MemID    
   
  set @MemIDOUT =@MemID    
  
END    
    
IF (@@ERROR != 0)    
BEGIN    
 RETURN - 1    
END    
ELSE    
BEGIN    
 RETURN @ReturnValue    
     
END
GO
/****** Object:  Default [DF_Fiscalyear_Year]    Script Date: 09/01/2015 22:41:50 ******/
ALTER TABLE [dbo].[Fiscalyear] ADD  CONSTRAINT [DF_Fiscalyear_Year]  DEFAULT (NULL) FOR [Year]
GO
/****** Object:  Default [DF__webpages___IsCon__0BC6C43E]    Script Date: 09/01/2015 22:41:50 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__0CBAE877]    Script Date: 09/01/2015 22:41:50 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 09/01/2015 22:41:51 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 09/01/2015 22:41:51 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO


 ALTER PROCEDURE [dbo].[sprocPlanMasterInsertUpdateSingleItem]                
(                
 @PlanID int=0                
,@SchemeID int=0            
,@PeriodID int=0             
,@PlanName varchar(50)=NULL                
,@PlanAmount decimal(18,2)  =NULL                
,@ServiceTax decimal(18,2)  =NULL                
,@CreateDate datetime=NULL                
,@CreateUserID int=0                
,@ModifyDate datetime                
,@ModifyUserID int=0                
,@RecStatus char(1)=NULL                
 )             
AS                
DECLARE @ReturnValue int         
DECLARE @servicetaxAM decimal(18,2) =12.36       
IF (@PlanID =0) -- New Item                
BEGIN                
                
 Declare @tax decimal(18,0)               
          set @tax = @PlanAmount * @ServiceTax      
        set @servicetaxAM = @tax / 100      
              
              
       Declare @totalamt decimal(18,0)           
       set  @totalamt = @PlanAmount + @servicetaxAM        
                
 INSERT                
 INTO [PlanMaster]                
 (                
  PlanName                
,PlanAmount                
,ServiceTax                
,CreateDate                
,CreateUserID                
,ModifyDate                
,ModifyUserID                
,RecStatus                
,SchemeID            
,PeriodID         
,TotalAmout       
,ServicetaxAmout      
 )                
  VALUES                
  (                
  @PlanName                
,@PlanAmount                
,@ServiceTax               
,GETDATE()                
,@CreateUserID                
,@ModifyDate                
,@ModifyUserID                
,@RecStatus                
,@SchemeID           
,@PeriodID        
,@totalamt      
,@servicetaxAM      
      
 )                
                 
 SELECT @ReturnValue = SCOPE_IDENTITY()                
                
 END                
 ELSE                
 BEGIN                
    declare @CreatedDate datetime    
 select @CreatedDate = CreateDate from [PlanMaster] where [PlanID] = @PlanID     
    
 UPDATE [PlanMaster]                
 SET                
  PlanName = @PlanName                
,PlanAmount = @PlanAmount                
,ServiceTax = @ServiceTax                
,CreateDate = @CreatedDate                 
,CreateUserID = @CreateUserID                
,ModifyDate = @ModifyDate                
,ModifyUserID = @ModifyUserID                
,RecStatus = @RecStatus                
,SchemeID =@SchemeID             
,PeriodID =@PeriodID            
 WHERE                
  [PlanID] = @PlanID                
                
SELECT @ReturnValue = @PlanID                
                
END                
  IF (@@ERROR != 0)                
  BEGIN                
    RETURN -1                
  END                
  ELSE                
  BEGIN                
    RETURN @ReturnValue                
 END
 
 GO
 
 -- 
 
 ALTER PROCEDURE [dbo].[sprocPlanMasterInsertUpdateSingleItem]                
(                
 @PlanID int=0                
,@SchemeID int=0            
,@PeriodID int=0             
,@PlanName varchar(50)=NULL                
,@PlanAmount decimal(18,2)  =NULL                
,@ServiceTax decimal(18,2)  =NULL                
,@CreateDate datetime=NULL                
,@CreateUserID int=0                
,@ModifyDate datetime                
,@ModifyUserID int=0                
,@RecStatus char(1)=NULL                
 )             
AS                
DECLARE @ReturnValue int         
DECLARE @servicetaxAM decimal(18,2) =12.36       
IF (@PlanID =0) -- New Item                
BEGIN                
                
 Declare @tax decimal(18,0)               
          set @tax = @PlanAmount * @ServiceTax      
        set @servicetaxAM = @tax / 100      
              
              
       Declare @totalamt decimal(18,0)           
       set  @totalamt = @PlanAmount + @servicetaxAM        
                
 INSERT                
 INTO [PlanMaster]                
 (                
  PlanName                
,PlanAmount                
,ServiceTax                
,CreateDate                
,CreateUserID                
,ModifyDate                
,ModifyUserID                
,RecStatus                
,SchemeID            
,PeriodID         
,TotalAmout       
,ServicetaxAmout      
 )                
  VALUES                
  (                
  @PlanName                
,@PlanAmount                
,@ServiceTax               
,GETDATE()                
,@CreateUserID                
,@ModifyDate                
,@ModifyUserID                
,@RecStatus                
,@SchemeID           
,@PeriodID        
,@totalamt      
,@servicetaxAM      
      
 )                
                 
 SELECT @ReturnValue = SCOPE_IDENTITY()                
                
 END                
 ELSE                
 BEGIN                
    declare @CreatedDate datetime    
 select @CreatedDate = CreateDate from [PlanMaster] where [PlanID] = @PlanID     
    
 UPDATE [PlanMaster]                
 SET                
  PlanName = @PlanName                
,PlanAmount = @PlanAmount                
,ServiceTax = @ServiceTax                
,CreateDate = @CreatedDate                 
,CreateUserID = @CreateUserID                
,ModifyDate = @ModifyDate                
,ModifyUserID = @ModifyUserID                
,RecStatus = @RecStatus                
,SchemeID =@SchemeID             
,PeriodID =@PeriodID            
 WHERE                
  [PlanID] = @PlanID                
                
SELECT @ReturnValue = @PlanID                
                
END                
  IF (@@ERROR != 0)                
  BEGIN                
    RETURN -1                
  END                
  ELSE                
  BEGIN                
    RETURN @ReturnValue                
 END