USE Admisiones_DWH;

DROP TABLE IF EXISTS Dimension.Carrera;



CREATE TABLE [Dimension].[Carrera](
	[SK_Carrera] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ID_Carrera] [dbo].[UDT_PK] NULL,
	[ID_Facultad] [dbo].[UDT_PK] NULL,
	[NombreCarrera] [dbo].[UDT_VarcharMediano] NULL,
	[NombreFacultad] [dbo].[UDT_VarcharMediano] NULL);




