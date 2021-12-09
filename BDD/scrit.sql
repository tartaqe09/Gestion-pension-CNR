USE [trop_percu]
GO
/****** Object:  Table [dbo].[Agence]    Script Date: 13/09/2021 15:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agence](
	[ID_agence] [int] IDENTITY(1,1) NOT NULL,
	[Nom_agence] [varchar](30) NULL,
	[ville_agence] [varchar](30) NULL,
	[Cod_postal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_agence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Assuré]    Script Date: 13/09/2021 15:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assuré](
	[ID_ass] [int] IDENTITY(1,1) NOT NULL,
	[Num_pens] [varchar](9) NULL,
	[Nom_ass] [varchar](20) NULL,
	[Prenom_ass] [varchar](20) NULL,
	[Date_naiss_ass] [date] NULL,
	[Adrs_ass] [varchar](50) NULL,
	[Num_Tel] [int] NULL,
	[D_serv] [date] NULL,
	[F_serv] [date] NULL,
	[Net_mens] [money] NULL,
	[Taux_de_pension] [float] NULL,
	[ID_sit_fami] [int] NULL,
	[ID_regime] [int] NULL,
	[ID_etat_pens] [int] NULL,
	[ID_groupe] [int] NULL,
	[ID_avt] [int] NULL,
	[ID_agence] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Avantage]    Script Date: 13/09/2021 15:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Avantage](
	[ID_avt] [int] IDENTITY(1,1) NOT NULL,
	[Type_avt] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_avt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[avoir2]    Script Date: 13/09/2021 15:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avoir2](
	[Num_TP] [int] NULL,
	[ID_ass] [int] NULL,
	[Date_D] [date] NULL,
	[Date_F] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[avoir3]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avoir3](
	[Num_TP] [int] NULL,
	[ID_recouvrement] [int] NULL,
	[Date_dern_vers] [date] NULL,
	[montant_pay] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Etat_pension]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Etat_pension](
	[ID_etat_pens] [int] IDENTITY(1,1) NOT NULL,
	[Etat_pens] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_etat_pens] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Etat_TP]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Etat_TP](
	[ID_etat_TP] [int] IDENTITY(1,1) NOT NULL,
	[Etat_TP] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_etat_TP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fiche_ventilation]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fiche_ventilation](
	[ID_FV] [int] IDENTITY(1,1) NOT NULL,
	[Mois] [varchar](15) NULL,
	[Annee] [int] NULL,
	[Mod_TP] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_FV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[groupe]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupe](
	[ID_groupe] [int] IDENTITY(1,1) NOT NULL,
	[groupe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_groupe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recouverement]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recouverement](
	[ID_recouvrement] [int] IDENTITY(1,1) NOT NULL,
	[date_vers] [date] NULL,
	[mod_paiement] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_recouvrement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regime]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regime](
	[ID_regime] [int] IDENTITY(1,1) NOT NULL,
	[Type_regime] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_regime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sit_famil]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sit_famil](
	[ID_sit_fami] [int] IDENTITY(1,1) NOT NULL,
	[sit_famil] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_sit_fami] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TP]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TP](
	[Num_TP] [int] IDENTITY(1,1) NOT NULL,
	[Num_ord] [varchar](10) NULL,
	[Date_TP] [date] NULL,
	[ID_etat_TP] [int] NULL,
	[ID_Type_TP] [int] NULL,
	[ID_FV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Num_TP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type_TP]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type_TP](
	[ID_Type_TP] [int] IDENTITY(1,1) NOT NULL,
	[Type_TP] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Type_TP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Utilisateur]    Script Date: 13/09/2021 15:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilisateur](
	[nom_utilisateur] [varchar](30) NULL,
	[mot_de_passe] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_agence])
REFERENCES [dbo].[Agence] ([ID_agence])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_avt])
REFERENCES [dbo].[Avantage] ([ID_avt])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_etat_pens])
REFERENCES [dbo].[Etat_pension] ([ID_etat_pens])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_groupe])
REFERENCES [dbo].[groupe] ([ID_groupe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_regime])
REFERENCES [dbo].[Regime] ([ID_regime])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Assuré]  WITH CHECK ADD FOREIGN KEY([ID_sit_fami])
REFERENCES [dbo].[sit_famil] ([ID_sit_fami])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[avoir2]  WITH CHECK ADD FOREIGN KEY([ID_ass])
REFERENCES [dbo].[Assuré] ([ID_ass])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[avoir2]  WITH CHECK ADD FOREIGN KEY([Num_TP])
REFERENCES [dbo].[TP] ([Num_TP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[avoir3]  WITH CHECK ADD FOREIGN KEY([ID_recouvrement])
REFERENCES [dbo].[Recouverement] ([ID_recouvrement])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[avoir3]  WITH CHECK ADD FOREIGN KEY([Num_TP])
REFERENCES [dbo].[TP] ([Num_TP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TP]  WITH CHECK ADD FOREIGN KEY([ID_etat_TP])
REFERENCES [dbo].[Etat_TP] ([ID_etat_TP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TP]  WITH CHECK ADD FOREIGN KEY([ID_FV])
REFERENCES [dbo].[Fiche_ventilation] ([ID_FV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TP]  WITH CHECK ADD FOREIGN KEY([ID_Type_TP])
REFERENCES [dbo].[Type_TP] ([ID_Type_TP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
