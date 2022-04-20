IMPORTAÇÃO DE DADOS - PASSO A PASSO

EXERCICIO 1

1 - IMPORTAR OS DADOS DO ARQUIVO CSV PARO O SQL SERVER (IMPORTAÇÃO FLAT FILE - ARQUIVO SIMPLES).

2 - CRIAR A TABELA PARA ORGANIZAR OS DADOS (UTILIZAR PADRONIZAÇÃO DA EQUIPE, E CAMPOS DE CONTROLE)
EXEMPLO:
CREATE TABLE Departamento(
	ID_Depto INT NOT NULL,
	Nome_Depto VARCHAR(50) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_Depto PRIMARY KEY (ID_Depto)
)

- INSERIR OS DADOS REALIZANDO QUALQUER TRATAMENTO NECESSÁRIO.

INSERT INTO Departamento(ID_Depto, Nome_Depto)
	SELECT deptoid, nome FROM RAW_DATA_Departamentos
GO

SELECT * FROM Departamento
GO

----------------------------------------------------------------------------------------------

EXERCICIO 2

1 - IMPORTAR RAW DATA PAIS.CSV PARA TABELA RAW_DATA_Pais.

2 - CRIAR TABELA PAIS.
CREATE TABLE Pais(
	ID_Pais INT NOT NULL,
	Nome_Pais VARCHAR(50) NOT NULL,
	Abreviacao_Pais CHAR(2) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_Pais PRIMARY KEY (ID_Pais)
)

OBSERVAÇÃO

DDL - DATA DESIGN LANGUAGE - Estrutura das tabelas (CREATE TABLE, ALTER TABLE, DROP TABLE)
DML - DATA MANIPULATE LANGUAGE - Manipulação dos dados (INSERT INTO, UPDATE TABLE, DELETE)
DQL - DATA QUERY LANGUAGE - Consulta dos dados (SELECT)

3 - TRATAR E IMPORTAR OS DADOS.

INSERT INTO Pais(ID_Pais, Nome_Pais, Abreviacao_Pais)
	SELECT 
		CONVERT(INT, paisid) AS ID, 
		CONVERT(VARCHAR, nome) AS NOME, 
		CONVERT(CHAR(2), abreviacao) AS SIGLA
	FROM RAW_DATA_Pais
	ORDER BY ID
GO

----------------------------------------------------------------------------------------------

EXERCICIO 4

1 - IMPORTAR FUNCIONARIOS_DADOS_PESSOAIS.CSV

2 - CRIAR A TABELA FUNCIONARIOS

CREATE TABLE Funcionario(
	ID_Funcionario bigint NOT NULL,
	Matricula_Funcionario varchar(50) NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(50) NOT NULL,
	ID_Pais int NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_Funcionario PRIMARY KEY (ID_Funcionario),
	CONSTRAINT FK_Pais_Funcionario FOREIGN KEY (ID_Pais)
		REFERENCES Pais(ID_Pais)
)

3 - ORGANIZAR E INSERIR OS DADOS.

INSERT INTO Funcionario(ID_Funcionario, Matricula_Funcionario, 
Nome_Funcionario, Sobrenome_Funcionario, Sexo_Funcionario, 
Datanasc_Funcionario, Email_Funcionario, ID_Pais)
SELECT 
	CONVERT(bigint, funcid) as funcid, 
	CONVERT(varchar, chave) as chave, 
	CONVERT(varchar, nome) as nome, 
	CONVERT(varchar, sobrenome) as sobrenome, 
	CONVERT(char(1), sexo) as sexo, 
	datanascimento, 
	CONVERT(varchar, email) as email, 
	paisid
FROM RAW_DATA_Funcionarios_Dados_Pessoais
ORDER BY funcid

