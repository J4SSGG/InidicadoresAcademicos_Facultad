USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Candidato;

CREATE TABLE Staging.[Candidato](
	[SK_Candidato] [dbo].[UDT_SK] IDENTITY(1,1) PRIMARY KEY,
	[ID_Candidato] [dbo].[UDT_PK] NULL,
	[ID_Colegio] [dbo].[UDT_PK] NULL,
	[ID_Diversificado] [dbo].[UDT_PK] NULL,
	[ID_Pais] [int] NULL,
	[ID_Departamento] [int] NULL,
	[ID_Municipio] [int] NULL,
	[NombreCandidato] [dbo].[UDT_VarcharCorto] NULL,
	[ApellidoCandidato] [dbo].[UDT_VarcharCorto] NULL,
	[Genero] [dbo].[UDT_UnCaracter] NULL,
	[FechaNacimiento] [dbo].[UDT_DateTime] NULL,
	[NombreColegio] [dbo].[UDT_VarcharLargo] NULL,
	[NombreDiversificado] [dbo].[UDT_VarcharLargo] NULL,
	[NombrePais] [varchar](300) NULL,
	[NombreDepartamento] [varchar](300) NULL,
	[NombreMunicipio] [varchar](300) NULL);
