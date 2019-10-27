USE [Admisiones]
GO
ALTER TABLE [dbo].[ResultadoAdmision_detalle] DROP CONSTRAINT [FK__Resultado__ID_Re__151B244E]
GO
ALTER TABLE [dbo].[ResultadoAdmision_detalle] DROP CONSTRAINT [FK__Resultado__ID_Ex__14270015]
GO
ALTER TABLE [dbo].[ResultadoAdmision] DROP CONSTRAINT [FK__Resultado__ID_De__1332DBDC]
GO
ALTER TABLE [dbo].[ResultadoAdmision] DROP CONSTRAINT [FK__Resultado__ID_Co__160F4887]
GO
ALTER TABLE [dbo].[ResultadoAdmision] DROP CONSTRAINT [FK__Resultado__ID_Ca__123EB7A3]
GO
ALTER TABLE [dbo].[ResultadoAdmision] DROP CONSTRAINT [FK__Resultado__ID_Ca__114A936A]
GO
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT [FK__Municipio__ID_De__18EBB532]
GO
ALTER TABLE [dbo].[Departamento] DROP CONSTRAINT [FK__Departame__ID_Pa__17F790F9]
GO
ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [FK__Carrera__ID_Facu__10566F31]
GO
ALTER TABLE [dbo].[Candidato] DROP CONSTRAINT [FK__Candidato__ID_Mu__17036CC0]
GO
ALTER TABLE [dbo].[Candidato] DROP CONSTRAINT [FK__Candidato__ID_Di__0F624AF8]
GO
ALTER TABLE [dbo].[Candidato] DROP CONSTRAINT [FK__Candidato__ID_Co__0E6E26BF]
GO
ALTER TABLE [dbo].[ResultadoAdmision] DROP CONSTRAINT [DF__Resultado__Fecha__0D7A0286]
GO
/****** Object:  Table [dbo].[ResultadoAdmision_detalle]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[ResultadoAdmision_detalle]
GO
/****** Object:  Table [dbo].[ResultadoAdmision]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[ResultadoAdmision]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Facultad]
GO
/****** Object:  Table [dbo].[ExamenArea]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[ExamenArea]
GO
/****** Object:  Table [dbo].[Diversificado]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Diversificado]
GO
/****** Object:  Table [dbo].[DescuentoExamen]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[DescuentoExamen]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Departamento]
GO
/****** Object:  Table [dbo].[Condicion]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Condicion]
GO
/****** Object:  Table [dbo].[ColegioCandidato]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[ColegioCandidato]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 10/27/2019 8:34:22 AM ******/
DROP TABLE [dbo].[Candidato]
GO


/****** Object:  Table [dbo].[Candidato]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[ID_Candidato] [int] IDENTITY(1,1) NOT NULL,
	[ID_Colegio] [int] NULL,
	[ID_Diversificado] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
	[Apellido] [varchar](300) NOT NULL,
	[Genero] [char](1) NOT NULL,
	[FechaNacimiento] [datetime] NULL,
	[ID_Municipio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[ID_Carrera] [int] IDENTITY(1,1) NOT NULL,
	[ID_Facultad] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColegioCandidato]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColegioCandidato](
	[ID_Colegio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Colegio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condicion]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condicion](
	[ID_Condicion] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Condicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[ID_Departamento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pais] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescuentoExamen]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescuentoExamen](
	[ID_Descuento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[PorcentajeDescuento] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diversificado]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diversificado](
	[ID_Diversificado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Diversificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamenArea]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamenArea](
	[ID_ExamenArea] [int] IDENTITY(1,1) NOT NULL,
	[NombreArea] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ExamenArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facultad](
	[ID_Facultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Facultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[ID_Municipio] [int] IDENTITY(1,1) NOT NULL,
	[ID_Departamento] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[ID_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoAdmision]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoAdmision](
	[ID_Resultado] [int] NOT NULL,
	[ID_Candidato] [int] NULL,
	[ID_Carrera] [int] NULL,
	[ID_Descuento] [int] NULL,
	[FechaPrueba] [datetime] NULL,
	[Precio] [decimal](6, 2) NULL,
	[Nota] [decimal](5, 2) NULL,
	[ID_Condicion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Resultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoAdmision_detalle]    Script Date: 10/27/2019 8:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoAdmision_detalle](
	[ID_ResultadoDetalle] [int] IDENTITY(1,1) NOT NULL,
	[ID_Resultado] [int] NULL,
	[ID_ExamenArea] [int] NULL,
	[NotaArea] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ResultadoDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResultadoAdmision] ADD  DEFAULT (getdate()) FOR [FechaPrueba]
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD FOREIGN KEY([ID_Colegio])
REFERENCES [dbo].[ColegioCandidato] ([ID_Colegio])
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD FOREIGN KEY([ID_Diversificado])
REFERENCES [dbo].[Diversificado] ([ID_Diversificado])
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD FOREIGN KEY([ID_Municipio])
REFERENCES [dbo].[Municipio] ([ID_Municipio])
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD FOREIGN KEY([ID_Facultad])
REFERENCES [dbo].[Facultad] ([ID_Facultad])
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD FOREIGN KEY([ID_Pais])
REFERENCES [dbo].[Pais] ([ID_Pais])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([ID_Departamento])
REFERENCES [dbo].[Departamento] ([ID_Departamento])
GO
ALTER TABLE [dbo].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([ID_Candidato])
REFERENCES [dbo].[Candidato] ([ID_Candidato])
GO
ALTER TABLE [dbo].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([ID_Carrera])
REFERENCES [dbo].[Carrera] ([ID_Carrera])
GO
ALTER TABLE [dbo].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([ID_Condicion])
REFERENCES [dbo].[Condicion] ([ID_Condicion])
GO
ALTER TABLE [dbo].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([ID_Descuento])
REFERENCES [dbo].[DescuentoExamen] ([ID_Descuento])
GO
ALTER TABLE [dbo].[ResultadoAdmision_detalle]  WITH CHECK ADD FOREIGN KEY([ID_ExamenArea])
REFERENCES [dbo].[ExamenArea] ([ID_ExamenArea])
GO
ALTER TABLE [dbo].[ResultadoAdmision_detalle]  WITH CHECK ADD FOREIGN KEY([ID_Resultado])
REFERENCES [dbo].[ResultadoAdmision] ([ID_Resultado])
GO