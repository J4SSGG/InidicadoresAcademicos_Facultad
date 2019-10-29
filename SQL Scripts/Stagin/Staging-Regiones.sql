USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Region;

CREATE TABLE Staging.[Region](
	[SK_Region] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ID_Pais] [dbo].[UDT_PK] NULL,
	[ID_Departamento] [dbo].[UDT_PK] NULL,
	[ID_Municipio] [dbo].[UDT_PK] NULL,
	[Pais] [varchar](300) NOT NULL,
	[Departamento] [varchar](300) NOT NULL,
	[Municipio] [varchar](300) NOT NULL);