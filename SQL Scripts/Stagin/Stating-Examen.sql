USE Admisiones_DWH;

DROP TABLE IF EXISTS Staging.Examen;


CREATE TABLE Staging.[Examen](
	[SK_Examen] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL,
	[ID_Resultado] [int] NOT NULL,
	[ID_ResultadoDetalle] [dbo].[UDT_PK] NULL,
	[ID_Candidato] [int] NULL,
	[ID_Carrera] [int] NULL,
	[ID_Descuento] [int] NULL,
	[ID_ExamenArea] [dbo].[UDT_PK] NULL,
	[Area] [varchar](300) NOT NULL,
	[NotaArea] [decimal](5, 2) NULL,
	[Precio] [decimal](6, 2) NULL,
	[DescripcionDescuento] [varchar](300) NOT NULL,
	[PorcentajeDescuento] [decimal](6, 2) NULL,
	[FechaPrueba] [datetime] NULL);