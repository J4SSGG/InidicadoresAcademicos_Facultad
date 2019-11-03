USE Admisiones_DWH;

DROP TABLE IF EXISTS Fact.ResultadoAdmision;

CREATE TABLE [Fact].[ResultadoAdmision](
	[SK_Resultado] [dbo].[UDT_SK] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[SK_Candidato] [dbo].[UDT_SK] NULL,
	[SK_Carrera] [dbo].[UDT_SK] NULL,
	[SK_Region] [dbo].[UDT_SK] NULL,
	[SK_Examen] [dbo].[UDT_SK] NULL,
	[DateKey] [dbo].[UDT_PK] NULL,
	[Clasificacion] [dbo].[UDT_VarcharCorto] NULL,
	[Condicion] [dbo].[UDT_VarcharMediano] NULL,
	[NotaTotal] [dbo].[UDT_Decimal5.2] NULL,
	[NotaArea] [dbo].[UDT_Decimal5.2] NULL,
	[NombreArea] [dbo].[UDT_VarcharMediano] NULL);

ALTER TABLE [Fact].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([DateKey])
REFERENCES [Dimension].[Fecha] ([DateKey])
GO

ALTER TABLE [Fact].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([SK_Candidato])
REFERENCES [Dimension].[Candidato] ([SK_Candidato])
GO

ALTER TABLE [Fact].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([SK_Carrera])
REFERENCES [Dimension].[Carrera] ([SK_Carrera])
GO

ALTER TABLE [Fact].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([SK_Examen])
REFERENCES [Dimension].[Examen] ([SK_Examen])
GO

ALTER TABLE [Fact].[ResultadoAdmision]  WITH CHECK ADD FOREIGN KEY([SK_Region])
REFERENCES [Dimension].[Region] ([SK_Region])
GO
