USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Examen;


CREATE TABLE Staging.[Examen](
	[SK_Examen] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ID_Resultado] [dbo].[UDT_PK] NOT NULL,
	[ID_ResultadoDetalle] [dbo].[UDT_PK] NULL,
	[ID_Candidato] [dbo].[UDT_PK] NULL,
	[ID_Carrera] [dbo].[UDT_PK] NULL,
	[ID_Descuento] [dbo].[UDT_PK] NULL,
	[ID_ExamenArea] [dbo].[UDT_PK] NULL,
	[ID_Condicion] [dbo].[UDT_PK] NULL,
	[Condicion] [dbo].[UDT_VarcharMediano] NULL,
	[Area] [dbo].[UDT_VarcharMediano] NOT NULL,
	[NotaArea] [dbo].[UDT_Decimal5.2] NULL,
	[Precio] [dbo].[UDT_Decimal6.2] NULL,
	[DescripcionDescuento] [dbo].[UDT_VarcharMediano] NULL,
	[PorcentajeDescuento] [dbo].[UDT_Decimal6.2] NULL,
	[FechaPrueba] [datetime] NULL);

