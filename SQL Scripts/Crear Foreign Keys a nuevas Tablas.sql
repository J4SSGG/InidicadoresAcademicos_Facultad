use Admisiones;

ALTER TABLE Candidato ADD
ID_Municipio INT,
CONSTRAINT FK_candidato_municipio FOREIGN KEY (ID_Municipio) REFERENCES Municipio (ID_Municipio);

USE Admisiones_DWH;

ALTER TABLE Dimension.Candidato ADD
ID_Pais INT,
ID_Departamento INT,
ID_Municipio INT,
NombrePais VARCHAR(300),
NombreDepartamento VARCHAR(300),
NombreMunicipio VARCHAR(300);
