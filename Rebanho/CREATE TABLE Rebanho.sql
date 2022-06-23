CREATE TABLE Rebanho(
	ID_Rebanho INT NOT NULL IDENTITY(1,1),
	Ano_Ref INT NOT NULL,
	ID_Municipio INT NOT NULL,
	ID_Tipo_Rebanho INT NOT NULL,
	Tipo_Rebanho VARCHAR(MAX) NOT NULL,
	Quantidade INT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_Rebanho PRIMARY KEY (ID_Rebanho)
)
GO