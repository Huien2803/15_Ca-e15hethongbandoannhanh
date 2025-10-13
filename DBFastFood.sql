SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[Role] [int] NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[Gender] [int] NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[AvatarUrl] [nvarchar](max) NULL,
	[IsActive] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[ProductDetailId] [int] NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CartID] [int] NULL,
	[ToppingID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_CartTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssue]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[GoodIssueCode] [nvarchar](150) NULL,
	[Decription] [nvarchar](550) NULL,
	[IssueDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssueDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodIssueID] [int] NULL,
	[MaterialID] [int] NULL,
	[Quantity] [decimal](18, 2) NULL,
	[Decription] [nvarchar](550) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssueDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsIssueFile]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsIssueFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsIssueID] [int] NOT NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsIssueFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceipt]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceipt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccoutID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[ReceiptedDate] [datetime] NOT NULL,
	[GoodsReceiptCode] [nvarchar](250) NOT NULL,
	[Decription] [nvarchar](550) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_GoodsReceipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_GoodsReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceiptFile]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceiptFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceiptID] [int] NOT NULL,
	[FileUrl] [nvarchar](max) NULL,
	[FileName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_GoodsReceiptFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkUrl]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkUrl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeUrl] [nvarchar](250) NULL,
	[LinkUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_LinkUrl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitID] [int] NOT NULL,
	[MaterialCode] [nvarchar](250) NOT NULL,
	[MaterialName] [nvarchar](250) NULL,
	[MinQuantity] [decimal](18, 2) NOT NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[OrderCode] [nvarchar](250) NULL,
	[CustomerName] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Status] [int] NULL,
	[ReasonCancel] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductDetailID] [int] NULL,
	[Quantity] [int] NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetailsTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetailsTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetailsID] [int] NOT NULL,
	[ToppingID] [int] NOT NULL,
	[ToppingPrice] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_OrderDetailsTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](250) NULL,
	[ProductName] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[Description] [nvarchar](250) NULL,
	[ProductTypeID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductSizeID] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SizeCode] [nvarchar](250) NULL,
	[SizeName] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductSize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTopping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTopping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ToppingID] [int] NULL,
	[ProductID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
 CONSTRAINT [PK_ProductTopping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](250) NULL,
	[TypeName] [nvarchar](250) NULL,
	[GroupTypeID] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierCode] [nvarchar](150) NOT NULL,
	[SupplierName] [nvarchar](250) NULL,
	[PhoneNumber] [nvarchar](250) NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topping]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ToppingCode] [nvarchar](150) NULL,
	[ToppingName] [nvarchar](250) NULL,
	[ToppingPrice] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Topping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 7/9/2025 8:23:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UnitCode] [nvarchar](150) NULL,
	[UnitName] [nvarchar](250) NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](150) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='BURG')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('BURG',N'Burger',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='CHICK')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('CHICK',N'Chicken',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='PIZZA')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('PIZZA',N'Pizza',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='SALAD')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('SALAD',N'Salad',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='DRNK')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('DRNK',N'Drink',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='SIDE')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('SIDE',N'Side',0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM ProductType WHERE TypeCode='SETS')
INSERT INTO ProductType(TypeCode,TypeName,IsDelete,CreatedDate) VALUES ('SETS',N'Set Menu',0,GETDATE());

-- Size
IF NOT EXISTS (SELECT 1 FROM ProductSize WHERE SizeCode='S')
INSERT INTO ProductSize(SizeCode,SizeName,IsDelete) VALUES ('S',N'Small',0);
IF NOT EXISTS (SELECT 1 FROM ProductSize WHERE SizeCode='M')
INSERT INTO ProductSize(SizeCode,SizeName,IsDelete) VALUES ('M',N'Medium',0);
IF NOT EXISTS (SELECT 1 FROM ProductSize WHERE SizeCode='L')
INSERT INTO ProductSize(SizeCode,SizeName,IsDelete) VALUES ('L',N'Large',0);

DECLARE @PT_BURG INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='BURG');
DECLARE @PT_CHICK INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='CHICK');
DECLARE @PT_PIZZA INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='PIZZA');
DECLARE @PT_SALAD INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='SALAD');
DECLARE @PT_DRNK INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='DRNK');
DECLARE @PT_SIDE INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='SIDE');
DECLARE @PT_SETS INT = (SELECT TOP 1 ID FROM ProductType WHERE TypeCode='SETS');

DECLARE @S_S INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='S');
DECLARE @S_M INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='M');
DECLARE @S_L INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='L');

/* =========================
   DATA CHO DRINK
   ========================= */
-- Coke (cập nhật giá + ảnh nếu thiếu)
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='DR001')
INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
VALUES ('DR001',N'Coke',1,N'Nước ngọt có gas',@PT_DRNK,0,GETDATE());

DECLARE @P_DR001 INT = (SELECT TOP 1 ID FROM Product WHERE ProductCode='DR001');
IF NOT EXISTS (SELECT 1 FROM ProductDetails WHERE ProductID=@P_DR001 AND ProductSizeID=@S_M)
INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES (@P_DR001,@S_M,15000,0);
IF NOT EXISTS (SELECT 1 FROM ProductImage WHERE ProductID=@P_DR001)
INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
VALUES (@P_DR001,'https://picsum.photos/seed/coke/800/400','coke.jpg',0);

-- Orange Juice
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='DR002')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('DR002',N'Nước cam ép',1,N'Fresh orange juice',@PT_DRNK,0,GETDATE());
  DECLARE @P_DR002 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES (@P_DR002,@S_M,25000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_DR002,'https://picsum.photos/seed/orange-juice/800/400','orange-juice.jpg',0);
END

-- Iced Latte
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='DR003')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('DR003',N'Cà phê latte đá',1,N'Iced Latte',@PT_DRNK,0,GETDATE());
  DECLARE @P_DR003 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES (@P_DR003,@S_M,32000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_DR003,'https://picsum.photos/seed/iced-latte/800/400','iced-latte.jpg',0);
END

/* =========================
   DATA CHO BURGER
   ========================= */
-- Classic Burger (nếu bạn đã có vẫn giữ nguyên)
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='BG001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('BG001',N'Classic Burger',1,N'Bánh burger bò cổ điển',@PT_BURG,0,GETDATE());
  DECLARE @P_BG001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_BG001,@S_S,45000,0),(@P_BG001,@S_M,55000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_BG001,'https://picsum.photos/seed/classic-burger/800/400','classic-burger.jpg',0);
END

-- Double Beef Burger
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='BG003')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('BG003',N'Double Beef Burger',1,N'Burger bò 2 lớp phô mai',@PT_BURG,0,GETDATE());
  DECLARE @P_BG003 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_BG003,@S_S,59000,0),(@P_BG003,@S_M,69000,0),(@P_BG003,@S_L,79000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_BG003,'https://picsum.photos/seed/double-beef/800/400','double-beef.jpg',0);
END

-- Spicy Chicken Burger
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='BG004')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('BG004',N'Spicy Chicken Burger',1,N'Gà cay giòn',@PT_BURG,0,GETDATE());
  DECLARE @P_BG004 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_BG004,@S_S,49000,0),(@P_BG004,@S_M,59000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_BG004,'https://picsum.photos/seed/spicy-chicken-burger/800/400','spicy-chicken-burger.jpg',0);
END

/* =========================
   DATA CHO CHICKEN
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='CK001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('CK001',N'Gà rán giòn 2 miếng',1,N'Fried chicken 2pcs',@PT_CHICK,0,GETDATE());
  DECLARE @P_CK001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_CK001,@S_M,55000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_CK001,'https://picsum.photos/seed/fried-chicken-2pcs/800/400','fried-chicken-2pcs.jpg',0);
END

/* =========================
   DATA CHO PIZZA
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='PZ001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('PZ001',N'Pizza pepperoni',1,N'Pepperoni cheese',@PT_PIZZA,0,GETDATE());
  DECLARE @P_PZ001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_PZ001,@S_M,99000,0),(@P_PZ001,@S_L,129000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_PZ001,'https://picsum.photos/seed/pizza-pepperoni/800/400','pizza-pepperoni.jpg',0);
END

/* =========================
   DATA CHO SALAD
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='SL001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('SL001',N'Salad Caesar',1,N'Rau tươi, sốt Caesar',@PT_SALAD,0,GETDATE());
  DECLARE @P_SL001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES (@P_SL001,@S_M,45000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_SL001,'https://picsum.photos/seed/salad-caesar/800/400','salad-caesar.jpg',0);
END

/* =========================
   DATA CHO SIDE
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='SZ001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('SZ001',N'Khoai tây chiên',1,N'French fries',@PT_SIDE,0,GETDATE());
  DECLARE @P_SZ001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES
      (@P_SZ001,@S_S,19000,0),(@P_SZ001,@S_M,25000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_SZ001,'https://picsum.photos/seed/french-fries/800/400','french-fries.jpg',0);
END

/* =========================
   DATA CHO SET MENU
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Product WHERE ProductCode='ST001')
BEGIN
  INSERT INTO Product(ProductCode,ProductName,IsActive,Description,ProductTypeID,IsDeleted,CreatedDate)
  VALUES ('ST001',N'Combo Gà + Khoai + Nước',1,N'Set tiết kiệm',@PT_SETS,0,GETDATE());
  DECLARE @P_ST001 INT = SCOPE_IDENTITY();
  INSERT INTO ProductDetails(ProductID,ProductSizeID,Price,IsDelete) VALUES (@P_ST001,@S_M,99000,0);
  INSERT INTO ProductImage(ProductID,ImageUrl,ImageName,IsDelete)
  VALUES (@P_ST001,'https://picsum.photos/seed/combo-chicken-fries-coke/800/400','combo.jpg',0);
END

/* =========================
   TOPPING (tuỳ chọn)
   ========================= */
IF NOT EXISTS (SELECT 1 FROM Topping WHERE ToppingCode='CHEESE')
INSERT INTO Topping(ToppingCode,ToppingName,ToppingPrice,IsDelete,CreatedDate) VALUES ('CHEESE',N'Phô mai thêm',10000,0,GETDATE());
IF NOT EXISTS (SELECT 1 FROM Topping WHERE ToppingCode='BACON')
INSERT INTO Topping(ToppingCode,ToppingName,ToppingPrice,IsDelete,CreatedDate) VALUES ('BACON',N'Thịt xông khói',15000,0,GETDATE());



DECLARE @TypeMap TABLE(
  TypeCode  varchar(10),
  Prefix    varchar(4),
  BaseName  nvarchar(50),
  BasePrice int
);
INSERT INTO @TypeMap(TypeCode,Prefix,BaseName,BasePrice)
VALUES ('BURG','BG',N'Burger',45000),
       ('CHICK','CK',N'Gà rán',50000),
       ('PIZZA','PZ',N'Pizza',95000),
       ('SALAD','SL',N'Salad',40000),
       ('DRNK','DR',N'Drink',12000),
       ('SIDE','SZ',N'Side',16000),
       ('SETS','ST',N'Combo',90000);

/* ====== DÃY SỐ 1..10 ====== */
WITH N AS (
  SELECT 1 AS n
  UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5
  UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10
)
-- Lấy ID size
, S AS (
  SELECT
    (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='S') AS S_S,
    (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='M') AS S_M,
    (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='L') AS S_L
)
-- Lấy ProductTypeID theo TypeCode
, PT AS (
  SELECT t.TypeCode, t.ID AS ProductTypeID
  FROM ProductType t
  WHERE t.IsDelete = 0 OR t.IsDelete IS NULL
)
-- GEN CODE + TÊN CHUẨN 001..010
, GEN AS (
  SELECT m.TypeCode,
         m.Prefix + RIGHT('000' + CAST(n.n AS varchar(3)), 3) AS GenCode,
         CONCAT(m.BaseName, N' ', n.n) AS GenName,
         CONCAT(N'Món ', m.BaseName, N' số ', n.n) AS GenDesc,
         m.BasePrice
  FROM @TypeMap m
  CROSS JOIN N
)
-- THÊM PRODUCT (nếu thiếu)
INSERT INTO Product(ProductCode, ProductName, IsActive, [Description], ProductTypeID, IsDeleted, CreatedDate)
SELECT g.GenCode, g.GenName, 1, g.GenDesc, pt.ProductTypeID, 0, GETDATE()
FROM GEN g
JOIN PT pt ON pt.TypeCode = g.TypeCode
LEFT JOIN Product p ON p.ProductCode = g.GenCode
WHERE p.ID IS NULL
OPTION (MAXRECURSION 0);

-- THÊM IMAGE (nếu thiếu)
INSERT INTO ProductImage(ProductID, ImageUrl, ImageName, IsDelete)
SELECT p.ID,
       'https://picsum.photos/seed/' + p.ProductCode + '/800/400',
       p.ProductCode + '.jpg',
       0
FROM Product p
LEFT JOIN ProductImage i ON i.ProductID = p.ID
WHERE i.ProductID IS NULL;

/* ====== START: block thêm giá S/M/L (chạy 1 mạch, KHÔNG đặt GO giữa chừng) ====== */

/* 1) Lấy ID size (nếu bạn đã DECLARE ở trên, có thể bỏ 3 dòng này) */
DECLARE @S_S INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='S');
DECLARE @S_M INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='M');
DECLARE @S_L INT = (SELECT TOP 1 ID FROM ProductSize WHERE SizeCode='L');

/* 2) Map loại → BasePrice (nếu đã có @TypeMap ở trên mà cùng batch thì bỏ đoạn này) */
DECLARE @TypeMap TABLE(
  TypeCode  varchar(10),
  Prefix    varchar(4),
  BaseName  nvarchar(50),
  BasePrice int
);
INSERT INTO @TypeMap(TypeCode,Prefix,BaseName,BasePrice)
VALUES ('BURG','BG',N'Burger',45000),
       ('CHICK','CK',N'Gà rán',50000),
       ('PIZZA','PZ',N'Pizza',95000),
       ('SALAD','SL',N'Salad',40000),
       ('DRNK','DR',N'Drink',12000),
       ('SIDE','SZ',N'Side',16000),
       ('SETS','ST',N'Combo',90000);

/* 3) Giá size S (nếu thiếu) */
INSERT INTO ProductDetails(ProductID, ProductSizeID, Price, IsDelete)
SELECT p.ID, @S_S,
       CASE pt.TypeCode
         WHEN 'DRNK'  THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) *  500))
         WHEN 'SIDE'  THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) *  500))
         WHEN 'SETS'  THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) * 1500))
         WHEN 'PIZZA' THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) * 2000))
         WHEN 'CHICK' THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) * 1500))
         WHEN 'SALAD' THEN (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) *  800))
         ELSE             (tm.BasePrice + (CAST(RIGHT(p.ProductCode,3) AS int) * 1200)) -- BURG & default
       END,
       0
FROM Product p
JOIN ProductType pt ON pt.ID = p.ProductTypeID
JOIN @TypeMap    tm ON tm.TypeCode = pt.TypeCode
WHERE NOT EXISTS (
  SELECT 1 FROM ProductDetails d
  WHERE d.ProductID = p.ID AND d.ProductSizeID = @S_S
);

/* 4) Giá size M (nếu thiếu) = S + 10k */
INSERT INTO ProductDetails(ProductID, ProductSizeID, Price, IsDelete)
SELECT p.ID, @S_M, dS.Price + 10000, 0
FROM Product p
JOIN ProductDetails dS ON dS.ProductID = p.ID AND dS.ProductSizeID = @S_S
WHERE NOT EXISTS (
  SELECT 1 FROM ProductDetails dM
  WHERE dM.ProductID = p.ID AND dM.ProductSizeID = @S_M
);

/* 5) Giá size L (nếu thiếu) = S + 20k */
INSERT INTO ProductDetails(ProductID, ProductSizeID, Price, IsDelete)
SELECT p.ID, @S_L, dS.Price + 20000, 0
FROM Product p
JOIN ProductDetails dS ON dS.ProductID = p.ID AND dS.ProductSizeID = @S_S
WHERE NOT EXISTS (
  SELECT 1 FROM ProductDetails dL
  WHERE dL.ProductID = p.ID AND dL.ProductSizeID = @S_L
);

/* ====== END block ====== */
