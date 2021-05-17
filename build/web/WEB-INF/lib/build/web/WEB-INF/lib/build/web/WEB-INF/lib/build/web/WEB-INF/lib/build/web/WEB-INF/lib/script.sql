USE [DrinkStore]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](20) NULL,
	[Description] [nvarchar](30) NULL,
 CONSTRAINT [PK__Categori__19093A2B4C0A0112] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[Username] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Content] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[ProductID] [varchar](8) NULL,
	[OrderQuantity] [int] NULL,
	[TotalPrice] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[OrderQuantity] [int] NULL,
	[TotalPrice] [varchar](50) NULL,
	[ProductID] [varchar](8) NULL,
	[Username] [nvarchar](50) NULL,
 CONSTRAINT [PK__Orders__C3905BAF2DDC85AA] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [varchar](8) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryID] [int] NULL,
	[Price] [varchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK__Products__3214EC27D78E304F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/6/2021 9:55:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK__Users__536C85E5D145EB9A] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Wine', N'wine.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Cocktail', N'cocktail.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Beer', N'beer.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Spirits', N'spirits.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Liqueur', N'liqueur.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Softdrink', N'softdrink.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Combo', N'gift.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Glassware', N'glass.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (9, N'Corkscrew', N'corkscrew.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (10, N'Giftpacking', N'giftpacking.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (11, N'Energy Drink', N'energydrink.jpg')
GO
INSERT [dbo].[FeedBack] ([Username], [Email], [Phone], [Content]) VALUES (N'son', N'son@gmail.com', N'0123456789', N'The best Drink store in the World!!!')
GO
INSERT [dbo].[Orders] ([OrderID], [OrderQuantity], [TotalPrice], [ProductID], [Username]) VALUES (2, 1, N'1392000', N'SP09', N'son')
INSERT [dbo].[Orders] ([OrderID], [OrderQuantity], [TotalPrice], [ProductID], [Username]) VALUES (3, 1, N'258000', N'SP15', N'son')
INSERT [dbo].[Orders] ([OrderID], [OrderQuantity], [TotalPrice], [ProductID], [Username]) VALUES (4, 1, N'258000', N'SP15', N'huyen')
INSERT [dbo].[Orders] ([OrderID], [OrderQuantity], [TotalPrice], [ProductID], [Username]) VALUES (5, 1, N'1182000', N'SP07', N'longndt')
INSERT [dbo].[Orders] ([OrderID], [OrderQuantity], [TotalPrice], [ProductID], [Username]) VALUES (6, 10, N'250000', N'SP18', N'son')
GO
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP01', N'Alpha Zeta Amarone', 1, N'959000', N'img1.PNG', N'ABV 15%
Made from dried cherries and blueberries, with notes of spiced autumn fruit compote')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP02', N'Lo Lo Albarino', 1, N'385000', N'img2.PNG', N'ABV 12.5% White wine')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP03', N'Bols Grenadine Syrup 750ML', 2, N'275000', N'img3.PNG', N'ABV 0%
Fresh pomegranate juice, fine raspberry and sweet strawberry extracts  from Holland')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP04', N'Finest Call White Peach Puree', 2, N'299000', N'img4.PNG', N'ABV 0% Create cutting edge cocktails every time. The world’s best selling cocktail mix')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP05', N'Sierra Nevada Dankful IPA Can', 3, N'88000', N'img5.PNG', N'ABV 7.4%
Craft beer from Mills River, North Carolina, USA. Producer:
Sierra Nevada Brewing Co')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP06', N'BrewDog Indie Pale Ale Can', 3, N'62000', N'img6.PNG', N'ABV 4.2%
Made from tropical and citrus fruit set against a caramel and biscuit malt backbone')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP07', N'Buffalo Trace Whiskey 700ML', 4, N'1182000', N'img7.PNG', N'ABV 40%
 
Made from Kentucky and Indiana corn, selected rye, and superior malted barley')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP08', N'Dalymount Gin 700ML', 4, N'1375000', N'img8.PNG', N'ABV 37.5%
Limited release bottling of Dalymount Gin, handmade in Wicklow')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP09', N'Teeling Single Malt 700ML', 4, N'1392000', N'img9.PNG', N'ABV 46%
This special whiskey 28 years old is limited to just 4,000 bottles.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP10', N'Bols Advocaat 700ML', 5, N'495000', N'img10.PNG', N'ABV 15%
Blend of egg yolks, aromatic spirits, sugar and brandy with a slight hint of vanilla.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP11', N'Bols Apricot Brandy 700ML', 5, N'669000', N'img11.PNG', N'ABV 24%
BOLS Apricot Brandy uses fresh apricot juice to give it a richer, fuller flavour 
')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP12', N'San Pellegrino Orange Can', 6, N'27000', N'img12.PNG', N'Sanpellegrino Aranciata is Italy’s famous aranciata, with a history dating back to 1932.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP13', N'Synerchi Original Sencha Tea', 6, N'75000', N'img13.PNG', N'Certified organic, naturally free from dairy, gluten and soy, with only 59 kCals per bottle ')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP14', N'Redbreast Miniature Gift Pack 3 x 50ML', 7, N'829000', N'img14.PNG', N'Collection: Redbreast 12 year old, Redbreast 15 year old and Redbreast Lustau from Single Pot Still')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP15', N'Erdinger 1 Liter Stein', 8, N'258000', N'img15.png', N'For those that like their beer in a one litre serving.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP16', N'Pulltex Double Lever Corkscrew', 9, N'247000', N'img16.PNG', N'Pulltex Pullparrot corkscrew, one of the worlds best selling corkscrews / waiters knife')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP17', N'ANY TWO IN WOOD', 10, N'165000', N'img17.PNG', N'This pinewood box allows you to put any two standard size bottles of wine or spirits into it.')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Price], [Image], [Description]) VALUES (N'SP18', N'Hacker Energy', 11, N'25000', N'energydrink.jpg', N'NOBODY can give you FREEDOM, NOBODY can give you EQUALITY or JUSTICE. If you are a MAN, you TAKE IT!')
GO
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'3lift', N'3lift', N'3lift@gmail.com', N'0123456789', N'Yen Son, Quoc Oai, Hanoi')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'admin', N'admin', N'admin@gmail.com', N'11111', N'Hanoi University, Nam Tu Liem, Hanoi')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'chung', N'123', N'chung@gmail.com', N'0678912345', N'Thai Binh')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'dung', N'123', N'dung@gmail.com', N'0456789123', N'Thai Binh')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'hang', N'123', N'hang@gmail.com', N'0567891234', N'Nghe An')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'huyen', N'123', N'huyen@gmail.com', N'0345678912', N'Hanoi')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'longndt', N'123', N'longndt@hanu.edu.vn', N'0987654321', N'Hanoi')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'son', N'123', N'son@gmail.com', N'0379855340', N'Yen Son, Quoc Oai, Hanoi')
INSERT [dbo].[Users] ([Username], [Pass], [email], [phone], [address]) VALUES (N'viet', N'123', N'viet@gmail.com', N'0234567891', N'Hai Phong')
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK__FeedBack__Userna__2C3393D0] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK__FeedBack__Userna__2C3393D0]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__ProductI__182C9B23] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__ProductI__182C9B23]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Username__173876EA] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Username__173876EA]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__Catego__1273C1CD] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__Catego__1273C1CD]
GO
