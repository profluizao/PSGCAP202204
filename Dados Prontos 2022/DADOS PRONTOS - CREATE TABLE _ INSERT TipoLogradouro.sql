CREATE TABLE TipoLogradouro (
	ID_TipoLog int IDENTITY (1, 1) NOT NULL,
	Descricao_TipoLog varchar (MAX) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_TipoLog PRIMARY KEY (ID_TipoLog)
)
GO

SET IDENTITY_INSERT TipoLogradouro ON

INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (1, 'Avenida')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (2, 'Aeroporto')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (3, 'Alameda')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (4, 'Área')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (5, 'Campo')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (6, 'Chácara')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (7, 'Colônia')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (8, 'Condomínio')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (9, 'Conjunto')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (10, 'Distrito')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (11, 'Esplanada')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (12, 'Estação')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (13, 'Estrada')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (14, 'Favela ')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (15, 'Fazenda')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (16, 'Feira')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (17, 'Jardim')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (18, 'Ladeira')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (19, 'Lago')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (20, 'Lagoa')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (21, 'Largo')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (22, 'Loteamento')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (23, 'Morro')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (24, 'Núcleo')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (25, 'Parque')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (26, 'Passarela')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (27, 'Pátio')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (28, 'Praça')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (29, 'Quadra')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (30, 'Recanto')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (31, 'Residencial')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (32, 'Rodovia')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (33, 'Setor')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (34, 'Sítio')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (35, 'Travessa')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (36, 'Trecho')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (37, 'Trevo')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (38, 'Vale')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (39, 'Vereda')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (40, 'Via')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (41, 'Viaduto')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (42, 'Viela')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (43, 'Vila')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (44, 'Outros')
INSERT INTO TipoLogradouro (ID_TipoLog, Descricao_TipoLog) VALUES (45, 'Rua')

SET IDENTITY_INSERT TipoLogradouro OFF

