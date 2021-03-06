USE [THUONGMAIDIENTU]
GO
/****** Object:  StoredProcedure [dbo].[proc_CryptData]    Script Date: 24/11/2020 23:58:38 ******/
DROP PROCEDURE [dbo].[proc_CryptData]
GO
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK__USER__IdRole__66603565]
GO
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK__USER__IdRole__3A81B327]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdUse__6383C8BA]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdUse__37A5467C]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdPro__656C112C]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdPro__6477ECF3]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdCus__6383C8BA]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] DROP CONSTRAINT [FK__REVIEW_PR__IdCus__628FA481]
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION] DROP CONSTRAINT [FK__PRODUCT_P__IdPro__619B8048]
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION] DROP CONSTRAINT [FK__PRODUCT_P__IdPro__60A75C0F]
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION] DROP CONSTRAINT [FK__PRODUCT_P__IdPro__5FB337D6]
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION] DROP CONSTRAINT [FK__PRODUCT_P__IdPro__5EBF139D]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] DROP CONSTRAINT [FK__PRODUCT_O__IdPro__5DCAEF64]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] DROP CONSTRAINT [FK__PRODUCT_O__IdPro__5CD6CB2B]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] DROP CONSTRAINT [FK__PRODUCT_O__IdOrd__72C60C4A]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] DROP CONSTRAINT [FK__PRODUCT_O__IdOrd__46E78A0C]
GO
ALTER TABLE [dbo].[PRODUCT_INFO] DROP CONSTRAINT [FK__PRODUCT_I__IdPro__59FA5E80]
GO
ALTER TABLE [dbo].[PRODUCT_INFO] DROP CONSTRAINT [FK__PRODUCT_I__IdPro__59063A47]
GO
ALTER TABLE [dbo].[PRODUCT_INFO] DROP CONSTRAINT [FK__PRODUCT_I__IdInf__5812160E]
GO
ALTER TABLE [dbo].[PRODUCT_INFO] DROP CONSTRAINT [FK__PRODUCT_I__IdInf__571DF1D5]
GO
ALTER TABLE [dbo].[PRODUCT_IMG] DROP CONSTRAINT [FK__PRODUCT_I__IdPro__5629CD9C]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK__PRODUCT__IdUser__619B8048]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK__PRODUCT__IdUser__35BCFE0A]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK__PRODUCT__IdCateg__534D60F1]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK__PRODUCT__IdCateg__52593CB8]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdUse__656C112C]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdUse__398D8EEE]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdSta__4F7CD00D]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdSta__4E88ABD4]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdOrd__73BA3083]
GO
ALTER TABLE [dbo].[ORDER_HISTORY] DROP CONSTRAINT [FK__ORDER_HIS__IdOrd__47DBAE45]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdUser__6477ECF3]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdUser__38996AB5]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdStatus__778AC167]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdStatus__4BAC3F29]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdPayment__76969D2E]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdPayment__4AB81AF0]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdCustome__71D1E811]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdCustome__45F365D3]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdCode__75A278F5]
GO
ALTER TABLE [dbo].[ORDER] DROP CONSTRAINT [FK__ORDER__IdCode__49C3F6B7]
GO
ALTER TABLE [dbo].[NEWS] DROP CONSTRAINT [FK_NEWS_USER]
GO
ALTER TABLE [dbo].[NEWS] DROP CONSTRAINT [FK__NEWS__IdCategory__4316F928]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdUse__628FA481]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdUse__36B12243]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdPro__3E52440B]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdPro__3D5E1FD2]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdCus__3C69FB99]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] DROP CONSTRAINT [FK__COMMENT_P__IdCus__3B75D760]
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] DROP CONSTRAINT [FK__CATEGORY___IdUse__60A75C0F]
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] DROP CONSTRAINT [FK__CATEGORY___IdUse__34C8D9D1]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[USER]
GO
/****** Object:  Table [dbo].[TYGIAUSD]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[TYGIAUSD]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[ROLE]
GO
/****** Object:  Table [dbo].[REVIEW_PRODUCT]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[REVIEW_PRODUCT]
GO
/****** Object:  Table [dbo].[PROMOTION]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PROMOTION]
GO
/****** Object:  Table [dbo].[PRODUCT_PROMOTION]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PRODUCT_PROMOTION]
GO
/****** Object:  Table [dbo].[PRODUCT_ORDER]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PRODUCT_ORDER]
GO
/****** Object:  Table [dbo].[PRODUCT_INFO]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PRODUCT_INFO]
GO
/****** Object:  Table [dbo].[PRODUCT_IMG]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PRODUCT_IMG]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PRODUCT]
GO
/****** Object:  Table [dbo].[PAYMENT_STATUS]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PAYMENT_STATUS]
GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[PAYMENT_METHOD]
GO
/****** Object:  Table [dbo].[ORDER_HISTORY]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[ORDER_HISTORY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[ORDER]
GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[NEWS]
GO
/****** Object:  Table [dbo].[INFO]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[INFO]
GO
/****** Object:  Table [dbo].[GIFTCODE]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[GIFTCODE]
GO
/****** Object:  Table [dbo].[EmailSubscribe]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[EmailSubscribe]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[CUSTOMER]
GO
/****** Object:  Table [dbo].[COMMENT_PRODUCT]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[COMMENT_PRODUCT]
GO
/****** Object:  Table [dbo].[CODE]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[CODE]
GO
/****** Object:  Table [dbo].[CATEGORY_PRODUCT]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[CATEGORY_PRODUCT]
GO
/****** Object:  Table [dbo].[CATEGORY_NEWS]    Script Date: 24/11/2020 23:58:38 ******/
DROP TABLE [dbo].[CATEGORY_NEWS]
GO
/****** Object:  UserDefinedFunction [dbo].[func_CryptData]    Script Date: 24/11/2020 23:58:38 ******/
DROP FUNCTION [dbo].[func_CryptData]
GO
/****** Object:  User [quyetnc]    Script Date: 24/11/2020 23:58:38 ******/
DROP USER [quyetnc]
GO
/****** Object:  User [quyetnc]    Script Date: 24/11/2020 23:58:38 ******/
CREATE USER [quyetnc] FOR LOGIN [quyetnc] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [quyetnc]
GO
/****** Object:  UserDefinedFunction [dbo].[func_CryptData]    Script Date: 24/11/2020 23:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func_CryptData] (@Data varchar(100))
returns varchar(256)
as
begin
return convert(varchar(256),HASHBYTES('SHA2_256',@Data),2)
end


GO
/****** Object:  Table [dbo].[CATEGORY_NEWS]    Script Date: 24/11/2020 23:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_NEWS](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[CategoryIcon] [varchar](40) NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK__CATEGORY__CBD74706761EAD65] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORY_PRODUCT]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_PRODUCT](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) NOT NULL,
	[CategoryIcon] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CODE]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CODE](
	[idCode] [int] IDENTITY(1,1) NOT NULL,
	[maCode] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMMENT_PRODUCT]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT_PRODUCT](
	[IdComment] [int] IDENTITY(1,1) NOT NULL,
	[CommentContent] [nvarchar](255) NULL,
	[IdProduct] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[CommentStatus] [bit] NULL,
	[IdUser] [int] NOT NULL,
	[CommentDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](40) NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[CustomerPhone] [varchar](10) NULL,
	[CustomerEmail] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmailSubscribe]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[EmailSubscribe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIFTCODE]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIFTCODE](
	[IdCode] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Discount] [float] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFO]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFO](
	[IdInfo] [int] IDENTITY(1,1) NOT NULL,
	[InfoName] [nvarchar](255) NOT NULL,
	[InfoCategory] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NEWS](
	[IdNews] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](255) NOT NULL,
	[NewsSumary] [nvarchar](255) NOT NULL,
	[NewsDetail] [ntext] NULL,
	[NewsThumbail] [varchar](255) NULL,
	[IdCategory] [int] NOT NULL,
	[IdUser] [int] NULL,
	[DateCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdCode] [int] NULL,
	[IdCustomer] [int] NOT NULL,
	[IdUser] [int] NULL,
	[DateOrder] [datetime] NULL,
	[DateDelivery] [smalldatetime] NULL,
	[TimeDelivery] [timestamp] NULL,
	[Total] [float] NULL,
	[OrderComment] [nvarchar](500) NULL,
	[IdPayment] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
 CONSTRAINT [PK__ORDER__C38F3009D09952D0] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER_HISTORY]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_HISTORY](
	[IdHistory] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[Comment] [nvarchar](500) NULL,
	[DateHistory] [datetime] NULL,
	[IdStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[IdPayment] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAYMENT_STATUS]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_STATUS](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[ProductSumary] [nvarchar](255) NULL,
	[ProductDetail] [ntext] NULL,
	[ProductPrice] [float] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_IMG]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_IMG](
	[IdImg] [int] IDENTITY(1,1) NOT NULL,
	[Filename] [varchar](255) NOT NULL,
	[ImgAlt] [nvarchar](255) NULL,
	[IdProduct] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdImg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_INFO]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_INFO](
	[IdProduct] [int] NOT NULL,
	[IdInfo] [int] NOT NULL,
	[Info] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_ORDER]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_ORDER](
	[IdProduct] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[Count] [tinyint] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[IMEI] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_PROMOTION]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_PROMOTION](
	[IdProduct] [int] NOT NULL,
	[IdPromotion] [int] NOT NULL,
	[Discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdPromotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROMOTION]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTION](
	[IdPromotion] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](255) NULL,
	[PromotionStart] [datetime] NULL,
	[PromotionEnd] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPromotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REVIEW_PRODUCT]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEW_PRODUCT](
	[IdReview] [int] IDENTITY(1,1) NOT NULL,
	[ReviewContent] [nvarchar](255) NULL,
	[ReviewPoint] [tinyint] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[ReviewStatus] [bit] NOT NULL,
	[ReviewDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TYGIAUSD]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYGIAUSD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tygia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](40) NULL,
	[IdRole] [int] NOT NULL,
	[PhoneNumber] [nchar](20) NULL,
 CONSTRAINT [PK__USER__B7C9263818D79CCD] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY_NEWS] ON 

INSERT [dbo].[CATEGORY_NEWS] ([IdCategory], [CategoryName], [CategoryIcon], [IdUser]) VALUES (4, N'Điện thoại', N'fas fa-mobile-alt', 3)
INSERT [dbo].[CATEGORY_NEWS] ([IdCategory], [CategoryName], [CategoryIcon], [IdUser]) VALUES (6, N'Mẹo vặt', N'fas fa-lightbulb', 3)
SET IDENTITY_INSERT [dbo].[CATEGORY_NEWS] OFF
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCT] ON 

INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (2, N'Apple', N'fab fa-apple')
INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (3, N'Surface', N'fab fa-microsoft')
INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (4, N'Samsung', N'fab fa-android')
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[CODE] ON 

INSERT [dbo].[CODE] ([idCode], [maCode]) VALUES (7, N'9435')
SET IDENTITY_INSERT [dbo].[CODE] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([IdCustomer], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail]) VALUES (10, N'Nguyễn Cảnh Quyết', N'Quận 8 HCM', N'0949209394', N'quyetnc99@gmail.com')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail]) VALUES (11, N'Long Hồ', N'57/14 Bông Sao, phường 5, quận 8', N'0382216419', N'longhosos123@gmail.com')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail]) VALUES (12, N'Đạt', N'486 Lê Hồng Phong', N'0935720104', N'tandat180599@gmail.com')
INSERT [dbo].[CUSTOMER] ([IdCustomer], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail]) VALUES (13, N'Nguyễn Quang Trường Trận', N'486 LHP, Quận 10, HCM', N'0333442814', N'trannqt.it@gmail.com')
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[GIFTCODE] ON 

INSERT [dbo].[GIFTCODE] ([IdCode], [Code], [Discount], [Status]) VALUES (1, N'NCQ', 5, 1)
INSERT [dbo].[GIFTCODE] ([IdCode], [Code], [Discount], [Status]) VALUES (2, N'TT', 5, 1)
INSERT [dbo].[GIFTCODE] ([IdCode], [Code], [Discount], [Status]) VALUES (3, N'NCQGG', 100, NULL)
SET IDENTITY_INSERT [dbo].[GIFTCODE] OFF
SET IDENTITY_INSERT [dbo].[INFO] ON 

INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (1, N'Dung lượng', N'PIN')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (2, N'Công nghệ', N'PIN')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (3, N'Độ phân giải', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (4, N'Công nghệ', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (5, N'ROM', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (6, N'RAM', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (7, N'Thẻ nhớ', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (8, N'Tỉ lệ', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (9, N'Hệ điều hành', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (10, N'CPU', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (11, N'GPU', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (12, N'Camera trước', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (13, N'Camera sau', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (14, N'Chống rung', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (15, N'Chống nước', N'TÍNH NĂNG')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (16, N'Bảo mật', N'TÍNH NĂNG')
SET IDENTITY_INSERT [dbo].[INFO] OFF
SET IDENTITY_INSERT [dbo].[NEWS] ON 

INSERT [dbo].[NEWS] ([IdNews], [NewsTitle], [NewsSumary], [NewsDetail], [NewsThumbail], [IdCategory], [IdUser], [DateCreate]) VALUES (13, N'10 mẹo vặt cho Android mà bạn nên biết', N'Android là một hệ điều hành mở với vô vàn những tính năng thời thượng. Tuy vậy, bạn có dám chắc mình đã làm chủ được “cô nàng ỏng ẹo” này?', N'<h3><strong>1. Gi&aacute;m s&aacute;t ứng dụng đang sử dụng dữ liệu Wi-Fi/3G của bạn</strong></h3>

<p><img alt="Giám sát ứng dụng đang sử dụng dữ liệu Wi-Fi/3G" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/1-2013610112322.jpg" /></p>

<p>Một smartphone thực thụ lu&ocirc;n lu&ocirc;n phải kết nối internet. Do đ&oacute;, chắc hẳn nhiều l&uacute;c bạn phải &ldquo;m&eacute;o mặt&rdquo; v&igrave; h&oacute;a đơn mobile internet l&ecirc;n đến h&agrave;ng trăm ngh&igrave;n đồng m&agrave; kh&ocirc;ng biết ph&aacute;t sinh từ đ&acirc;u. Bạn kh&ocirc;ng r&otilde; ứng dụng n&agrave;o đ&atilde; &ldquo;ngốn&rdquo; h&agrave;ng gigabyte dữ liệu của m&igrave;nh, c&ograve;n tiện &iacute;ch gi&uacute;p theo d&otilde;i dung lượng internet t&iacute;ch hợp sẵn trong Setting th&igrave; qu&aacute; ngh&egrave;o n&agrave;n. Khi đ&oacute;, ứng dụng&nbsp;<strong><a href="http://goo.gl/378rGS" target="_blank">Onavo Count</a></strong>&nbsp;hoặc&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.radioopt.tmplus&amp;feature=search_result" target="_blank">Traffic Monitor Plus</a></strong>&nbsp;được cung cấp miễn ph&iacute; tr&ecirc;n Play Store l&agrave; một sự thay thế xứng đ&aacute;ng.</p>

<h3><strong>2. Giữ cho bộ nhớ lưu trữ lu&ocirc;n ngăn nắp v&agrave; gọn g&agrave;ng</strong></h3>

<p><img alt="Giữ cho bộ nhớ lưu trữ luôn ngăn nắp và gọn gàng" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/2-2013610112345.jpg" /></p>

<p>Dường như kh&ocirc;ng gian lưu trữ tr&ecirc;n smartphone kh&ocirc;ng bao giờ l&agrave; đủ. V&igrave; vậy, thay v&igrave; li&ecirc;n tục n&acirc;ng cấp thiết bị hoặc thẻ nhớ th&igrave; bạn n&ecirc;n học c&aacute;ch quản l&yacute; bộ nhớ lưu trữ một c&aacute;ch th&ocirc;ng minh.</p>

<p>Tiện &iacute;ch gọn nhẹ&nbsp;<a href="https://play.google.com/store/apps/details?id=com.google.android.diskusage&amp;feature=search_result" target="_blank"><strong>DiskUsage</strong></a>&nbsp;sẽ gi&uacute;p bạn ho&agrave;n th&agrave;nh việc đ&oacute; một c&aacute;ch xuất sắc với khả năng ph&acirc;n loại những ứng dụng chiếm nhiều kh&ocirc;ng gian bộ nhớ hoặc liệt k&ecirc; những ứng dụng kh&ocirc;ng cần thiết m&agrave; bạn c&oacute; thể gỡ bỏ. Ngo&agrave;i ra, ứng dụng n&agrave;y c&ograve;n t&iacute;ch hợp một tr&igrave;nh quản l&yacute; file, cho ph&eacute;p bạn x&oacute;a ngay nhạc, phim, h&igrave;nh ảnh tr&ecirc;n m&aacute;y để giải ph&oacute;ng bộ nhớ.</p>

<h3><strong>3. Theo d&otilde;i c&aacute;c ứng dụng chạy nền</strong></h3>

<p><img alt="Theo dõi các ứng dụng chạy nền" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/3-2013610112359.jpg" /></p>

<p>Khi điện thoại được khởi động, n&oacute; sẽ khởi chạy rất nhiều ứng dụng v&agrave; dịch vụ chạy nền. Một v&agrave;i trong số đ&oacute; c&oacute; thể g&acirc;y hại cho thiết bị của bạn v&agrave; khiến CPU v&agrave; RAM l&agrave;m việc &ldquo;cực nhọc&rdquo; hơn. Để giải quyết vấn đề n&agrave;y, ứng dụng&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.rs.autorun&amp;feature=search_result" target="_blank">Autorun Manager&nbsp;</a></strong>l&agrave; một c&ocirc;ng cụ nhỏ gọn gi&uacute;p bạn theo d&otilde;i tất cả c&aacute;c ứng dụng chạy nền tr&ecirc;n m&aacute;y v&agrave; bạn c&oacute; thể tắt hoặc x&oacute;a bỏ bất kỳ ứng dụng n&agrave;o m&agrave; bạn cảm thấy kh&ocirc;ng tin tưởng.</p>

<h3><strong>4. Gỡ bỏ c&aacute;c ứng dụng c&oacute; h&agrave;nh vi quảng c&aacute;o đ&aacute;ng ngờ</strong></h3>

<p><img alt="Gỡ bỏ các ứng dụng có hành vi quảng cáo đáng ngờ" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/4-2013610112413.jpg" /></p>

<p>Bạn kh&ocirc;ng c&oacute; c&ocirc;ng cụ n&agrave;o để gỡ bỏ quảng c&aacute;o trong c&aacute;c ứng dụng. Tuy nhi&ecirc;n, một v&agrave;i ứng dụng c&oacute; phần hơi &ldquo;qu&aacute; đ&aacute;ng&rdquo; khi đặt quảng c&aacute;o tr&ecirc;n cả thanh Notification. Điều n&agrave;y l&agrave;m ti&ecirc;u tốn dung lượng internet v&agrave; g&acirc;y hao pin, thậm ch&iacute; c&oacute; nguy cơ g&acirc;y hại đến dữ liệu c&aacute; nh&acirc;n trong m&aacute;y. Để ph&aacute;t hiện những ứng dụng c&oacute; h&agrave;nh vi quảng c&aacute;o đ&aacute;ng ngờ, bạn c&oacute; thể nhờ đến sự hỗ trợ của tiện &iacute;ch&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.lookout.addetector&amp;feature=search_result" target="_blank">Lookout Ad Network Detector</a></strong>&nbsp;v&agrave; n&ecirc;n x&oacute;a bỏ ngay c&aacute;c ứng dụng bị ph&aacute;t hiện.</p>

<h3><strong>5. Quản l&yacute; mức độ sử dụng pin</strong></h3>

<p><img alt="Quản lý mức độ sử dụng pin" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/5-2013610112841.jpg" /></p>

<p>Với c&ocirc;ng việc n&agrave;y, tiện &iacute;ch gi&uacute;p quản l&yacute; pin c&oacute; sẵn trong Android đ&atilde; l&agrave;m rất tốt. Bạn c&oacute; thể t&igrave;m thấy trong mục Setting -&gt; Battery. Khi ph&aacute;t hiện những ứng dụng g&acirc;y hao pin qu&aacute; nhiều, bạn n&ecirc;n tắt ngay nếu kh&ocirc;ng sử dụng để đảm bảo thời lượng pin ở mức tối đa.</p>

<h3><strong>6. Sử dụng dữ liệu bản đồ offline của Google Maps</strong></h3>

<p><img alt=" Sử dụng dữ liệu bản đồ offline của Google Maps" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/6-2013610112438.jpg" /></p>

<p>Việc sử dụng bản đồ Google Maps offline mang đến nhiều lợi &iacute;ch như kh&ocirc;ng tốn dung lượng Wi-Fi/3G, &iacute;t tốn pin m&agrave; vẫn đầy đủ chức năng như bản online. Vậy th&igrave; c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng tải ngay dữ liệu bản đồ offline bằng c&aacute;ch v&agrave;o menu trong Google Maps, chọn Make Available Offline v&agrave; chọn khu vực bản đồ muốn tải.</p>

<h3><strong>7. Quản l&yacute; quyền truy cập từ c&aacute;c ứng dụng</strong></h3>

<p><img alt="Quản lý quyền truy cập từ các ứng dụng" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/7-2013610112452.jpg" /></p>

<p>Bạn c&oacute; nắm r&otilde; những th&ocirc;ng tin n&agrave;o m&agrave; c&aacute;c ứng dụng trong m&aacute;y được ph&eacute;p truy cập? Nếu kh&ocirc;ng, h&atilde;y sử dụng tiện &iacute;ch&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.bitdefender.clueful&amp;feature=search_result" target="_blank">Clueful Privacy Advisor</a></strong>. Tiện &iacute;ch n&agrave;y sẽ qu&eacute;t qua tất cả c&aacute;c ứng dụng trong m&aacute;y v&agrave; cho biết ứng dụng n&agrave;o ăn cắp mật khẩu, danh bạ v&agrave; những th&ocirc;ng tin nhạy cảm của bạn.</p>

<h3><strong>8. T&igrave;m lại điện thoại bị mất</strong></h3>

<p><img alt=" Tìm lại điện thoại bị mất" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/8-201361011256.jpg" /></p>

<p>D&acirc;n gian c&oacute; c&acirc;u &ldquo;Ph&ograve;ng bệnh hơn chữa bệnh&rdquo;. V&agrave; với điện thoại cũng vậy, kh&ocirc;ng ai biết chắc điện thoại của m&igrave;nh sẽ bị đ&aacute;nh rơi hay bị lấy cắp l&uacute;c n&agrave;o. V&igrave; vậy, bạn n&ecirc;n c&agrave;i sẵn một ứng dụng cho ph&eacute;p t&igrave;m lại điện thoại bị mất th&ocirc;ng qua bản đồ Google Maps. Một ứng dụng kh&aacute; nổi tiếng được nhiều người tin d&ugrave;ng l&agrave;&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.alienmanfc6.wheresmyandroid&amp;feature=search_result" target="_blank">Where&rsquo;s My Droid</a></strong>&nbsp;sẽ gi&uacute;p bạn t&igrave;m lại thiết bị của m&igrave;nh.</p>

<h3><strong>9. Tận dụng đ&egrave;n b&aacute;o hiệu tr&ecirc;n điện thoại</strong></h3>

<p><img alt="Tận dụng đèn báo hiệu trên điện thoại" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/9-2013610112519.jpg" /></p>

<p>Trong trường hợp điện thoại của bạn c&oacute; một đ&egrave;n b&aacute;o hiệu, bạn c&oacute; thể t&ugrave;y biến m&agrave;u sắc b&aacute;o hiệu cho từng t&aacute;c vụ kh&aacute;c nhau. V&iacute; dụ m&agrave;u xanh cho tin nhắn đến, m&agrave;u đỏ cho e-mail đến,&hellip;Ứng dụng&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.rageconsulting.android.lightflowlite&amp;feature=search_result" target="_blank">Light Flow</a></strong>&nbsp;sẽ gi&uacute;p bạn thực hiện điều n&agrave;y.</p>

<p>C&ograve;n nếu kh&ocirc;ng c&oacute; đ&egrave;n b&aacute;o hiệu, bạn c&oacute; thể tận dụng đ&egrave;n flash của camera. Ứng dụng&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.manzy.flashnotification&amp;feature=search_result" target="_blank">Flash Notification</a></strong>&nbsp;sẽ gi&uacute;p bạn t&ugrave;y chỉnh số lần nh&aacute;y đ&egrave;n kh&aacute;c nhau cho c&aacute;c t&aacute;c vụ kh&aacute;c nhau, thay v&igrave; m&agrave;u sắc như tr&ecirc;n.</p>

<h3><strong>10. Điều khiển điện thoại từ xa</strong></h3>

<p><img alt="Điều khiển điện thoại từ xa" src="https://cdn.tgdd.vn/Files/2013/06/10/518633/ImageAttach/10-2013610112530.jpg" /></p>

<p>Nếu chẳng may đến cơ quan m&agrave; qu&ecirc;n mang theo điện thoại, bạn c&oacute; thể sử dụng tiện &iacute;ch&nbsp;<strong><a href="https://play.google.com/store/apps/details?id=com.sand.airdroid&amp;feature=search_result" target="_blank">AirDroid</a></strong>&nbsp;để điều khiển điện thoại của m&igrave;nh th&ocirc;ng qua Wi-Fi/3G. Ứng dụng cho ph&eacute;p bạn truy cập điện thoại th&ocirc;ng qua một m&aacute;y t&iacute;nh v&agrave; thực hiện c&aacute;c thao t&aacute;c như sao ch&eacute;p file, gửi tin nhắn, c&agrave;i đặt/x&oacute;a ứng dụng, xem ảnh, nghe nhạc từ điện thoại v&agrave; nhiều hơn thế nữa.</p>
', N'10-meo-vat-cho-android-ma-ban-nen-biet.png', 4, 3, CAST(N'2020-11-23 12:34:41.183' AS DateTime))
INSERT [dbo].[NEWS] ([IdNews], [NewsTitle], [NewsSumary], [NewsDetail], [NewsThumbail], [IdCategory], [IdUser], [DateCreate]) VALUES (14, N'5 mẹo vặt cực thú vị và hữu dụng cho iPhone', N'Nếu như là người lần đầu mới sử dụng iPhone, hoặc là mới chuyển từ Android sang iOS thì trong bài viết ngày hôm nay mình xin gợi ý 5 mẹo vặt cực hay và thú vị', N'<p>Mặc d&ugrave; chỉ l&agrave; một hệ điều h&agrave;nh đ&oacute;ng thế nhưng iOS vẫn sẽ c&oacute; thể ẩn chứa h&agrave;ng trăm h&agrave;ng ngh&igrave;n những t&iacute;nh năng hữu &iacute;ch bất ngờ m&agrave; c&oacute; thể bạn sẽ kh&ocirc;ng bao giờ ngờ tới. Trong b&agrave;i viết h&ocirc;m nay, m&igrave;nh sẽ giới thiệu 5 mẹo vặt để gi&uacute;p bạn đọc sử dụng chiếc iPhone hiệu quả hơn trong c&ocirc;ng việc cũng như qu&aacute; tr&igrave;nh d&ugrave;ng m&aacute;y h&agrave;ng ng&agrave;y được tốt hơn nh&eacute;.</p>

<p><em><strong>*Lưu &yacute;</strong>: Một số mẹo vặt c&oacute; thể chỉ thực hiện được tr&ecirc;n c&aacute;c iPhone c&oacute; phi&ecirc;n bản iOS 13 trở l&ecirc;n.</em></p>

<h2><strong>5 mẹo vặt th&uacute; vị v&agrave; hữu &iacute;ch d&agrave;nh cho người d&ugrave;ng iPhone</strong></h2>

<h3><em>Truy cập v&agrave;o chế độ chỉnh sửa nhanh bằng hai ng&oacute;n tay</em></h3>

<p>Trong c&aacute;c ứng dụng c&oacute; giao diện danh s&aacute;ch như Mail, Tin nhắn, Ghi ch&uacute; hoặc Tệp, bạn c&oacute; thể truy cập v&agrave;o chế độ chọn nhiều mục (chế độ chỉnh sửa) bằng c&aacute;ch sử dụng hai ng&oacute;n tay v&agrave; thao t&aacute;c như bức h&igrave;nh động b&ecirc;n dưới.</p>

<p><img alt="mẹo vặt cho iPhone" src="http://tintuc.hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/meo-vat-cho-iphone-2.gif" style="height:450px; width:800px" /></p>

<h3><em>Tapback</em></h3>

<p>Trong giao diện ứng dụng Tin nhắn, bạn c&oacute; thể chạm v&agrave; giữ, hoặc nhấn đ&uacute;p hai lần v&agrave;o một d&ograve;ng tin nhắn bất k&igrave; của đối phương để d&ugrave;ng t&iacute;nh năng trả lời nhanh, hoặc sử dụng c&aacute;c icon biểu lộ cảm x&uacute;c như cười haha hoặc thả tim,&hellip;</p>

<p><img alt="mẹo vặt cho iPhone" src="http://tintuc.hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/meo-vat-cho-iphone-3.gif" style="height:450px; width:800px" /></p>

<h3><em>Di chuyển ứng dụng tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh nhanh hơn</em></h3>

<p>Thay v&igrave; k&eacute;o một icon ứng dụng tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh sang b&ecirc;n cạnh của m&agrave;n h&igrave;nh để tiến tới trang tiếp theo, giờ đ&acirc;y bạn chỉ cần giữ icon đ&oacute; bằng một ng&oacute;n tay v&agrave; vuốt m&agrave;n h&igrave;nh ch&iacute;nh bằng một ng&oacute;n tay kh&aacute;c để di chuyển icon đ&oacute; đến bất cứ nơi n&agrave;o, nhanh hơn v&agrave; thuận tiện hơn rất nhiều.</p>

<p><img alt="mẹo vặt cho iPhone" src="http://tintuc.hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/meo-vat-cho-iphone-4.gif" style="height:450px; width:800px" /></p>

<h3><em>Di chuyển nhiều ứng dụng c&ugrave;ng một l&uacute;c</em></h3>

<p>Bạn chạm v&agrave;o một icon ứng dụng muốn chuyển, ấn giữ cho đến khi m&agrave;n h&igrave;nh xuất hiện hiệu ứng tất cả c&aacute;c icon đều rung, sử dụng một ng&oacute;n tay kh&aacute;c ấn đ&uacute;p v&agrave;o một icon ứng dụng kh&aacute;c bạn muốn di chuyển. C&aacute;ch l&agrave;m n&agrave;y sẽ gi&uacute;p cho bạn c&oacute; thể di chuyển được nhiều ứng dụng c&ugrave;ng một l&uacute;c cực tiện lợi v&agrave; nhanh ch&oacute;ng.</p>

<p><img alt="mẹo vặt cho iPhone" src="http://tintuc.hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/meo-vat-cho-iphone-5.gif" style="height:718px; width:600px" /></p>

<h3><em>Tắt c&ugrave;ng một l&uacute;c nhiều ứng dụng trong tr&igrave;nh đa nhiệm</em></h3>

<p>C&oacute; thể bạn đ&atilde; biết nhưng c&oacute; thể cũng chưa biết, đ&oacute; l&agrave; bạn c&oacute; thể buộc đ&oacute;ng nhiều ứng dụng c&ugrave;ng một l&uacute;c bằng c&aacute;ch sử dụng nhiều ng&oacute;n tay vuốt nhiều cửa sổ ứng dụng trong tr&igrave;nh đa nhiệm. Giờ đ&acirc;y th&igrave; bạn sẽ kh&ocirc;ng cần phải mất thời gian tắt từng ứng dụng nữa rồi nh&eacute;.</p>

<p><img alt="mẹo vặt cho iPhone" src="http://tintuc.hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/meo-vat-cho-iphone-6.gif" style="height:616px; width:600px" /></p>

<h2><strong>Lời kết</strong></h2>

<p>Tr&ecirc;n đ&acirc;y l&agrave; 5 mẹo vặt th&uacute; vị v&agrave; hữu &iacute;ch tr&ecirc;n iPhone m&agrave; c&oacute; thể bạn chưa biết đến. Hy vọng b&agrave;i viết n&agrave;y sẽ gi&uacute;p cho qu&aacute; tr&igrave;nh sử dụng iPhone h&agrave;ng ng&agrave;y của bạn đọc trở n&ecirc;n dễ d&agrave;ng v&agrave; thuận tiện hơn. Nếu như c&oacute; th&ecirc;m mẹo n&agrave;o hay v&agrave; th&uacute; về iPhone th&igrave; bạn c&oacute; thể để lại comment ở b&ecirc;n dưới phần b&igrave;nh luận v&agrave; đừng qu&ecirc;n theo d&otilde;i&nbsp;để cập nhật c&aacute;c tin tức c&ocirc;ng nghệ mới nhất nh&eacute;.</p>
', N'5-meo-vat-cuc-thu-vi-va-huu-dung-cho-iphone.png', 4, 3, CAST(N'2020-11-23 12:40:20.730' AS DateTime))
INSERT [dbo].[NEWS] ([IdNews], [NewsTitle], [NewsSumary], [NewsDetail], [NewsThumbail], [IdCategory], [IdUser], [DateCreate]) VALUES (15, N'10 smartphone tốt nhất thế giới', N'Theo trang Business Insider, đây là 10 chiếc smartphone tốt nhất thế giới hiện nay.', N'<p><strong>10. Samsung Galaxy S9 Plus</strong></p>

<p>Galaxy S9 Plus l&agrave; phi&ecirc;n bản lớn hơn của Galaxy S9. Đ&acirc;y cũng l&agrave; smartphone đầu ti&ecirc;n thuộc d&ograve;ng Galaxy S được trang bị camera k&eacute;p. Trong hệ thống camera ống k&iacute;nh k&eacute;p, ống k&iacute;nh phụ đ&oacute;ng vai tr&ograve; l&agrave; ống k&iacute;nh zoom quang học 2x.</p>

<p>Galaxy S9 Plus c&oacute; RAM 6GB thay v&igrave; 4GB như Galaxy S9.</p>

<p>Gi&aacute; b&aacute;n: 840 USD.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-1-15532278122371353528334.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 1." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-1-15532278122371353528334.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p><strong>9. iPhone X</strong></p>

<p>Apple kh&ocirc;ng b&aacute;n iPhone X nữa, tuy nhi&ecirc;n, d&ograve;ng điện thoại n&agrave;y vẫn c&oacute; sẵn tại c&aacute;c cửa h&agrave;ng b&aacute;n lẻ, với mức gi&aacute; khoảng 900 USD.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-1-15532278144391036599302.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 2." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-1-15532278144391036599302.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>iPhone X chạy tr&ecirc;n chip A11, sở hữu m&agrave;n h&igrave;nh OLED tr&agrave;n viền với t&ecirc;n gọi Super Retina Display. M&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 5,8 inch, độ ph&acirc;n giải 1125 x 2436 pixel, mật độ điểm ảnh 458ppi, hỗ trợ HDR 10 v&agrave; Dolby Vision. Thiết bị cũng được trang bị t&iacute;nh năng sạc kh&ocirc;ng d&acirc;y chuẩn Qi.</p>

<p>Gi&aacute; b&aacute;n: 900 USD.</p>

<p><strong>8. LG V40</strong></p>

<p>LG V40 với hệ thống camera sau 3 ống k&iacute;nh mang đến cho người d&ugrave;ng sự linh hoạt khi chụp ảnh: Ống k&iacute;nh g&oacute;c rộng th&ocirc;ng thường, ống k&iacute;nh g&oacute;c si&ecirc;u rộng &ndash; đặc trưng của LG, ống k&iacute;n zoom quang học chuy&ecirc;n dụng.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-2-15532278144411502337975.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 3." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-2-15532278144411502337975.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>LG V40 l&agrave; sự lựa chọn cho những người d&ugrave;ng đề cao chất lượng &acirc;m thanh. Thiết bị đi k&egrave;m bộ khuếch đại chất lượng cao, truyền tải &acirc;m thanh tốt hơn qua tai nghe.</p>

<p>Gi&aacute; b&aacute;n: 950 USD.</p>

<p><strong>7. iPhone XS v&agrave; iPhone XS Max</strong></p>

<p>Hiện tại, đ&acirc;y l&agrave; 2 d&ograve;ng m&aacute;y &ldquo;tinh hoa&rdquo; nhất của Apple. Về mặt kỹ thuật, đ&acirc;y l&agrave; những chiếc iPhone tốt nhất, tuy nhi&ecirc;n, mức gi&aacute; đi k&egrave;m cũng rất đắt.</p>

<p>Cả hai đều c&oacute; mật độ điểm ảnh 458 ppi, nhờ đ&oacute; mang lại h&igrave;nh ảnh s&aacute;ng hơn, sắc n&eacute;t v&agrave; ch&iacute;nh x&aacute;c hơn.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-3-1553227814443233857266.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 4." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-3-1553227814443233857266.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>iPhone mới c&oacute; hiệu suất cao hơn nhờ được trang bị chip A12 Bionic mới kết hợp c&ocirc;ng nghệ m&aacute;y học v&agrave; tr&iacute; tuệ nh&acirc;n tạo th&ocirc;ng minh.</p>

<p>Cả hai d&ograve;ng XS đều c&oacute; những t&iacute;nh năng giống nhau, kh&aacute;c biệt duy nhất l&agrave; m&agrave;n h&igrave;nh v&agrave; k&iacute;ch thước th&acirc;n m&aacute;y.</p>

<p>Gi&aacute; b&aacute;n: iPhone XS: 1.000 USD; iPhone XS Max: 1.100 USD.</p>

<p><strong>6. Samsung Galaxy Note 9</strong></p>

<p>Đ&acirc;y l&agrave; d&ograve;ng smartphone tốt nhất Samsung từng ph&aacute;t h&agrave;nh. Galaxy Note 9 sở hữu m&agrave;n h&igrave;nh lớn 6,4 inch, kết hợp với c&aacute;c th&ocirc;ng số kỹ thuật cao.</p>

<p>M&aacute;y trang bị camera k&eacute;p c&ugrave;ng độ ph&acirc;n giải 12 MP trong đ&oacute; camera ch&iacute;nh c&oacute; khả năng thay đổi khẩu độ giữa f/2.4 v&agrave; f/1.5.</p>

<p>Cả 2 đều hỗ trợ chống rung quang học v&agrave; một c&oacute; ti&ecirc;u cự lớn d&agrave;nh ri&ecirc;ng cho chế độ chụp ch&acirc;n dung. Tr&ecirc;n giao diện của Note 9, m&aacute;y sẽ c&oacute; t&iacute;nh năng AI tr&ecirc;n camera, gi&uacute;p nhận diện cảnh vật, tối ưu th&ocirc;ng số, hiệu chỉnh cho ho&agrave;n cảnh chụp cụ thể.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-4-1553227814445392953555.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 5." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-4-1553227814445392953555.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Gi&aacute; b&aacute;n Samsung Galaxy Note 9 bằng iPhone XS, tuy nhi&ecirc;n, nhiều &yacute; kiến cho rằng si&ecirc;u phẩm đến từ Samsung đ&aacute;ng mua.</p>

<p>Gi&aacute; b&aacute;n: 1.000 USD.</p>

<p><strong>5. Samsung Galaxy S10 and Galaxy S10 Plus</strong></p>

<p>Galaxy S10 được v&iacute; như &ldquo;một cuộc đại tu về thiết kế&rdquo;. Hai thiết bị n&agrave;y đều c&oacute; thiết kế &quot;đục lỗ&quot; Infinity-O v&agrave; m&agrave;n h&igrave;nh cong.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-5-1553227814447756570478.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 6." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-5-1553227814447756570478.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Galaxy S10 and Galaxy S10 Plus sở hữu cảm biến v&acirc;n tay si&ecirc;u &acirc;m dưới m&agrave;n h&igrave;nh, c&oacute; khả năng ph&acirc;n t&iacute;ch c&aacute;c đường viền 3D của dấu v&acirc;n tay vật l&yacute; thay v&igrave; ảnh 2D - gi&uacute;p dễ d&agrave;ng ph&acirc;n biệt v&acirc;n tay giả.</p>

<p>Gi&aacute; b&aacute;n: Galaxy S10 Plus v&agrave; Galaxy S10 c&oacute; gi&aacute; lần lượt l&agrave; 1.000 USD v&agrave; 900 USD.</p>

<p><strong>4. Google Pixel 3 v&agrave; Pixel 3 XL</strong></p>

<p>Hiện tại, hai thiết bị n&agrave;y sở hữu m&aacute;y ảnh th&ocirc;ng minh tốt nhất. Pixel 3 c&oacute; camera selfie ống k&iacute;nh k&eacute;p, ống k&iacute;nh c&ograve;n lại chụp ảnh selfie g&oacute;c cực rộng.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-6-15532278144521582553820.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 7." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-6-15532278144521582553820.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Sự kh&aacute;c biệt duy nhất giữa Pixel 3 v&agrave; Pixel 3 XL l&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh v&agrave; thiết kế mặt trước. Pixel 3 c&oacute; thiết kế tương tự điện thoại th&ocirc;ng minh truyền thống, trong khi, &ldquo;người anh em&rdquo; Pixel 3 XL sở hữu vẻ ngo&agrave;i nổi bật hơn.</p>

<p>Khuyết điểm của Pixel 3 XL l&agrave; phần tai thỏ, tuy nhi&ecirc;n, bạn n&ecirc;n c&acirc;n nhắc nếu c&oacute; &yacute; định bỏ qua Pixel 3 XL chỉ v&igrave; điều n&agrave;y.</p>

<p>Gi&aacute; b&aacute;n: Pixel 3 l&agrave; 800 USD; Pixel 3 XL l&agrave; 900 USD.</p>

<p><strong>3. iPhone XR</strong></p>

<p>Tr&ecirc;n hầu hết mọi kh&iacute;a cạnh, bạn sẽ c&oacute; trải nghiệm tương tự như d&ograve;ng iPhone XS. iPhone XR sở hữu m&agrave;n h&igrave;nh LCD độ ph&acirc;n giải thấp hơn so với m&agrave;n h&igrave;nh OLED hay camera ống k&iacute;nh k&eacute;p từ iPhone XS. Tuy nhi&ecirc;n, những cải tiến mới n&agrave;y đ&aacute;ng gi&aacute; 250 USD.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-7-15532278144591012646816.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 8." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-7-15532278144591012646816.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Gi&aacute; b&aacute;n: 750 USD.</p>

<p><strong>2. Samsung Galaxy S10e</strong></p>

<p>Thiết bị n&agrave;y chạy tr&ecirc;n c&ugrave;ng bộ vi xử l&yacute; v&agrave; hệ điều h&agrave;nh Android với Galaxy S10. B&ecirc;n cạnh đ&oacute;, Galaxy S10e sở hữu thiết kế gần giống, bộ nhớ tương tự với Galaxy S10 v&agrave; S10 Plus, tuy nhi&ecirc;n gi&aacute; b&aacute;n lại rẻ hơn 150 USD.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-8-15532278144621066106894.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 9." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-8-15532278144621066106894.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Đ&acirc;y l&agrave; lựa chọn tốt nhất cho những ai muốn sở hữu một chiếc điện thoại với m&agrave;n h&igrave;nh nhỏ hơn.</p>

<p>Gi&aacute; b&aacute;n: 750 USD.</p>

<p><strong>1. OnePlus 6T</strong></p>

<p>OnePlus 6T kh&ocirc;ng sở hữu c&aacute;c t&iacute;nh năng kh&aacute;c như sạc kh&ocirc;ng d&acirc;y, ống k&iacute;nh zoom chuy&ecirc;n dụng, ống k&iacute;nh g&oacute;c cực rộng hay m&agrave;n h&igrave;nh 1440p si&ecirc;u n&eacute;t. Tuy nhi&ecirc;n, OnePlus 6T vẫn chụp ảnh đẹp, sạc nhanh, pin khỏe, với mức gi&aacute; phải chăng 550 USD.</p>

<p><a href="https://cafebiz.cafebizcdn.vn/2019/3/22/photo-9-15532278144641845590235.jpg"><img alt="10 smartphone tốt nhất thế giới: Dẫn đầu không phải điện thoại Samsung hay Apple - Ảnh 10." src="https://cafebiz.cafebizcdn.vn/thumb_w/640/2019/3/22/photo-9-15532278144641845590235.jpg" /></a></p>

<p>Ảnh: Business Insider.</p>

<p>Gi&aacute; b&aacute;n: 550 USD cho RAM 6GB, bộ nhớ trong 128 GB.</p>
', N'10-smartphone-tot-nhat-the-gioi.png', 4, 3, CAST(N'2020-11-23 12:51:18.417' AS DateTime))
INSERT [dbo].[NEWS] ([IdNews], [NewsTitle], [NewsSumary], [NewsDetail], [NewsThumbail], [IdCategory], [IdUser], [DateCreate]) VALUES (16, N'Những điện thoại giá dưới 5 triệu đồng đáng mua ', N'Những chiếc điện thoại góp mặt trong phân khúc này đều sở hữu những con chip tầm trung như Qualcomm Snapdragon 636, 660 cho phép người dùng sử dụng một cách mượt mà và lâu dài.', N'<p>Ph&acirc;n kh&uacute;c điện thoại dưới 5 triệu đồng l&agrave; một trong những ph&acirc;n kh&uacute;c cạnh tranh khốc liệt nhất của thị trường điện thoại Việt ở thời điểm hiện tại. Đ&acirc;y cũng l&agrave; ph&acirc;n kh&uacute;c m&agrave; phần lớn giới trẻ nhắm tới khi muốn sắm cho m&igrave;nh một chiếc điện thoại mới. Điểm đặc trưng lớn nhất của c&aacute;c mẫu điện thoại ph&acirc;n kh&uacute;c dưới 5 triệu đồng l&agrave; thiết kế trẻ trung, cấu h&igrave;nh tốt, dung lượng pin lớn v&agrave; c&oacute; gần như đầy đủ chức năng của một chiếc flagship cao cấp.</p>

<p>Sự trỗi dậy của những thương hiệu mới nổi đến từ Trung Quốc như Xiaomi, Huawei,... đ&atilde; khiến &ocirc;ng lớn như Samsung tại thị trường Việt kh&ocirc;ng thể đứng ngo&agrave;i cuộc chơi n&agrave;y.</p>

<p>Dưới đ&acirc;y l&agrave; danh s&aacute;ch những mẫu điện thoại gi&aacute; dưới 5 triệu đồng (gi&aacute; h&agrave;ng ch&iacute;nh h&atilde;ng) đ&aacute;ng mua nhất trong nửa đầu năm 2019.</p>

<p><strong>1. Xiaomi Redmi Note 7</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/redmin7.jpg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 1" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/redmin7.jpg" /></a>(Nguồn: Xiaomi)</p>

<p>Xiaomi Redmi Note 7 l&agrave; chiếc smartphone đầu ti&ecirc;n mang thương hiệu Redmi, một thương hiệu vừa được Xiaomi t&aacute;ch ri&ecirc;ng ra cho chiến lược sản phẩm rẻ nhưng chất lượng của m&igrave;nh.</p>

<p>Xiaomi đ&atilde; định nghĩa lại chiếc điện thoại gi&aacute; rẻ dưới 5 triệu&nbsp;với thiết kế bằng mặt lưng k&iacute;nh gradient bo cong cao cấp. Mặt lưng k&iacute;nh tr&ecirc;n Redmi Note 7 gi&uacute;p chiếc điện thoại trở n&ecirc;n b&oacute;ng bẩy v&agrave; sang trọng hơn. Bốn g&oacute;c m&aacute;y được tăng cường độ bền đ&aacute;ng kể gi&uacute;p chống vỡ k&iacute;nh gấp 4 lần so với c&aacute;c&nbsp;<a href="https://www.vietnamplus.vn/tags/Smartphone.vnp"><strong>smartphone</strong></a>&nbsp;kh&aacute;c tr&ecirc;n thị trường hiện nay.</p>

<p>Xiaomi Redmi Note 7 sở hữu m&agrave;n h&igrave;nh giọt nước với k&iacute;ch thước&nbsp;6.3 inch c&oacute; tỷ lệ khung h&igrave;nh 19.5:9, độ ph&acirc;n giải Full HD+ (2.340 x 1.080 pixel). M&agrave;n h&igrave;nh n&agrave;y c&oacute; chất lượng hiển thị ấn tượng với độ s&aacute;ng l&ecirc;n tới&nbsp;450 nits.</p>

<p>Camera ch&iacute;nh của m&aacute;y c&oacute; độ ph&acirc;n giải l&agrave; 48MP. Redmi Note 7 được trang bị chip Snapdragon 660.</p>

<p>Redmi Note 7 hiện đang được b&aacute;n với gi&aacute; 4.990.000 đồng cho bản 64gb bộ nhớ.</p>

<p><strong>2. Asus Zenfone Max Pro M2</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/asus_zenfone_max_pro_m2_iykh.jpg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 2" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/asus_zenfone_max_pro_m2_iykh.jpg" /></a>(Nguồn: Asus)</p>

<p>Asus Zenfone Max Pro M2 l&agrave; sản phẩm lột x&aacute;c về mặt thiết kế của Asus nhưng vẫn giữ lại những điểm mạnh tr&ecirc;n c&aacute;c phi&ecirc;n bản trước như &quot;pin khủng&quot;, cấu h&igrave;nh kh&aacute; mạnh v&agrave; chạy Android gốc.</p>

<p>Zenfone Max Pro M2 được cải tiến kh&aacute; nhiều về thiết kế so với mẫu tiền nhiệm khi ASUS đ&atilde; chuyển từ chất liệu kim loại v&agrave; nhựa sang kim loại kết hợp mặt lưng k&iacute;nh b&oacute;ng bẩy. Mặt lưng m&aacute;y được v&aacute;t cong 3D&nbsp;kết hợp c&aacute;c cạnh bo cong mềm mại gi&uacute;p khả năng cầm nắm của sản phẩm được cải thiện hơn nhiều.</p>

<p>M&aacute;y được trang bị&nbsp;chip Snapdragon 660, m&agrave;n h&igrave;nh Full HD 6.3 inch. Camera ch&iacute;nh với 12MP v&agrave; 5MP hỗ trợ chụp xo&aacute; ph&ocirc;ng.</p>

<p>M&agrave;n h&igrave;nh của&nbsp;Max Pro M2 c&oacute; k&iacute;ch thước l&agrave;&nbsp;6.26 inch với&nbsp;độ ph&acirc;n giải Full HD+ (2280 &times; 1080 pixels), nhưng nhờ c&oacute; tỷ lệ 19:9 n&ecirc;n th&acirc;n m&aacute;y vẫn kh&aacute; &ldquo;thon thả&rdquo;. V&agrave; m&agrave;n h&igrave;nh n&agrave;y vẫn được kho&eacute;t lỗ tai thỏ giống như c&aacute;c mẫu điện thoại kh&aacute;c trong c&ugrave;ng ph&acirc;n kh&uacute;c.</p>

<p>Zenfone Max Pro M2 được trang bị chip Qualcomm Snapdragon 660 AIE (Artificial Intelligence Engine) tối ưu cho c&aacute;c t&aacute;c vụ xử l&yacute; AI, GPU Adreno 512 với hai t&ugrave;y chọn RAM 3/4GB, bộ nhớ trong 32/64GB.</p>

<p>Asus Zenfone Max Pro M2 cũng được trang bị cụm camera k&eacute;p ph&iacute;a sau&nbsp;với cảm biến ch&iacute;nh Sony IMX486 12 MP (khẩu độ f/1.8, k&iacute;ch thước điểm ảnh 1.25 micro m&eacute;t) v&agrave; cảm biến đo độ s&acirc;u 5 MP, hỗ trợ quay video ở độ ph&acirc;n giải 4K.&nbsp;Trong khi đ&oacute;, camera trước c&oacute; độ ph&acirc;n giải 13MP hỗ trợ cả đ&egrave;n flash.</p>

<p>Thời lượng &quot;pin khủng&quot; vẫn l&agrave; điểm mạnh của Zenfone Max Pro. M&aacute;y sở hữu vi&ecirc;n pin 5.000 mAh cho ph&eacute;p người d&ugrave;ng sử dụng 2 ng&agrave;y với c&aacute;c t&aacute;c vụ th&ocirc;ng thường.</p>

<p>Hiện sản phẩm c&oacute; gi&aacute; khoảng 4.750.000 đồng cho phi&ecirc;n bản cấu h&igrave;nh thấp nhất RAM 3GB, bộ nhớ trong 32GB.</p>

<p><strong>3. Nokia 6.1 Plus</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/nokia61plus_1280x720800resize.jpg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 3" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/nokia61plus_1280x720800resize.jpg" /></a>(Nguồn: Nokia)</p>

<p>Một sản phẩm đ&aacute;nh dấu sự trở lại đầy cố gắng của thương hiệu đ&igrave;nh đ&aacute;m một thời Nokia. Nokia 6.1 Plus mang trong m&igrave;nh thiết kế khung nh&ocirc;m nguy&ecirc;n khối nằm giữa hai mặt k&iacute;nh cường lực Corning Gorilla Glass.</p>

<p>M&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước 5,8 inch, độ ph&acirc;n giải Full HD+ v&agrave; c&oacute; tỉ lệ mới 19:9. Mặc d&ugrave; m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước lớn nhưng nhờ viền m&agrave;n h&igrave;nh si&ecirc;u mỏng ở tất cả c&aacute;c cạnh n&ecirc;n Nokia 6.1 Plus vẫn rất nhỏ gọn, dễ d&agrave;ng cầm nắm.</p>

<p>Nokia 6.1 mang trong m&igrave;nh vi xử l&yacute; Snapdragon 636 c&ugrave;ng 4GB Ram.</p>

<p>M&aacute;y cũng sở hữu vi&ecirc;n pin c&oacute; dung lượng 3060 mAh đủ đ&aacute;p ứng thời gian sử dụng trong một ng&agrave;y l&agrave;m việc v&agrave; giải tr&iacute;. Điều đặc biệt khi Nokia 6.1 Plus cũng được t&iacute;ch hợp khả năng sạc nhanh Quick Charge 3.0 qua cổng kết nối USB Type&ndash;C. Với t&iacute;nh năng n&agrave;y, người d&ugrave;ng c&oacute; thể sạc tới 50% pin cho Nokia 6.1 Plus chỉ với 30 ph&uacute;t, th&ocirc;ng qua bộ sạc 18W m&agrave; Nokia cung cấp.</p>

<p>Hiện sản phẩm đang được b&aacute;n với gi&aacute; 4.490.000 đồng.</p>

<p><strong>4. Realme 3</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/motasanphamrealme36.jpeg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 4" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/motasanphamrealme36.jpeg" /></a>(Nguồn: Realme)</p>

<p>Realme l&agrave; một d&ograve;ng điện thoại được Oppo khai sinh để cạnh tranh trực tiếp với d&ograve;ng Redmi của Xiaomi. Cũng mang trong m&igrave;nh một cấu h&igrave;nh &quot;khủng&quot; với mức gi&aacute; rẻ, Realme 3 chắc chắn l&agrave; đối thủ đ&aacute;ng gờm cho c&aacute;c thương hiệu kh&aacute;c.</p>

<p>Relmi 3 l&agrave; mẫu điện thoại hướng đến giới trẻ n&ecirc;n mang trong m&igrave;nh thiết kế kh&aacute; trẻ trung v&agrave; b&oacute;ng bẩy. M&aacute;y th&acirc;n nhựa nguy&ecirc;n khối với mặt lưng c&oacute; hiệu ứng chuyển m&agrave;u v&agrave; mặt trước l&agrave; m&agrave;n h&igrave;nh &ldquo;giọt nước&rdquo;.</p>

<p>M&agrave;n h&igrave;nh Realme 3 c&oacute; k&iacute;ch thước 6.2 inch với độ ph&acirc;n giải HD+. Đ&acirc;y kh&ocirc;ng phải l&agrave; điện thoại c&oacute; m&agrave;n h&igrave;nh tốt nhất trong tầm gi&aacute; nhưng n&oacute; vẫn đ&aacute;p ứng được đầy đủ c&aacute;c nhu cầu của người d&ugrave;ng như lướt web, xem phim, chơi game.</p>

<p>Tại Việt Nam Realme 3 được b&aacute;n ra với phi&ecirc;n bản sử dụng vi xử l&yacute; Helio P60 với 8 nh&acirc;n (4 nh&acirc;n Cortex A73 + 4 nh&acirc;n Cortex A53), xung nhịp 2.0 GHz.</p>

<p>Realme 3 sở hữu vi&ecirc;n pin c&oacute; dung lượng 4.230 mAh, tuy nhi&ecirc;n việc kh&ocirc;ng được trang bị sạc nhanh khiến thời gian sạc đầy l&ecirc;n đến 2,5 giờ. Đ&acirc;y l&agrave; một trong những điểm hạn chế tr&ecirc;n mẫu điện thoại n&agrave;y.</p>

<p>Hiện sản phẩm đang được b&aacute;n với mức gi&aacute; 4.990.000 đồng.</p>

<p><strong>5. Huawei Y9 2019</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/huaweiy92019kvproduct.png"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 5" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/huaweiy92019kvproduct.png" /></a>(Nguồn: Huawei)</p>

<p>Kh&ocirc;ng chịu thua k&eacute;m c&aacute;c đối thủ đồng hương từ Trung Quốc, Huawei cũng tung ra c&aacute;c mẫu điện thoại như Huawei Y9 2019 tầm gi&aacute; dưới 5 triệu đồng để cạnh tranh trực tiếp.</p>

<p>Huawei Y9 2019&nbsp;sở hữu thiết kế nguy&ecirc;n khối khung kim loại với mặt lưng được l&agrave;m bằng k&iacute;nh cường lực cao cấp kết hợp với dải m&agrave;u &oacute;ng &aacute;nh thay đổi theo g&oacute;c nh&igrave;n.</p>

<p>M&agrave;n h&igrave;nh của Huawei Y9 (2019) sở hữu k&iacute;ch thước 6,5 inch độ ph&acirc;n giải Full HD+ với tỷ lệ mới nhất 19,5:9. M&agrave;n h&igrave;nh n&agrave;y cũng theo xu hướng tr&agrave;n viền&nbsp;gi&uacute;p cho người d&ugrave;ng c&oacute; nhiều kh&ocirc;ng gian hiển thị v&agrave; thao t&aacute;c.</p>

<p>Huawei Y9 (2019) vẫn sử dụng con chip Kirin 710 do Huawei tự sản xuất. Đ&acirc;y l&agrave; con chip mới thuộc ph&acirc;n kh&uacute;c tầm trung&nbsp;sản xuất tr&ecirc;n tiến tr&igrave;nh 12nm c&oacute; hiệu năng cực mạnh v&agrave; tiết kiệm điện.&nbsp;</p>

<p>Ngo&agrave;i ra với&nbsp;4GB RAM v&agrave; 64GB bộ nhớ trong; đảm bảo cho m&aacute;y c&oacute; đủ kh&ocirc;ng gian đa nhiệm, c&agrave;i ứng dụng v&agrave; lưu trữ thoải m&aacute;i.</p>

<p>Tương tự&nbsp;Xiaomi Redmi Note 6 Pro,&nbsp;Huawei Y9 2019 cũng được&nbsp;trang bị đến 4 camera chia l&agrave;m hai khu vực trước v&agrave; sau. Camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 16MP khẩu độ f/1.8 v&agrave; camera selfie l&agrave; 13MP khẩu độ f/2.0. Đi theo hỗ trợ l&agrave; hai camera phụ độ ph&acirc;n giải chỉ l&agrave; 2MP, kh&ocirc;ng d&ugrave;ng để chụp m&agrave; thay v&agrave;o đ&oacute; để ph&acirc;n t&iacute;ch m&ocirc;i trường xung quanh, đo độ s&acirc;u trường ảnh.</p>

<p>Huawei cũng bổ sung th&ecirc;m tr&iacute; th&ocirc;ng minh nh&acirc;n tạo AI l&ecirc;n sản phẩm n&agrave;y.&nbsp;AI sẽ tự động nhận diện được hơn 500 nh&oacute;m chủ thể, thuộc 22 chủ đề kh&aacute;c nhau để đưa ra những t&ugrave;y chỉnh tối ưu h&oacute;a cảnh qua thời gian thực, mang đến những bức ảnh đẹp v&agrave; sinh động.</p>

<p>Vi&ecirc;n pin của Huawei Y9 2019 c&oacute; dung lượng l&ecirc;n tới 4000 mAh gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng một c&aacute;ch thoải m&aacute;i.</p>

<p>Hiện sản phẩm đang được b&aacute;n với gi&aacute; 4.990.000 đồng.</p>

<p><strong>6. Samsung Galaxy M20</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/hinhanhsamsunggalaxym20didongviet.jpg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 6" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/hinhanhsamsunggalaxym20didongviet.jpg" /></a>(Nguồn: Di động Việt)</p>

<p>Kh&ocirc;ng thể chậm ch&acirc;n trong cuộc chiến gi&agrave;nh thị phần&nbsp;<a href="https://www.vietnamplus.vn/tags/%c4%90i%e1%bb%87n-tho%e1%ba%a1i.vnp"><strong>điện thoại</strong></a>&nbsp;trong ph&acirc;n kh&uacute;c gi&aacute; dưới 5 triệu đồng, Samsung đ&atilde; tung ra mẫu Galaxy M20 với gần như đầy đủ c&aacute;c t&iacute;nh năng của một mẫu&nbsp;<a href="https://www.vietnamplus.vn/tags/Flagship.vnp"><strong>flagship</strong></a>&nbsp;cao cấp của h&atilde;ng.</p>

<p>Galaxy M20 l&agrave; chiếc điện thoại khởi đầu cho một d&ograve;ng điện thoại mới với&nbsp;m&agrave;n h&igrave;nh v&ocirc; cực Infinity V của Samsung. M&aacute;y được trang bị vi&ecirc;n pin c&oacute; dung lượng rất lớn 5000mAh&nbsp;c&ugrave;ng khả năng sạc nhanh 15W cao cấp.</p>

<p>Samsung M20 thiết kế theo xu hướng đơn giản, vỏ được l&agrave;m bằng nhựa,&nbsp;th&acirc;n m&aacute;y kh&aacute; d&agrave;y k&iacute;ch thước 8,8mm do vi&ecirc;n pin lớn v&agrave; nặng 186g. C&aacute;c g&oacute;c cạnh m&aacute;y được bo cong nhẹ nh&agrave;ng gi&uacute;p khả năng cầm năm của&nbsp;Samsung Galaxy M20 được tốt hơn.</p>

<p>M&agrave;n h&igrave;nh Galaxy M20 c&oacute; k&iacute;ch thước 6.3 inch Full HD v&agrave; được kho&eacute;t lỗ chữ V được h&atilde;ng gọi l&agrave;&nbsp;Infinity V. M&agrave;n h&igrave;nh n&agrave;y sử dụng tấm nền&nbsp;IPS LCD c&oacute; độ tương phản cao gi&uacute;p hiển thị m&agrave;u sắc r&otilde; n&eacute;t trong c&aacute;c điều kiện kh&aacute;c nhau.</p>

<p>M&aacute;y được trang bị chip xử l&yacute; Exynos 7904, được Samsung sản xuất tr&ecirc;n tiến tr&igrave;nh 14nm. Con chip n&agrave;y bao gồm&nbsp;8 nh&acirc;n với 2 nh&acirc;n hiệu năng cao Cortex A73 xung nhịp 1.8 GHz v&agrave; 6 nh&acirc;n Cortex A53 xung nhịp 1.6 GHz.</p>

<p>Tuy l&agrave; sản phẩm thuộc ph&acirc;n kh&uacute;c điện thoại gi&aacute; rẻ dưới 5 triệu đồng nhưng Samsung vẫn trang bị cho M20 camera k&eacute;p. Th&ocirc;ng số của camera k&eacute;p n&agrave;y bao gồm một cảm biến 13MP, khẩu độ F/1.9 v&agrave; một cảm biến 5MP sử dụng ống k&iacute;nh g&oacute;c rộng l&ecirc;n tới 120 độ. Camera trước của m&aacute;y được&nbsp;Samsung trang bị cảm biến 8MP&nbsp;khẩu độ lớn f/2.0.</p>

<p>Samsung tạo điểm nhấn cho Galaxy M20 trong ph&acirc;n kh&uacute;c điện thoại dưới 5 triệu đồng với vi&ecirc;n pin dung lượng rất lớn 5000mAh v&agrave; hỗ trợ sạc nhanh 15W.</p>

<p>Hiện sản phẩm được b&aacute;n với gi&aacute; 4.990.000 đồng.</p>

<p><strong>7. Vsmart Active 1</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/636800598960547236_vsmartactive1black1.jpeg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 7" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/636800598960547236_vsmartactive1black1.jpeg" /></a>(Nguồn: VinSmart)</p>

<p>Vsmart Active 1 l&agrave; điện thoại thương hiệu Việt duy nhất g&oacute;p mặt trong danh s&aacute;ch điện thoại tầm gi&aacute; 5 triệu đồng tốt nhất.</p>

<p>Vsmart Active 1 mang trong m&igrave;nh thiết kế ho&agrave;i h&ograve;a với bộ khung kim loại chắc chắn, mặt lưng được l&agrave;m bằng k&iacute;nh. Phần mặt lưng được tạo điểm nhấn với cụm camera k&eacute;p đặt dọc, cảm biến v&acirc;n tay ở ch&iacute;nh giữa v&agrave;&nbsp;logo Vsmart kh&aacute; ấn tượng c&ugrave;ng cụm từ Made in Vietnam được in mờ ở phần gần đ&aacute;y m&aacute;y.</p>

<p>M&agrave;n h&igrave;nh của&nbsp;Vsmart Active 1 c&oacute;&nbsp;c&oacute; k&iacute;ch thước 5,65 inch, độ ph&acirc;n giải Full HD+ v&agrave; tỷ lệ 18:9. Đ&acirc;y l&agrave; m&agrave;n h&igrave;nh kh&ocirc;ng khiếm khuyết th&iacute;ch hợp cho những người d&ugrave;ng kh&ocirc;ng th&iacute;ch tai thỏ, giọt nước.</p>

<p>Tuy gi&aacute; rẻ nhưng Vsmart Active 1 được trang bị bộ vi xử l&yacute; Snapdragon 660 đi c&ugrave;ng 4GB RAM v&agrave; 64GB bộ nhớ trong.</p>

<p>Cụm camera k&eacute;p sau của m&aacute;y c&oacute; th&ocirc;ng số&nbsp;12MP + 5MP, trong đ&oacute; camera ch&iacute;nh&nbsp;12MP c&oacute; khẩu độ lớn f/1.8 v&agrave; c&ocirc;ng nghệ lấy n&eacute;t theo pha k&eacute;p Dual PD. Camera trước c&oacute; độ ph&acirc;n giải 8MP t&iacute;ch hợp đ&egrave;n&nbsp;LED Flash cho ph&eacute;p người d&ugrave;ng chụp trong điều kiện thiếu s&aacute;ng.</p>

<p>Vsmart Active 1 sở hữu vi&ecirc;n pin kh&aacute; khi&ecirc;m tốn chỉ 3100 mAh.</p>

<p>Hiện sản phẩm đang được nhiều nh&agrave; b&aacute;n lẻ b&aacute;n với gi&aacute; 3.990.000 đồng, giảm kh&aacute; mạnh so với hồi mới ra mắt.</p>

<p><strong>8. Vivo Y15</strong></p>

<p><a href="https://cdnimg.vietnamplus.vn/uploaded/xtsqr/2019_07_08/636936802444714674_vivoy15xanh1.jpeg"><img alt="Nhung dien thoai gia duoi 5 trieu dong dang mua nhat nua dau nam 2019 hinh anh 8" src="https://cdnimg.vietnamplus.vn/t620/uploaded/xtsqr/2019_07_08/636936802444714674_vivoy15xanh1.jpeg" /></a>(Nguồn: Vivo)</p>

<p>Vivo Y15&nbsp;l&agrave; chiếc smartphone phổ th&ocirc;ng mới ra mắt trong thời gian gần đ&acirc;y của Vivo với điểm nhấn ch&iacute;nh l&agrave; dung lượng pin cực khủng v&agrave; 3 camera sau.</p>

<p>Vivo Y15 sở hữu m&agrave;n h&igrave;nh Halo 6,35 inch cực lớn với tỉ lệ 19,3:9. M&aacute;y sở hữu viền si&ecirc;u mỏng ở tất cả c&aacute;c cạnh, gi&uacute;p tỷ lệ m&agrave;n h&igrave;nh tr&ecirc;n th&acirc;n m&aacute;y l&ecirc;n đến 89%.</p>

<p>M&aacute;y mang tr&ecirc;n m&igrave;nh 3 camera sau bao gồm camera ch&iacute;nh, camera phụ đo độ s&acirc;u trường ảnh v&agrave; camera g&oacute;c si&ecirc;u rộng. Vivo Y15 c&oacute; thể chụp ảnh ch&acirc;n dung x&oacute;a ph&ocirc;ng; chụp phong cảnh g&oacute;c si&ecirc;u rộng l&ecirc;n đến 120 độ.</p>

<p>Vivo Y15 l&agrave; chiếc điện thoại c&oacute; thời lượng pin lớn hiếm thấy trong thế giới smartphone hiện nay với dung lượng l&ecirc;n tới 5000 mAh.</p>

<p>Vivo Y15 được trang bị con chip Helio P22 với 4GB RAM v&agrave; 64GB bộ nhớ trong.</p>

<p>Hiện sản phẩm đang được b&aacute;n với mức gi&aacute; 4.990.000 đồng.</p>
', N'nhung-dien-thoai-gia-duoi-5-trieu-dong-dang-mua.png', 4, 3, CAST(N'2020-11-23 12:57:02.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[NEWS] OFF
SET IDENTITY_INSERT [dbo].[ORDER] ON 

INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (64, NULL, 10, NULL, CAST(N'2020-11-23 01:13:36.467' AS DateTime), CAST(N'2020-11-23 01:14:00' AS SmallDateTime), 500, N'Ship giờ hành chính', 1, 4)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (65, NULL, 10, NULL, CAST(N'2020-11-23 09:15:56.197' AS DateTime), CAST(N'2020-11-23 09:16:00' AS SmallDateTime), 1700, N'Ship giờ hành chính', 1, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (66, NULL, 11, NULL, CAST(N'2020-11-23 19:40:02.357' AS DateTime), CAST(N'2020-11-23 19:40:00' AS SmallDateTime), 16000, NULL, 1, 4)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (68, NULL, 12, NULL, CAST(N'2020-11-24 01:20:05.323' AS DateTime), CAST(N'2020-11-24 01:20:00' AS SmallDateTime), 3000, NULL, 1, 1)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (73, NULL, 13, NULL, CAST(N'2020-11-24 19:10:30.040' AS DateTime), CAST(N'2020-11-24 19:11:00' AS SmallDateTime), 1, N'NCQ', 3, 1)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (74, NULL, 13, NULL, CAST(N'2020-11-24 19:14:35.697' AS DateTime), CAST(N'2020-11-24 19:15:00' AS SmallDateTime), 1, N'không có ', 3, 1)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (75, NULL, 10, NULL, CAST(N'2020-11-24 19:25:56.307' AS DateTime), CAST(N'2020-11-24 19:26:00' AS SmallDateTime), 1, N'NCQ', 1, 1)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
SET IDENTITY_INSERT [dbo].[ORDER_HISTORY] ON 

INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (1, 3, 64, NULL, CAST(N'2020-11-23 01:13:59.610' AS DateTime), 3)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (2, 3, 65, NULL, CAST(N'2020-11-23 09:16:12.563' AS DateTime), 3)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (3, 3, 64, NULL, CAST(N'2020-11-23 21:46:21.893' AS DateTime), 4)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (4, 3, 65, NULL, CAST(N'2020-11-23 21:47:11.050' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (5, 3, 66, NULL, CAST(N'2020-11-23 22:34:11.623' AS DateTime), 3)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (6, 3, 66, NULL, CAST(N'2020-11-23 22:38:06.343' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[ORDER_HISTORY] OFF
SET IDENTITY_INSERT [dbo].[PAYMENT_METHOD] ON 

INSERT [dbo].[PAYMENT_METHOD] ([IdPayment], [PaymentName]) VALUES (1, N'COD')
INSERT [dbo].[PAYMENT_METHOD] ([IdPayment], [PaymentName]) VALUES (2, N'Bank')
INSERT [dbo].[PAYMENT_METHOD] ([IdPayment], [PaymentName]) VALUES (3, N'PaymentOnline')
SET IDENTITY_INSERT [dbo].[PAYMENT_METHOD] OFF
SET IDENTITY_INSERT [dbo].[PAYMENT_STATUS] ON 

INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (1, N'Đặt hàng')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (2, N'Đã thanh toán')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (3, N'Đang giao')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (4, N'Hoàn thành')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (5, N'Từ chối')
SET IDENTITY_INSERT [dbo].[PAYMENT_STATUS] OFF
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (1, N'iPhone XR', N'iPhone Xr là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google', N'<h2>L&agrave; chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">điện thoại iPhone</a>&nbsp;c&oacute; mức gi&aacute; dễ chịu, ph&ugrave; hợp với nhiều kh&aacute;ch h&agrave;ng hơn,&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-xr" target="_blank">iPhone Xr</a>&nbsp;vẫn được ưu &aacute;i trang bị chip Apple A12 mạnh mẽ, m&agrave;n h&igrave;nh tai thỏ c&ugrave;ng khả năng chống nước chống bụi.</h2>

<h3>M&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền c&ocirc;ng nghệ LCD</h3>

<p>Kh&aacute;c với iPhone Xs hay Xs Max, chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;n&agrave;y sở hữu m&agrave;n h&igrave;nh LCD.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-7.jpg" onclick="return false;"><img alt="Màn hình điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-7.jpg" /></a></p>

<p>B&ugrave; lại với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-true-tone-992705" target="_blank">True Tone</a>&nbsp;c&ugrave;ng m&agrave;n h&igrave;nh tr&agrave;n viền rộng tới 6.1 inch, mọi trải nghiệm tr&ecirc;n m&aacute;y vẫn đem lại sự th&iacute;ch th&uacute; v&agrave; ho&agrave;n hảo, như d&ograve;ng cao cấp kh&aacute;c của Apple.</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra, Apple cũng giới thiệu rằng, iPhone Xr được trang bị một loại c&ocirc;ng nghệ mới c&oacute; t&ecirc;n&nbsp;Liquid Retina. M&aacute;y c&oacute; độ ph&acirc;n giải 1792 x 828 Pixels c&ugrave;ng 1.4 triệu điểm ảnh.</p>

<h3>Mạnh mẽ bậc nhất với&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-chip-apple-a12-bionic-ben-trong-iphone-xs-xs-max-1116982" target="_blank">chip Apple A12</a></h3>

<p>Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới v&agrave; Apple A12 Bionic l&agrave; con chip đầu ti&ecirc;n sản xuất với tiến tr&igrave;nh 7nm được t&iacute;ch hợp tr&ecirc;n iPhone Xr.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-11.jpg" onclick="return false;"><img alt="Điểm hiệu năng Antutu điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-11.jpg" /></a></p>

<p>Apple A12 được t&iacute;ch hợp tr&iacute; tuệ th&ocirc;ng minh nh&acirc;n tạo, mọi phản hồi tr&ecirc;n m&aacute;y đều nhanh ch&oacute;ng v&agrave; gần như l&agrave; ngay lập tức, kể cả khi bạn chơi game hay thao t&aacute;c b&igrave;nh thường.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-3.jpg" onclick="return false;"><img alt="iOS trên điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-3.jpg" /></a></p>

<p>Hơn nữa với AI tr&ecirc;n Apple A12, iPhone Xr c&oacute; thể ghi nhớ được thao t&aacute;c hằng ng&agrave;y của bạn để ho&agrave;n thiện v&agrave; hỗ trợ người d&ugrave;ng tốt hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-8.jpg" onclick="return false;"><img alt="Trải nghiệm điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-8.jpg" /></a></p>

<p>Thực tế khi chơi game tr&ecirc;n iPhone Xr, m&ocirc;i trường v&agrave; hiệu ứng trong game rất thật. Hơn nữa tr&ecirc;n chiếc iPhone n&agrave;y c&ograve;n hỗ trợ&nbsp;thực tế tăng cường: Chơi game thực tế ảo với nhiều người c&ugrave;ng chơi, trải nghiệm c&ugrave;ng 1 m&ocirc;i trường với nhau.</p>
', 1, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (2, N'Iphone 11 Pro Max', N'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi "Pro".', N'<h3>Pro về camera sau</h3>

<p>Camera l&agrave; một trong những điểm n&acirc;ng cấp mạnh mẽ nhất năm nay Apple mang đến cho chiếc&nbsp;iPhone 11 Pro Max.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd15-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Thiết kế camera sau" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd15-1.jpg" /></a></p>

<p>Đ&oacute; l&agrave; lần đầu ti&ecirc;n một chiếc iPhone sở hữu tới 3 camera ở mặt sau với 3 ti&ecirc;u cự kh&aacute;c nhau m&agrave; người ta vẫn gọi l&agrave; &quot;từ nh&agrave; tới trường&quot; đ&aacute;p ứng mọi nhu cầu nhiếp ảnh của người d&ugrave;ng.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd22.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Giao diện chụp ảnh" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd22.jpg" /></a></p>

<p>Ngo&agrave;i một camera g&oacute;c rộng v&agrave; một camera tele vốn dĩ đ&atilde; xuất hiện từ thời iPhone 7 Plus th&igrave; năm nay&nbsp;iPhone 11 Pro Max được trang bị th&ecirc;m một ống k&iacute;nh&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-goc-rong" target="_blank">g&oacute;c si&ecirc;u rộng</a>&nbsp;nữa.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd10-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp chân dung bằng camera sau" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd10-1.jpg" /></a></p>

<p><em>Ảnh chụp bằng camera sau tr&ecirc;n iPhone 11 Pro Max</em></p>

<p>Ống k&iacute;nh n&agrave;y sẽ thực sự hữu &iacute;ch khi bạn muốn lấy được nhiều chi tiết hơn khi đứng c&ugrave;ng một vị tr&iacute; chụp m&agrave; kh&ocirc;ng cần phải di chuyển ra xa chủ thể.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd16-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng camera sau" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd16-1.jpg" /></a></p>

<p><em>Ảnh chụp bằng camera sau tr&ecirc;n iPhone 11 Pro Max</em></p>

<p>Kh&ocirc;ng chỉ n&acirc;ng cấp về mặt phần cứng m&agrave; phần mềm b&ecirc;n trong m&aacute;y cũng được bổ sung th&ecirc;m nhiều t&iacute;nh năng đ&aacute;ng gi&aacute; kh&aacute;c.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd19.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Chế độ Night Mode mới" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd19.jpg" /></a></p>

<p><em>Chế độ Night Mode mới</em></p>

<p>Đ&oacute; l&agrave; chế độ chụp đ&ecirc;m gi&uacute;p m&aacute;y khắc phục ho&agrave;n to&agrave;n diểm yếu chụp đ&ecirc;m kh&ocirc;ng tốt vốn bị ph&agrave;n n&agrave;n kh&aacute; nhiều tới từ người d&ugrave;ng.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd8-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp bằng chế độ Night Mode" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd8-1.jpg" /></a></p>

<p><em>Ảnh chụp chế độ Night Mode mới</em></p>

<p>iPhone năm nay thực sự l&agrave; một sự &quot;lột x&aacute;c&quot; của Apple về camera chụp đ&ecirc;m khi những bức ảnh cho ra c&oacute; độ s&aacute;ng v&agrave; chi tiết cao hơn hẳn nếu đem so với chiếc iPhone Xs Max năm ngo&aacute;i.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd17-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp chế độ cơ bản" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd17-1.jpg" /></a></p>

<p><em>Ảnh chụp chế độ cơ bản tr&ecirc;n iPhone 11 Pro Max</em></p>

<p>Apple cũng mang lại một trải nghiệm rất th&ocirc;ng minh khi tất cả m&aacute;y sẽ tự động quyết định khi n&agrave;o chụp đ&ecirc;m khi n&agrave;o kh&ocirc;ng v&agrave; việc của bạn chỉ l&agrave; đưa l&ecirc;n v&agrave; chụp th&ocirc;i.</p>

<p>Chế độ ch&acirc;n dung kh&ocirc;ng chỉ tốt hơn trong việc lấy n&eacute;t v&agrave;o đối tượng muốn chụp, m&agrave; c&ograve;n hoạt động được ở khoảng c&aacute;ch &#39;b&igrave;nh thường&#39; nhờ sự trợ gi&uacute;p của cảm biến độ s&acirc;u.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd16.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Giao diện chuyển đổi các ống kính camera" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd16.jpg" /></a></p>

<p>Khả năng quay video n&acirc;ng cấp đ&aacute;ng kể với chế độ 4K 60fps gi&uacute;p bạn&nbsp;c&oacute; thể quay những thước phim chuy&ecirc;n nghiệp bằng iPhone v&agrave; chỉnh sửa trực tiếp tr&ecirc;n m&aacute;y.</p>

<p>Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-iphone-11-pro-max-1199526" target="_blank">Đ&aacute;nh gi&aacute; chi tiết iPhone 11 Pro Max: Chiếc smartphone đỉnh nhất 2019?</a></p>

<h3>Pro lu&ocirc;n cả camera trước</h3>

<p>Kh&ocirc;ng chỉ c&oacute; camera sau được n&acirc;ng cấp m&agrave; camera selfie tr&ecirc;n iPhone 11 Pro Max cũng được n&acirc;ng l&ecirc;n độ ph&acirc;n giải 12 MP thay v&igrave; 7 MP như trước.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd15.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Trải nghiệm cầm nắm" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd15.jpg" /></a></p>

<p>Camera trước năm nay c&ograve;n c&oacute; th&ecirc;m t&iacute;nh năng selfie g&oacute;c rộng rất th&iacute;ch hợp cho c&aacute;c bạn đi chơi v&agrave; chụp h&igrave;nh một nh&oacute;m đ&ocirc;ng người.</p>

<p>Theo đ&oacute; th&igrave; khi bạn xoay ngang chiếc điện thoại th&igrave; iPhone sẽ lập tức chuyển qua chế độ selfie g&oacute;c rộng để bạn c&oacute; thể chụp m&agrave; kh&ocirc;ng cần tới gậy tự sướng.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd12-1.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp selfie" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd12-1.jpg" /></a></p>

<p>Camera n&agrave;y cũng hỗ trợ quay video với độ ph&acirc;n giải l&ecirc;n tới 4K rất ph&ugrave; hợp với những bạn th&iacute;ch l&agrave;m vlog hay quay video vui vẻ để đăng l&ecirc;n mạng x&atilde; hội.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd1.gif" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Ảnh chụp Slofie bằng camera trước" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd1.gif" /></a></p>

<p>Tất nhi&ecirc;n cũng kh&ocirc;ng thể bỏ qua t&iacute;nh năng&nbsp;quay video slow motion (quay chậm) gi&uacute;p bạn c&oacute; được những video&nbsp; th&uacute; vị v&agrave; vui vẻ với bạn b&egrave;.</p>

<h3>Pro về hiệu năng</h3>

<p>Tất nhi&ecirc;n rồi, một chiếc iPhone mới ra bao giờ cũng sẽ đứng đầu danh s&aacute;ch những chiếc m&aacute;y c&oacute; hiệu năng tốt nhất hiện nay v&agrave; với&nbsp;iPhone 11 Pro Max 256 GB cũng kh&ocirc;ng phải l&agrave; ngoại lệ.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-tgdd10.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Trải nghiệm chơi game" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-tgdd10.jpg" /></a></p>

<p>Cung cấp sức mạnh cho m&aacute;y kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave; con chip&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a13-bionic-tren-iphone-11-n-1197492" target="_blank">Apple A13 Bionic</a>, con chip mạnh mẽ nhất d&agrave;nh cho những chiếc iPhone trong năm 2019.</p>

<p><a href="https://www.thegioididong.com/images/42/210653/iphone-11-pro-max-256gb-22.jpg" onclick="return false;"><img alt="Điện thoại iPhone 11 Pro Max 256GB | Điểm hiệu năng Antutu Benchmark" src="https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-22.jpg" /></a></p>

<p><em>Điểm Geekbench của iPhone 11 Pro Max</em></p>

<p>Bộ nhớ trong lớn l&ecirc;n tới 256 GB gi&uacute;p bạn thoải m&aacute;i quay video 4K, chụp h&igrave;nh độ ph&acirc;n giải cao hay tải game v&agrave; ứng dụng.</p>
', 12000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (5, N'iPhone SE', N'iPhone SE 2020', N'<h2><a href="https://www.thegioididong.com/dtdd/iphone-se-256gb-2020" target="_blank">iPhone SE 256GB 2020</a>&nbsp;cuối c&ugrave;ng đ&atilde; được&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">Apple</a>&nbsp;ra mắt, với ngoại h&igrave;nh nhỏ gọn được sao ch&eacute;p từ&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-8-256gb" target="_blank">iPhone 8</a>&nbsp;nhưng mang trong m&igrave;nh một hiệu năng mạnh mẽ với vi xử l&yacute; A13 Bionic, mức gi&aacute; hấp dẫn hứa hẹn sẽ l&agrave; yếu tố &ldquo;h&uacute;t kh&aacute;ch&rdquo; của&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;đ&igrave;nh đ&aacute;m đến từ nh&agrave; T&aacute;o khuyết.</h2>

<h3>Gọn nhẹ chắc chắn thoải m&aacute;i sử dụng</h3>

<p>iPhone SE 2020 c&oacute; thiết kế kh&aacute; nhỏ b&eacute; khi đặt cạnh c&aacute;c smartphone&nbsp;<a href="https://www.thegioididong.com/dtdd-tu-6-inch" target="_blank">m&agrave;n h&igrave;nh khủng</a>&nbsp;hiện nay, nhưng với những ai kh&ocirc;ng th&iacute;ch kiểu&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-tran-vien" target="_blank">thiết kế tr&agrave;n viền</a>&nbsp;v&agrave; m&agrave;n h&igrave;nh lớn, th&igrave; đ&acirc;y sẽ l&agrave; lựa chọn tốt nhất cho họ.</p>

<p>Với m&agrave;n h&igrave;nh 4.7 inch, viền m&agrave;n h&igrave;nh kh&aacute; d&agrave;y, c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-van-tay" target="_blank">cảm biến v&acirc;n tay</a>&nbsp;Touch ID, c&aacute;c cạnh bo cong ho&agrave;n hảo, iPhone SE 2020 mang lại cảm gi&aacute;c cầm nắm quen thuộc,&nbsp;<a href="https://www.thegioididong.com/dtdd-nho-gon" target="_blank">k&iacute;ch thước nhỏ gọn</a>&nbsp;để bạn sử dụng 1 tay một c&aacute;ch dễ d&agrave;ng.</p>

<p>Chiếc điện thoại mới nh&agrave; T&aacute;o trang bị m&agrave;n h&igrave;nh Retina 4.7 inch, tuy chỉ c&oacute; độ ph&acirc;n giải HD nhưng vẫn cho chất lượng hiển thị tốt với c&ocirc;ng nghệ True Tone tự c&acirc;n chỉnh m&agrave;u theo m&ocirc;i trường xung quanh.</p>

<p><a href="https://www.thegioididong.com/images/42/222631/iphone-se-256gb-20206.jpg" onclick="return false;"><img alt="Điện thoại iPhone SE 256GB (2020) | Màn hình Rentina sắc nét màu sắc chuẩn xác dù độ phân giải HD" src="https://cdn.tgdd.vn/Products/Images/42/222631/iphone-se-256gb-20206.jpg" /></a></p>

<p>Cũng giống như thế hệ&nbsp;<a href="https://thegioididong.com/dtdd/iphone-7" target="_blank">iPhone 7</a>&nbsp;v&agrave; iPhone 8, iPhone SE 2020 vẫn trang bị n&uacute;t home cảm ứng lực phản hồi rung quen thuộc, t&iacute;ch hợp cảm biến v&acirc;n tay Touch ID thế hệ thứ 2 cho tốc độ nhận diện nhanh v&agrave; cực kỳ ch&iacute;nh x&aacute;c d&ugrave; chỉ chạm nhẹ.</p>

<p><a href="https://www.thegioididong.com/images/42/222631/iphone-se-256gb-20205.jpg" onclick="return false;"><img alt="Điện thoại iPhone SE 256GB (2020) | Cảm biến vân tay Touch ID thế hệ 2, nhanh và chính xác" src="https://cdn.tgdd.vn/Products/Images/42/222631/iphone-se-256gb-20205.jpg" /></a></p>

<p>B&ecirc;n cạnh đ&oacute;, mẫu điện thoại iPhone rẻ c&ograve;n c&oacute; khả năng&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank">chống nước</a>&nbsp;IP67 hạn chế rủi ro khi rơi v&agrave;o nước hay đi mưa, chiếc điện thoại c&ograve;n c&oacute; thể&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-khong-day" target="_blank">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;qua mặt lưng k&iacute;nh ph&iacute;a sau kh&aacute; tiện lợi.</p>

<p><a href="https://www.thegioididong.com/images/42/222631/iphone-se-256gb-2020-223220-013217.jpg" onclick="return false;"><img alt="Điện thoại iPhone SE 256GB (2020) | Chuẩn chống nước IP67" src="https://cdn.tgdd.vn/Products/Images/42/222631/iphone-se-256gb-2020-223220-013217.jpg" /></a></p>

<h3>Cấu h&igrave;nh v&ocirc; địch trong tầm gi&aacute;</h3>

<p>C&oacute; thể n&oacute;i, trong tầm gi&aacute; hiện tại hầu như kh&ocirc;ng một chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd?g=android" target="_blank">điện thoại Android</a>&nbsp;n&agrave;o c&oacute; hiệu năng vượt mặt iPhone SE.</p>

<p>D&ugrave; ngoại h&igrave;nh kh&aacute; nhỏ gọn, nhưng b&ecirc;n trong iPhone SE 2020 l&agrave; một cấu h&igrave;nh &ldquo;khủng long&rdquo; với vi xử l&yacute; Bionic A13, cho ph&eacute;p m&aacute;y hoạt động cực kỳ nhanh ch&oacute;ng v&agrave; mượt m&agrave;, thậm ch&iacute; trong một số trường hợp c&ograve;n nhanh hơn cả&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-11" target="_blank">iPhone 11</a>&nbsp;hay&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-11-pro" target="_blank">iPhone 11 Pro</a>.</p>

<p><a href="https://www.thegioididong.com/images/42/222631/iphone-se-256gb-2020-131420-111401.jpg" onclick="return false;"><img alt="Điện thoại iPhone SE 256GB (2020) | Giải trí chơi game cực mượt mà" src="https://cdn.tgdd.vn/Products/Images/42/222631/iphone-se-256gb-2020-131420-111401.jpg" /></a></p>

<p>Đo hiệu năng AnTuTu, iPhone SE 2020 đạt số điểm364.049 điểm, với th&ocirc;ng số n&agrave;y gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;tốt hơn cũng như&nbsp;tự tin chiến h&agrave;ng loạt tựa game đồ họa khủng hiện nay, m&agrave; kh&ocirc;ng gặp bất cứ t&igrave;nh trạng giật rớt khung h&igrave;nh.</p>
', 600, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (6, N'iPhone 8 Plus 128GB', N'Fan trung thành của nhà Táo thì chắc hẳn không nên bỏ qua iPhone 8 Plus 128GB, một bản nâng cấp từ iPhone 7 Plus, được tích hợp thêm sạc không dây, chipset A11 Bionic 6 nhân mạnh mẽ cùng các tính năng mới giúp cho việc trải nghiệm lâu dài tốt hơn', N'<h3>Thiết kế sang trọng, b&oacute;ng bẩy</h3>

<p>iPhone 8 Plus giữ nguy&ecirc;n thiết kế đ&atilde; ho&agrave;n thiện từ thế hệ đ&agrave;n em iPhone 7 Plus, b&ecirc;n cạnh đ&oacute; iPhone 8 Plus được bo tr&ograve;n g&oacute;c cạnh mềm mại gi&uacute;p cho m&aacute;y tăng độ sang trọng, th&ecirc;m bắt mắt. M&aacute;y được trang bị khung nh&ocirc;m cao cấp chắc chắn, v&agrave; mặt k&iacute;nh cường lực ở mặt trước v&agrave; phần lưng c&ugrave;ng với logo t&aacute;o khuyết quen thuộc.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-130120-090150.jpg" onclick="return false;"><img alt="Thiết kế sang trọng, bóng bẩy - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-130120-090150.jpg" /></a></p>

<p>Mặt lưng được thay đổi ho&agrave;n to&agrave;n thiết kế, với việc sử dụng chất liệu k&iacute;nh c&ugrave;ng phần ăng-ten được tinh chỉnh gọn g&agrave;ng v&agrave; tinh tế hơn so với c&aacute;c phi&ecirc;n bản&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a>&nbsp;trước.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-130820-090854.jpg" onclick="return false;"><img alt="Mặt lưng được thiết kế hoàn toàn mới - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-130820-090854.jpg" /></a></p>

<p>M&agrave;n h&igrave;nh LCD 5.5&quot; giữ nguy&ecirc;n như phi&ecirc;n bản trước nhưng iPhone 8 Plus được cải tiến về độ phủ m&agrave;u lớn v&agrave;&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-true-tone-992705" target="_blank">c&ocirc;ng nghệ True Tone</a>,&nbsp;th&ocirc;ng qua cảm biến &aacute;nh s&aacute;ng xung quanh v&agrave; tự động thay đổi độ s&aacute;ng m&agrave;n h&igrave;nh điện thoại gi&uacute;p bạn đỡ mỏi mắt hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-131020-091011.jpg" onclick="return false;"><img alt="Màn hình 5.5 inch với công nghệ True Tone - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-131020-091011.jpg" /></a></p>

<h3>Chụp h&igrave;nh v&agrave; quay phim đỉnh cao</h3>

<p>Bộ camera k&eacute;p 12 MP chủ yếu được n&acirc;ng cấp vi xử l&yacute; h&igrave;nh ảnh n&acirc;ng cao chất lượng ảnh chụp.</p>

<p>Chế độ chụp ch&acirc;n dung mới, c&aacute;c chi tiết sắc n&eacute;t v&agrave; l&agrave;m mờ hậu cảnh tự nhi&ecirc;n hơn, quay phim 4K chuẩn quay phim sắc n&eacute;t gấp 4 lần Full HD 1080 k&egrave;m theo khả năng zoom tới 10x m&agrave; vẫn kh&ocirc;ng bị vỡ h&igrave;nh gi&uacute;p cho bạn thỏa sức s&aacute;ng tạo.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-131120-091120.jpg" onclick="return false;"><img alt="Chụp hình và quay phim đỉnh cao - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-131120-091120.jpg" /></a></p>

<p>Camera trước 7 MP đi k&egrave;m với hiệu ứng s&acirc;n khấu mới lạ tất cả mang đến cho bạn trải nghiệm về camera ho&agrave;n to&agrave;n mới.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-131220-091238.jpg" onclick="return false;"><img alt="Camera trước 7 MP - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-131220-091238.jpg" /></a></p>

<h3>Cấu h&igrave;nh mạnh mẽ với A11 Bionic</h3>

<p>Tr&aacute;i tim của iPhone 8 Plus l&agrave; con chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-a11-bionic-chip-co-nhieu-thanh-phan-apple-tu-trong-nhat-tu-truoc-den-nay-1021653" target="_blank">Apple A11 Bionic 6 nh&acirc;n</a>&nbsp;mạnh mẽ,&nbsp;c&ugrave;ng với hệ điều h&agrave;nh iOS 13 mượt m&agrave;, ổn định gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;tốt c&aacute;c thể loại game đ&igrave;nh đ&aacute;m hiện nay c&ugrave;ng với bạn b&egrave; như PUBG Mobile, Li&ecirc;n Qu&acirc;n Mobile,...</p>

<p>Với phi&ecirc;n bản 128 GB th&igrave; việc lưu trữ l&agrave; thoải m&aacute;i, bạn kh&ocirc;ng c&ograve;n khiến bạn đau đầu khi phải lọc h&igrave;nh ảnh, video định k&igrave; nữa.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-131320-091358.jpg" onclick="return false;"><img alt="Cấu hình mạnh mẽ đi kèm với chip khủng - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-131320-091358.jpg" /></a></p>

<h3>T&iacute;ch hợp sạc kh&ocirc;ng d&acirc;y, hỗ trợ sạc nhanh</h3>

<p>Phần kh&ocirc;ng thể thiếu của iPhone 8 Plus n&agrave;y đ&oacute; ch&iacute;nh l&agrave; t&iacute;ch hợp&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-khong-day" target="_blank">sạc kh&ocirc;ng d&acirc;y</a>&nbsp;ở ph&iacute;a sau mặt lưng của chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;n&agrave;y, tuy nhi&ecirc;n bộ sạc đi k&egrave;m kh&ocirc;ng hỗ trợ sạc kh&ocirc;ng d&acirc;y.</p>

<p>Với lượng pin khi&ecirc;m tốn chỉ với 2691 mAh nhưng iPhone 8 Plus vẫn cho thời gian sử dụng đ&agrave;m thoại l&ecirc;n đến 21 giờ. Phần tiếp đến cần được đề cập tới đ&oacute; ch&iacute;nh l&agrave; c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank">sạc pin nhanh</a>, người d&ugrave;ng c&oacute; thể đạt 50% pin chỉ trong v&ograve;ng 30 ph&uacute;t.</p>

<p><a href="https://www.thegioididong.com/images/42/225734/iphone-8-plus-128gb-132620-092604.jpg" onclick="return false;"><img alt="Tích hợp sạc không dây, hỗ trợ sạc nhanh - iPhone 8 Plus 128GB" src="https://cdn.tgdd.vn/Products/Images/42/225734/iphone-8-plus-128gb-132620-092604.jpg" /></a></p>

<p>Như vậy, ngo&agrave;i thiết kế sang trọng c&ugrave;ng với chức năng chụp h&igrave;nh quay phim đỉnh cao th&igrave; iPhone 8 Plus c&ograve;n l&agrave; một chiếc điện thoại ph&ugrave; hợp d&agrave;nh cho những ai mong muốn trải nghiệm một chiếc smartphone mạnh mẽ, mượt m&agrave; v&agrave; ổn định, đảm bảo l&agrave;m h&agrave;i l&ograve;ng ngay cả những người d&ugrave;ng kh&oacute; t&iacute;nh.</p>

<p>&nbsp;</p>
', 5000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (7, N'iPhone Xs 64GB', N'Đến hẹn lại lên, năm nay Apple giới thiệu tới người dùng thế hệ tiếp theo với 3 phiên bản, trong đó có cái tên iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. ', N'<h3>Hiệu năng đỉnh cao đến từ con&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-chip-apple-a12-bionic-ben-trong-iphone-xs-xs-max-1116982" target="_blank">chip Apple A12</a></h3>

<p>Ngo&agrave;i&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">điện thoại</a>&nbsp;th&igrave; năm nay&nbsp;<a href="https://www.thegioididong.com/dtdd-apple-iphone" target="_blank">iPhone</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức ra mắt chip A12 bionic thế hệ mới với những n&acirc;ng cấp vượt trội về mặt hiệu năng.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-2-1.jpg" onclick="return false;"><img alt="Chip A12 trên điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-2-1.jpg" /></a></p>

<p>Apple A12 Bionic được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 7nm đầu ti&ecirc;n của h&atilde;ng với 6 nh&acirc;n gi&uacute;p iPhone Xs c&oacute; được một hiệu năng &ldquo;v&ocirc; đối&rdquo; c&ugrave;ng khả năng tiết kiệm năng lượng tối ưu.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-8-1.jpg" onclick="return false;"><img alt="Trải nghiệm điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-8-1.jpg" /></a></p>

<p>B&ecirc;n cạnh đ&oacute;, bộ xử l&yacute; đồ họa của m&aacute;y cũng được Apple thiết kế lại gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;hay dựng h&igrave;nh mượt m&agrave; v&agrave; nhanh ch&oacute;ng hơn gấp nhiều lần.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-22.jpg" onclick="return false;"><img alt="Điểm Antutu Benchmark trên iPhone Xs" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-22.jpg" /></a></p>

<p>Chưa dừng lại ở đ&oacute;, iPhone Xs c&ograve;n được t&iacute;ch hợp th&ecirc;m tr&iacute; th&ocirc;ng minh nh&acirc;n tạo gi&uacute;p tối ưu phần cứng để bạn c&oacute; thể xử l&yacute; c&aacute;c t&aacute;c vụ một c&aacute;ch đơn giản nhất.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-7-1.jpg" onclick="return false;"><img alt="iOS trên điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-7-1.jpg" /></a></p>

<p>Kết hợp với phần cứng mạnh mẽ l&agrave; hệ điều h&agrave;nh iOS 12 si&ecirc;u mượt, hứa hẹn iPhone Xs sẽ trở th&agrave;nh một con qu&aacute;i th&uacute; trong l&agrave;ng smartphone hiện nay.</p>

<p>Xem th&ecirc;m:&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tren-tay-danh-gia-nhanh-iphone-xs-suc-manh-tu-ben-trong-1116989" target="_blank">Tr&ecirc;n tay, đ&aacute;nh gi&aacute; nhanh iPhone XS: Sức mạnh từ b&ecirc;n trong</a></p>

<h3>M&agrave;n h&igrave;nh Super Retina si&ecirc;u sắc n&eacute;t</h3>

<p>So với đ&agrave;n anh iPhone X th&igrave; iPhone XS được chăm ch&uacute;t hơn về khả năng hiển thị khi được trang bị h&agrave;ng loạt c&aacute;c c&ocirc;ng nghệ cao cấp.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-3-1.jpg" onclick="return false;"><img alt="Màn hình điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-3-1.jpg" /></a></p>

<p>Tr&ecirc;n k&iacute;ch thước 5.8 inch kết hợp tấm nền&nbsp;<a href="https://www.thegioididong.com/tin-tuc/man-hinh-oled-la-gi-smartphone-nao-co-man-hinh-oled-1048951" target="_blank">OLED</a>&nbsp;đem lại cho bạn một trải nghiệm tuyệt vời khi xem phim hay lướt web với dải m&agrave;u rộng v&agrave; độ chi tiết cực k&igrave; cao.</p>

<p>Hơn nữa, m&agrave;n h&igrave;nh của m&aacute;y c&ograve;n hỗ trợ c&ocirc;ng nghệ HDR10 c&ugrave;ng tần số qu&eacute;t 120 Hz gi&uacute;p h&igrave;nh ảnh sống động cũng chuyển động mượt m&agrave; hơn.</p>

<h3>Hệ thống &acirc;m thanh cải tiến</h3>

<p>iPhone XS sở hữu hệ thống &acirc;m thanh 2 chiều cực k&igrave; tuyệt vời được Apple tinh chỉnh mang lại dải &acirc;m rộng v&agrave; chi tiết hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-1-1.jpg" onclick="return false;"><img alt="Cụm loa dưới điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-1-1.jpg" /></a></p>

<p>Nhờ thế m&agrave; bạn c&oacute; thể thưởng thức những bộ phim trở n&ecirc;n th&uacute; vị v&agrave; sống động hơn m&agrave; kh&ocirc;ng cần d&ugrave;ng đến một chiếc tai nghe để c&oacute; một chất &acirc;m tốt.</p>

<h3><a href="https://www.thegioididong.com/hoi-dap/face-id-la-gi-va-cach-hoat-dong-cua-face-id-1021871" target="_blank">Face ID</a>&nbsp;được tăng cường khả năng bảo mật</h3>

<p>Hệ thống&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-khuon-mat" target="_blank">bảo mật khu&ocirc;n mặt</a>&nbsp;3D tr&ecirc;n iPhone Xs đ&atilde; được Apple cải tiến cũng như hỗ trợ tr&iacute; th&ocirc;ng minh nh&acirc;n tạo.</p>

<p>Bạn chỉ cần nh&igrave;n v&agrave;o iPhone Xs th&igrave; m&aacute;y sẽ tự động mở kh&oacute;a v&agrave; hiển thị tất cả c&aacute;c th&ocirc;ng tin tr&ecirc;n m&agrave;n h&igrave;nh nhờ v&agrave;o một thuật to&aacute;n mới của Apple.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/dtdd-iphone-xs-10.jpg" onclick="return false;"><img alt="Face ID trên điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/dtdd-iphone-xs-10.jpg" /></a></p>

<p>Chưa hết, với hệ thống camera n&agrave;y bạn c&ograve;n c&oacute; thể tạo ra những bức ảnh thực tế ảo AR v&ocirc; c&ugrave;ng đ&aacute;ng y&ecirc;u.</p>

<h3>Camera h&agrave;ng đầu thế giới</h3>

<p>iPhone Xs vẫn được duy tr&igrave; cụm&nbsp;<a href="https://www.thegioididong.com/tin-tuc/camera-kep-la-gi-co-phai-la-xu-huong-tren-smartphone-2017-953888" target="_blank">camera k&eacute;p</a>&nbsp;c&oacute; c&ugrave;ng độ ph&acirc;n giải 12 MP giống như đ&agrave;n anh của n&oacute; nhưng được bổ sung nhiều t&iacute;nh năng chụp ảnh hiện đại hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-21.jpg" onclick="return false;"><img alt="Ảnh chụp từ camera điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-21.jpg" /></a></p>

<p>Với điểm nhấn đặc biệt đến từ việc m&aacute;y c&oacute; thể điều chỉnh khả năng x&oacute;a ph&ocirc;ng ngay tr&ecirc;n bức ảnh từ khẩu độ f/1.4 đến f/16 m&agrave; bạn mong muốn sau khi chụp.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-18.jpg" onclick="return false;"><img alt="Ảnh chụp từ camera điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-18.jpg" /></a></p>

<p>C&ugrave;ng với đ&oacute;&nbsp;iPhone Xs được trang bị th&ecirc;m c&ocirc;ng nghệ Smart HDR cho ph&eacute;p bạn chụp những bức ảnh s&aacute;ng v&agrave; tối sau đ&oacute; gh&eacute;p lại với nhau để cho ra một bức ảnh c&oacute; độ s&aacute;ng tốt nhất.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-20.jpg" onclick="return false;"><img alt="Ảnh chụp từ camera điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-20.jpg" /></a></p>

<p>Ngo&agrave;i ra, AI camera cũng đ&atilde; được xuất hiện tr&ecirc;n&nbsp;iPhone Xs gi&uacute;p m&aacute;y c&oacute; thể nhận biết được c&aacute;c vật thể để tự động điều chỉnh m&agrave;u sắc, độ tương phản sao cho ph&ugrave; hợp nhằm đem lại h&igrave;nh ảnh với chất lượng cao.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-16.jpg" onclick="return false;"><img alt="Ảnh chụp từ camera điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-16.jpg" /></a></p>

<p>Song song với đ&oacute; phải kể đến&nbsp;<a href="https://www.thegioididong.com/tin-tuc/giai-thich-su-khac-nhau-giua-ar-emoji-cua-samsung-va-animoji-cua-apple-1070052" target="_blank">Animoji</a>&nbsp;được t&iacute;ch hợp nhiều biểu tượng th&uacute; vị v&agrave; ngộ nghĩnh hơn gi&uacute;p bạn th&ecirc;m nhiều lựa chọn để giải tr&iacute;.</p>

<h3>Thiết kế kh&ocirc;ng c&oacute; nhiều sự kh&aacute;c biệt</h3>

<p>iPhone Xs được thừa hưởng vẻ đẹp từ người đ&agrave;n anh của m&igrave;nh l&agrave; chiếc điện thoại iPhone X với phần khung được l&agrave;m từ khung th&eacute;p kh&ocirc;ng gỉ kết hợp với 2 mặt k&iacute;nh cường lực cao cấp.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-6-1.jpg" onclick="return false;"><img alt="Thiết kế điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-6-1.jpg" /></a></p>

<p>Th&acirc;n h&igrave;nh uyển chuyển với c&aacute;c đường cong mềm mại đem lại cho bạn khả năng cầm nắm chắc chắn v&agrave; v&ocirc; c&ugrave;ng thoải m&aacute;i.</p>

<p><a href="https://www.thegioididong.com/images/42/190323/iphone-xs-5-1.jpg" onclick="return false;"><img alt="Thiết kế điện thoại iPhone Xs chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190323/iphone-xs-5-1.jpg" /></a></p>

<p>Đặc biệt,&nbsp;si&ecirc;u phẩm mới n&agrave;y được tăng cường th&ecirc;m khả năng&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank">chống nước</a>&nbsp;v&agrave; bụi bẩn với chuẩn IP68 m&agrave; hầu hết c&aacute;c flagship hiện nay được trang bị.</p>
', 11000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (8, N'iPhone 12 Pro Max', N'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 12 mạnh mẽ nhất của mình .', N'<h2><strong>Điện thoại iPhone 12 Pro Max: N&acirc;ng tầm đẳng cấp sử dụng</strong></h2>

<p>Cứ mỗi năm, đến dạo cuối th&aacute;ng 8 v&agrave; gần đầu th&aacute;ng 9 th&igrave; mọi th&ocirc;ng tin s&ocirc;i sục mới về chiếc iPhone mới lại xuất hiện. Apple năm nay lại ra th&ecirc;m một chiếc iPhone mới với t&ecirc;n gọi mới l&agrave;&nbsp;<strong>iPhone 12 Pro Max</strong>, đ&acirc;y l&agrave; một d&ograve;ng điện thoại mới v&agrave; mạnh mẽ nhất của nh&agrave; Apple năm nay. Mời bạn tham khảo th&ecirc;m một số m&ocirc; tả sản phẩm b&ecirc;n dưới để bạn c&oacute; thể ra quyết định mua sắm.</p>

<h3><strong>M&agrave;n h&igrave;nh 6.7 inches&nbsp;Super Retina XDR</strong></h3>

<p>Năm nay, c&ocirc;ng nghệ m&agrave;n h&igrave;nh tr&ecirc;n 12 Pro Max cũng được đổi mới v&agrave; trang bị tốt hơn c&ugrave;ng k&iacute;ch thước l&ecirc;n đến 6.7 inch, lớn hơn nhiều so với&nbsp;<a href="https://cellphones.com.vn/iphone-12-mini.html">điện thoại iPhone 12 Mini</a>. Với c&ocirc;ng nghệ m&agrave;n h&igrave;nh OLED cho khả năng hiển thị h&igrave;nh ảnh l&ecirc;n đến 2778 x 1284&nbsp;pixels. B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n cho độ s&aacute;ng tối đa cao nhất l&ecirc;n đến 800 nits, lu&ocirc;n đảm bảo cho bạn một độ s&aacute;ng cao v&agrave; dễ nh&igrave;n nhất ngo&agrave;i nắng.</p>

<p><img alt="Màn hình 6.7 inches Super Retina XDR" src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-1.jpg" /></p>

<p>Một điểm đổi mới nữa tr&ecirc;n m&agrave;n h&igrave;nh của chiếc&nbsp;<a href="https://cellphones.com.vn/iphone-12.html">điện thoại Apple iPhone 12</a>&nbsp;năm nay l&agrave; việc ch&uacute;ng được thiết kế với khung viền vu&ocirc;ng vức, viền th&eacute;p kh&ocirc;ng gỉ mang đến vẻ đẹp sang trọng cho điện thoại. M&aacute;y cũng được trang bị nhiều phi&ecirc;n bản m&agrave;u sắc đặc biệt cho người d&ugrave;ng lựa chọn.</p>

<h3><strong>RAM 6GB đa nhiệm thoải m&aacute;i, bộ nhớ trong dung lượng lớn</strong></h3>

<p>Về trang bị phần cứng b&ecirc;n trong th&igrave; iPhone 12 Pro Max c&oacute; một thanh RAM l&ecirc;n đến 6GB. Điều n&agrave;y cho thấy rằng Apple ng&agrave;y đang lắng nghe người d&ugrave;ng nhiều hơn khi trang bị một dung lượng RAM lớn hơn để việc đa nhiệm ng&agrave;y c&agrave;ng được cải thiện hơn. Việc thanh ram lớn gi&uacute;p cho bạn trải nghiệm c&aacute;c tựa game v&agrave; đa nhiệm mượt m&agrave; hơn.</p>

<p><img alt="RAM 6GB đa nhiệm thoải mái, bộ nhớ trong dung lượng lớn" src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-2.jpg" /></p>

<p>Năm nay, 12 Pro Max cũng sẽ c&oacute; ba phi&ecirc;n bản bộ nhớ trong kh&aacute;c nhau, với bộ nhớ trong nhỏ nhất bắt đầu từ 128GB, 256GB v&agrave; cao nhất sẽ l&agrave; 512GB. Một chiếc điện thoại m&agrave; c&oacute; một bộ nhớ trong lớn ngang ngửa một chiếc laptop l&agrave; điều m&agrave; Apple muốn mang lại cho người d&ugrave;ng để c&oacute; thể san sẻ bớt bộ nhớ cho c&aacute;c thiết bị kh&aacute;c.</p>

<h3><strong>Con chip Apple A14 SoC 5nm c&ugrave;ng khả năng kết nối 5G hiện đại</strong></h3>

<p>iPhone 12 Pro Max kh&ocirc;ng những chỉ c&oacute; c&aacute;c cải tiến tr&ecirc;n, m&agrave; ch&uacute;ng c&ograve;n c&oacute; một thứ cải tiến được coi l&agrave; nguồn l&otilde;i v&agrave; l&agrave; tr&aacute;i tim để vận h&agrave;nh chiếc điện thoại si&ecirc;u phẩm 2020, đ&oacute; l&agrave; con chip Apple A14 SoC 5nm. Trang bị n&agrave;y gi&uacute;p cho điện thoại c&oacute; một sức mạnh đ&aacute;ng gờm hơn c&aacute;c đối thủ hơn về hiệu năng, hiệu suất sử dụng pin.</p>

<p><img alt="Con chip Apple A14 SoC 5nm cùng khả năng kết nối 5G hiện đại" src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-3.JPG" /></p>

<p>Kết nối 5G hiện đại được trang bị tr&ecirc;n điện thoại iPhone 12 Pro Max l&agrave; một bước tiến mới trong kết nối v&agrave; ph&aacute;t triển mạng lưới truyền tải th&ocirc;ng tin. Ch&uacute;ng gi&uacute;p cho bạn c&oacute; thể cải thiện hiệu suất sử dụng mạng v&agrave; ch&uacute;ng c&ograve;n gi&uacute;p c&aacute;c đường truyền t&iacute;n hiệu lu&ocirc;n được đảm bảo kh&ocirc;ng rớt kết nối v&agrave; tăng chất lượng hiển thị h&igrave;nh ảnh tr&ecirc;n mạng.</p>

<h3><strong>Cụm 3 camera sau với độ ph&acirc;n giải 12MP&nbsp;&nbsp;</strong></h3>

<p>C&oacute; thể n&oacute;i camera cũng l&agrave; một bước tiến mới tr&ecirc;n<strong>&nbsp;iPhone 12 Pro Max</strong>&nbsp;khi ch&uacute;ng c&oacute; một bộ 3 camera với chung một độ ph&acirc;n giải l&agrave; 12MP. Tuy nhi&ecirc;n ch&uacute;ng c&oacute; khẩu độ lớn v&agrave; mật độ điểm ảnh tr&ecirc;n một panel cũng lớn hơn, do đ&oacute; ch&uacute;ng cho h&igrave;nh ảnh chi tiết hơn, bắt s&aacute;ng tốt hơn. Ngo&agrave;i ra, kết hợp chống rung quang học OIS th&igrave; m&aacute;y c&ograve;n c&oacute; thể quay phim 4K tốt.</p>

<p><img alt="Cụm 3 camera sau với độ phân giải 12MP  " src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-4.jpg" /></p>

<p>Camera tr&ecirc;n iPhone 12 Pro Max c&oacute; chức năng qu&eacute;t chiều s&acirc;u v&agrave; đảm bảo h&igrave;nh ảnh c&oacute; một độ s&acirc;u nhất định. C&ugrave;ng với đ&oacute; chức năng ch&iacute;nh của chiếc ống k&iacute;nh n&agrave;y l&agrave; khả năng thể hiện h&igrave;nh ảnh 3D khi qu&eacute;t ch&uacute;ng v&agrave;o một căn ph&ograve;ng nhất định. Gi&uacute;p phục vụ cho c&ocirc;ng việc x&acirc;y dựng cũng như định dạng h&igrave;nh ảnh trước khi x&acirc;y.</p>

<h3><strong>Camera trước 12MP hỗ trợ mở FaceiD c&ugrave;ng c&ocirc;ng nghệ chống nước IP68</strong></h3>

<p>Camera trước 12MP cũng c&oacute; c&ugrave;ng khẩu độ v&agrave; k&iacute;ch thước điểm ảnh trong panel giống như camera. Điều n&agrave;y gi&uacute;p cho việc sử dụng ch&uacute;ng cho chụp ảnh selfie tốt hơn v&agrave; ch&acirc;n thực hơn. C&ugrave;ng với đ&oacute; một t&iacute;nh năng m&agrave; Apple lu&ocirc;n giữ ch&uacute;ng từ đời iPhone X đến giờ l&agrave; khả năng qu&eacute;t khu&ocirc;n mặt 3D FaceiD.</p>

<p><img alt="Camera trước 12MP hỗ trợ mở FaceiD cùng công nghệ chống nước IP68" src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-6.jpg" /></p>

<p>C&ocirc;ng nghệ chống nước l&agrave; kh&ocirc;ng thể thiếu tr&ecirc;n c&aacute;c d&ograve;ng điện thoại cao cấp v&agrave; đặc biệt l&agrave; đối với iPhone 12 Pro Max. Ch&uacute;ng được trang bị c&ocirc;ng nghệ chống nước v&agrave; chống bụi tốt nhất hiện nay tr&ecirc;n c&aacute;c d&ograve;ng smartphone đ&oacute; l&agrave; ti&ecirc;u chuẩn IP68. Gi&uacute;p bạn lu&ocirc;n c&oacute; thể y&ecirc;n t&acirc;m hơn trong việc sử dụng quay phim dưới nước hay ở m&ocirc;i trường khắc nghiệt.</p>

<h3><strong>Vi&ecirc;n pin liền cho thời lượng sử dụng l&ecirc;n đến cả ng&agrave;y c&ugrave;ng c&ocirc;ng nghệ sạc nhanh&nbsp;</strong></h3>

<p>Một vi&ecirc;n pin liền với dung lượng lớn tr&ecirc;n iPhone 12 Pro Max gi&uacute;p cho chiếc điện thoại bạn c&oacute; thể hoạt động được một c&aacute;ch ổn thoả hơn v&agrave; thời gian sử dụng được l&acirc;u d&agrave;i hơn. Cụ thể, m&aacute;y cho thời gian nghe nhạc l&ecirc;n tới 80 giờ hoặc 12 giờ xem video trực truyến.</p>

<p><img alt="Viên pin liền cho thời lượng sử dụng lên đến cả ngày cùng công nghệ sạc nhanh " src="https://cdn.cellphones.com.vn/media/wysiwyg/mobile/apple/iphone-12-pro-max-5.jpg" /></p>

<p>C&ocirc;ng nghệ sạc l&agrave; tr&ecirc;n 12 Pro Max l&agrave; c&ocirc;ng nghệ sạc nhanh kh&ocirc;ng d&acirc;y l&ecirc;n đến 15W. Điều n&agrave;y c&oacute; thể gi&uacute;p bạn hạn chế được c&aacute;c việc phải ngồi đợi chiếc&nbsp;điện thoại của m&igrave;nh sạc xong khi m&aacute;y c&oacute; thể bổ sung 50% dung lượng chỉ trong v&ograve;ng 30 ph&uacute;t.</p>

<p>&nbsp;</p>
', 25000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (9, N'iPhone XR', N'Là chiếc điện thoại iPhone có mức giá dễ chịu, phù hợp với nhiều khách hàng hơn, iPhone Xr vẫn được ưu ái trang bị chip Apple A12 mạnh mẽ, màn hình tai thỏ cùng khả năng chống nước chống bụi.', N'<h3>M&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền c&ocirc;ng nghệ LCD</h3>

<p>Kh&aacute;c với iPhone Xs hay Xs Max, chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;n&agrave;y sở hữu m&agrave;n h&igrave;nh LCD.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-7.jpg" onclick="return false;"><img alt="Màn hình điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-7.jpg" /></a></p>

<p>B&ugrave; lại với c&ocirc;ng nghệ&nbsp;<a href="https://www.thegioididong.com/hoi-dap/tim-hieu-cong-nghe-man-hinh-true-tone-992705" target="_blank">True Tone</a>&nbsp;c&ugrave;ng m&agrave;n h&igrave;nh tr&agrave;n viền rộng tới 6.1 inch, mọi trải nghiệm tr&ecirc;n m&aacute;y vẫn đem lại sự th&iacute;ch th&uacute; v&agrave; ho&agrave;n hảo, như d&ograve;ng cao cấp kh&aacute;c của Apple.</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra, Apple cũng giới thiệu rằng, iPhone Xr được trang bị một loại c&ocirc;ng nghệ mới c&oacute; t&ecirc;n&nbsp;Liquid Retina. M&aacute;y c&oacute; độ ph&acirc;n giải 1792 x 828 Pixels c&ugrave;ng 1.4 triệu điểm ảnh.</p>

<h3>Mạnh mẽ bậc nhất với&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-chip-apple-a12-bionic-ben-trong-iphone-xs-xs-max-1116982" target="_blank">chip Apple A12</a></h3>

<p>Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới v&agrave; Apple A12 Bionic l&agrave; con chip đầu ti&ecirc;n sản xuất với tiến tr&igrave;nh 7nm được t&iacute;ch hợp tr&ecirc;n iPhone Xr.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-11.jpg" onclick="return false;"><img alt="Điểm hiệu năng Antutu điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-11.jpg" /></a></p>

<p>Apple A12 được t&iacute;ch hợp tr&iacute; tuệ th&ocirc;ng minh nh&acirc;n tạo, mọi phản hồi tr&ecirc;n m&aacute;y đều nhanh ch&oacute;ng v&agrave; gần như l&agrave; ngay lập tức, kể cả khi bạn chơi game hay thao t&aacute;c b&igrave;nh thường.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-3.jpg" onclick="return false;"><img alt="iOS trên điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-3.jpg" /></a></p>

<p>Hơn nữa với AI tr&ecirc;n Apple A12, iPhone Xr c&oacute; thể ghi nhớ được thao t&aacute;c hằng ng&agrave;y của bạn để ho&agrave;n thiện v&agrave; hỗ trợ người d&ugrave;ng tốt hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/190325/iphone-xr-tgdd-8.jpg" onclick="return false;"><img alt="Trải nghiệm điện thoại iPhone Xr chính hãng" src="https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-tgdd-8.jpg" /></a></p>

<p>Thực tế khi chơi game tr&ecirc;n iPhone Xr, m&ocirc;i trường v&agrave; hiệu ứng trong game rất thật. Hơn nữa tr&ecirc;n chiếc iPhone n&agrave;y c&ograve;n hỗ trợ&nbsp;thực tế tăng cường: Chơi game thực tế ảo với nhiều người c&ugrave;ng chơi, trải nghiệm c&ugrave;ng 1 m&ocirc;i trường với nhau.</p>
', 1700, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (10, N'Microsoft Surface Phone', N'Đang cập nhật', N'<ul>
	<li>Hệ điều h&agrave;nh:&nbsp;Đang cập nhật</li>
	<li>M&agrave;n h&igrave;nh:&nbsp;Đang cập nhật</li>
	<li>Bộ vi xử l&yacute;:&nbsp;Snapdragon 830</li>
	<li>RAM: Đang cập nhật</li>
	<li>Camera ch&iacute;nh: Đang cập nhật</li>
	<li>Camera phụ: Đang cập nhật</li>
	<li>Pin:&nbsp;Đang cập nhật</li>
</ul>
', 1, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (11, N'Surface Phone 2019', N'SMARTPHONE MICROSOFT SURFACE PHONE 2019', N'<p><img src="https://file.hstatic.net/1000238589/file/https_blogs_images_forbes_com_jaymcgregor_files_2019_01_surface_phone_bea21770f6de4c8d8abc1e84b8c5f730_large.jpg" /></p>

<p><strong>Smartphone MICROSOFT SURFACE PHONE 2019 c&oacute; nhiều camera, n&acirc;ng cao chất lượng h&igrave;nh ảnh cũng như độ ph&acirc;n giải.</strong></p>

<p>Năm 2019, dự kiến của c&aacute;c h&atilde;ng sản xuất smartphone về số lượng camera được trang bị tr&ecirc;n sản phẩm của m&igrave;nh. Một trong những thương hiệu đi đầu l&agrave; Nokia, với sản phẩm smartphone t&iacute;ch hợp c&oacute; đến 6 camera. B&ecirc;n cạnh đ&oacute;, SAMSUNG, HUAWEI, OPPO, XIAOMI, LG, SONY,&hellip; cũng kh&ocirc;ng ngừng cạnh tranh về lĩnh vực n&agrave;y.</p>

<p><strong>Thị trường SAMSUNG vẫn giữ ri&ecirc;ng cho m&igrave;nh thương hiệu về đẳng cấp v&agrave; sức thu h&uacute;t.</strong></p>

<p><strong>M&agrave;n h&igrave;nh MICROSOFT SURFACE PHONE 2019</strong></p>

<ol>
	<li>ố v&agrave;ng &nbsp;&nbsp;&nbsp;</li>
	<li>Ố đen &nbsp;&nbsp;</li>
	<li>Sọc ngang &nbsp;&nbsp;</li>
	<li>Nhiễu &nbsp;&nbsp;</li>
	<li>Cảm ứng, giật, lag &nbsp;&nbsp;</li>
	<li>Trắng x&oacute;a &nbsp;&nbsp;</li>
	<li>Kh&ocirc;ng tự điều chỉnh độ s&aacute;ng &nbsp;&nbsp;</li>
	<li>B&oacute;ng mờ &nbsp;&nbsp;</li>
	<li>Nh&ograve;e m&agrave;u &nbsp;&nbsp;</li>
	<li>Nhiễm từ &nbsp;&nbsp;</li>
	<li>Nhấp nh&aacute;y, h&igrave;nh ảnh kh&ocirc;ng ổn định &nbsp;&nbsp;</li>
	<li>Bể m&agrave;n h&igrave;nh &nbsp;&nbsp;</li>
	<li>Liệt cảm ứng &nbsp;&nbsp;</li>
</ol>

<p><strong>Nguồn MICROSOFT SURFACE PHONE 2019</strong></p>

<ol>
	<li>Điện thoại bị treo logo</li>
	<li>Tự động tắt nguồn hoặc khởi động lại m&aacute;y &nbsp;&nbsp;</li>
	<li>Hư n&uacute;t nguồn &nbsp;&nbsp;</li>
</ol>

<p><strong>Pin MICROSOFT SURFACE PHONE 2019</strong></p>

<ol>
	<li>Sạc kh&ocirc;ng v&agrave;o pin &nbsp;&nbsp;</li>
	<li>Nhanh hết pin &nbsp;&nbsp;</li>
	<li>Pin ảo &nbsp;&nbsp;</li>
	<li>Pin bị ph&ugrave; &nbsp;&nbsp;</li>
</ol>

<p>Ch&acirc;n sạc</p>

<ol>
	<li>Sạc kh&ocirc;ng v&agrave;o pin &nbsp;&nbsp;</li>
</ol>

<p>&Acirc;m thanh</p>

<ol>
	<li>Loa r&egrave; &nbsp;&nbsp;</li>
	<li>Mất tiếng &nbsp;&nbsp;</li>
	<li>Hư loa trong, loa ngo&agrave;i &nbsp;&nbsp;</li>
	<li>Mất rung chu&ocirc;ng &nbsp;&nbsp;</li>
	<li>Hư n&uacute;t &acirc;m thanh &nbsp;&nbsp;</li>
	<li>Hư jack cắm tai nghe &nbsp;&nbsp;</li>
</ol>

<p><strong>Lỗi mic MICROSOFT SURFACE PHONE 2019&nbsp;</strong></p>

<ol>
	<li>Nghe nhỏ, nghe r&egrave;, nghe c&oacute; tiếng vọng, h&uacute;. &nbsp;&nbsp;</li>
	<li>T&iacute;nh năng ghi &acirc;m, &acirc;m thanh ph&aacute;t ra rất kh&oacute; nghe hoặc kh&ocirc;ng c&oacute; tiếng. &nbsp;&nbsp;</li>
	<li>Khi sử dụng loa đ&agrave;m thoại, bạn nghe gọi tốt nhưng khi bật loa ngo&agrave;i để đ&agrave;m thoại rảnh tay, đầu d&acirc;y b&ecirc;n kia kh&ocirc;ng thể nghe bạn n&oacute;i hoặc kh&oacute; nghe. &nbsp;&nbsp;</li>
</ol>

<p><strong>Camera sau/ trước MICROSOFT SURFACE PHONE 2019</strong></p>

<ol>
	<li>&Aacute;nh t&iacute;m &nbsp;&nbsp;</li>
	<li>Kh&ocirc;ng hoạt động &nbsp;&nbsp;</li>
	<li>Bị nhiễu, mờ kh&ocirc;ng lấy được n&eacute;t &nbsp;&nbsp;</li>
	<li>Nứt/ bể k&iacute;nh &nbsp;&nbsp;</li>
</ol>

<p><strong>Wifi/ 3G/4G/5G</strong></p>

<ol>
	<li>Kh&ocirc;ng bắt được s&oacute;ng wifi/3g/4G &nbsp;&nbsp;</li>
	<li>Bắt s&oacute;ng wifi / 3g/4G / yếu &nbsp;&nbsp;</li>
	<li>kh&ocirc;ng thấy tin hiệu Wi-Fi/ g &nbsp;&nbsp;</li>
	<li>Wi-Fi/3g kết nối chậm &nbsp;&nbsp;</li>
	<li>S&oacute;ng Wi-Fi yếu</li>
	<li>Kh&ocirc;ng kết nối wifi &nbsp;&nbsp;</li>
</ol>
', 3000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (12, N'OPPO A93', N'Tháng 9/2020, OPPO tiếp tục cho ra mắt dòng sản phẩm thuộc phân khúc điện thoại tầm trung được xem là tiếp nối từ OPPO A92 .', N'<h3>Hiệu năng vượt trội c&ugrave;ng với Helio P95</h3>

<p>OPPO A93 được trang bị chipset MediaTek Helio P95 tốc độ CPU đạt 2.2 GHz với sức mạnh như thế n&agrave;y th&igrave; A93 sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi c&oacute; thể hoạt động tốt với nhiều ứng dụng nặng hay thao t&aacute;c cuộn trang đều diễn ra trơn tru cảm gi&aacute;c như kh&ocirc;ng c&oacute; độ trễ.</p>

<p><a href="https://www.thegioididong.com/images/42/229056/oppo-a93-270620-100612.jpg" onclick="return false;"><img alt="Vi xử lý Helio P95 | OPPO A93" src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-270620-100612.jpg" /></a></p>

<p>Ấn tượng hơn khi bộ nhớ RAM đến 8 GB gi&uacute;p m&aacute;y c&oacute; thể thao t&aacute;c tr&ecirc;n nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng c&oacute; hiện tượng&nbsp;giật lag n&acirc;ng cao trải nghiệm người d&ugrave;ng.</p>

<p>Đo tr&ecirc;n Antutu th&igrave; OPPO A93&nbsp;đạt 201.029 điểm, con số kh&aacute; cao&nbsp;đảm bảo mọi hoạt&nbsp;động&nbsp;đều mượt m&agrave; v&agrave; gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;đồ hoạ nặng như Li&ecirc;n Qu&acirc;n cũng kh&ocirc;ng th&agrave;nh vấn&nbsp;đề.</p>

<p><a href="https://www.thegioididong.com/images/42/229056/oppo-a93-012520-042549.jpg" onclick="return false;"><img alt="Điểm số đo trên Antutu | OPPO A93" src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-012520-042549.jpg" /></a></p>

<p>V&agrave; c&oacute; bộ nhớ trong 128 GB thoải m&aacute;i lưu trữ mọi dữ liệu, nếu chưa đủ th&igrave; m&aacute;y vẫn hỗ trợ thẻ nhớ ngo&agrave;i MicroSD tối đa 256 GB cho bạn th&ecirc;m nhiều kh&ocirc;ng gian lưu trữ hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/229056/oppo-a93-270620-100617.jpg" onclick="return false;"><img alt="Hỗ trợ thẻ nhớ ngoài tối đa 256 GB | OPPO A93" src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-270620-100617.jpg" /></a></p>

<p>Mặc kh&aacute;c, OPPO A93 được c&agrave;i đặt sẵn hệ điều h&agrave;nh Android 10 tr&ecirc;n giao diện Color OS 7.2 với những t&iacute;nh năng th&ocirc;ng minh chắc chắn sẽ rất th&uacute; vị.</p>

<p>B&ecirc;n cạnh đ&oacute;, m&aacute;y t&iacute;ch hợp HyperEngine c&ocirc;ng nghệ d&agrave;nh cho tr&ograve; chơi gi&uacute;p bạn n&acirc;ng cao trải nghiệm chơi th&ocirc;ng qua chất lượng h&igrave;nh ảnh bắt mắt, di chuyển mượt m&agrave; nhất trong bất kỳ thế giới trực tuyến n&agrave;o như Li&ecirc;n Qu&acirc;n Mobile.</p>

<h3>Cụm camera selfie t&iacute;ch hợp AI</h3>

<p>OPPO A93 c&oacute; 4 camera sau được xếp đối xứng nhau trong module h&igrave;nh vu&ocirc;ng v&agrave; thanh đ&egrave;n flash LED. Camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 48 MP, camera g&oacute;c si&ecirc;u rộng 8 MP, mono đơn sắc&nbsp;v&agrave; mono ch&acirc;n dung lần lượt đều bằng 2 MP.</p>

<p><a href="https://www.thegioididong.com/images/42/229056/oppo-a93-270620-100622.jpg" onclick="return false;"><img alt="Cụm 4 camera với cảm biến chính 48 MP | OPPO A93" src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-270620-100622.jpg" /></a></p>

<p>Với hệ thống camera n&agrave;y m&aacute;y c&ograve;n trang bị c&ocirc;ng nghệ Super Night sẽ gi&uacute;p ảnh của bạn sắc n&eacute;t hơn trong điều kiện thiếu s&aacute;ng, c&ugrave;ng khả năng xo&aacute; ph&ocirc;ng tạo hiệu ứng ph&ocirc;ng m&agrave;u kh&aacute;c biệt cho bức ảnh trở n&ecirc;n độc lạ v&agrave; đẹp xuất sắc như trong studio.</p>

<p>&nbsp;</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-012520-042556.jpg" />Ảnh chụp tr&ecirc;n OPPO A93</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/229056/oppo-a93-012620-042603.jpg" />Ảnh chụp tr&ecirc;n OPPO A93</p>

<p>&nbsp;</p>

<p>Khả năng quay video 4K với tốc độ khung h&igrave;nh l&agrave; 30 fps cho bạn ghi lại những khoảnh khắc thường ng&agrave;y trong cuộc sống với chất lượng mượt m&agrave; v&agrave; xem rất đ&atilde; mắt.</p>

<p>Camera selfie k&eacute;p với cảm biến ch&iacute;nh l&agrave; 16 MP v&agrave; cảm biến đo độ s&acirc;u 2 MP. Việc kết hợp c&ocirc;ng nghệ l&agrave;m đẹp AI đem đến những bức ảnh selfie đẹp mắt trong thật tự nhi&ecirc;n v&agrave; khả năng xo&aacute; ph&ocirc;ng l&agrave;m nổi bật chủ thể.</p>
', 1200, 3, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (13, N'Realme 6i', N'Tiếp nối những thành công của Realme 5i, Realme tiếp tục cho ra đời người em kế nhiệm mang tên Realme 6i với hàng loạt những cải tiến', N'<h3>Thiết kế đẹp mắt, m&agrave;n h&igrave;nh lớn trải nghiệm thả ga</h3>

<p>Realme 6i c&oacute; thiết kế m&agrave;n h&igrave;nh giọt nước 6.5 inch, tr&agrave;n viền hợp xu hướng, c&ocirc;ng nghệ IPS LCD, độ ph&acirc;n giải HD+ v&agrave; tỷ lệ khung h&igrave;nh 20:9 cho trải nghiệm tương đối thoải m&aacute;i, mọi th&ocirc;ng tin v&agrave; h&igrave;nh ảnh đều được hiển thị r&otilde; r&agrave;ng, m&agrave;u sắc ch&iacute;nh x&aacute;c.</p>

<p><a href="https://www.thegioididong.com/images/42/218360/realme-6i2-1.jpg" onclick="return false;"><img alt="Điện thoại Realme 6i | Thiết kế đẹp mắt" src="https://cdn.tgdd.vn/Products/Images/42/218360/realme-6i2-1.jpg" /></a></p>

<p>Nhờ&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-tran-vien" target="_blank">m&agrave;n h&igrave;nh giọt nước</a>&nbsp;v&agrave; c&aacute;c viền ở cạnh mỏng, m&agrave;n h&igrave;nh của Realme 6i cho tỉ lệ hiển thị so với th&acirc;n m&aacute;y ở mức 89.8%, cho bạn tận dụng tối đa diện t&iacute;ch mặt trước.</p>

<p>Bảo vệ m&agrave;n h&igrave;nh l&agrave; lớp k&iacute;nh cường lực c&ugrave;ng với c&aacute;c cạnh được l&agrave;m cong nhẹ 2.5D gi&uacute;p tạo cảm gi&aacute;c cầm nắm dễ chịu, &ecirc;m tay.</p>

<p><a href="https://www.thegioididong.com/images/42/218360/realme-6i7-1.jpg" onclick="return false;"><img alt="Điện thoại Realme 6i | Thiết kế cạnh viền" src="https://cdn.tgdd.vn/Products/Images/42/218360/realme-6i7-1.jpg" /></a></p>

<p>Điểm đặc biệt ấn tượng tr&ecirc;n m&aacute;y ch&iacute;nh l&agrave; phần mặt lưng được thiết kế c&aacute;c dải &aacute;nh s&aacute;ng song song nhau kết hợp với hiệu ứng chuyển m&agrave;u nh&igrave;n rất độc đ&aacute;o, trẻ trung v&agrave; bắt mắt. Đ&acirc;y l&agrave; một ưu điểm của Realme v&igrave; h&atilde;ng rất chăm ch&uacute;t ngoại h&igrave;nh cho c&aacute;c model mới.</p>

<p><a href="https://www.thegioididong.com/images/42/218360/realme-6i3-1.jpg" onclick="return false;"><img alt="Điện thoại Realme 6i với mặt lưng thiết kế với hiệu ứng vân song song đẹp mắt" src="https://cdn.tgdd.vn/Products/Images/42/218360/realme-6i3-1.jpg" /></a></p>

<p>C&aacute;c chi tiết c&ograve;n lại bao gồm cụm 4 camera đặt dọc nổi bật, t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-van-tay" target="_blank">bảo mật v&acirc;n tay</a>&nbsp;c&oacute; cảm biến đặt&nbsp;ở ph&iacute;a tr&ecirc;n v&agrave; logo Realme đặt dọc ở cạnh dưới.</p>

<p><a href="https://www.thegioididong.com/images/42/218360/realme-6i11-1.jpg" onclick="return false;"><img alt="Điện thoại Realme 6i | Cảm biến vân tay ở mặt lưng" src="https://cdn.tgdd.vn/Products/Images/42/218360/realme-6i11-1.jpg" /></a></p>

<h3>Cấu h&igrave;nh mạnh mẽ với chip Helio G80</h3>

<p>M&aacute;y c&oacute; phi&ecirc;n bản cấu h&igrave;nh RAM 4 GB, ROM 128 GB kết hợp với con chip Helio G80 được tối ưu, gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;mượt m&agrave;&nbsp;mang lại hiệu năng ổn định. Đ&acirc;y l&agrave; một trong những&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">smartphone</a>&nbsp;đầu ti&ecirc;n tr&ecirc;n thế giới được trang bị d&ograve;ng chip mới ra mắt n&agrave;y của MediaTek.</p>

<p><a href="https://www.thegioididong.com/images/42/218360/realme-6i--2.jpg" onclick="return false;"><img alt="Điểm hiệu năng của Realme 6i đo bằng Geekbench 5" src="https://cdn.tgdd.vn/Products/Images/42/218360/realme-6i--2.jpg" /></a></p>
', 5500, 3, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (14, N'Xiaomi POCO X3', N'Tiếp nối sự thành công về thế mạnh là điện thoại tầm trung với thiết kế hiện đại sang trọng, Xiaomi đã cho ra mắt Xiaomi POCO X3 NFC', N'<h3>Hệ thống camera đột ph&aacute;, ấn tượng</h3>

<p>Cụm 4 camera của POCO X3 được đặt ph&iacute;a tr&ecirc;n ở giữa mặt lưng với cảm biến ch&iacute;nh 64 MP hỗ trợ khả năng chụp đ&ecirc;m (<a href="https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873" target="_blank">Night Mode</a>) ấn tượng gi&uacute;p lấy n&eacute;t nhanh, giảm nhiễu v&agrave; thu s&aacute;ng tốt hơn cho bạn những tấm ảnh trong m&agrave;n đ&ecirc;m r&otilde; n&eacute;t v&agrave; chi tiết.</p>

<p><a href="https://www.thegioididong.com/images/42/227900/xiaomi-poco-x3-220820-100848.jpg" onclick="return false;"><img alt="Cụm camera chất lượng đa tính năng | POCO X3 NFC" src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-220820-100848.jpg" /></a></p>

<p>Ba camera c&ograve;n lại bao gồm camera g&oacute;c si&ecirc;u rộng 13 MP,&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank">camera x&oacute;a ph&ocirc;ng</a>&nbsp;2 MP v&agrave; cuối c&ugrave;ng l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-macro" target="_blank">camera macro</a>&nbsp;2 MP hỗ trợ chụp cận cảnh.</p>

<p>&nbsp;</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-131720-081737.jpg" />Camera zoom 0.6X tr&ecirc;n Xiaomi POCO X3 NFC</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-131720-081719.jpg" />Camera zoom 1X tr&ecirc;n Xiaomi POCO X3 NFC</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-131720-081725.jpg" />Camera zoom 2X tr&ecirc;n Xiaomi POCO X3 NFC</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-131720-081731.jpg" />Camera zoom 4X tr&ecirc;n Xiaomi POCO X3 NFC</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-131720-081744.jpg" />Camera zoom 10X tr&ecirc;n Xiaomi POCO X3 NFC</p>

<p>&nbsp;</p>

<p>Thiết bị cũng hỗ trợ c&aacute;c t&iacute;nh năng chụp ảnh th&ocirc;ng minh, tối ưu m&agrave;u sắc, quay phim 4K gi&uacute;p người d&ugrave;ng c&oacute; những tấm ảnh hay video chất lượng cao nhất trong mỗi khung h&igrave;nh.</p>

<p><a href="https://www.thegioididong.com/images/42/227900/xiaomi-poco-x3-203020-063050.jpg" onclick="return false;"><img alt="Ảnh chụp trên camera trước | POCO X3 NFC" src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-203020-063050.jpg" /></a></p>

<p>Chế độ chụp ch&acirc;n dung tr&ecirc;n POCO X3 c&oacute; những n&eacute;t cải tiến r&otilde; rệt khi c&oacute; thể x&oacute;a ph&ocirc;ng sắc n&eacute;t d&ugrave; l&agrave; khoảng c&aacute;ch gần hay xa. Đồng thời tr&iacute; tuệ nh&acirc;n tạo AI sẽ can thiệp để khu&ocirc;n mặt của bạn r&otilde; n&eacute;t d&ugrave; chụp ở những m&ocirc;i trường phức tạp.</p>

<p>Ở mặt trước l&agrave; camera selfie 20 MP được t&iacute;ch hợp c&aacute;c thuật to&aacute;n th&ocirc;ng minh, l&agrave;m đẹp gi&uacute;p bạn tự tin tỏa s&aacute;ng với bạn b&egrave;.</p>

<p><a href="https://www.thegioididong.com/images/42/227900/xiaomi-poco-x3-220820-100857.jpg" onclick="return false;"><img alt="Camera selfie 20 MP | POCO X3 NFC" src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-220820-100857.jpg" /></a></p>

<h3>M&agrave;n h&igrave;nh giải tr&iacute; si&ecirc;u mượt 120 Hz</h3>

<p>Xiaomi POCO X3 được trang bị&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-tran-vien" target="_blank">m&agrave;n h&igrave;nh tr&agrave;n viền</a>&nbsp;IPS LCD 6.67 inch với độ ph&acirc;n giải Full HD+ cho chất lượng hiển thị sắc n&eacute;t, m&agrave;u sắc ch&acirc;n thực. B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh hỗ trợ tốc độ l&agrave;m mới 120 Hz gi&uacute;p cho mọi hoạt động hay chơi game mượt m&agrave; v&agrave; trơn tru hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/227900/xiaomi-poco-x3-203120-063128.jpg" onclick="return false;"><img alt="Giải trí trên màn hình siêu mượt 120Hz | POCO X3 NFC" src="https://cdn.tgdd.vn/Products/Images/42/227900/xiaomi-poco-x3-203120-063128.jpg" /></a></p>

<p>M&aacute;y được thiết kế nguy&ecirc;n khối v&agrave; bọc k&iacute;nh cường lực Corning Gorilla Glass 5 ở mặt trước v&agrave; lớp nhựa giả k&iacute;nh cao cấp mặt lưng g&oacute;p phần tăng độ cứng c&aacute;p lẫn n&eacute;t sang trọng cho m&aacute;y.</p>

<p>Giờ đ&acirc;y&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-van-tay" target="_blank">bảo mật v&acirc;n tay</a>&nbsp;được trang bị b&ecirc;n cạnh viền của m&aacute;y gi&uacute;p bạn dễ d&agrave;ng mở kh&oacute;a một c&aacute;ch nhanh ch&oacute;ng. Ngo&agrave;i ra bạn c&oacute; thể sử dụng t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-khuon-mat" target="_blank">bảo mật khu&ocirc;n mặt</a>&nbsp;trong l&uacute;c kh&ocirc;ng tay bạn kh&ocirc;ng thuận tiện cho việc mở kh&oacute;a.</p>
', 12000, 3, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (15, N'Vsmart Aris Pro', N'Thương hiệu smartphone Việt - Vsmart đã chính thức trình làng Vsmart Aris Pro.', N'<h3>Camera selfie ẩn, đỉnh cao của thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền</h3>

<p>Aris Pro l&agrave; một trong những d&ograve;ng điện thoại đầu ti&ecirc;n được trang bị camera selfie với c&ocirc;ng nghệ ẩn sau m&agrave;n h&igrave;nh độc đ&aacute;o, tạo n&ecirc;n một m&agrave;n h&igrave;nh liền mạch, kh&ocirc;ng c&ograve;n khiếm khuyết &ldquo;đục lỗ&rdquo; hay &ldquo;giọt nước&rdquo;.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-282420-082418.jpg" onclick="return false;"><img alt="Màn hình vô khuyết chứa camera ẩn dưới màn hình - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-282420-082418.jpg" /></a></p>

<p>Với ưu điểm mang t&iacute;nh đột ph&aacute;, camera ẩn sẽ l&agrave; xu thế c&ocirc;ng nghệ kế tiếp tr&ecirc;n c&aacute;c d&ograve;ng smartphone trong những năm sắp tới. Vsmart cũng sẽ l&agrave; h&atilde;ng điện thoại Việt Nam đầu ti&ecirc;n ti&ecirc;n phong đưa c&ocirc;ng nghệ n&agrave;y l&ecirc;n smartphone của m&igrave;nh sớm nhất.</p>

<p>Camera ẩn sau m&agrave;n h&igrave;nh (Camera Under Display - CUD) xử l&yacute; h&igrave;nh ảnh bằng tr&iacute; tuệ nh&acirc;n tạo d&agrave;nh ri&ecirc;ng cho camera ẩn, gi&uacute;p ph&acirc;n t&iacute;ch nguồn s&aacute;ng tr&ecirc;n m&agrave;n h&igrave;nh loại bỏ hiện tượng ảnh mờ, thiếu, nhiễu, m&agrave;u sắc sai lệch đi qua lớp k&iacute;nh d&agrave;y, t&aacute;i tạo c&aacute;c chi tiết, m&agrave;u sắc để đưa lại chất lượng ảnh về đ&uacute;ng ban đầu.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-282520-082520.jpg" onclick="return false;"><img alt="Màn hình tràn viền sắc nét và chi tiết - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-282520-082520.jpg" /></a></p>

<p>Ở chế độ sử dụng th&ocirc;ng thường, m&agrave;n h&igrave;nh Aris Pro&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-tran-vien" target="_blank">tr&agrave;n viền</a>&nbsp;ho&agrave;n hảo kh&ocirc;ng t&igrave; vết. Khi bắt đầu sử dụng camera trước, phần m&agrave;n h&igrave;nh ph&iacute;a tr&ecirc;n tại nơi đặt cảm biến lớp k&iacute;nh sẽ mờ đi để &aacute;nh s&aacute;ng c&oacute; thể lọt v&agrave;o cảm biến.</p>

<p>Thuật to&aacute;n AI n&agrave;y sẽ được li&ecirc;n tục được h&atilde;ng cải tiến n&acirc;ng cấp nhằm c&oacute; thể nhận diện ch&iacute;nh x&aacute;c n&acirc;ng cao chất lượng h&igrave;nh ảnh trong nhiều điều kiện chụp phức tạp, người d&ugrave;ng sẽ nhận được c&aacute;c bản n&acirc;ng cấp trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-214220-034235.jpg" onclick="return false;"><img alt="Các thuật toán AI luôn được cải tiến và nâng cấp - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-214220-034235.jpg" /></a></p>

<h3>Hiệu năng mạnh mẽ với mức gi&aacute; tầm trung</h3>

<p>Aris Pro cũng l&agrave; chiếc điện thoại mạnh mẽ nhất của Vsmart ở thời điểm hiện tại (9/2020) khi trang bị vi xử l&yacute; Snapdragon 730 kết hợp c&ugrave;ng&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-8gb-tro-len" target="_blank">RAM 8 GB</a>&nbsp;mạnh mẽ cho hiệu năng tiệm cận với d&ograve;ng cao cấp, với sức mạnh như vậy gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;c&oacute; đồ họa phức tạp ho&agrave;n to&agrave;n kh&ocirc;ng thể l&agrave;m kh&oacute; được.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-214420-034458.jpg" onclick="return false;"><img alt="Hiệu năng mạnh mẽ, vượt trội - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-214420-034458.jpg" /></a></p>

<p>B&ecirc;n cạnh đ&oacute;, bộ nhớ 128 GB lu&ocirc;n đủ kh&ocirc;ng gian để lưu trữ được cả kho nhạc, phim chất lượng cao, cho bạn c&oacute; thể giải tr&iacute; bất cứ l&uacute;c n&agrave;o m&agrave; kh&ocirc;ng cần phải lo lắng về vấn đề lưu trữ.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-282820-082817.jpg" onclick="return false;"><img alt="Khe cắm sim trên điện thoại - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-282820-082817.jpg" /></a></p>

<p>T&iacute;ch hợp vi&ecirc;n pin 4000 mAh b&ecirc;n trong gi&uacute;p cho mẫu điện thoại mới của Vsmart c&oacute; thời gian sử dụng trong khoảng 1 ng&agrave;y. B&ecirc;n cạnh đ&oacute;, m&aacute;y cũng sẽ đi k&egrave;m 1 củ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank">sạc pin nhanh</a>&nbsp;18 W cho tốc độ sạc v&ocirc; c&ugrave;ng nhanh ch&oacute;ng.</p>

<p><a href="https://www.thegioididong.com/images/42/228531/vsmart-aris-pro-282720-082705.jpg" onclick="return false;"><img alt="Pin 4000 mAh tích hợp sạc nhanh 18W - Vsmart Aris Pro" src="https://cdn.tgdd.vn/Products/Images/42/228531/vsmart-aris-pro-282720-082705.jpg" /></a></p>
', 50000, 3, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (16, N'Nokia 2', N'Nokia 2.4 là một trong những smartphone nổi bật trong phân khúc điện thoại tầm trung ', N'<h3>Thiết kế mới, trẻ trung, năng động nhiều m&agrave;u sắc</h3>

<p>Nokia 2.4 mang ng&ocirc;n ngữ thiết kế ho&agrave;n to&agrave;n kh&aacute;c với c&aacute;c thế hệ&nbsp;<a href="https://www.thegioididong.com/dtdd/nokia-22" target="_blank">Nokia 2.2</a>&nbsp;hay&nbsp;<a href="https://www.thegioididong.com/dtdd/nokia-23" target="_blank">Nokia&nbsp;</a><a href="https://www.thegioididong.com/dtdd/nokia-23" target="_blank">2.3</a>&nbsp;khi được trang bị mặt lưng 3D họa tiết phay xước độc đ&aacute;o kết hợp c&ugrave;ng hiệu ứng chuyển đổi m&agrave;u gradient đẹp mắt ấn tượng từ c&aacute;i nh&igrave;n đầu ti&ecirc;n.</p>

<p>&nbsp;<a href="https://www.thegioididong.com/images/42/226218/nokia-24-085720-095716.jpg" onclick="return false;"><img alt="Thiết kế mặt lưng | Nokia 2.4" src="https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-085720-095716.jpg" /></a></p>

<p>M&aacute;y c&oacute; k&iacute;ch thước vừa vặn 165.85 x 76.3 x 8.69 mm c&ugrave;ng c&aacute;c g&oacute;c cạnh được bo tr&ograve;n hợp l&yacute; loại bỏ những cảm gi&aacute;c cấn tay khi sử dụng hay cho v&agrave;o t&uacute;i quần m&agrave; kh&ocirc;ng hề bị vướng.</p>

<p>Kh&ocirc;ng những thế&nbsp;<a href="https://www.thegioididong.com/dtdd-nokia" target="_blank">Nokia</a>&nbsp;c&ograve;n đem đến cho qu&yacute; kh&aacute;ch h&agrave;ng nhiều sự lựa chọn m&agrave;u sắc mới như m&agrave;u x&aacute;m&nbsp;than ch&igrave; m&agrave;u, xanh lục bảo v&agrave; t&iacute;m ho&agrave;ng h&ocirc;n. Người d&ugrave;ng c&oacute; thể tự do lựa chọn m&agrave;u sắc ph&ugrave; hợp với sở th&iacute;ch v&agrave; c&aacute; t&iacute;nh của m&igrave;nh.</p>

<p><a href="https://www.thegioididong.com/images/42/226218/nokia-24-4.jpg" onclick="return false;"><img alt="Điện thoại Nokia 2.4 | Nhiều màu sắc cho khách hàng lựa chọn" src="https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-4.jpg" /></a></p>

<h3>M&agrave;n h&igrave;nh giải tr&iacute; k&iacute;ch thước lớn</h3>

<p>Nokia 2.4 trang bị m&agrave;n h&igrave;nh giọt nước tr&agrave;n viền hợp thời, cho ph&eacute;p m&agrave;n h&igrave;nh m&aacute;y mở rộng, tr&agrave;n c&aacute;c cạnh mang lại một kh&ocirc;ng gian hiển thị l&ecirc;n đến 6.5 inch v&ocirc; c&ugrave;ng rộng r&atilde;i.</p>

<p><a href="https://www.thegioididong.com/images/42/226218/nokia-24-085720-095721.jpg" onclick="return false;"><img alt="Màn hình giải trí kích thước lớn | Nokia 2.4" src="https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-085720-095721.jpg" /></a></p>

<p>Tuy độ ph&acirc;n giải chỉ đạt mức HD+ tr&ecirc;n một m&agrave;n h&igrave;nh kh&aacute; lớn, nhưng h&igrave;nh ảnh tr&ecirc;n Nokia 2.4 vẫn đảm bảo độ chi tiết tốt, m&agrave;u sắc tươi s&aacute;ng r&otilde; r&agrave;ng.</p>

<p>Tỷ lệ m&agrave;n h&igrave;nh 20:9 mang đến một c&aacute;i nh&igrave;n ho&agrave;n to&agrave;n mới v&agrave; c&acirc;n đối sẽ hứa hẹn mang đến một trải nghiệm giải tr&iacute;, xem phim ấn tượng.</p>

<p><a href="https://www.thegioididong.com/images/42/226218/nokia-24-085720-095756.jpg" onclick="return false;"><img alt="Màn hình giải trí cho bạn xem phim ấn tượng | Nokia 2.4" src="https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-085720-095756.jpg" /></a></p>

<h3>Hiệu năng đ&aacute;p ứng tốt nhu cầu người d&ugrave;ng</h3>

<p>Nokia 2.4 được trang bị chip CPU 8 nh&acirc;n MediaTek Helio P22 với tốc độ xử l&yacute; 2.0 GHz gi&uacute;p bạn c&oacute; thể thoải m&aacute;i sử dụng c&aacute;c t&aacute;c vụ cơ bản v&agrave; giải tr&iacute; hằng ng&agrave;y hay&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;n&agrave;y c&oacute; thể chơi một số tựa game nhẹ một c&aacute;ch mượt m&agrave; v&agrave;&nbsp;ổn&nbsp;định.</p>

<p><a href="https://www.thegioididong.com/images/42/226218/nokia-24-085720-095751.jpg" onclick="return false;"><img alt="Hiệu nặng ổn định cho nhu cầu cơ bản | Nokia 2.4" src="https://cdn.tgdd.vn/Products/Images/42/226218/nokia-24-085720-095751.jpg" /></a></p>

<p>Đi k&egrave;m với đ&oacute; l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-rom-32-den-64gb" target="_blank">bộ nhớ trong 32 GB</a>&nbsp;người d&ugrave;ng c&oacute; thể lưu trữ dữ liệu của m&igrave;nh như h&igrave;nh ảnh, video hay c&agrave;i th&ecirc;m nhiều tựa game y&ecirc;u th&iacute;ch. V&agrave; c&oacute; thể mở rộng bộ nhớ qua thẻ MicroSD tối&nbsp;đa 512 GB thoả sức lưu trữ m&agrave; kh&ocirc;ng lo hết dung lượng.</p>

<p>&nbsp;</p>
', 13000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (17, N'Samsung Galaxy S20 FE', N'Trong sự kiện Samsung Unpacked đặc biệt vừa qua, Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series ', N'<h2>Đặc điểm nổi bật của Samsung Galaxy S20 FE</h2>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/224859/Slider/vi-vn-samsung-galaxy-s20-fan-edition-tongquan.jpg" /></p>

<h3>Trong sự kiện Samsung Unpacked đặc biệt vừa qua,&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">Samsung</a>&nbsp;đ&atilde; giới thiệu đến người d&ugrave;ng th&agrave;nh vi&ecirc;n mới của d&ograve;ng&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">điện thoại th&ocirc;ng minh</a>&nbsp;S20 Series đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-s20-fan-edition" target="_blank">Samsung Galaxy S20 FE</a>. Đ&acirc;y l&agrave; mẫu flagship cao cấp quy tụ nhiều t&iacute;nh năng m&agrave; Samfan y&ecirc;u th&iacute;ch, hứa hẹn sẽ mang lại trải nghiệm cao cấp của d&ograve;ng Galaxy S với mức gi&aacute; dễ tiếp cận hơn.</h3>

<h3>Nhiếp ảnh chuy&ecirc;n nghiệp với cụm camera đẳng cấp</h3>

<p>Camera tr&ecirc;n S20 FE l&agrave; 3 cảm biến chất lượng nằm gọn trong m&ocirc; đun chữ nhật độc đ&aacute;o ở mặt lưng bao gồm: 1 cảm biến ch&iacute;nh 12 MP cho chất lượng ảnh sắc n&eacute;t, 1&nbsp;<a href="https://Tham%20kh%E1%BA%A3o%20%C4%91i%E1%BB%87n%20tho%E1%BA%A1i%20c%C3%B3%20camera%20g%C3%B3c%20r%E1%BB%99ng%20t%E1%BA%A1i%20Th%E1%BA%BF%20Gi%E1%BB%9Bi%20Di%20%C4%90%E1%BB%99ng/" target="_blank">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP cung cấp g&oacute;c chụp tối đa v&agrave; cuối c&ugrave;ng 1 camera tele 8 MP hỗ trợ zoom quang 3X.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122420-082417.jpg" onclick="return false;"><img alt="Cụm 3 camera chất lượng đa tính năng - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122420-082417.jpg" /></a></p>

<p>Với hệ thống camera n&agrave;y, tất nhi&ecirc;n S20 FE sẽ kh&ocirc;ng thể thiếu những t&iacute;nh năng camera h&agrave;ng đầu như&nbsp;<a href="https://www.thegioididong.com/dtdd-camera-xoa-phong" target="_blank">camera x&oacute;a ph&ocirc;ng</a>, tự động lấy n&eacute;t (AF),&nbsp;<a href="https://www.thegioididong.com/hoi-dap/che-do-chong-rung-quang-hoc-ois-chup-anh-tren-sm-906416" target="_blank">chống rung quang học OIS</a>,... gi&uacute;p bạn dễ d&agrave;ng nhiếp ảnh với c&aacute;c vật thể đang di chuyển m&agrave; vẫn giữ được chất lượng khung h&igrave;nh v&agrave; độ sắc n&eacute;t cao.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122520-082533.jpg" onclick="return false;"><img alt="Cụm camera tích hợp các chế độ chụp nâng cao - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122520-082533.jpg" /></a></p>

<p>Sự kết hợp giữa ống k&iacute;nh zoom quang học 3X v&agrave; thu ph&oacute;ng si&ecirc;u ph&acirc;n giải l&ecirc;n đến 30X cho ph&eacute;p bạn ph&oacute;ng to mọi chi tiết ở khoảng c&aacute;ch xa đến lại gần hơn bạn m&agrave; kh&ocirc;ng ảnh hưởng đến chất lượng h&igrave;nh ảnh.</p>

<p>Ngay cả trong điều kiện thiếu s&aacute;ng th&igrave; camera của S20 FE vẫn kh&ocirc;ng l&agrave;m bạn thất vọng khi cho khả năng chụp đ&ecirc;m ấn tượng với cảm biến Dual Pixel gi&uacute;p thu s&aacute;ng tốt, khử nhiễu đa khung h&igrave;nh cho bức ảnh trong m&agrave;n đ&ecirc;m của bạn trở n&ecirc;n sống động, r&otilde; n&eacute;t hơn.</p>

<p>Với camera selfie 32 MP t&iacute;ch hợp c&aacute;c chế độ l&agrave;m đẹp AI, x&oacute;a ph&ocirc;ng sẽ gi&uacute;p bạn c&oacute; ngay những tấm ảnh selfie cuốn h&uacute;t, tỏa s&aacute;ng c&ugrave;ng bạn b&egrave; trong từng khung h&igrave;nh.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-122820-082802.jpg" onclick="return false;"><img alt="Camera selfie 32 MP hỗ trợ tính năng làm đẹp AI, quay video Full HD - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-122820-082802.jpg" /></a></p>

<h3>Ngoại h&igrave;nh trẻ trung với loạt gam m&agrave;u c&aacute; t&iacute;nh</h3>

<p>Samsung Galaxy S20 FE được ho&agrave;n thiện với loạt c&aacute;c gam m&agrave;u trẻ trung thời thượng c&ugrave;ng lớp phủ mờ ở mặt lưng sang trọng mang lại một phi&ecirc;n bản đầy c&aacute; t&iacute;nh để mỗi fan tự tin thể hiện phong c&aacute;ch chất ri&ecirc;ng của m&igrave;nh.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-123720-083720.jpg" onclick="return false;"><img alt="Mặt lưng phủ mờ sang trọng, cá tính - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-123720-083720.jpg" /></a></p>

<p>Mặt trước, thiết bị sở hữu&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-sieu-tran-vien" target="_blank">m&agrave;n h&igrave;nh si&ecirc;u tr&agrave;n viền</a>&nbsp;Infinity-O hỗ trợ c&ocirc;ng nghệ HDR 10+ c&ugrave;ng tấm nền Super AMOLED Full HD+ 6.5 inch với phần viền được l&agrave;m mỏng cho bạn cảm gi&aacute;c trải nghiệm thực sự tr&ecirc;n m&agrave;n ảnh sống động, m&agrave;u sắc ch&acirc;n thực đ&aacute;ng kinh ngạc.</p>

<p>Đặc biệt, tần số qu&eacute;t m&agrave;n h&igrave;nh của S20 FE l&ecirc;n tới 120 Hz gi&uacute;p cho mọi hoạt động giải tr&iacute; của bạn như lướt web, xem phim tất cả nội dung hiển thị chuyển động trở n&ecirc;n mượt m&agrave;, trơn tru.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-123420-083416.jpg" onclick="return false;"><img alt="Màn hình siêu mượt 120 Hz - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-123420-083416.jpg" /></a></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-van-tay" target="_blank">bảo mật v&acirc;n tay</a>&nbsp;được đặt ẩn dưới m&agrave;n h&igrave;nh theo xu hướng, thuận tiện cho việc mở kh&oacute;a thiết bị. Người d&ugrave;ng c&ograve;n c&oacute; thể sử dụng th&ecirc;m t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-khuon-mat" target="_blank">bảo mật khu&ocirc;n mặt</a>&nbsp;với khả năng nhận diện nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-123520-083512.jpg" onclick="return false;"><img alt="Cảm biến vân tay ẩn dưới màn hình - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-123520-083512.jpg" /></a></p>

<p>Samsung c&ograve;n tăng th&ecirc;m sự an to&agrave;n cho thiết bị với khả năng&nbsp;<a href="https://www.thegioididong.com/dtdd-chong-nuoc-bui" target="_blank">kh&aacute;ng nước, chống bụi</a>&nbsp;chuẩn IP68 gi&uacute;p người d&ugrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m sử dụng cho những buổi đi chơi du lịch, tắm biển.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-281220-101256.jpg" onclick="return false;"><img alt="Lớp phủ kháng nước, chống bụi chuẩn IP68 - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-281220-101256.jpg" /></a></p>

<h3>Sức mạnh vượt trội, chiến game đỉnh cao</h3>

<p>Về phần hiệu năng, Samsung đ&atilde; d&agrave;nh tặng cho c&aacute;c fan game thủ chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;khi trang bị cho m&aacute;y con&nbsp;<a href="https://www.thegioididong.com/hoi-dap/kham-pha-vi-xu-ly-hang-dau-tu-samsung-exynos-990-1240378" target="_blank">chip xử l&yacute; Exynos 990</a>&nbsp;8 nh&acirc;n mạnh mẽ h&agrave;ng đầu thế giới đi c&ugrave;ng chip đồ họa GPU&nbsp;Mali-G77 MP11 cho ph&eacute;p bạn bật max setting trải nghiệm những d&ograve;ng game nặng hiện nay m&agrave; kh&ocirc;ng hề lo lắng t&igrave;nh trạng giật lag.</p>

<p><a href="https://www.thegioididong.com/images/42/224859/samsung-galaxy-s20-fan-edition-283420-103404.jpg" onclick="return false;"><img alt="Chip Exynos 990 hàng đầu của Samsung - Samsung Galaxy S20 FE" src="https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-283420-103404.jpg" /></a></p>

<p>B&ecirc;n cạnh đ&oacute;, thiết bị c&ograve;n sở hữu dung lượng&nbsp;<a href="https://www.thegioididong.com/dtdd-ram-8gb-tro-len" target="_blank">RAM 8 GB</a>&nbsp;v&agrave;&nbsp;<a href="https://www.thegioididong.com/dtdd-rom-128-den-256gb" target="_blank">bộ nhớ trong 128 GB</a>, gi&uacute;p m&aacute;y xử l&yacute; đa nhiệm tốt, ổn định mọi thao t&aacute;c vuốt chạm cho tốc độ phản hồi nhanh ch&oacute;ng cũng như gi&uacute;p bạn thỏa th&iacute;ch lưu trữ c&aacute;c ứng dụng, nội dung mong muốn.</p>

<p>Tất nhi&ecirc;n, m&aacute;y sẽ chạy tr&ecirc;n hệ điều h&agrave;nh Android 10 hỗ trợ nhiều t&iacute;nh năng nổi bật hướng đến người d&ugrave;ng giao diện tối ưu, đơn giản dễ sử dụng.</p>
', 90000, 4, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (18, N'Samsung Galaxy Z Fold', N'Samsung Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp nhất của Samsung.', N'<h3>Thiết kế cải tiến hướng đến sự ho&agrave;n thiện</h3>

<p>Samsung Galaxy Z Fold 2 vẫn giữ nguy&ecirc;n cơ chế m&agrave;n h&igrave;nh gập ở thế hệ tiền nhiệm. Như một quyển s&aacute;ch, chiếc điện thoại mở ra để hiển thị m&agrave;n h&igrave;nh lớn b&ecirc;n trong. B&ecirc;n ngo&agrave;i l&agrave; một m&agrave;n h&igrave;nh phụ&nbsp;<a href="https://www.thegioididong.com/dtdd-man-hinh-tran-vien" target="_blank">tr&agrave;n viền</a>&nbsp;với thiết kế đục lỗ.&nbsp;</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-302920-012935.jpg" onclick="return false;"><img alt="Màn hình gập cao cấp nhất | Galaxy Z Fold 2" src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-302920-012935.jpg" /></a></p>

<p>Những chất liệu cao cấp nhất đ&atilde; được Samsung ưu &aacute;i trang bị l&ecirc;n Galaxy Z Fold 2, khung m&aacute;y được l&agrave;m từ nh&ocirc;m, vu&ocirc;ng vức hơn, gi&uacute;p cho si&ecirc;u phẩm m&agrave;n h&igrave;nh gập mới của Samsung c&oacute; một diện mạo nam t&iacute;nh v&agrave; sang trọng hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-302920-012942.jpg" onclick="return false;"><img alt="Thiết kế cải tiến, sang trọng hơn | Galaxy Z Fold 2" src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-302920-012942.jpg" /></a></p>

<p>Mặt lưng của thiết bị được ho&agrave;n thiện từ k&iacute;nh cao cấp, c&oacute; độ b&oacute;ng mờ gi&uacute;p giảm để lại dấu v&acirc;n tay. B&ecirc;n cạnh m&agrave;u đen truyền thống, m&agrave;u v&agrave;ng đồng - gam m&agrave;u mới lần đầu được Samsung giới thiệu tr&ecirc;n Galaxy Z Fold 2 cũng rất ấn tượng.</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-302920-012949.jpg" onclick="return false;"><img alt="Gam màu vàng đồng mới ấn tượng | Galaxy Z Fold 2" src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-302920-012949.jpg" /></a></p>

<p>Đ&aacute;ng ch&uacute; &yacute; l&agrave; phần bản lề tr&ecirc;n Galaxy Z Fold 2 đ&atilde; được Samsung cải tiến gi&uacute;p cho thao t&aacute;c gập mở m&aacute;y trở n&ecirc;n sắc sảo. Giờ đ&acirc;y người d&ugrave;ng c&oacute; thể mở v&agrave; sử dụng m&aacute;y linh hoạt ở nhiều g&oacute;c độ kh&aacute;c nhau tương tự như mẫu smartphone&nbsp;<a href="https://www.thegioididong.com/dtdd/samsung-galaxy-z-flip" target="_blank">Samsung Galaxy Z Flip</a>.</p>

<p>Với độ mỏng chỉ 6.9 mm khi mở ra, gập lại th&igrave; m&aacute;y lại c&agrave;ng gọn g&agrave;ng hơn, gi&uacute;p cho việc sử dụng bằng 1 tay tr&ecirc;n m&agrave;n h&igrave;nh phụ trở n&ecirc;n tối ưu hơn.</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-305720-025722.jpg" onclick="return false;"><img alt="Thuận tiện cho sử dụng một tay | Galaxy Z Fold 2" src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-305720-025722.jpg" /></a></p>

<p>Cạnh dưới của m&aacute;y l&agrave; loa ngo&agrave;i, mic thoại v&agrave; một cổng sạc. Thật đ&aacute;ng tiếc khi Samsung tiếp tục loại bỏ jack 3.5 mm tr&ecirc;n những mẫu điện thoại cao cấp của m&igrave;nh.</p>

<h3>M&agrave;n h&igrave;nh lớn v&agrave; bền hơn thế hệ cũ</h3>

<p>M&agrave;n h&igrave;nh phụ của Galaxy Z Fold 2 với thiết kế tr&agrave;n viền Infinity-O, d&ugrave;ng camera đục lỗ trong m&agrave;n h&igrave;nh gi&uacute;p cho k&iacute;ch thước được mở rộng l&ecirc;n đến 6.23 inch, cho ph&eacute;p hiển th&ocirc;ng tin nhiều hơn. Giờ đ&acirc;y bạn c&oacute; thể sử dụng đầy đủ c&aacute;c t&iacute;nh năng như một m&agrave;n h&igrave;nh độc lập, m&agrave; kh&ocirc;ng bị giới hạn như thế hệ trước.</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-302920-012956.jpg" onclick="return false;"><img alt=" Màn hình phụ với thiết kế tràn viền Infinity-O Samsung | Galaxy Z Fold 2 " src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-302920-012956.jpg" /></a></p>

<p>Khi mở ra, b&ecirc;n trong h&eacute; lộ một m&agrave;n h&igrave;nh ch&iacute;nh 7.59 inch. Giống như m&agrave;n h&igrave;nh phụ, Samsung đ&atilde; thay thế phần khuyết tai thỏ kh&aacute; lớn tr&ecirc;n thế hệ cũ bằng camera đục lỗ. Đặc biệt, hỗ trợ tần số qu&eacute;t khủng 120 Hz cho thao t&aacute;c chuyển động mượt m&agrave; gi&uacute;p tăng trải nghiệm khi sử dụng, chơi game.</p>

<p><a href="https://www.thegioididong.com/images/42/226099/samsung-galaxy-z-fold-2-303020-013013.jpg" onclick="return false;"><img alt="Màn hình chính lên đến 7.59 inch, thế khuyết tai thỏ bằng camera đục lỗ | Samsung Galaxy Z Fold 2 " src="https://cdn.tgdd.vn/Products/Images/42/226099/samsung-galaxy-z-fold-2-303020-013013.jpg" /></a></p>

<p>M&agrave;n h&igrave;nh gập lần n&agrave;y đ&atilde; bền v&agrave; chắc chắn hơn nhờ v&agrave;o lớp k&iacute;nh si&ecirc;u mỏng Ultra Thin Glass (UTG), được Samsung sử dụng để gia cố tăng cường độ cứng, nhưng vẫn giữ được độ linh hoạt của m&agrave;n h&igrave;nh gập vốn dĩ rất &ldquo;mong manh&rdquo; tr&ecirc;n thế hệ cũ.</p>
', 11000, 4, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (19, N'Samsung Galaxy Note 20', N'Tháng 8/2020, Samsung Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc,', N'<h3>Camera cụm h&igrave;nh chữ nhật độc đ&aacute;o c&ugrave;ng thiết kế mạnh mẽ</h3>

<p><a href="https://www.thegioididong.com/dtdd" target="_blank">Điện thoại</a>&nbsp;sở hữu thiết kế khung kim loại chắc chắn, mặt lưng nhựa b&oacute;ng bẩy, kiểu d&aacute;ng mạnh mẽ với những g&oacute;c cạnh vu&ocirc;ng vức nhưng vẫn mang lại cảm gi&aacute;c cầm nắm thoải m&aacute;i.</p>

<p><a href="https://www.thegioididong.com/images/42/218355/samsung-galaxy-note-20-235720-125702.jpg" onclick="return false;"><img alt="Thiết kế mặt lưng nhám sang trọng - Samsung Galaxy Note 20" src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235720-125702.jpg" /></a></p>

<p>Camera của Galaxy Note 20&nbsp;được thiết kế trong cụm h&igrave;nh chữ nhật được đặt gọn ở ph&iacute;a sau bao gồm 1 camera ch&iacute;nh 64 MP, camera g&oacute;c si&ecirc;u rộng 12 MP v&agrave; camera tele 12 MP hỗ trợ người d&ugrave;ng dễ d&agrave;ng lưu lại sắc n&eacute;t những khoảng khắc đ&aacute;ng nhớ c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;.</p>

<p><a href="https://www.thegioididong.com/images/42/218355/samsung-galaxy-note-20-235520-015514.jpg" onclick="return false;"><img alt="Cụm 3 camera sau - Samsung Galaxy Note 20" src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235520-015514.jpg" /></a></p>

<p>Camera Galaxy Note 20 hỗ trợ zoom đến 30x ở chế độ chụp b&igrave;nh thường, trong khi đ&oacute;, ở chế độ chụp ban đ&ecirc;m, m&aacute;y vẫn hỗ trợ zoom đến 10x, chi tiết trong điều kiện thiếu s&aacute;ng nhiều nhưng vẫn cho chất lượng h&igrave;nh tốt v&agrave; chi tiết.</p>

<p>&nbsp;</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024303.jpg" />Ảnh chụp g&oacute;c thường 1x tr&ecirc;n Galaxy Note 20</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024309.jpg" />Ảnh chụp zoom 5x tr&ecirc;n Galaxy Note 20</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024315.jpg" />Ảnh chụp zoom 10x tr&ecirc;n Galaxy Note 20</p>

<p>&nbsp;</p>

<p>Với khả năng quay video chất lượng cao l&ecirc;n đến 8K si&ecirc;u n&eacute;t c&ugrave;ng c&aacute;c t&iacute;nh năng chống rung, lấy n&eacute;t,... th&igrave; việc sở hữu nhiều thước phim xịn mịn bắt mắt l&agrave; điều ho&agrave;n to&agrave;n dễ d&agrave;ng tr&ecirc;n chiếc smartphone n&agrave;y.</p>

<p>&nbsp;</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020730.jpg" />Ảnh chụp camera sau tr&ecirc;n Galaxy Note 20</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020723.jpg" />Ảnh chụp đ&ecirc;m tr&ecirc;n Galaxy Note 20</p>

<p>&nbsp;</p>

<p>Samsung Note 20 sở hữu camera trước 10 MP trong thiết kế nốt ruồi quen thuộc gi&uacute;p khung m&agrave;n h&igrave;nh 6.7 inch được sử dụng tối đa gi&uacute;p cho việc xem phim hay chơi game đ&atilde; mắt v&agrave; tập trung hơn.</p>

<p>&nbsp;</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230020-020036.jpg" />Camera trước 10 MP&nbsp;tr&ecirc;n Galaxy Note 20</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020739.jpg" />Ảnh chụp camera selfie tr&ecirc;n Galaxy Note 20</p>

<p><img src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020749.jpg" />Ảnh chụp camera selfie tr&ecirc;n Galaxy Note 20</p>

<p>&nbsp;</p>

<p><a href="https://www.thegioididong.com/images/42/218355/samsung-galaxy-note-20-230020-020036.jpg" onclick="return false;"><img alt="Camera trước 10 MP - Samsung Galaxy Note 20" src="https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230020-020036.jpg" /></a></p>
', 16000, 4, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (20, N'Samsung Galaxy S10', N'Samsung Galaxy S10 Lite là một phiên bản khác của dòng Galaxy S10 đã ra mắt trước đó nhưng mang trong mình khá nhiều khác biệt về ngoại hình cũng như bên trong', N'<h3>Ngoại h&igrave;nh nổi bật dễ nhận biết</h3>

<p>Mặc d&ugrave; c&oacute; t&ecirc;n gọi l&agrave;&nbsp;S10 Lite nhưng ngoại h&igrave;nh của chiếc m&aacute;y n&agrave;y mang kh&aacute; nhiều thay đổi so với d&ograve;ng S10 trước đ&oacute;. Đầu ti&ecirc;n bạn sẽ dễ nhận thấy l&agrave; tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/hoi-dap/hoi-dap-tong-hop-cac-loai-man-hinh-vo-cuc-moi-t-1150900#infinity-o" target="_blank">m&agrave;n h&igrave;nh Infinity-O</a>&nbsp;th&igrave; camera selfie được đặt ở ch&iacute;nh giữa thay v&igrave; lệch về g&oacute;c tr&aacute;i như tr&ecirc;n S10.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd8-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Thiết kế" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd8-1.jpg" /></a></p>

<p>Quay ra ở mặt sau th&igrave; bạn cũng dễ d&agrave;ng nhận ra chiếc Galaxy S10 Lite với cụm camera to bản được l&agrave;m h&igrave;nh chữ nhật tr&ocirc;ng rất hầm hố.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd3-2.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Camera sau" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd3-2.jpg" /></a></p>

<p>Khung viền được ho&agrave;n thiện từ chất liệu kim loại đem lại cảm gi&aacute;c cầm nắm chắc chắn v&agrave; sang trọng.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd1-2.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Cảm biến vân tay" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd1-2.jpg" /></a></p>

<p>Được trang bị m&agrave;n h&igrave;nh Infinity-O c&ugrave;ng tấm nền Super AMOLED Full HD+ 6.7 inch với phần viền bezels được l&agrave;m kh&aacute; mỏng cho bạn cảm gi&aacute;c như đang sử dụng một thiết bị tr&agrave;n viền thực thụ.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite10.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Màn hình" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite10.jpg" /></a></p>

<p>Tất nhi&ecirc;n m&agrave;n h&igrave;nh n&agrave;y cũng được t&iacute;ch hợp t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/dtdd-bao-mat-van-tay" target="_blank">bảo mật v&acirc;n tay</a>&nbsp;được ẩn dưới m&agrave;n h&igrave;nh, gi&uacute;p bạn mở kh&oacute;a thiết bị một c&aacute;ch dễ d&agrave;ng v&agrave; &quot;ngầu&quot; hơn.</p>

<h3>Sở hữu phần cứng mạnh mẽ</h3>

<p>Điểm nhấn kế tiếp của S10 Lite c&oacute; lẽ ch&iacute;nh l&agrave; cấu h&igrave;nh khi được trang bị chip Qualcomm Snapdragon 855 vốn được tin tưởng tuyệt đối về độ tương th&iacute;ch v&agrave; ổn định, con chip đầu bảng năm 2019 sẽ gi&uacute;p bạn sử dụng chiếc m&aacute;y mượt m&agrave; &iacute;t nhất từ 2-3 năm nữa.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd1-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Điểm hiệu năng Antutu Benchmark" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd1-1.jpg" /></a></p>

<p>Bộ nhớ RAM 8 GB đảm bảo cho bạn thoải m&aacute;i mở nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng sợ hiện tượng phải load lại game hay ứng dụng thường xuy&ecirc;n.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd5-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Cấu hình" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd5-1.jpg" /></a></p>

<p>Với những trang bị như vậy th&igrave; Galaxy S10 Lite sẽ đ&aacute;p ứng tốt tất cả c&aacute;c t&aacute;c vụ từ cơ bản như lướt web, xem Youtube,... cũng như gi&uacute;p&nbsp;<a href="https://www.thegioididong.com/dtdd-choi-game" target="_blank">điện thoại chơi game</a>&nbsp;mượt tr&ecirc;n c&aacute;c tựa game phổ biến hiện nay PUBG, Free Fire, Li&ecirc;n qu&acirc;n Mobile,... ở mức cấu h&igrave;nh cao.</p>

<p><a href="https://www.thegioididong.com/images/42/194251/samsung-galaxy-s10-lite-tgdd7-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy S10 Lite | Khay sim" src="https://cdn.tgdd.vn/Products/Images/42/194251/samsung-galaxy-s10-lite-tgdd7-1.jpg" /></a></p>

<p>Galaxy S10 Lite chạy tr&ecirc;n giao diện One UI 2.0 dựa tr&ecirc;n hệ điều h&agrave;nh Android 10 khi được b&aacute;n ra ch&iacute;nh thức. Samsung đ&atilde; tối ưu hệ điều h&agrave;nh của m&igrave;nh theo hướng dễ sử dụng một tay tr&ecirc;n m&agrave;n h&igrave;nh lớn, giao diện tinh gọn v&agrave; mượt m&agrave;.</p>
', 7000, 4, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (21, N'Samsung Galaxy A30s', N'Samsung Galaxy A30s, chiếc smartphone mới ra mắt sở hữu nhiều ưu điểm nổi bật trong phân khúc điện thoại tầm trung.', N'<h3>N&acirc;ng cấp mạnh mẽ về camera</h3>

<p>Thay v&igrave; sử dụng camera k&eacute;p như tr&ecirc;n người anh em&nbsp;Samsung Galaxy A30 th&igrave; Samsung đ&atilde; n&acirc;ng cấp cho chiếc&nbsp;Galaxy A30s bộ 3 camera chất lượng ở mặt lưng.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-1-1.jpg" onclick="return false;"><img alt="Điện thoại Samsing A30s | Thiết kế camera" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-1-1.jpg" /></a></p>

<p>M&aacute;y sở hữu&nbsp;ống k&iacute;nh ch&iacute;nh sẽ c&oacute; độ ph&acirc;n giải 25 MP, ống k&iacute;nh thứ 2 l&agrave; ống k&iacute;nh g&oacute;c si&ecirc;u rộng c&oacute; độ ph&acirc;n giải 8 MP v&agrave; một ống k&iacute;nh 5 MP hỗ trợ đo độ s&acirc;u trường ảnh.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-tgdd-4.jpg" onclick="return false;"><img alt="Điện thoại Samsung A30s | Ảnh chụp với điều kiện ánh sáng tốt" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-tgdd-4.jpg" /></a></p>

<p>Ngo&agrave;i ra, những t&iacute;nh năng&nbsp;<a href="https://www.thegioididong.com/tin-tuc/tim-hieu-xoa-phong-huong-dan-xoa-phong-tren-moi-smartphone-892585" target="_blank">chụp ảnh x&oacute;a ph&ocirc;ng</a>, tự động lấy n&eacute;t, HDR,&nbsp;<a href="https://www.thegioididong.com/hoi-dap/chup-anh-panorama-toan-canh-tren-camera-cua-smar-906425" target="_blank">Panorama</a>,... sẽ đ&aacute;p ứng được nhu cầu nắm bắt khoảnh khắc h&agrave;ng ng&agrave;y của bạn v&agrave; chia sẻ với bạn b&egrave;.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-tgdd-2.jpg" onclick="return false;"><img alt="Điện thoại Samsung A30s | Ảnh chế độ ban đêm" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-tgdd-2.jpg" /></a></p>

<p>T&iacute;nh năng Live Focus tr&ecirc;n&nbsp;Galaxy A30s cho khả năng x&oacute;a ph&ocirc;ng thời thượng bằng c&aacute;ch nhận diện khu&ocirc;n mặt v&agrave; l&agrave;m mờ phần ph&ocirc;ng nền ph&iacute;a sau.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-tgdd-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung A30s | Ảnh chế độ macro" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-tgdd-1.jpg" /></a></p>

<p>Trong khi đ&oacute; camera selfie c&oacute; độ ph&acirc;n giải l&ecirc;n tới 16 MP v&agrave; tất nhi&ecirc;n vẫn hỗ trợ nhiều t&iacute;nh năng hiện đại như lấy n&eacute;t tự động, chụp ảnh x&oacute;a ph&ocirc;ng, l&agrave;m mịn da&hellip;</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-tgdd-3.jpg" onclick="return false;"><img alt="Điện thoại Samsung A30s | Ảnh selfie bằng camera trước" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-tgdd-3.jpg" /></a></p>

<p>Với camera n&agrave;y th&igrave; c&aacute;c bạn trẻ c&oacute; thể tự tin khoe h&igrave;nh tự sướng của m&igrave;nh ngay sau khi chụp l&ecirc;n facebook m&agrave; kh&ocirc;ng cần phải chỉnh sửa g&igrave; th&ecirc;m.</p>

<p><a href="https://www.thegioididong.com/tin-tuc/danh-gia-chi-tiet-galaxy-a30s-1202249" target="_blank">Xem th&ecirc;m:&nbsp;Đ&aacute;nh gi&aacute; chi tiết Galaxy A30s: Phi&ecirc;n bản n&acirc;ng cấp c&oacute; thật sự &#39;n&acirc;ng cấp&#39;?</a></p>

<h3>Thời lượng pin l&agrave; điểm s&aacute;ng</h3>

<p>Samsung Galaxy A30s được&nbsp;trang bị vi&ecirc;n pin l&ecirc;n tới 4000 mAh, một con số kh&aacute; ấn tượng tr&ecirc;n smartphone tầm trung ở thời điểm hiện tại.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-tgdd-.jpg" onclick="return false;"><img alt="Điện thoại Samsung Galaxy A30s | Thời lượng pin" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-tgdd-.jpg" /></a></p>

<p>Bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng&nbsp;Samsung Galaxy A30s kh&aacute; thoải m&aacute;i trong hơn một ng&agrave;y l&agrave; điều hết sức b&igrave;nh thường.</p>

<p><a href="https://www.thegioididong.com/images/42/204403/samsung-galaxy-a30s-2-1.jpg" onclick="return false;"><img alt="Điện thoại Samsung A30s | Cổng sạc USB Type C có hỗ trợ sạc nhanh" src="https://cdn.tgdd.vn/Products/Images/42/204403/samsung-galaxy-a30s-2-1.jpg" /></a></p>

<p>Ngo&agrave;i ra, chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd-samsung" target="_blank">smartphone Samsung</a>&nbsp;n&agrave;y c&ograve;n được hỗ trợ&nbsp;<a href="https://www.thegioididong.com/dtdd-sac-pin-nhanh" target="_blank">sạc nhanh</a>&nbsp;15W, v&igrave; vậy nếu pin hết, n&oacute; sẽ dễ d&agrave;ng sạc đầy pin lại.</p>

<p>Galaxy A30s cho khả năng sạc lại từ 0% đến 100% trong 1,5 giờ. Đ&acirc;y l&agrave; một điểm cộng nữa tr&ecirc;n chiếc m&aacute;y n&agrave;y.</p>
', 3000, 4, 3)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[PRODUCT_IMG] ON 

INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (28, N'iphone-8-plus-128gb-1.png', N'iPhone 8 Plus 128GB', 6)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (29, N'iphone-xs-64gb-1.png', N'iPhone Xs 64GB', 7)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (30, N'iphone-12-pro-max-1.png', N'iPhone 12 Pro Max', 8)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (31, N'iphone-11-pro-max-1.png', N'Iphone 11 Pro Max', 2)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (32, N'iphone-se-1.png', N'iPhone SE', 5)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (33, N'iphone-xr-1.png', N'iPhone XR', 1)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (34, N'iphone-xr-1.png', N'iPhone XR', 9)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (35, N'microsoft-surface-phone-1.png', N'Microsoft Surface Phone', 10)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (36, N'oppo-a93-1.png', N'OPPO A93', 12)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (37, N'realme-6i-1.png', N'Realme 6i', 13)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (38, N'xiaomi-poco-x3-1.png', N'Xiaomi POCO X3', 14)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (39, N'vsmart-aris-pro-1.png', N'Vsmart Aris Pro', 15)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (40, N'nokia-24-1.png', N'Nokia 2.4', 16)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (41, N'samsung-galaxy-s20-fe-1.png', N'Samsung Galaxy S20 FE', 17)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (42, N'samsung-galaxy-z-fold-1.png', N'Samsung Galaxy Z Fold', 18)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (43, N'samsung-galaxy-note-20-1.png', N'Samsung Galaxy Note 20', 19)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (44, N'samsung-galaxy-s10-1.png', N'Samsung Galaxy S10', 20)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (45, N'samsung-galaxy-a30s-1.png', N'Samsung Galaxy A30s', 21)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (46, N'surface-phone-2019-1.png', N'Surface Phone 2019', 11)
SET IDENTITY_INSERT [dbo].[PRODUCT_IMG] OFF
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 3, N'1024x768')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 4, N'Mù mắt')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 5, N'64 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 6, N'4 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 7, N'Không')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 8, N'16:9')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 9, N'iOS 14')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 10, N'Apple A13 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 11, N'Apple GPU 4 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 12, N'8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 13, N'4 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 14, N'Không')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 1, N'3000 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 2, N'Pin Li-Po')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 4, N'IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 6, N'6 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 8, N'16:9')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 9, N'BOS')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 10, N'Snapdragon 801 4 nhân 32-bit')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 11, N'Adreno 330')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 12, N'5 Mp')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 13, N'8 Mp')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 15, N'IP68')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 16, N'Bkav Mobile Security')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 6, N'4 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 8, N'4.7"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 9, N'iOS 14')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 10, N'Apple A13 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 11, N'Apple GPU 4 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (5, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 2, N'	 Tiết kiệm pin Sạc không dây Sạc pin nhanh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 6, N'3 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 8, N'5.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 9, N'iOS 13')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 10, N'Apple A11 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 11, N'Apple GPU 3 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 15, NULL)
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (6, 16, NULL)
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 6, N'4 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 8, N'6.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 9, N'iOS 14')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 10, N'Apple A12 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 11, N'Apple GPU 4 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (7, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 6, N'4 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 8, N'5.4"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 9, N'iOS 14')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 10, N'Apple A13 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 11, N'Apple GPU 4 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (8, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 4, N'LED-backlit IPS LCD')
GO
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 6, N'4 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 8, N'6.1"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 9, N'iOS 14')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 10, N'Apple A13 Bionic 6 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 11, N'Apple GPU 4 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (9, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 1, N'4100 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 7, N'Không có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 8, N'6.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 9, N' Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 10, N'Snapdragon 830')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 11, N'Mali-G76 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (10, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 8, N'6.1"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 9, N' Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 10, N'Snapdragon 833')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 11, N'Mali-G77 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (11, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 1, N'4100 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 8, N'5.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 10, N'MediaTek Helio P95 8 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 11, N'IIMG PowerVR GM9446')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (12, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 6, N'6 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 8, N'5.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 9, N' Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 10, N'Snapdragon 830')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 11, N'IIMG PowerVR GM9446')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (13, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 6, N'6 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 8, N'6.67"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 10, N'Snapdragon 732G')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 11, N'Mali-G77 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (14, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 6, N'6 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 8, N'6.5"')
GO
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 9, N' Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 10, N'MediaTek Helio P95 8 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 11, N'Mali-G76 P30')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (15, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 1, N'2691 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 5, N'32 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 6, N'2 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 8, N'5.0"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 9, N'Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 10, N'Snapdragon 830')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 11, N'IIMG PowerVR GM9446')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (16, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 1, N'4600 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 8, N'6.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 10, N'Exynos 990')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 11, N'Mali-G76 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 12, N'32 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 13, N'Chính 12 MP & Phụ 12 MP, 8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (17, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 8, N'6.67"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 10, N'MediaTek Helio P95 8 nhân')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 11, N'Mali-G76 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 12, N'32 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 13, N'Chính 12 MP & Phụ 12 MP, 8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (18, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 1, N'4900 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 5, N'256 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 6, N'8 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 8, N'6.67"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 10, N'Exynos 990')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 11, N'Mali-G76 MP12')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 12, N'32 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 13, N'Chính 12 MP & Phụ 12 MP, 8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (19, 16, N'Face ID')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 1, N'4600 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 5, N'128 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 6, N'6 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 8, N'6.5"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 9, N'Android 10')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 10, N'Snapdragon 830')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 11, N'IIMG PowerVR GM9446')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 12, N'7 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 13, N'Chính 12 MP & Phụ 12 MP, 8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (20, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 1, N'3112 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 2, N'Tiết kiệm pin ')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 4, N'LED-backlit IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 5, N'64 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 6, N'4 GB')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 7, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 8, N'6.1"')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 9, N'Android 9.0 (Pie)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 10, N'Snapdragon 830')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 11, N'IIMG PowerVR GM9446')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 12, N'7 MP')
GO
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 13, N'2 camera 12 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 15, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (21, 16, N'Vân Tay')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (1, 65, 1, 1700, 0, N'123')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (1, 73, 1, 1, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (1, 74, 1, 1, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (1, 75, 1, 1, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (10, 64, 1, 500, 0, N'25091999')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (19, 66, 1, 16000, 0, N'123')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (21, 68, 1, 3000, 0, NULL)
INSERT [dbo].[PRODUCT_PROMOTION] ([IdProduct], [IdPromotion], [Discount]) VALUES (2, 1, 5)
INSERT [dbo].[PRODUCT_PROMOTION] ([IdProduct], [IdPromotion], [Discount]) VALUES (5, 1, 5)
SET IDENTITY_INSERT [dbo].[PROMOTION] ON 

INSERT [dbo].[PROMOTION] ([IdPromotion], [PromotionName], [PromotionStart], [PromotionEnd]) VALUES (1, N'Giảm giá Bkav Bphone 2015', CAST(N'2020-11-22 00:00:00.000' AS DateTime), CAST(N'2020-11-23 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PROMOTION] OFF
SET IDENTITY_INSERT [dbo].[REVIEW_PRODUCT] ON 

INSERT [dbo].[REVIEW_PRODUCT] ([IdReview], [ReviewContent], [ReviewPoint], [IdProduct], [IdCustomer], [IdUser], [ReviewStatus], [ReviewDate]) VALUES (4, N'Khá là ok', 5, 5, 10, 3, 1, CAST(N'2020-11-23 09:26:12.040' AS DateTime))
INSERT [dbo].[REVIEW_PRODUCT] ([IdReview], [ReviewContent], [ReviewPoint], [IdProduct], [IdCustomer], [IdUser], [ReviewStatus], [ReviewDate]) VALUES (16, N'Ngon', 5, 10, 10, 3, 1, CAST(N'2020-11-23 23:05:28.593' AS DateTime))
SET IDENTITY_INSERT [dbo].[REVIEW_PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[ROLE] ON 

INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (2, N'Biên tập viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (3, N'Kiểm duyệt viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (4, N'Nhân viên bán hàng')
SET IDENTITY_INSERT [dbo].[ROLE] OFF
SET IDENTITY_INSERT [dbo].[TYGIAUSD] ON 

INSERT [dbo].[TYGIAUSD] ([id], [tygia]) VALUES (1, 23800)
SET IDENTITY_INSERT [dbo].[TYGIAUSD] OFF
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole], [PhoneNumber]) VALUES (3, N'quyetnc', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'NCQ', 1, NULL)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole], [PhoneNumber]) VALUES (4, N'lktuong', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Lâm Kiết Tường', 2, NULL)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole], [PhoneNumber]) VALUES (5, N'Dat09', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Đạt', 3, NULL)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole], [PhoneNumber]) VALUES (6, N'trannqt', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Trận', 3, NULL)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole], [PhoneNumber]) VALUES (7, N'Khanglc', N'1234', N'Lâm Chấn Khang', 4, NULL)
SET IDENTITY_INSERT [dbo].[USER] OFF
ALTER TABLE [dbo].[CATEGORY_NEWS]  WITH CHECK ADD  CONSTRAINT [FK__CATEGORY___IdUse__34C8D9D1] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] CHECK CONSTRAINT [FK__CATEGORY___IdUse__34C8D9D1]
GO
ALTER TABLE [dbo].[CATEGORY_NEWS]  WITH CHECK ADD  CONSTRAINT [FK__CATEGORY___IdUse__60A75C0F] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] CHECK CONSTRAINT [FK__CATEGORY___IdUse__60A75C0F]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__COMMENT_P__IdUse__36B12243] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] CHECK CONSTRAINT [FK__COMMENT_P__IdUse__36B12243]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__COMMENT_P__IdUse__628FA481] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] CHECK CONSTRAINT [FK__COMMENT_P__IdUse__628FA481]
GO
ALTER TABLE [dbo].[NEWS]  WITH CHECK ADD  CONSTRAINT [FK__NEWS__IdCategory__4316F928] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_NEWS] ([IdCategory])
GO
ALTER TABLE [dbo].[NEWS] CHECK CONSTRAINT [FK__NEWS__IdCategory__4316F928]
GO
ALTER TABLE [dbo].[NEWS]  WITH CHECK ADD  CONSTRAINT [FK_NEWS_USER] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[NEWS] CHECK CONSTRAINT [FK_NEWS_USER]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCode__49C3F6B7] FOREIGN KEY([IdCode])
REFERENCES [dbo].[GIFTCODE] ([IdCode])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCode__49C3F6B7]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCode__75A278F5] FOREIGN KEY([IdCode])
REFERENCES [dbo].[GIFTCODE] ([IdCode])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCode__75A278F5]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCustome__45F365D3] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCustome__45F365D3]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCustome__71D1E811] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCustome__71D1E811]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdPayment__4AB81AF0] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[PAYMENT_METHOD] ([IdPayment])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdPayment__4AB81AF0]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdPayment__76969D2E] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[PAYMENT_METHOD] ([IdPayment])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdPayment__76969D2E]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdStatus__4BAC3F29] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdStatus__4BAC3F29]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdStatus__778AC167] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdStatus__778AC167]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdUser__38996AB5] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdUser__38996AB5]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdUser__6477ECF3] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdUser__6477ECF3]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdOrd__47DBAE45] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdOrd__47DBAE45]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdOrd__73BA3083] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdOrd__73BA3083]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdUse__398D8EEE] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdUse__398D8EEE]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdUse__656C112C] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdUse__656C112C]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_PRODUCT] ([IdCategory])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_PRODUCT] ([IdCategory])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT__IdUser__35BCFE0A] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK__PRODUCT__IdUser__35BCFE0A]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT__IdUser__619B8048] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK__PRODUCT__IdUser__619B8048]
GO
ALTER TABLE [dbo].[PRODUCT_IMG]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdInfo])
REFERENCES [dbo].[INFO] ([IdInfo])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdInfo])
REFERENCES [dbo].[INFO] ([IdInfo])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT_O__IdOrd__46E78A0C] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] CHECK CONSTRAINT [FK__PRODUCT_O__IdOrd__46E78A0C]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT_O__IdOrd__72C60C4A] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] CHECK CONSTRAINT [FK__PRODUCT_O__IdOrd__72C60C4A]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdPromotion])
REFERENCES [dbo].[PROMOTION] ([IdPromotion])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdPromotion])
REFERENCES [dbo].[PROMOTION] ([IdPromotion])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__REVIEW_PR__IdUse__37A5467C] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] CHECK CONSTRAINT [FK__REVIEW_PR__IdUse__37A5467C]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__REVIEW_PR__IdUse__6383C8BA] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] CHECK CONSTRAINT [FK__REVIEW_PR__IdUse__6383C8BA]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK__USER__IdRole__3A81B327] FOREIGN KEY([IdRole])
REFERENCES [dbo].[ROLE] ([IdRole])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK__USER__IdRole__3A81B327]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK__USER__IdRole__66603565] FOREIGN KEY([IdRole])
REFERENCES [dbo].[ROLE] ([IdRole])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK__USER__IdRole__66603565]
GO
/****** Object:  StoredProcedure [dbo].[proc_CryptData]    Script Date: 24/11/2020 23:58:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_CryptData] (@Data varchar(100))
as
begin
declare @Result varchar(256)
set @Result = dbo.func_CryptData(@Data)
select top 1 @Result
end


GO
