ALTER TABLE  [ResultadoAdmision] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [ResultadoAdmision_detalle] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Municipio] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Departamento] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Carrera] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Candidato] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE [Pais] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Facultad] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [ExamenArea] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Diversificado] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [DescuentoExamen] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [Condicion] NOCHECK CONSTRAINT ALL
GO
ALTER TABLE  [ColegioCandidato] NOCHECK CONSTRAINT ALL
GO
/****** Object:  Table [ResultadoAdmision_detalle]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [ResultadoAdmision_detalle]
GO
/****** Object:  Table [ResultadoAdmision]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [ResultadoAdmision]
GO
/****** Object:  Table [Candidato]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Candidato]
GO
/****** Object:  Table [Municipio]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Municipio]
GO
/****** Object:  Table [Departamento]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Departamento]
GO
/****** Object:  Table [Pais]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Pais]
GO
/****** Object:  Table [Diversificado]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Diversificado]
GO
/****** Object:  Table [DescuentoExamen]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [DescuentoExamen]
GO
/****** Object:  Table [ExamenArea]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [ExamenArea]
GO
/****** Object:  Table [Condicion]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Condicion]
GO
/****** Object:  Table [ColegioCandidato]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [ColegioCandidato]
GO
/****** Object:  Table [Carrera]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Carrera]
GO
/****** Object:  Table [Facultad]    Script Date: 11/3/2019 8:23:21 AM ******/
DROP TABLE IF EXISTS [Facultad]
GO
/****** Object:  Table [Candidato]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Candidato](
	[ID_Candidato] [int] NOT NULL,
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
/****** Object:  Table [Carrera]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Carrera](
	[ID_Carrera] [int] IDENTITY(1,1) NOT NULL,
	[ID_Facultad] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ColegioCandidato]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ColegioCandidato](
	[ID_Colegio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Colegio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Condicion]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Condicion](
	[ID_Condicion] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Condicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Departamento]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Departamento](
	[ID_Departamento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pais] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DescuentoExamen]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DescuentoExamen](
	[ID_Descuento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[PorcentajeDescuento] [decimal](6, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Diversificado]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Diversificado](
	[ID_Diversificado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Diversificado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ExamenArea]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ExamenArea](
	[ID_ExamenArea] [int] IDENTITY(1,1) NOT NULL,
	[NombreArea] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ExamenArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Facultad]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facultad](
	[ID_Facultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Facultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Municipio]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Municipio](
	[ID_Municipio] [int] IDENTITY(1,1) NOT NULL,
	[ID_Departamento] [int] NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Pais]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Pais](
	[ID_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ResultadoAdmision]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ResultadoAdmision](
	[ID_Resultado] [int] NOT NULL,
	[ID_Candidato] [int] NULL,
	[ID_Carrera] [int] NULL,
	[ID_Descuento] [int] NULL,
	[FechaPrueba] [datetime] NULL,
	[Precio] [decimal](6, 2) NULL,
	[GrupoAdmision] [char](1) NULL,
	[TotalPreguntas] [int] NULL,
	[PreguntasAcertadas] [int] NULL,
	[FechaComienzo] [int] NULL,
	[ID_Condicion] [int] NULL,
	[Nota] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Resultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ResultadoAdmision_detalle]    Script Date: 11/3/2019 8:23:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ResultadoAdmision_detalle](
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
ALTER TABLE [ResultadoAdmision] ADD CONSTRAINT [DF__Resultado__Fecha] DEFAULT (getdate()) FOR [FechaPrueba]
GO
ALTER TABLE [Candidato]  WITH CHECK ADD CONSTRAINT [FK__Candidato__ID_Co] FOREIGN KEY([ID_Colegio])
REFERENCES [ColegioCandidato] ([ID_Colegio])
GO
ALTER TABLE [Candidato]  WITH CHECK ADD CONSTRAINT [FK__Candidato__ID_Di] FOREIGN KEY([ID_Diversificado])
REFERENCES [Diversificado] ([ID_Diversificado])
GO
ALTER TABLE [Candidato]  WITH CHECK ADD CONSTRAINT [FK__Candidato__ID_Mu] FOREIGN KEY([ID_Municipio])
REFERENCES [Municipio] ([ID_Municipio])
GO
ALTER TABLE [Carrera]  WITH CHECK ADD CONSTRAINT [FK__Carrera__ID_Facu] FOREIGN KEY([ID_Facultad])
REFERENCES [Facultad] ([ID_Facultad])
GO
ALTER TABLE [Departamento]  WITH CHECK ADD CONSTRAINT [FK__Departame__ID_Pa] FOREIGN KEY([ID_Pais])
REFERENCES [Pais] ([ID_Pais])
GO
ALTER TABLE [Municipio]  WITH CHECK ADD CONSTRAINT [FK__Municipio__ID_De] FOREIGN KEY([ID_Departamento])
REFERENCES [Departamento] ([ID_Departamento])
GO
ALTER TABLE [ResultadoAdmision]  WITH CHECK ADD CONSTRAINT [FK__Resultado__ID_Cand] FOREIGN KEY([ID_Candidato])
REFERENCES [Candidato] ([ID_Candidato])
GO
ALTER TABLE [ResultadoAdmision]  WITH CHECK ADD CONSTRAINT [FK__Resultado__ID_Carr] FOREIGN KEY([ID_Carrera])
REFERENCES [Carrera] ([ID_Carrera])
GO
ALTER TABLE [ResultadoAdmision]  WITH CHECK ADD CONSTRAINT [FK__Resultado__ID_Co] FOREIGN KEY([ID_Condicion])
REFERENCES [Condicion] ([ID_Condicion])
GO
ALTER TABLE [ResultadoAdmision]  WITH CHECK ADD CONSTRAINT [FK__Resultado__ID_De] FOREIGN KEY([ID_Descuento])
REFERENCES [DescuentoExamen] ([ID_Descuento])
GO