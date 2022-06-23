CREATE TABLE UnidadesFederacao (
	ID_UF int IDENTITY (1, 1) NOT NULL,
	Descricao_UF varchar (max) NULL ,
	Sigla_UF char (2) NULL ,
	Regiao_Brasil varchar (20),
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_UF PRIMARY KEY (ID_UF)
)
GO

ALTER TABLE Unidades_Federacao
	ADD CONSTRAINT AK_UF UNIQUE(Sigla_UF)
GO

SET IDENTITY_INSERT UnidadesFederacao ON

INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (1, 'Rondônia', 'RO', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (2, 'Acre', 'AC', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (3, 'Amazonas', 'AM', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (4, 'Roraima', 'RR', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (5, 'Pará', 'PA', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (6, 'Amapá', 'AP', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (7, 'Tocantins', 'TO', 'Norte')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (8, 'Maranhão', 'MA', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (9, 'Piauí', 'PI', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (10, 'Ceará', 'CE', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (11, 'Rio Grande do Norte', 'RN', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (12, 'Paraíba', 'PB', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (13, 'Pernambuco', 'PE', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (14, 'Alagoas', 'AL', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (15, 'Sergipe', 'SE', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (16, 'Bahia', 'BA', 'Nordeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (17, 'Minas Gerais', 'MG', 'Sudeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (18, 'Espírito Santo', 'ES', 'Sudeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (19, 'Rio de Janeiro', 'RJ', 'Sudeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (20, 'São Paulo', 'SP', 'Sudeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (21, 'Paraná', 'PR', 'Sul')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (22, 'Santa Catarina', 'SC', 'Sul')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (23, 'Rio Grande do Sul', 'RS', 'Sul')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (24, 'Mato Grosso do Sul', 'MS', 'Centro-Oeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (25, 'Mato Grosso', 'MT', 'Centro-Oeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (26, 'Goiás', 'GO', 'Centro-Oeste')
INSERT INTO UnidadesFederacao (ID_UF, Descricao_UF, Sigla_UF, Regiao_Brasil) VALUES (27, 'Distrito Federal', 'DF', 'Centro-Oeste')

SET IDENTITY_INSERT UnidadesFederacao OFF

