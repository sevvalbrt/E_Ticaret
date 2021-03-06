USE [E_Ticaret]
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[AdresId] [int] IDENTITY(1,1) NOT NULL,
	[KisiId] [int] NULL,
	[Adres] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Adresler] PRIMARY KEY CLUSTERED 
(
	[AdresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favoriler]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoriler](
	[FavoriId] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NOT NULL,
	[KisiId] [int] NOT NULL,
 CONSTRAINT [PK_Favoriler] PRIMARY KEY CLUSTERED 
(
	[FavoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[TelNo] [nvarchar](50) NULL,
	[EMail] [nvarchar](50) NULL,
	[Mesaj] [nvarchar](50) NULL,
	[KisiId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kampanyalar]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanyalar](
	[KampanyaId] [int] IDENTITY(1,1) NOT NULL,
	[KampanyaAdi] [nvarchar](50) NOT NULL,
	[IndirimOrani] [int] NOT NULL,
	[BaslangicTarihi] [datetime] NULL,
	[BitisTarihi] [datetime] NULL,
 CONSTRAINT [PK_Kampanyalar] PRIMARY KEY CLUSTERED 
(
	[KampanyaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriId] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](50) NOT NULL,
	[KampanyaId] [int] NOT NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kisiler]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kisiler](
	[KisiId] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NULL,
	[KisiAdi] [nvarchar](50) NOT NULL,
	[KisiSoyadi] [nvarchar](50) NOT NULL,
	[TelNo] [char](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kisiler] PRIMARY KEY CLUSTERED 
(
	[KisiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markalar]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalar](
	[MarkaId] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[MarkaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzellikDeger]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzellikDeger](
	[DegerId] [int] IDENTITY(1,1) NOT NULL,
	[DegerAdi] [nvarchar](50) NOT NULL,
	[OzellikTipId] [int] NOT NULL,
 CONSTRAINT [PK_OzellikDeger] PRIMARY KEY CLUSTERED 
(
	[DegerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OzellikTip]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OzellikTip](
	[OzellikTipId] [int] IDENTITY(1,1) NOT NULL,
	[OzellikAdi] [nvarchar](50) NOT NULL,
	[KategoriId] [int] NOT NULL,
 CONSTRAINT [PK_OzellikTip] PRIMARY KEY CLUSTERED 
(
	[OzellikTipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resimler]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resimler](
	[ResimId] [int] IDENTITY(1,1) NOT NULL,
	[BuyukBoy] [nvarchar](50) NULL,
	[OrtaBoy] [nvarchar](50) NULL,
	[KucukBoy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Resimler] PRIMARY KEY CLUSTERED 
(
	[ResimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roller]    Script Date: 20.05.2019 13:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roller] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sepet]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sepet](
	[SepetId] [int] IDENTITY(1,1) NOT NULL,
	[KisiId] [int] NULL,
	[UrunId] [int] NOT NULL,
	[Adet] [int] NOT NULL,
	[EklenmeTarihi] [datetime] NOT NULL,
	[Tutar] [money] NOT NULL,
 CONSTRAINT [PK_Sepet] PRIMARY KEY CLUSTERED 
(
	[SepetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisId] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NOT NULL,
	[SiparisTarihi] [datetime] NOT NULL,
	[KisiId] [int] NOT NULL,
	[SepetId] [int] NOT NULL,
	[SiparisTutar] [money] NOT NULL,
	[SiparisDurum] [bit] NOT NULL,
 CONSTRAINT [PK_Siparisler] PRIMARY KEY CLUSTERED 
(
	[SiparisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NOT NULL,
	[SatisFiyat] [money] NOT NULL,
	[UrunAciklama] [nvarchar](50) NOT NULL,
	[KategoriId] [int] NOT NULL,
	[MarkaId] [int] NOT NULL,
	[ResimId] [int] NOT NULL,
	[KampanyaId] [int] NOT NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrunOzellik]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunOzellik](
	[UrunId] [int] NOT NULL,
	[OzellikTipId] [int] NOT NULL,
	[DegerId] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Favoriler] ON 

INSERT [dbo].[Favoriler] ([FavoriId], [UrunId], [KisiId]) VALUES (7, 83, 10)
INSERT [dbo].[Favoriler] ([FavoriId], [UrunId], [KisiId]) VALUES (15, 15, 2)
SET IDENTITY_INSERT [dbo].[Favoriler] OFF
SET IDENTITY_INSERT [dbo].[Kampanyalar] ON 

INSERT [dbo].[Kampanyalar] ([KampanyaId], [KampanyaAdi], [IndirimOrani], [BaslangicTarihi], [BitisTarihi]) VALUES (1, N'Anneler Günü', 10, NULL, NULL)
INSERT [dbo].[Kampanyalar] ([KampanyaId], [KampanyaAdi], [IndirimOrani], [BaslangicTarihi], [BitisTarihi]) VALUES (2, N'Babalar Günü', 15, NULL, NULL)
INSERT [dbo].[Kampanyalar] ([KampanyaId], [KampanyaAdi], [IndirimOrani], [BaslangicTarihi], [BitisTarihi]) VALUES (3, N'Yok', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Kampanyalar] OFF
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (2, N'Topuklu Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (15, N'Kadın Spor Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (16, N'Kadın Günlük Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (17, N'Kadın Bot', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (18, N'Kadın Çizme', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (19, N'Kadın Babet', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (20, N'Kadın Terlik/Sandalat', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (21, N'Erkek Spor Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (22, N'Erkek Klasik Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (23, N'Erkek Günlük Ayyakabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (24, N'Erkek Bot', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (25, N'Erkek Terlik/Sandalet', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (26, N'Kız Spor Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (27, N'Kız Günlük Ayakkabı', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (28, N'Kız Bot', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (29, N'Kız Çizme', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (30, N'Kız Babett', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (31, N'Kız Terlik/Sandalet', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (32, N'Erkek Çocuk Spor', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (33, N'Erkek Çocuk Günlük', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (35, N'Erkek Çocuk Bot', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (36, N'Erkek Çocuk Çizme', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (37, N'Erkek Çocuk Terlik/Sandalet', 3)
INSERT [dbo].[Kategoriler] ([KategoriId], [KategoriAdi], [KampanyaId]) VALUES (38, N'ğğğğğğ', 1)
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Kisiler] ON 

INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (1, 1, N'meral', N'tas', N'05369857485    ', N'spaceshoes4@gmail.com', N'123456', N'meralTd')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (2, NULL, N'sevvall', N'barut', N'123456789      ', N'sevval11@gmail.com', N'1234567', N'svvll')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (3, NULL, N'fatma', N'deniz', N'1559           ', N'fatma1@gmail.com', N'158', N'rm')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (4, 2, N'ayse', N'gül', N'125            ', N'ayse@gmail.com', N'1425', N'ayse')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (5, 2, N'summeye', N'kula', N'745            ', N'kula@gmail.com', N'4444', N'kula')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (6, 2, N'summeye', N'uygı', N'879            ', N'yu@g.com', N'159', N'sy')
INSERT [dbo].[Kisiler] ([KisiId], [RolId], [KisiAdi], [KisiSoyadi], [TelNo], [Email], [Sifre], [KullaniciAdi]) VALUES (10, NULL, N'ayse', N'sa', N'55             ', N'a@gmail.com', N'123', N'as')
SET IDENTITY_INSERT [dbo].[Kisiler] OFF
SET IDENTITY_INSERT [dbo].[Markalar] ON 

INSERT [dbo].[Markalar] ([MarkaId], [MarkaAdi]) VALUES (1, N'kinetix')
SET IDENTITY_INSERT [dbo].[Markalar] OFF
SET IDENTITY_INSERT [dbo].[Resimler] ON 

INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (1, N'ayakkabi.jpg', N'ayakkabi.jpg', N'ayakkabi.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (2, N'OFFBYZ1111X40_1_org.jpg', N'OFFBYZ1111X40_1_org.jpg', N'OFFBYZ1111X40_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (3, N'091201005208_3_org.jpg', N'091201005208_3_org.jpg', N'091201005208_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (4, N'191665206316_2_org.jpg', N'191665206316_2_org.jpg', N'191665206316_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (5, N'885259556603_2_org.jpg', N'885259556603_2_org.jpg', N'885259556603_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (6, N'885641787394_1_org.jpg', N'885641787394_1_org.jpg', N'885641787394_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (7, N'887350935202_1_org.jpg', N'887350935202_1_org.jpg', N'887350935202_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (8, N'2100000087932_1_org.jpg', N'2100000087932_1_org.jpg', N'2100000087932_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (9, N'3559898144381_1_org.jpg', N'3559898144381_1_org.jpg', N'3559898144381_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (10, N'3559898214992_1_org.jpg', N'3559898214992_1_org.jpg', N'3559898214992_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (11, N'3764778754820_1_org.jpg', N'3764778754820_1_org.jpg', N'3764778754820_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (12, N'4053057783385_1_org.jpg', N'4053057783385_1_org.jpg', N'4053057783385_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (13, N'4053057783385_1_org.jpg', N'4053057783385_1_org.jpg', N'4053057783385_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (14, N'5471700237273_1_org.jpg', N'5471700237273_1_org.jpg', N'5471700237273_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (15, N'5471700372592_1_org.jpg', N'5471700372592_1_org.jpg', N'5471700372592_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (16, N'5700494916263_1_org.jpg', N'5700494916263_1_org.jpg', N'5700494916263_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (17, N'7702007240962_3_org.jpg', N'7702007240962_3_org.jpg', N'7702007240962_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (18, N'8680875438478_3_org.jpg', N'8680875438478_3_org.jpg', N'8680875438478_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (19, N'8680875468369_1_org.jpg', N'8680875468369_1_org.jpg', N'8680875468369_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (20, N'8680875542694_1_org.jpg', N'8680875542694_1_org.jpg', N'8680875542694_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (21, N'8680875686916_1_org.jpg', N'8680875686916_1_org.jpg', N'8680875686916_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (22, N'8681494732640_1_org.jpg', N'8681494732640_1_org.jpg', N'8681494732640_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (23, N'8681494740713_1_org.jpg', N'8681494740713_1_org.jpg', N'8681494740713_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (24, N'8681531122335_1_org.jpg', N'8681531122335_1_org.jpg', N'8681531122335_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (25, N'8681564472353_1_org.jpg', N'8681564472353_1_org.jpg', N'8681564472353_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (26, N'8681602879359_2_org.jpg', N'8681602879359_2_org.jpg', N'8681602879359_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (27, N'8681711688330_1_org.jpg', N'8681711688330_1_org.jpg', N'8681711688330_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (28, N'8681711747143_1_org.jpg', N'8681711747143_1_org.jpg', N'8681711747143_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (29, N'8681711747143_1_org.jpg', N'8681711747143_1_org.jpg', N'8681711747143_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (30, N'8681862644803_1_org.jpg', N'8681862644803_1_org.jpg', N'8681862644803_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (31, N'8681862781621_2_org.jpg', N'8681862781621_2_org.jpg', N'8681862781621_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (32, N'AYON1292711_1_org.jpg', N'AYON1292711_1_org.jpg', N'AYON1292711_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (33, N'DR01294MKHVN0143_1_org.jpg', N'DR01294MKHVN0143_1_org.jpg', N'DR01294MKHVN0143_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (34, N'SB7550000586170_1_org.jpg', N'SB7550000586170_1_org.jpg', N'SB7550000586170_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (35, N'869546384881_1_org.jpg', N'869546384881_1_org.jpg', N'869546384881_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (36, N'869546412558_1_org.jpg', N'869546412558_1_org.jpg', N'869546412558_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (37, N'2932807_1_org.jpg', N'2932807_1_org.jpg', N'2932807_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (38, N'091209018200_1_org.jpg', N'091209018200_1_org.jpg', N'091209018200_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (39, N'091209252581_1_org.jpg', N'091209252581_1_org.jpg', N'091209252581_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (40, N'130220192048_2_org.jpg', N'130220192048_2_org.jpg', N'130220192048_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (41, N'191448172296_3_org.jpg', N'191448172296_3_org.jpg', N'191448172296_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (42, N'883503861237_1_org.jpg', N'883503861237_1_org.jpg', N'883503861237_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (43, N'4052001586157_1_org.jpg', N'4052001586157_1_org.jpg', N'4052001586157_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (44, N'4057283654075_2_org.jpg', N'4057283654075_2_org.jpg', N'4057283654075_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (45, N'4059323567796_1_org.jpg', N'4059323567796_1_org.jpg', N'4059323567796_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (46, N'4060978816641_1_org.jpg', N'4060978816641_1_org.jpg', N'4060978816641_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (47, N'5021468263801_1_org.jpg', N'5021468263801_1_org.jpg', N'5021468263801_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (48, N'5700494279078_1_org.jpg', N'5700494279078_1_org.jpg', N'5700494279078_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (49, N'5700494279207_1_org.jpg', N'5700494279207_1_org.jpg', N'5700494279207_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (50, N'8026948874628_1_org.jpg', N'8026948874628_1_org.jpg', N'8026948874628_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (51, N'8055321441522_1_org.jpg', N'8055321441522_1_org.jpg', N'8055321441522_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (52, N'8421224675607_1_org.jpg', N'8421224675607_1_org.jpg', N'8421224675607_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (53, N'8421225096715_1_org.jpg', N'8421225096715_1_org.jpg', N'8421225096715_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (54, N'8421225099013_1_org.jpg', N'8421225099013_1_org.jpg', N'8421225099013_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (55, N'8680096393488_1_org.jpg', N'8680096393488_1_org.jpg', N'8680096393488_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (56, N'8680620961428_1_org.jpg', N'8680620961428_1_org.jpg', N'8680620961428_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (57, N'8681358786154_1_org.jpg', N'8681358786154_1_org.jpg', N'8681358786154_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (58, N'8681367216574_1_org.jpg', N'8681367216574_1_org.jpg', N'8681367216574_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (59, N'8681564092056_1_org.jpg', N'8681564092056_1_org.jpg', N'8681564092056_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (60, N'8681564103752_1_org.jpg', N'8681564103752_1_org.jpg', N'8681564103752_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (61, N'8681564413103_1_org.jpg', N'8681564413103_1_org.jpg', N'8681564413103_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (62, N'8681564419259_1_org.jpg', N'8681564419259_1_org.jpg', N'8681564419259_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (63, N'8681564427858_1_org.jpg', N'8681564427858_1_org.jpg', N'8681564427858_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (64, N'8681602294633_2_org.jpg', N'8681602294633_2_org.jpg', N'8681602294633_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (65, N'8681602329878_1_org.jpg', N'8681602329878_1_org.jpg', N'8681602329878_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (66, N'8681602348404_1_org.jpg', N'8681602348404_1_org.jpg', N'8681602348404_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (67, N'8681602804054_1_org.jpg', N'8681602804054_1_org.jpg', N'8681602804054_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (68, N'8681602874842_1_org.jpg', N'8681602874842_1_org.jpg', N'8681602874842_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (69, N'8681711120588_1_org.jpg', N'8681711120588_1_org.jpg', N'8681711120588_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (70, N'8681711222848_1_org.jpg', N'8681711222848_1_org.jpg', N'8681711222848_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (71, N'8681862471799_1_org.jpg', N'8681862471799_1_org.jpg', N'8681862471799_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (72, N'8681862626908_1_org.jpg', N'8681862626908_1_org.jpg', N'8681862626908_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (73, N'8690007950396_1_org.jpg', N'8690007950396_1_org.jpg', N'8690007950396_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (74, N'8692519673473_1_org.jpg', N'8692519673473_1_org.jpg', N'8692519673473_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (75, N'8693132935863_1_org.jpg', N'8693132935863_1_org.jpg', N'8693132935863_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (76, N'869546384881_1_org.jpg', N'869546384881_1_org.jpg', N'869546384881_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (77, N'869546412558_1_org.jpg', N'869546412558_1_org.jpg', N'869546412558_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (78, N'884802415770_2_org.jpg', N'884802415770_2_org.jpg', N'884802415770_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (79, N'1907654088912_2_org.jpg', N'1907654088912_2_org.jpg', N'1907654088912_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (80, N'1907654244004_1_org.jpg', N'1907654244004_1_org.jpg', N'1907654244004_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (81, N'2002004063676_2_org.jpg', N'2002004063676_2_org.jpg', N'2002004063676_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (82, N'2002004275963_1_org.jpg', N'2002004275963_1_org.jpg', N'2002004275963_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (83, N'3559898041369_1_org.jpg', N'3559898041369_1_org.jpg', N'3559898041369_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (84, N'3559898126790_1_org.jpg', N'3559898126790_1_org.jpg', N'3559898126790_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (85, N'3559898155196_1_org.jpg', N'3559898155196_1_org.jpg', N'3559898155196_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (86, N'3559898163559_1_org.jpg', N'3559898163559_1_org.jpg', N'3559898163559_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (87, N'3559898234792_1_org.jpg', N'3559898234792_1_org.jpg', N'3559898234792_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (88, N'3559898234891_1_org.jpg', N'3559898234891_1_org.jpg', N'3559898234891_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (89, N'3559898238844_1_org.jpg', N'3559898238844_1_org.jpg', N'3559898238844_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (90, N'3559898241967_1_org.jpg', N'3559898241967_1_org.jpg', N'3559898241967_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (91, N'3559898249970_1_org.jpg', N'3559898249970_1_org.jpg', N'3559898249970_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (92, N'3559898252024_1_org.jpg', N'3559898252024_1_org.jpg', N'3559898252024_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (93, N'3559898255421_1_org.jpg', N'3559898255421_1_org.jpg', N'3559898255421_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (94, N'3559898256701_1_org.jpg', N'3559898256701_1_org.jpg', N'3559898256701_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (95, N'4059506564239_3_org.jpg', N'4059506564239_3_org.jpg', N'4059506564239_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (96, N'5700494363517_1_org.jpg', N'5700494363517_1_org.jpg', N'5700494363517_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (97, N'6776776253967_1_org.jpg', N'6776776253967_1_org.jpg', N'6776776253967_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (98, N'7702007538533_2_org.jpg', N'7702007538533_2_org.jpg', N'7702007538533_2_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (99, N'7702007697117_3_org.jpg', N'7702007697117_3_org.jpg', N'7702007697117_3_org.jpg')
GO
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (100, N'8022058099166_3_org.jpg', N'8022058099166_3_org.jpg', N'8022058099166_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (101, N'8680875508706_3_org.jpgv', N'8680875508706_3_org.jpg', N'8680875508706_3_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (102, N'8680875551887_1_org.jpg', N'8680875551887_1_org.jpg', N'8680875551887_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (103, N'8680875569813_1_org.jpg', N'8680875569813_1_org.jpg', N'8680875569813_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (104, N'8680875583406_1_org.jpg', N'8680875583406_1_org.jpg', N'8680875583406_1_org.jpg')
INSERT [dbo].[Resimler] ([ResimId], [BuyukBoy], [OrtaBoy], [KucukBoy]) VALUES (105, N'8680875508706_org.jpg', N'8680875508706_org.jpg', N'8680875508706_org.jpg')
SET IDENTITY_INSERT [dbo].[Resimler] OFF
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (2, N'Kullanici')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (3, N'Ziyaretci')
SET IDENTITY_INSERT [dbo].[Roller] OFF
SET IDENTITY_INSERT [dbo].[Sepet] ON 

INSERT [dbo].[Sepet] ([SepetId], [KisiId], [UrunId], [Adet], [EklenmeTarihi], [Tutar]) VALUES (3, 10, 3, 0, CAST(N'2019-04-05T14:20:15.830' AS DateTime), 200.0000)
INSERT [dbo].[Sepet] ([SepetId], [KisiId], [UrunId], [Adet], [EklenmeTarihi], [Tutar]) VALUES (7, NULL, 98, 0, CAST(N'2019-04-05T15:18:12.367' AS DateTime), 100.0000)
SET IDENTITY_INSERT [dbo].[Sepet] OFF
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (3, N'Spor Ayakkabı', 200.0000, N'Kırmızı', 15, 1, 1, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (4, N'Erkek Spor Ayakkabı', 180.0000, N'Beyaz', 21, 1, 2, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (5, N'Erkek Terlik', 60.0000, N'Siyah', 25, 1, 3, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (6, N'Erkek Spor Ayakkabı', 280.0000, N'Siyag Spor', 21, 1, 4, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (7, N'Erkek Spor Ayakkabı', 280.0000, N'Beyaz Ayyakabı', 21, 1, 5, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (8, N'Erkek Klasik Ayakkabı', 170.0000, N'Klasik', 22, 1, 6, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (9, N'Erkek Terlik', 100.0000, N'Siyah Terlik', 25, 1, 7, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (10, N'Erkek Bot', 220.0000, N'Bot', 24, 1, 8, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (11, N'Erkek Klasik', 350.0000, N'Siyah', 22, 1, 9, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (12, N'Erkek Bot', 450.0000, N'Bot', 24, 1, 10, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (13, N'Erkek Bot', 300.0000, N'Siyah Bot', 24, 1, 11, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (14, N'Erkek Spor Ayakkabı', 220.0000, N'Bordo', 21, 1, 12, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (15, N'Erkek Günlük', 250.0000, N'Siyah', 23, 1, 14, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (16, N'Erkek Terlik', 100.0000, N'Siyah', 25, 1, 15, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (17, N'Erkek Spor Ayakkabı', 170.0000, N'Siyah', 21, 1, 16, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (18, N'Erkek Klasik Ayakkabı', 280.0000, N'Siyah', 22, 1, 17, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (19, N'Erkek Klasik', 220.0000, N'Siyah', 22, 1, 18, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (20, N'Erkek Spor Ayakkabı', 320.0000, N'Lacivert', 21, 1, 19, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (21, N'Erkek Bot', 150.0000, N'Siyah', 24, 1, 20, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (22, N'Erkek Bot', 210.0000, N'Siyah', 24, 1, 21, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (23, N'Erkek Klasik Ayakkabı', 300.0000, N'Lacivert', 22, 1, 22, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (24, N'Erkek Klasik Ayakkabı', 400.0000, N'Siyah', 22, 1, 23, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (25, N'Erkek Bot', 280.0000, N'Kahverengi', 24, 1, 24, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (26, N'Erkek Spor Ayakkabı', 170.0000, N'Lacivert', 21, 1, 25, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (27, N'Erkek Bot', 550.0000, N'Gri-Siyah', 24, 1, 26, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (28, N'Erkek Klasik Ayakkabı', 280.0000, N'Gri', 22, 1, 27, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (29, N'Erkek Klasik Ayakkabı', 220.0000, N'Siyah', 22, 1, 29, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (30, N'Erkek Terlik', 80.0000, N'Siyah', 25, 1, 30, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (31, N'Erkek Terlik', 45.0000, N'Mavi', 25, 1, 31, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (32, N'Erkek Terlik', 100.0000, N'Siyah', 25, 1, 32, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (33, N'Erkek Klasik Ayakkabı', 200.0000, N'Siyah', 22, 1, 33, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (34, N'Erkek Bot', 160.0000, N'Siyah', 24, 1, 34, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (35, N'Erkek Cocuk Spor Ayakkabı', 140.0000, N'Gri', 32, 1, 37, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (36, N'Erkek Çocuk Günlük', 65.0000, N'Mavi', 33, 1, 38, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (37, N'Erkek Cocuk Terlik', 75.0000, N'Siyah', 37, 1, 39, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (38, N'Erkek Çocuk Terlik', 90.0000, N'Siyah', 37, 1, 40, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (39, N'Erkek Çocuk Günlük', 125.0000, N'Sarı', 33, 1, 41, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (40, N'Erkek Çocuk Çizme', 100.0000, N'Sarı', 36, 1, 42, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (41, N'Erkek Çocuk Terlik', 67.0000, N'Siyah', 37, 1, 43, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (42, N'Erkek Çocuk Spor', 200.0000, N'Beyaz', 32, 1, 43, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (43, N'Erkek Çocuk Spor', 170.0000, N'Mavi', 32, 1, 45, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (44, N'Erkek Çocuk Spor', 150.0000, N'Kırmızı', 32, 1, 47, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (45, N'Erkek Çocuk Çizme', 100.0000, N'Gri-Desenli', 36, 1, 47, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (46, N'Erkek Çocuk Terlik', 80.0000, N'Siyah', 37, 1, 48, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (47, N'Erkek Çocuk Terlik', 70.0000, N'Mavi', 37, 1, 49, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (48, N'Erkek Çocuk Bot', 200.0000, N'Mavi-Siyah', 35, 1, 50, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (49, N'Erkek Çocuk Spor', 170.0000, N'Siyah', 32, 1, 51, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (50, N'Erkek Çocuk Çizme', 98.0000, N'Sarı', 36, 1, 52, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (51, N'Erkek Çocuk Bot', 280.0000, N'Siyah', 35, 1, 53, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (52, N'Erkek Çocuk Çizme', 100.0000, N'Siyah', 36, 1, 54, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (53, N'Erkek Çocuk Bot', 220.0000, N'Siyah', 35, 1, 55, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (54, N'Erkek Çocuk Terlik', 45.0000, N'Mavi', 37, 1, 56, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (55, N'Erkek Çocuk Terlik', 55.0000, N'Lacivert', 37, 1, 57, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (56, N'Erkek Çocuk Spor', 169.0000, N'Gri', 32, 1, 58, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (57, N'Erkek Çocuk Spor', 170.0000, N'Lacivert', 32, 1, 59, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (58, N'Erkek Çocuk Spor', 140.0000, N'Gri', 32, 1, 60, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (59, N'Erkek Çocuk Spor', 220.0000, N'Siyah', 32, 1, 61, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (60, N'Erkek Çocuk Spor', 280.0000, N'Beyaz', 32, 1, 62, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (61, N'Erkek Çocuk Spor', 200.0000, N'Gri', 32, 1, 63, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (62, N'Erkek Çocuk Bot', 260.0000, N'Turuncu', 35, 1, 64, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (63, N'Erkek Çocuk Bot', 200.0000, N'Siyah', 35, 1, 65, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (64, N'Erkek Çocuk Bot', 280.0000, N'Siyah', 35, 1, 66, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (65, N'Erkek Çocuk Bot', 210.0000, N'Lacivert', 35, 1, 67, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (66, N'Erkek Çocuk Bot', 200.0000, N'Kahverengi', 35, 1, 68, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (67, N'Erkek Çocuk Çizme', 120.0000, N'Desenli', 36, 1, 35, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (68, N'Erkek Çocuk Çizme', 100.0000, N'Lacivert', 36, 1, 70, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (69, N'Erkek Çocuk Günlük', 78.0000, N'Mavi', 33, 1, 71, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (70, N'Erkek Çocuk Spor', 170.0000, N'Mavi', 32, 1, 72, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (71, N'Erkek Çocuk Çizme', 100.0000, N'Siyah', 36, 1, 73, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (72, N'Erkek Çocuk Terlik', 45.0000, N'Lacivert', 37, 1, 74, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (73, N'Erkek Çocuk Günlük', 120.0000, N'Kırmızı', 33, 1, 75, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (74, N'Kadın Terlik', 45.0000, N'Sarı', 20, 1, 76, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (75, N'Kadın Bot', 280.0000, N'Gri', 17, 1, 77, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (76, N'Kadın Spor Ayakkabı', 200.0000, N'Siyah', 15, 1, 78, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (77, N'Kadın Çizme', 280.0000, N'Kahverengi', 18, 1, 79, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (78, N'Kadın Sandalet', 170.0000, N'Kahverengi', 20, 1, 80, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (79, N'Kadın Bot', 200.0000, N'Kahverengi', 17, 1, 81, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (80, N'Kadın Çizme', 200.0000, N'Gri', 18, 1, 82, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (81, N'Kadın Sandalet', 170.0000, N'Bej', 20, 1, 83, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (82, N'Kadın Sandalet', 100.0000, N'Gri', 20, 1, 84, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (83, N'Kadın Spor Ayakkabı', 220.0000, N'Beyaz', 16, 1, 85, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (84, N'Kadın Babet', 100.0000, N'Toz Pembe', 19, 1, 86, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (85, N'Kadın Çizme', 280.0000, N'Siyah', 18, 1, 87, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (86, N'Kadın Bot', 170.0000, N'Siyah', 17, 1, 88, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (87, N'Kadın Babet', 200.0000, N'Siyah', 19, 1, 89, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (88, N'Kadın Çizme', 280.0000, N'Kahverengi', 18, 1, 90, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (89, N'Kadın Çizme', 200.0000, N'Kırmızı', 18, 1, 91, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (90, N'Kadın Bot', 170.0000, N'Gri', 17, 1, 92, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (91, N'Kadın Çizme', 200.0000, N'Kahverengi', 18, 1, 93, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (92, N'Kadın Çizme', 280.0000, N'Siyah', 18, 1, 94, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (93, N'Kadın Spor Ayakkabı', 200.0000, N'Beyaz', 15, 1, 95, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (94, N'Kadın Spor Ayakkabı', 170.0000, N'Pembe', 15, 1, 96, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (95, N'Kadın Babet', 100.0000, N'Siyah', 19, 1, 97, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (96, N'Kadın Sandalet', 170.0000, N'Kahverengi', 20, 1, 98, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (97, N'Kadın Babet', 75.0000, N'Beyaz', 19, 1, 99, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (98, N'Kadın Günlük', 100.0000, N'Siyah', 16, 1, 100, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (99, N'Kadın Terlik', 80.0000, N'Beyaz', 20, 1, 105, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (100, N'Kadın Günlük', 170.0000, N'Siyah', 16, 1, 102, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (101, N'Kadın Babet', 100.0000, N'Siyah', 19, 1, 103, 3)
GO
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (102, N'Kadın Çizme', 200.0000, N'Siyah', 18, 1, 104, 3)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (103, N'kmkmkmk', 2222.0000, N'siyah', 38, 1, 1, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [SatisFiyat], [UrunAciklama], [KategoriId], [MarkaId], [ResimId], [KampanyaId]) VALUES (104, N'yutıuf', 200.0000, N'hgj', 2, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
ALTER TABLE [dbo].[Adresler]  WITH CHECK ADD  CONSTRAINT [FK_Adresler_Kisiler] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisiler] ([KisiId])
GO
ALTER TABLE [dbo].[Adresler] CHECK CONSTRAINT [FK_Adresler_Kisiler]
GO
ALTER TABLE [dbo].[Favoriler]  WITH CHECK ADD  CONSTRAINT [FK_Favoriler_Kisiler] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisiler] ([KisiId])
GO
ALTER TABLE [dbo].[Favoriler] CHECK CONSTRAINT [FK_Favoriler_Kisiler]
GO
ALTER TABLE [dbo].[Favoriler]  WITH CHECK ADD  CONSTRAINT [FK_Favoriler_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Favoriler] CHECK CONSTRAINT [FK_Favoriler_Urunler]
GO
ALTER TABLE [dbo].[Iletisim]  WITH CHECK ADD  CONSTRAINT [FK_Iletisim_Kisiler] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisiler] ([KisiId])
GO
ALTER TABLE [dbo].[Iletisim] CHECK CONSTRAINT [FK_Iletisim_Kisiler]
GO
ALTER TABLE [dbo].[Kategoriler]  WITH CHECK ADD  CONSTRAINT [FK_Kategoriler_Kampanyalar] FOREIGN KEY([KampanyaId])
REFERENCES [dbo].[Kampanyalar] ([KampanyaId])
GO
ALTER TABLE [dbo].[Kategoriler] CHECK CONSTRAINT [FK_Kategoriler_Kampanyalar]
GO
ALTER TABLE [dbo].[Kisiler]  WITH CHECK ADD  CONSTRAINT [FK_Kisiler_Roller] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roller] ([RolId])
GO
ALTER TABLE [dbo].[Kisiler] CHECK CONSTRAINT [FK_Kisiler_Roller]
GO
ALTER TABLE [dbo].[OzellikDeger]  WITH CHECK ADD  CONSTRAINT [FK_OzellikDeger_OzellikTip] FOREIGN KEY([OzellikTipId])
REFERENCES [dbo].[OzellikTip] ([OzellikTipId])
GO
ALTER TABLE [dbo].[OzellikDeger] CHECK CONSTRAINT [FK_OzellikDeger_OzellikTip]
GO
ALTER TABLE [dbo].[OzellikTip]  WITH CHECK ADD  CONSTRAINT [FK_OzellikTip_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[OzellikTip] CHECK CONSTRAINT [FK_OzellikTip_Kategoriler]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Kisiler] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisiler] ([KisiId])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Kisiler]
GO
ALTER TABLE [dbo].[Sepet]  WITH CHECK ADD  CONSTRAINT [FK_Sepet_Urunler1] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Sepet] CHECK CONSTRAINT [FK_Sepet_Urunler1]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Kisiler] FOREIGN KEY([KisiId])
REFERENCES [dbo].[Kisiler] ([KisiId])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Kisiler]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Sepet] FOREIGN KEY([SepetId])
REFERENCES [dbo].[Sepet] ([SepetId])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Sepet]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kampanyalar] FOREIGN KEY([KampanyaId])
REFERENCES [dbo].[Kampanyalar] ([KampanyaId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kampanyalar]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Markalar] FOREIGN KEY([MarkaId])
REFERENCES [dbo].[Markalar] ([MarkaId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Markalar]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Resimler] FOREIGN KEY([ResimId])
REFERENCES [dbo].[Resimler] ([ResimId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Resimler]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_OzellikDeger] FOREIGN KEY([DegerId])
REFERENCES [dbo].[OzellikDeger] ([DegerId])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_OzellikDeger]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_OzellikTip] FOREIGN KEY([OzellikTipId])
REFERENCES [dbo].[OzellikTip] ([OzellikTipId])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_OzellikTip]
GO
ALTER TABLE [dbo].[UrunOzellik]  WITH CHECK ADD  CONSTRAINT [FK_UrunOzellik_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[UrunOzellik] CHECK CONSTRAINT [FK_UrunOzellik_Urunler]
GO
/****** Object:  StoredProcedure [dbo].[KullaniciBilgileriniGuncelle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[KullaniciBilgileriniGuncelle](@KisiId int,@KisiAdi nvarchar(50),@KisiSoyadi nvarchar(50),@KullaniciAdi nvarchar(50),@Email nvarchar(50),@Sifre nvarchar(50))
as
update Kisiler
set KisiAdi=@KisiAdi,KisiSoyadi=@KisiSoyadi,KullaniciAdi=@KullaniciAdi,Email=@Email,Sifre=@Sifre
where KisiId=@KisiId
GO
/****** Object:  StoredProcedure [dbo].[KullaniciEkle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[KullaniciEkle](@KisiAdi nvarchar(50),@KisiSoyadi nvarchar(50),@KullaniciAdi nvarchar(50),@Email nvarchar(50),@Sifre nvarchar(50))
as
insert into Kisiler
 (
  KisiAdi,
  KisiSoyadi,
  KullaniciAdi,
  Email,
  Sifre
 ) 
 values
 (
  @KisiAdi,
  @KisiSoyadi,
  @KullaniciAdi,
  @Email,
  @Sifre
 )
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Login]
(
@Email nvarchar(MAX),
@Password nvarchar(50)
)
AS
BEGIN

SELECT * FROM Kisiler WHERE Email = @Email AND Sifre = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[MarkaEkle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MarkaEkle](@MarkaAdi nvarchar(50))
as
insert into Markalar(MarkaAdi)
values(@MarkaAdi)
GO
/****** Object:  StoredProcedure [dbo].[MarkaGuncelle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[MarkaGuncelle](@MarkaId int,@MarkaAdi nvarchar(50))
as
update Markalar set MarkaAdi=@MarkaAdi where MarkaId=@MarkaId
GO
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UrunEkle](@KategoriId int,@MarkaId int,@ResimId int,@UrunAdi nvarchar(50),@SatisFiyat money,@Stok int,@UrunAciklama nvarchar(50) )
as
insert into Urunler
  (KategoriId,
  MarkaId,
  ResimId,
  UrunAdi,
  SatisFiyat,
  UrunAciklama
  )
  values
  (@KategoriId,
  @MarkaId,
  @ResimId,
  @UrunAdi,
  @SatisFiyat,
  @UrunAciklama
  
  )
  declare @UrunId int
  set @UrunId=(select top(1) UrunId from Urunler order by UrunId desc)
  insert into Stok(Adet,UrunId) values(@Stok,@UrunId)
GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelle]    Script Date: 20.05.2019 13:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UrunGuncelle](@UrunId int,@KategoriId int,@MarkaId int,@ResimId int,@UrunAdi nvarchar(50),@SatisFiyat money,@Stok int,@UrunAciklama nvarchar(50))
as
update Urunler
set KategoriId=@KategoriId,MarkaId=@MarkaId,ResimId=@ResimId,UrunAdi=@UrunAdi,SatisFiyat=@SatisFiyat,UrunAciklama=@UrunAciklama
where UrunId=@UrunId

update Stok set Adet=@Stok where UrunId=@UrunId
GO
