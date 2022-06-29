CREATE TABLE Empresa(
	ID_EMPRESA INT NOT NULL IDENTITY(1,1),
	RAZAOSOCIAL VARCHAR(MAX) NOT NULL,
	NOMEFANTASIA VARCHAR(MAX) NOT NULL,
	CNPJ VARCHAR(14) NOT NULL,
	INSCRICAOESTADUAL VARCHAR(9) NOT NULL,
	TELEFONE VARCHAR(11) NOT NULL,
	EMAIL VARCHAR(MAX) NOT NULL,
	ENDERECO VARCHAR(MAX) NOT NULL,
	CONSTRAINT PK_Empresa PRIMARY KEY(ID_EMPRESA)
)
GO