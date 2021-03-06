USE [DBEquipo]
GO
/****** Object:  Table [dbo].[logTransacciones]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logTransacciones](
	[TipoTrn] [char](1) NULL,
	[Tabla] [varchar](128) NULL,
	[PK] [varchar](1000) NULL,
	[Campo] [varchar](128) NULL,
	[ValorOriginal] [varchar](1000) NULL,
	[ValorNuevo] [varchar](1000) NULL,
	[FechaTrn] [datetime] NULL,
	[Usuario] [varchar](128) NULL,
	[Fecha] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDispositivo](
	[ID_dispo] [int] IDENTITY(1,1) NOT NULL,
	[Dispositivo] [varchar](75) NOT NULL,
 CONSTRAINT [PK_tblDispositivo_ID_dispo] PRIMARY KEY CLUSTERED 
(
	[ID_dispo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEquipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEquipo](
	[ID_Equipo] [int] IDENTITY(1,1) NOT NULL,
	[ID_dispo] [int] NULL,
	[NOM_EQUIPO] [varchar](100) NULL,
	[CODIGO_ACTIVO] [varchar](50) NULL,
	[ACTIVO] [char](1) NOT NULL,
	[CANTIDAD] [int] NULL,
 CONSTRAINT [PK_tblEquipo_ID_Equipo] PRIMARY KEY CLUSTERED 
(
	[ID_Equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonas](
	[IDPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Apellido] [varchar](100) NULL,
	[Cargo] [varchar](100) NULL,
	[Area] [varchar](100) NULL,
	[ACTIVO] [char](1) NULL,
	[Fechaprestamo] [date] NULL,
	[FechaEntrega] [date] NULL,
 CONSTRAINT [PK_tblPersonas_IDPersona] PRIMARY KEY CLUSTERED 
(
	[IDPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReunion](
	[IDReunion] [int] IDENTITY(1,1) NOT NULL,
	[IDPersona] [int] NULL,
	[ID_Tipo] [int] NULL,
	[NOM_REUNION] [varchar](200) NULL,
	[fecharealizada] [date] NULL,
	[hora] [varchar](10) NULL,
	[ID_Equipo] [int] NULL,
 CONSTRAINT [PK_tblReunion_IDReunion] PRIMARY KEY CLUSTERED 
(
	[IDReunion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](250) NULL,
	[Descripcion] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoReunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoReunion](
	[ID_Tipo] [int] IDENTITY(1,1) NOT NULL,
	[TipoReunion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblTipoReunion_ID_Tipo] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdSql] [int] NULL,
	[ULogin] [nvarchar](50) NULL,
	[UNombre] [nvarchar](256) NULL,
	[Correro] [nvarchar](256) NULL,
	[IdRol] [int] NULL,
	[Activo] [bit] NULL,
	[Admin] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=4>', N'NOM_EQUIPO', N'JLAS', N'JLASdsada', CAST(N'2021-10-07T16:13:28.390' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'ID_Equipo', NULL, N'13', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'ID_dispo', NULL, N'3', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'NOM_EQUIPO', NULL, N'jhj', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1>', N'ID_dispo', N'4', N'3', CAST(N'2021-10-07T16:54:19.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1>', N'ID_dispo', N'3', N'1', CAST(N'2021-10-15T11:32:04.843' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'ID_Equipo', NULL, N'1015', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'NOM_EQUIPO', NULL, N'aaaaaassq1', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'CODIGO_ACTIVO', NULL, N'112', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1015>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-15T11:32:39.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'ID_Equipo', NULL, N'1016', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'ID_dispo', NULL, N'2', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'NOM_EQUIPO', NULL, N'2', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'CODIGO_ACTIVO', NULL, N'2', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1016>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-15T11:32:50.393' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'ID_Equipo', N'1016', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'ID_Equipo', N'1015', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'ID_Equipo', N'13', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'ID_Equipo', N'12', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'ID_Equipo', N'11', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'ID_Equipo', N'10', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'ID_Equipo', N'9', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'ID_Equipo', N'8', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'ID_Equipo', N'7', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'ID_Equipo', N'6', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'ID_Equipo', N'5', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'ID_Equipo', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'ID_Equipo', N'3', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'ID_Equipo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'ID_Equipo', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'ID_dispo', N'3', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'ID_dispo', N'3', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'ID_dispo', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'ID_dispo', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'ID_dispo', N'3', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'ID_dispo', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'NOM_EQUIPO', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'NOM_EQUIPO', N'aaaaaassq1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'NOM_EQUIPO', N'jhj', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'NOM_EQUIPO', N'EPSON', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'NOM_EQUIPO', N'HP LASERJET', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'NOM_EQUIPO', N'da', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'NOM_EQUIPO', N's', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'NOM_EQUIPO', N'AAAAAA', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'NOM_EQUIPO', N'LEXMARK', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'NOM_EQUIPO', N'LOGITECH', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'NOM_EQUIPO', N'epson', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'NOM_EQUIPO', N'JLASdsada', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'NOM_EQUIPO', N'ACER NITRO', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'NOM_EQUIPO', N'PREDATORAAA', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'NOM_EQUIPO', N'PREDATOR', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'CODIGO_ACTIVO', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'CODIGO_ACTIVO', N'112', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'CODIGO_ACTIVO', N'2112', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'CODIGO_ACTIVO', N'8192378219', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'CODIGO_ACTIVO', N'12290', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'CODIGO_ACTIVO', N'das', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'CODIGO_ACTIVO', N's', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'CODIGO_ACTIVO', N'QWEQWEQSA', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'CODIGO_ACTIVO', N'WEQWEQSAA', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'CODIGO_ACTIVO', N'1231231', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'CODIGO_ACTIVO', N'21231231', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'CODIGO_ACTIVO', N'DASDA', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'CODIGO_ACTIVO', N'212112FD', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'CODIGO_ACTIVO', N'212112FD', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'CODIGO_ACTIVO', N'212112FD', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'CODIGO_ACTIVO', NULL, N'2112', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=13>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-07T16:51:55.550' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1>', N'CANTIDAD', NULL, N'5', CAST(N'2021-10-07T16:53:21.803' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=2>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-07T16:53:23.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=3>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-07T16:53:24.547' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=4>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-07T16:53:25.880' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=5>', N'CANTIDAD', NULL, N'4', CAST(N'2021-10-07T16:53:27.570' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=6>', N'CANTIDAD', NULL, N'5', CAST(N'2021-10-07T16:53:28.743' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=7>', N'CANTIDAD', NULL, N'8', CAST(N'2021-10-07T16:53:30.843' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=8>', N'CANTIDAD', NULL, N'6', CAST(N'2021-10-07T16:53:32.780' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=9>', N'CANTIDAD', NULL, N'4', CAST(N'2021-10-07T16:53:34.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=10>', N'CANTIDAD', NULL, N'9', CAST(N'2021-10-07T16:53:36.270' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=11>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-07T16:53:37.727' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=12>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-07T16:53:38.680' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1016>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1015>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=13>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=12>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=11>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=10>', N'CANTIDAD', N'9', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=9>', N'CANTIDAD', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=8>', N'CANTIDAD', N'6', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=7>', N'CANTIDAD', N'8', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=6>', N'CANTIDAD', N'5', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=5>', N'CANTIDAD', N'4', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=4>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=3>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=2>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1>', N'CANTIDAD', N'5', NULL, CAST(N'2021-10-22T16:11:24.137' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'ID_Equipo', NULL, N'1017', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'NOM_EQUIPO', NULL, N'ACER NITRO ', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'CODIGO_ACTIVO', NULL, N'132901', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1017>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-22T16:11:55.747' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'ID_Equipo', NULL, N'1021', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'ID_dispo', NULL, N'2', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'NOM_EQUIPO', NULL, N'HP 360MD', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'CODIGO_ACTIVO', NULL, N'DASA', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1021>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-22T17:18:50.047' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'ID_Equipo', NULL, N'1022', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'ID_dispo', NULL, N'3', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'NOM_EQUIPO', NULL, N'EPSON', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'CODIGO_ACTIVO', NULL, N'31231ASK-ASJDAK1', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1022>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-24T22:03:14.750' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'ID_Equipo', NULL, N'1023', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'ID_dispo', NULL, N'1', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'NOM_EQUIPO', NULL, N'LOGITECH', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'CODIGO_ACTIVO', NULL, N'SADAD91', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1023>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T16:27:38.513' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1023>', N'NOM_EQUIPO', N'LOGITECH', N'LOGITECH BLACK', CAST(N'2021-10-25T16:27:52.523' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'ID_Equipo', NULL, N'1024', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'NOM_EQUIPO', NULL, N'DELL LATITUDE 450 ', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'CODIGO_ACTIVO', NULL, N'DKASKDAS2819', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1024>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T18:18:16.533' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'ID_Equipo', N'1024', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'ID_Equipo', N'1023', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'ID_Equipo', N'1022', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'ID_Equipo', N'1021', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'ID_Equipo', N'1020', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'ID_Equipo', N'1019', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'ID_Equipo', N'1018', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'ID_Equipo', N'1017', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'ID_dispo', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'ID_dispo', N'3', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'ID_dispo', N'2', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'ID_dispo', N'3', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'ID_dispo', N'4', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'NOM_EQUIPO', N'DELL LATITUDE 450 BLACK', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'NOM_EQUIPO', N'LOGITECH BLACK', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'NOM_EQUIPO', N'EPSON WHITE 360', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'NOM_EQUIPO', N'HP 360MD', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'NOM_EQUIPO', N'EPSON', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'NOM_EQUIPO', N'DELL LATITUDE', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'NOM_EQUIPO', N'PREDATOR ', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'NOM_EQUIPO', N'ACER NITRO RED', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'CODIGO_ACTIVO', N'DKASKDAS2819', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'CODIGO_ACTIVO', N'SADAD91', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'CODIGO_ACTIVO', N'31231ASK-ASJDAK1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'CODIGO_ACTIVO', N'DASA', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1017>', N'NOM_EQUIPO', N'ACER NITRO ', N'ACER NITRO RED', CAST(N'2021-10-22T16:12:18.877' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'ID_Equipo', NULL, N'1018', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'NOM_EQUIPO', NULL, N'PREDATOR ', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'CODIGO_ACTIVO', NULL, N'231312', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1018>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-22T16:32:40.773' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'ID_Equipo', NULL, N'1019', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'NOM_EQUIPO', NULL, N'DELL LATITUDE', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'CODIGO_ACTIVO', NULL, N'SADAS231', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1019>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-22T16:32:51.673' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'ID_Equipo', NULL, N'1020', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'ID_dispo', NULL, N'3', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'NOM_EQUIPO', NULL, N'EPSON', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'CODIGO_ACTIVO', NULL, N'DADAS', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1020>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-22T16:33:01.863' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1024>', N'NOM_EQUIPO', N'DELL LATITUDE 450 ', N'DELL LATITUDE 450 BLACK', CAST(N'2021-10-25T18:19:01.877' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'ID_Equipo', NULL, N'1025', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'ID_dispo', NULL, N'1', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'NOM_EQUIPO', NULL, N'LOGITECH WEBCAM ', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'CODIGO_ACTIVO', NULL, N'163-10-4-163-1087', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1025>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-25T18:49:29.150' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'ID_Equipo', NULL, N'1026', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'NOM_EQUIPO', NULL, N'ACER NITRO AN515-44 ', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'CODIGO_ACTIVO', NULL, N'HTK-MKT-EI-MP1P-PC-1', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1026>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T18:53:42.053' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'ID_Equipo', NULL, N'1027', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'ID_dispo', NULL, N'4', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'NOM_EQUIPO', NULL, N'ACER PREDATOR HELIOS 300 ', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'CODIGO_ACTIVO', NULL, N'HTK-MKT-EI-MP1P-PC-2', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1027>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-25T18:54:56.890' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'ID_Equipo', NULL, N'1028', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'ID_dispo', NULL, N'2', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'NOM_EQUIPO', NULL, N'RICOH AFICIO MD 201F ', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'CODIGO_ACTIVO', NULL, N'HTK-MKT-EI-MP1P-PC-2', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1028>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T18:56:53.303' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'ID_Equipo', NULL, N'1029', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'ID_dispo', NULL, N'2', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'NOM_EQUIPO', NULL, N'HP LASERJET PRO 400 ', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'CODIGO_ACTIVO', NULL, N'HTK-MKT-EI-MP1P-IMP-3', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1029>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T18:57:34.883' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'ID_Equipo', NULL, N'1030', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'ID_dispo', NULL, N'2', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'NOM_EQUIPO', NULL, N'HP LASERJET PRO 400 ', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'CODIGO_ACTIVO', NULL, N'HTK-MKT-EI-MP1P-IMP-3', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1030>', N'CANTIDAD', NULL, N'1', CAST(N'2021-10-25T18:59:12.247' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'ID_Equipo', NULL, N'1031', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'ID_dispo', NULL, N'6', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'NOM_EQUIPO', NULL, N'JABRA SPEAK 510 GN ', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'CODIGO_ACTIVO', NULL, N'570-699-101-4846', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1031>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-25T19:00:38.667' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'ID_Equipo', NULL, N'1032', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'ID_dispo', NULL, N'6', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'NOM_EQUIPO', NULL, N'EPSON WHITE  ', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'CODIGO_ACTIVO', NULL, N'570-699-101-4677', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1032>', N'CANTIDAD', NULL, N'3', CAST(N'2021-10-25T19:15:41.520' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1025>', N'ID_dispo', N'1', N'5', CAST(N'2021-10-25T20:16:15.260' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1032>', N'ID_dispo', N'6', N'3', CAST(N'2021-10-25T20:16:38.610' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'ID_Equipo', NULL, N'1033', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'ID_dispo', NULL, N'5', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'NOM_EQUIPO', NULL, N'PANASONIC AU-EVA', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'CODIGO_ACTIVO', NULL, N'015-10-4-163-1275', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'ACTIVO', NULL, N'A', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'I', N'tblEquipo', N'<ID_Equipo=1033>', N'CANTIDAD', NULL, N'2', CAST(N'2021-10-25T20:18:24.267' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'U', N'tblEquipo', N'<ID_Equipo=1022>', N'NOM_EQUIPO', N'EPSON', N'EPSON WHITE 360', CAST(N'2021-10-24T22:03:42.323' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-24T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'CODIGO_ACTIVO', N'DADAS', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'CODIGO_ACTIVO', N'SADAS231', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'CODIGO_ACTIVO', N'231312', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'CODIGO_ACTIVO', N'132901', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'ACTIVO', N'A', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1024>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1023>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1022>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1021>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1020>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1019>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1018>', N'CANTIDAD', N'2', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[logTransacciones] ([TipoTrn], [Tabla], [PK], [Campo], [ValorOriginal], [ValorNuevo], [FechaTrn], [Usuario], [Fecha]) VALUES (N'D', N'tblEquipo', N'<ID_Equipo=1017>', N'CANTIDAD', N'1', NULL, CAST(N'2021-10-25T18:43:10.133' AS DateTime), N'PRESENTACIONES1', CAST(N'2021-10-25T00:00:00' AS SmallDateTime))
GO
SET IDENTITY_INSERT [dbo].[tblDispositivo] ON 

INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (1, N'MOUSE')
INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (2, N'IMPRESORA')
INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (3, N'DATASHOW')
INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (4, N'COMPUTADORA')
INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (5, N'WEBCAMS')
INSERT [dbo].[tblDispositivo] ([ID_dispo], [Dispositivo]) VALUES (6, N'SPEAKER')
SET IDENTITY_INSERT [dbo].[tblDispositivo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEquipo] ON 

INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1025, 5, N'LOGITECH WEBCAM ', N'163-10-4-163-1087', N'A', 2)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1026, 4, N'ACER NITRO AN515-44 ', N'HTK-MKT-EI-MP1P-PC-1', N'A', 1)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1027, 4, N'ACER PREDATOR HELIOS 300 ', N'HTK-MKT-EI-MP1P-PC-2', N'A', 2)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1028, 2, N'RICOH AFICIO MD 201F ', N'HTK-MKT-EI-MP1P-PC-2', N'A', 1)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1029, 2, N'HP LASERJET PRO 400 ', N'HTK-MKT-EI-MP1P-IMP-3', N'A', 1)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1030, 2, N'HP LASERJET PRO 400 ', N'HTK-MKT-EI-MP1P-IMP-3', N'A', 1)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1031, 6, N'JABRA SPEAK 510 GN ', N'570-699-101-4846', N'A', 2)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1032, 3, N'EPSON WHITE  ', N'570-699-101-4677', N'A', 3)
INSERT [dbo].[tblEquipo] ([ID_Equipo], [ID_dispo], [NOM_EQUIPO], [CODIGO_ACTIVO], [ACTIVO], [CANTIDAD]) VALUES (1033, 5, N'PANASONIC AU-EVA', N'015-10-4-163-1275', N'A', 2)
SET IDENTITY_INSERT [dbo].[tblEquipo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPersonas] ON 

INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1011, N'DENIS', N'MONCADA', N'MINISTRO DE RELACIONES EXTERIORES', N'DIRECCION SUPERIOR', N'A', CAST(N'2021-10-25' AS Date), CAST(N'2021-10-26' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1012, N'URIELMA', N'JIRON', N'ING SOPORTE TECNICO', N'DIVISION DE INFORMATICA', N'A', CAST(N'2021-05-01' AS Date), CAST(N'2021-05-17' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1013, N'LUBIANKA', N'BARAHONA', N'ASISTENTE TECNICA DE ACTIVO FIJO', N'DIVISION DE ADQUISICIONES', N'A', CAST(N'2021-03-03' AS Date), CAST(N'2021-04-21' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1014, N'LILLIAM', N'LOASIGA', N'ASSTENTE TECNICA DE COOPERACIONES UNILATERALES', N'DIRECCION DE AMERICA', N'A', CAST(N'2021-07-19' AS Date), CAST(N'2021-07-21' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1015, N'JUAN', N'PEREZ', N'DIRECTOR DE ONG', N'DIRECCION DE ONG', N'A', CAST(N'2021-08-31' AS Date), CAST(N'2021-09-21' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1016, N'MARIA', N'DEL SOCORRO', N'DIRECTORA DE ASIA', N'DIRECCOION DE ASIA', N'A', CAST(N'2021-08-18' AS Date), CAST(N'2021-09-21' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1017, N'FLAVIA', N'MORALES', N'SECRETARIA', N'DIRECCION DE AMERICA', N'A', CAST(N'2021-02-18' AS Date), CAST(N'2021-03-19' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1018, N'CARLOS ', N'JIMENEZ', N'ASESOR JURIDICO', N'DIRECCION DE JURIDICO', N'A', CAST(N'2021-03-20' AS Date), CAST(N'2021-03-25' AS Date))
INSERT [dbo].[tblPersonas] ([IDPersona], [Nombre], [Apellido], [Cargo], [Area], [ACTIVO], [Fechaprestamo], [FechaEntrega]) VALUES (1019, N'MARIANO', N'PEREZ', N'AUDITOR', N'AUDITORIA', N'A', CAST(N'2021-04-12' AS Date), CAST(N'2021-04-16' AS Date))
SET IDENTITY_INSERT [dbo].[tblPersonas] OFF
GO
SET IDENTITY_INSERT [dbo].[tblReunion] ON 

INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (20, 1011, 2, N'REUNION SICA', CAST(N'2021-10-26' AS Date), N'10AM', 1026)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (21, 1012, 1, N'PRESENTACION DE SISTEMA NOMINA', CAST(N'2021-05-16' AS Date), N'9 AM ', 1026)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (22, 1013, 1, N'PROYECCION DE ADQUISICION DEL MINISTERIO', CAST(N'2021-04-21' AS Date), N'12 PM ', 1032)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (23, 1014, 2, N'REUNION CON EMBAJADOR DE NACIONES UNIDAS', CAST(N'2021-07-21' AS Date), N'7 AM ', 1027)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (24, 1014, 2, N'REUNION CON EMBAJADOR DE NACIONES UNIDAS', CAST(N'2021-07-21' AS Date), N'7 AM', 1025)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (25, 1015, 2, N'REUNION CON ONG WOLRD WIDE', CAST(N'2021-09-21' AS Date), N'8 AM', 1026)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (26, 1016, 2, N'REUNION CON JICA', CAST(N'2021-09-21' AS Date), N'8:30 AM ', 1031)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (27, 1016, 2, N'REUNION CON JICA', CAST(N'2021-09-21' AS Date), N'8:30 AM', 1026)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (28, 1017, 1, N'PRESENTACOIN DE EVALUACION DE PROYECTOS', CAST(N'2021-03-19' AS Date), N'10:30 AM ', 1032)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (29, 1018, 2, N'REUNION OEA', CAST(N'2021-03-26' AS Date), N'12 PM ', 1025)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (30, 1019, 1, N'PRESENTACION DE TEMA UVE', CAST(N'2021-04-16' AS Date), N'3 PM', 1032)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (31, 1019, 2, N'REUNION CON EMBAJADORES', CAST(N'2020-03-20' AS Date), N'4 PM ', 1027)
INSERT [dbo].[tblReunion] ([IDReunion], [IDPersona], [ID_Tipo], [NOM_REUNION], [fecharealizada], [hora], [ID_Equipo]) VALUES (32, 1011, 1, N'PRESENTACION DE NUEVO EQUIPO DE CANCILLERIA', CAST(N'2020-05-16' AS Date), N'3 PM ', 1032)
SET IDENTITY_INSERT [dbo].[tblReunion] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoReunion] ON 

INSERT [dbo].[tblTipoReunion] ([ID_Tipo], [TipoReunion]) VALUES (1, N'PRESENCIAL')
INSERT [dbo].[tblTipoReunion] ([ID_Tipo], [TipoReunion]) VALUES (2, N'VIRTUAL')
SET IDENTITY_INSERT [dbo].[tblTipoReunion] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Usuarios]    Script Date: 25/10/2021 22:08:18 ******/
ALTER TABLE [dbo].[tblUsuarios] ADD  CONSTRAINT [IX_Usuarios] UNIQUE NONCLUSTERED 
(
	[ULogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblUsuarios] ADD  DEFAULT ((0)) FOR [Admin]
GO
ALTER TABLE [dbo].[tblEquipo]  WITH CHECK ADD  CONSTRAINT [FK_tblDispositivo_ID_dispo] FOREIGN KEY([ID_dispo])
REFERENCES [dbo].[tblDispositivo] ([ID_dispo])
GO
ALTER TABLE [dbo].[tblEquipo] CHECK CONSTRAINT [FK_tblDispositivo_ID_dispo]
GO
ALTER TABLE [dbo].[tblReunion]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonas_ID_Equipo] FOREIGN KEY([ID_Equipo])
REFERENCES [dbo].[tblEquipo] ([ID_Equipo])
GO
ALTER TABLE [dbo].[tblReunion] CHECK CONSTRAINT [FK_tblPersonas_ID_Equipo]
GO
ALTER TABLE [dbo].[tblReunion]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonas_IDPersona] FOREIGN KEY([IDPersona])
REFERENCES [dbo].[tblPersonas] ([IDPersona])
GO
ALTER TABLE [dbo].[tblReunion] CHECK CONSTRAINT [FK_tblPersonas_IDPersona]
GO
ALTER TABLE [dbo].[tblReunion]  WITH CHECK ADD  CONSTRAINT [FK_tblTipoReunion_ID_Tipo] FOREIGN KEY([ID_Tipo])
REFERENCES [dbo].[tblTipoReunion] ([ID_Tipo])
GO
ALTER TABLE [dbo].[tblReunion] CHECK CONSTRAINT [FK_tblTipoReunion_ID_Tipo]
GO
ALTER TABLE [dbo].[tblEquipo]  WITH CHECK ADD  CONSTRAINT [CK_tblEquipo_ACTIVO] CHECK  (([ACTIVO]='I' OR [ACTIVO]='A'))
GO
ALTER TABLE [dbo].[tblEquipo] CHECK CONSTRAINT [CK_tblEquipo_ACTIVO]
GO
ALTER TABLE [dbo].[tblPersonas]  WITH CHECK ADD  CONSTRAINT [CK_tblPersonas_ACTIVO] CHECK  (([ACTIVO]='I' OR [ACTIVO]='A'))
GO
ALTER TABLE [dbo].[tblPersonas] CHECK CONSTRAINT [CK_tblPersonas_ACTIVO]
GO
/****** Object:  StoredProcedure [dbo].[DBA_Generate_SQL_Structure]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[DBA_Generate_SQL_Structure] (
	  @p_TABLE_CATALOG AS varchar(100)
	, @p_TABLE_SCHEMA AS varchar(100)
	, @p_TABLE_NAME AS varchar(100)
	 ) 
AS

BEGIN
	IF (OBJECT_ID(@p_TABLE_SCHEMA + '.' + @p_TABLE_NAME,'U') IS NULL)
		BEGIN
			RAISERROR ('User table or view not found.', 16, 1)
			PRINT 'You may see this error, if you are not the owner of this table or view. In that case use @owner parameter to specify the owner name.'
			PRINT 'Make sure you have SELECT permission on that table or view.'
			RETURN -1
		END
	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	DECLARE 
		 @TABLE_NAME varchar(100)
		, @TABLE_SCHEMA varchar(100)
		, @COLUMN_NAME varchar(100)
		, @ORDINAL_POSITION integer
		, @DATA_TYPE  varchar(100)
		, @CHARACTER_MAXIMUM_LENGTH integer

		, @SQL_Stmt			nvarchar(1000)

		, @v_SQL_Columns		varchar(1000)
		, @v_SQL_Columns_AT		varchar(1000)
		, @v_SQL_Columns_type		varchar(1000)
		, @v_SQL_Columns_type2		varchar(1000)
		, @v_SQL_Columns_UPDATE		varchar(1000)
		, @v_SQL_Columns_IDENTITY	varchar(100)

		, @v_IS_Identity integer

	SET @v_SQL_Columns          = ''
	SET @v_SQL_Columns_AT       = ''
	SET @v_SQL_Columns_type     = ''
	SET @v_SQL_Columns_type2     = ''
	SET @v_SQL_Columns_UPDATE   = ''
	SET @v_SQL_Columns_IDENTITY = ''

	SET @v_IS_Identity = 0

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	--

	SET @SQL_Stmt = '
	DECLARE Cursor_Cols CURSOR FOR 
		SELECT TABLE_NAME
			, TABLE_SCHEMA
			, COLUMN_NAME
			, ORDINAL_POSITION
			, DATA_TYPE
			, CHARACTER_MAXIMUM_LENGTH 
		FROM @p_TABLE_CATALOG.INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = ''@p_TABLE_NAME''
		ORDER BY ORDINAL_POSITION
	'
	SET @SQL_Stmt = REPLACE( @SQL_Stmt, '@p_TABLE_CATALOG', @p_TABLE_CATALOG)
	SET @SQL_Stmt = REPLACE( @SQL_Stmt, '@p_TABLE_NAME',    @p_TABLE_NAME)


	--PRINT @SQL_Stmt
	EXEC (@SQL_Stmt)

	OPEN Cursor_Cols
	FETCH NEXT FROM Cursor_Cols INTO @TABLE_NAME, @TABLE_SCHEMA, @COLUMN_NAME, @ORDINAL_POSITION, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH

	WHILE @@FETCH_STATUS = 0 
	BEGIN

		SET @v_IS_Identity = COLUMNPROPERTY( OBJECT_ID(QUOTENAME(@TABLE_SCHEMA) + '.' + @p_TABLE_NAME), @COLUMN_NAME, 'IsIdentity') 
		IF ( @v_IS_Identity = 1)
			SET @v_SQL_Columns_IDENTITY = @COLUMN_NAME
		ELSE
			BEGIN
				SET @v_SQL_Columns      =  @v_SQL_Columns      + ', ' + @COLUMN_NAME 
				
			END
			
			IF NOT(@v_IS_Identity=1)
			BEGIN
				SET @v_SQL_Columns_type2 =  @v_SQL_Columns_type2 + ', ' + @COLUMN_NAME + ' AS ' + @DATA_TYPE +
						CASE
							WHEN @DATA_TYPE LIKE '%char%' THEN '(' + CAST( @CHARACTER_MAXIMUM_LENGTH AS varchar) + ')'
							ELSE ''
						END
			END
			
			
			SET @v_SQL_Columns_type =  @v_SQL_Columns_type + ', ' + @COLUMN_NAME + ' AS ' + @DATA_TYPE +
						CASE
							WHEN @DATA_TYPE LIKE '%char%' THEN '(' + CAST( @CHARACTER_MAXIMUM_LENGTH AS varchar) + ')'
							ELSE ''
						END
			
		IF ( @v_IS_Identity = 0)
			SET @v_SQL_Columns_UPDATE = @v_SQL_Columns_UPDATE + ', ' + @COLUMN_NAME + ' = ' + '@' + @COLUMN_NAME

		FETCH NEXT FROM Cursor_Cols INTO @TABLE_NAME, @TABLE_SCHEMA, @COLUMN_NAME, @ORDINAL_POSITION, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH
	END 

	CLOSE Cursor_Cols
	DEALLOCATE Cursor_Cols

	
	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- 

	-- Eliminando ", " del final de la cadena

	SET @v_SQL_Columns_AT     = REPLACE(@v_SQL_Columns,      ', ', ', @')
	SET @v_SQL_Columns_type   = REPLACE(@v_SQL_Columns_type, ', ', ', @')
	SET @v_SQL_Columns_type2   = REPLACE(@v_SQL_Columns_type2, ', ', ', @')

	SET @v_SQL_Columns        = SUBSTRING( @v_SQL_Columns,      3, LEN(@v_SQL_Columns))
	SET @v_SQL_Columns_AT     = SUBSTRING( @v_SQL_Columns_AT,   3, LEN(@v_SQL_Columns_AT))
	SET @v_SQL_Columns_type   = SUBSTRING( @v_SQL_Columns_type, 3, LEN(@v_SQL_Columns_type))
	SET @v_SQL_Columns_type2   = SUBSTRING( @v_SQL_Columns_type2, 3, LEN(@v_SQL_Columns_type2))
	SET @v_SQL_Columns_UPDATE = SUBSTRING( @v_SQL_Columns_UPDATE, 3, LEN(@v_SQL_Columns_UPDATE))



	-- SELECT
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Sel_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Sel_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME))
	PRINT ' @ID int '  
	PRINT ' AS' 
	PRINT 'SET NOCOUNT ON'
	PRINT 'IF @ID = 0'
	PRINT CHAR(9) + 'SELECT * FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME
	PRINT 'ELSE '
	PRINT CHAR(9) + 'SELECT * FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME + ' WHERE ' + @v_SQL_Columns_IDENTITY + ' =@ID'
	PRINT 'GO'
	PRINT ''

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- INSERT
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Ins_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Ins_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type2 + ' ) ' + ' AS' 
	PRINT 'BEGIN TRY'
	PRINT CHAR(9) + 'INSERT INTO ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME + ' ( ' + @v_SQL_Columns + ' ) '
	PRINT CHAR(9) + 'VALUES ' + ' ( ' + @v_SQL_Columns_AT + ' ) '
   -- PRINT CHAR(9) + 'SELECT SCOPE_IDENTITY() '
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- UPDATE
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Upd_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Upd_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type + ' ) ' + ' AS' 
	PRINT 'BEGIN TRY'
	PRINT CHAR(9) + 'UPDATE ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME 
	--PRINT CHAR(9) + 'SET ' + @v_SQL_Columns_UPDATE
	PRINT CHAR(9) + 'SET ' + REPLACE( @v_SQL_Columns_UPDATE, ', ', CHAR(10) + CHAR(9) + CHAR(9) + ', ')
	PRINT CHAR(9) + 'WHERE ' + @v_SQL_Columns_IDENTITY  + ' = ' + '@' + @v_SQL_Columns_IDENTITY
	--PRINT CHAR(9) + 'SELECT @' + @v_SQL_Columns_IDENTITY
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''


	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- DELETE
	PRINT REPLICATE('-- ', 30)

	SET @v_SQL_Columns_type = SUBSTRING( @v_SQL_Columns_type, 1, CHARINDEX( ', ', @v_SQL_Columns_type) - 1)
	
	PRINT 'PRINT '' dbo.Usp_Del_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Del_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type + ' ) ' + ' AS'
	PRINT 'BEGIN TRY' 
	PRINT CHAR(9) + 'DELETE FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME 
	PRINT CHAR(9) + 'WHERE ' + @v_SQL_Columns_IDENTITY + ' = ' + '@' + @v_SQL_Columns_IDENTITY 
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''

END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Auditoria]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[Usp_Auditoria] (@FI DATE, @FF DATE)
AS
BEGIN 
set DATEFORMAT DMY;
set NOCOUNT ON; 
SELECT * FROM logTransacciones  where FECHA BETWEEN @FI AND @FF
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Construir_Grid]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Construir_Grid]
AS
BEGIN
    SELECT E.ID_Equipo,
	       E.NOM_EQUIPO,
		   E.CANTIDAD,
		   E.CODIGO_ACTIVO
	FROM [dbo].[tblEquipo] E
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Construir_Grid_Dispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Construir_Grid_Dispositivo]
AS
BEGIN
    SELECT D.ID_dispo,
	       D.Dispositivo
	FROM [dbo].[tblDispositivo] D
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ConsultaReuniones]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[Usp_ConsultaReuniones] (@FI DATE, @FF DATE)
AS
BEGIN 
set DATEFORMAT DMY;
set NOCOUNT ON; 
SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.NOM_REUNION, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo where fecharealizada BETWEEN @FI AND @FF
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Del_Dispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Del_Dispositivo] ( @ID_dispo AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblDispositivo
	WHERE ID_dispo = @ID_dispo
END TRY
BEGIN CATCH
	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Del_Equipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Del_Equipo] ( @ID_Equipo AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblEquipo
	WHERE ID_Equipo = @ID_Equipo
END TRY
BEGIN CATCH
	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Del_Personas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Del_Personas] ( @IDPersona AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblPersonas
	WHERE IDPersona = @IDPersona
END TRY
BEGIN CATCH
	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Del_Reunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Del_Reunion] ( @IDReunion AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblReunion
	WHERE IDReunion = @IDReunion
END TRY
BEGIN CATCH
	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ins_Dispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Ins_Dispositivo] ( @Dispositivo AS varchar(75) )  AS
BEGIN TRY
	INSERT INTO dbo.tblDispositivo ( Dispositivo ) 
	VALUES  ( @Dispositivo ) 
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ins_Equipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Ins_Equipo] ( @ID_dispo AS int, @NOM_EQUIPO AS varchar(100), @CODIGO_ACTIVO AS varchar(50), @ACTIVO AS char(1), @CANTIDAD AS int )  AS
BEGIN TRY
	INSERT INTO dbo.tblEquipo ( ID_dispo, NOM_EQUIPO, CODIGO_ACTIVO, ACTIVO, CANTIDAD ) 
	VALUES  ( @ID_dispo, @NOM_EQUIPO, @CODIGO_ACTIVO, @ACTIVO, @CANTIDAD ) 
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ins_Personas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Ins_Personas] ( @Nombre AS varchar(100), @Apellido AS varchar(100), @Cargo AS varchar(100), @Area AS varchar(100), @ACTIVO AS char(1), @Fechaprestamo AS date, @FechaEntrega AS date )  AS
BEGIN TRY
	INSERT INTO dbo.tblPersonas ( Nombre, Apellido, Cargo, Area, ACTIVO, Fechaprestamo, FechaEntrega ) 
	VALUES  ( @Nombre, @Apellido, @Cargo, @Area, @ACTIVO, @Fechaprestamo, @FechaEntrega ) 
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ins_Reunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Ins_Reunion] ( @IDPersona AS int, @ID_Tipo AS int, @NOM_REUNION AS varchar(200), @fecharealizada AS date, @hora AS varchar(10), @ID_Equipo as int )  AS
BEGIN TRY
	INSERT INTO dbo.tblReunion ( IDPersona, ID_Tipo, NOM_REUNION, fecharealizada, hora, ID_Equipo ) 
	VALUES  ( @IDPersona, @ID_Tipo, @NOM_REUNION, @fecharealizada, @hora, @ID_Equipo ) 
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Rpt_Reuniones]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Rpt_Reuniones]
(@IDReunion INT )
AS
SET NOCOUNT ON;
SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.NOM_REUNION, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo
WHERE IDReunion=@IDReunion
ORDER BY NOM_EQUIPO DESC
GO
/****** Object:  StoredProcedure [dbo].[Usp_Rpt_ReunionesGenerales]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Rpt_ReunionesGenerales]

AS
SET NOCOUNT ON;
SELECT R.IDReunion, R.NOM_REUNION, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E ON E.ID_Equipo = R.IDReunion
ORDER BY NOM_EQUIPO DESC
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_CmbEquipoPrestado]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[Usp_Sel_CmbEquipoPrestado]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT ID_Equipo, NOM_EQUIPO FROM dbo.tblEquipo
ELSE 
	SELECT * FROM dbo.tblEquipo  WHERE ID_Equipo =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_CmbPersonas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Sel_CmbPersonas]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT IDPersona,CONCAT(Nombre, ' ',Apellido) AS Persona FROM dbo.tblPersonas
ELSE 
	SELECT * FROM dbo.tblPersonas  WHERE IDPersona =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Dispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Sel_Dispositivo]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT * FROM dbo.tblDispositivo
ELSE 
	SELECT * FROM dbo.tblDispositivo WHERE ID_dispo =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Equipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Sel_Equipo]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
		SELECT E.ID_Equipo, E.NOM_EQUIPO, D.Dispositivo AS NOMBRE_DISPOTIVO, E.CODIGO_ACTIVO, E.CANTIDAD
		FROM dbo.tblEquipo E INNER JOIN tblDispositivo D on D.ID_dispo = E.ID_dispo
		ELSE 
	SELECT * FROM dbo.tblEquipo WHERE ID_Equipo =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Personas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Sel_Personas]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT IDPersona, CONCAT(Nombre, ' ',Apellido) AS Persona, Cargo, Area, ACTIVO, Fechaprestamo, FechaEntrega FROM dbo.tblPersonas
ELSE 
	SELECT * FROM dbo.tblPersonas  WHERE IDPersona =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Reunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Sel_Reunion]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0


	SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.NOM_REUNION, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo

ELSE 
	SELECT * FROM dbo.tblReunion WHERE IDReunion =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Reunion2]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Usp_Sel_Reunion2]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0

	--SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido) AS Responsable, T.TipoReunion, R.hora, R.fecharealizada, E.NOM_EQUIPO
	--FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	--INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	--INNER JOIN tblEquipo E ON E.ID_Equipo = R.IDReunion

	SELECT * FROM dbo.tblReunion 
ELSE 
	SELECT * FROM dbo.tblReunion WHERE IDReunion =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_TipoReunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Sel_TipoReunion]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT * FROM dbo.tblTipoReunion
ELSE 
	SELECT * FROM dbo.tblTipoReunion WHERE ID_Tipo =@ID
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ultimo_Numero]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[Usp_Ultimo_Numero]
  ( 
     @ID INT OUTPUT 
  )
  AS
  BEGIN
	SELECT @ID=ISNULL(MAX(IDReunion),0) + 1 FROM tblReunion
  END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Upd_Dispositivo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Upd_Dispositivo] ( @ID_dispo AS int, @Dispositivo AS varchar(75) )  AS
BEGIN TRY
	UPDATE dbo.tblDispositivo
	SET Dispositivo = @Dispositivo
	WHERE ID_dispo = @ID_dispo
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Upd_Equipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Upd_Equipo] ( @ID_Equipo AS int, @ID_dispo AS int, @NOM_EQUIPO AS varchar(100), @CODIGO_ACTIVO AS varchar(50), @ACTIVO AS char(1), @CANTIDAD AS int )  AS
BEGIN TRY
	UPDATE dbo.tblEquipo
	SET ID_dispo = @ID_dispo
		, NOM_EQUIPO = @NOM_EQUIPO
		, CODIGO_ACTIVO = @CODIGO_ACTIVO
		, ACTIVO = @ACTIVO
		, CANTIDAD = @CANTIDAD
	WHERE ID_Equipo = @ID_Equipo
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Upd_Personas]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Upd_Personas] ( @IDPersona AS int, @Nombre AS varchar(100), @Apellido AS varchar(100), @Cargo AS varchar(100), @Area AS varchar(100), @ACTIVO AS char(1), @Fechaprestamo AS date, @FechaEntrega AS date )  AS
BEGIN TRY
	UPDATE dbo.tblPersonas
	SET Nombre = @Nombre
		, Apellido = @Apellido
		, Cargo = @Cargo
		, Area = @Area
		, ACTIVO = @ACTIVO
		, Fechaprestamo = @Fechaprestamo
		, FechaEntrega = @FechaEntrega
	WHERE IDPersona = @IDPersona
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[Usp_Upd_Reunion]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Upd_Reunion] ( @IDReunion AS int, @IDPersona AS int, @ID_Tipo AS int, @NOM_REUNION AS varchar(200), @fecharealizada AS date, @hora AS varchar(10), @ID_Equipo as int )  AS
BEGIN TRY
	UPDATE dbo.tblReunion
	SET IDPersona = @IDPersona
		, ID_Tipo = @ID_Tipo
		, NOM_REUNION = @NOM_REUNION
		, fecharealizada = @fecharealizada
		, hora = @hora
		, ID_Equipo = @ID_Equipo
		WHERE IDReunion = @IDReunion
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
/****** Object:  Trigger [dbo].[trIggerEquipo]    Script Date: 25/10/2021 22:08:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trIggerEquipo] ON [dbo].[tblEquipo] FOR INSERT, UPDATE, DELETE
AS 

DECLARE        @bit int
DECLARE        @field int 
DECLARE        @maxfield int 	
DECLARE        @char int	
DECLARE        @fieldname varchar(128) 	
DECLARE        @TableName varchar(128) 	
DECLARE        @PKCols varchar(1000) 
DECLARE        @sql varchar(2000)
DECLARE        @UpdateDate varchar(21) 	
DECLARE        @UserName varchar(128) 	
DECLARE        @Type char(1) 
DECLARE        @PKSELECT varchar(1000)
DECLARE        @Fecha varchar(21) 	
	
	
SET DATEFORMAT DMY 
SELECT @TableName = 'tblEquipo' --<-- cambiar el nombre de la tabla 

-- Fecha y Usuario
SELECT @UserName = HOST_NAME() ,
       @UpdateDate = convert(varchar(8), getdate(), 112) + 
                     ' ' + 
                     convert(varchar(12), getdate(), 114),
       @Fecha=CONVERT(VARCHAR(8), GETDATE(), 112)   

SET NoCount ON 

-- Identificar que evento se está ejecutando (Insert, Update o Delete) 
--en base a cursores especiales (inserted y deleted)
if exists (SELECT * FROM inserted) 
  if exists (SELECT * FROM deleted) --Si es un update
    SELECT @Type = 'U'
  else                              --Si es un insert
    SELECT @Type = 'I'
else                                --si es un delete
    SELECT @Type = 'D'
	
-- Obtenemos la lista de columnas de los cursores
SELECT * INTO #ins FROM inserted
SELECT * INTO #del FROM deleted
	
-- Obtener las columnas de llave primaria
SELECT @PKCols = coalesce(@PKCols + ' and', ' on') + 
       ' i.' + 
       c.COLUMN_NAME + ' = d.' + 
       c.COLUMN_NAME
 FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk
  JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
  ON c.TABLE_NAME = pk.TABLE_NAME
  AND c.CONSTRAINT_NAME = pk.CONSTRAINT_NAME
 WHERE pk.TABLE_NAME = @TableName AND 
  pk.CONSTRAINT_TYPE = 'PRIMARY KEY'
	
-- Obtener la llave primaria y columnas para la inserción en la tabla de auditoria
SELECT 
 @PKSELECT = coalesce(@PKSelect+'+','') + 
 '''<' + 
 COLUMN_NAME + 
 '=''+convert(varchar(100),coalesce(i.' + 
 COLUMN_NAME +',d.' + 
 COLUMN_NAME + '))+''>''' 
 FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS pk  
 JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
  ON c.TABLE_NAME = pk.TABLE_NAME
  AND c.CONSTRAINT_NAME = pk.CONSTRAINT_NAME
 WHERE pk.TABLE_NAME = @TableName
  AND CONSTRAINT_TYPE = 'PRIMARY KEY'
	
if @PKCols is null --<-- Este trigger solo funciona si la tabla tiene llave primaria
 BEGIN
  RAISERROR('no PK on table %s', 16, -1, @TableName)
  RETURN
 END
	
--Loop para armar el query de inserción en la tabla de log. 
--Un registro por cada campo afectado.
SELECT 
 @field = 0, 
 @maxfield = max(ORDINAL_POSITION) 
 FROM INFORMATION_SCHEMA.COLUMNS 
 WHERE TABLE_NAME = @TableName
	
while @field < @maxfield
 BEGIN
  SELECT @field = min(ORDINAL_POSITION) 
   FROM INFORMATION_SCHEMA.COLUMNS 
   WHERE TABLE_NAME = @TableName and ORDINAL_POSITION > @field
  SELECT @bit = (@field - 1 )% 8 + 1
  SELECT @bit = power(2,@bit - 1)
  SELECT @char = ((@field - 1) / 8) + 1
  if substring(COLUMNS_UPDATED(),@char, 1) & @bit > 0 or @Type in ('I','D')
   BEGIN
     SELECT @fieldname = COLUMN_NAME 
      FROM INFORMATION_SCHEMA.COLUMNS 
	  WHERE TABLE_NAME = @TableName and ORDINAL_POSITION = @field
     SELECT @sql = 'insert LogTransacciones (TipoTrn, Tabla, PK, Campo, ValorOriginal, ValorNuevo, FechaTrn, Usuario, fecha)'
     SELECT @sql = @sql + 	' SELECT ''' + @Type + ''''
     SELECT @sql = @sql + 	',''' + @TableName + ''''
     SELECT @sql = @sql + 	',' + @PKSelect
     SELECT @sql = @sql + 	',''' + @fieldname + ''''
     SELECT @sql = @sql + 	',convert(varchar(1000),d.' + @fieldname + ')'
     SELECT @sql = @sql + 	',convert(varchar(1000),i.' + @fieldname + ')'
     SELECT @sql = @sql + 	',''' + @UpdateDate + ''''
     SELECT @sql = @sql + 	',''' + @UserName + ''''
     SELECT @sql = @sql + 	',''' + @Fecha + ''''
     SELECT @sql = @sql + 	' from #ins i full outer join #del d'
     SELECT @sql = @sql + 	@PKCols
     SELECT @sql = @sql + 	' where i.' + @fieldname + ' <> d.' + @fieldname 
     SELECT @sql = @sql + 	' or (i.' + @fieldname + ' is null and  d.' + @fieldname + ' is not null)' 
     SELECT @sql = @sql + 	' or (i.' + @fieldname + ' is not null and  d.' + @fieldname + ' is null)' 
     exec (@sql)
   END
 END
GO
ALTER TABLE [dbo].[tblEquipo] ENABLE TRIGGER [trIggerEquipo]
GO
