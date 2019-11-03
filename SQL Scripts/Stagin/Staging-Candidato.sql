USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Candidato;

CREATE TABLE [Staging].[Candidato](
	[SK_Candidato] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ID_Candidato] [dbo].[UDT_PK] NULL,
	[ID_Municipio] [dbo].[UDT_PK] NULL,
	[ID_Colegio] [dbo].[UDT_PK] NULL,
	[ID_Diversificado] [dbo].[UDT_PK] NULL,
	[NombreCandidato] [dbo].[UDT_VarcharCorto] NULL,
	[ApellidoCandidato] [dbo].[UDT_VarcharCorto] NULL,
	[Genero] [dbo].[UDT_VarcharCorto] NULL,
	[FechaNacimiento] [dbo].[UDT_DateTime] NULL,
	[NombreColegio] [dbo].[UDT_VarcharLargo] NULL,
	[NombreDiversificado] [dbo].[UDT_VarcharLargo] NULL,
	[Nota] [dbo].[UDT_Decimal5.2] NULL,
	[Clasificacion] [dbo].[UDT_VarcharCorto] NULL);



