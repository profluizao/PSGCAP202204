--PROBLEMAS COM O FORMATO DA COLUNA MATRICULA, DEVERIA SER BIGINT PARA PERMITIR ASSOCIAÇÃO ENTRE FUNCIONARIO_DADOS_PESSOAIS E FUNCIONARIO_DADOS_EMPRESA.
--CRIAR UMA NOVA TABELA, E IMPORTAR OS DADOS DO FUNCIONARIO, ANTES DE IMPORTAR DADOS_EMPRESA.

CREATE TABLE Funcionario_Dados_Pessoais(
	ID_Funcionario bigint NOT NULL,
	Matricula_Funcionario bigint NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(MAX) NOT NULL,
	ID_Pais int NOT NULL,
	Situacao bit NULL default 1,
	DataInclusao datetime NULL default getdate(),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_FuncDadosPessoais PRIMARY KEY (ID_Funcionario)
)
GO

--IMPORTANDO DADOS PARA A NOVA TABELA.
--ATENÇÃO A CONVERSÃO DE DADOS REALIZADA PARA MATRICULA.

INSERT INTO Funcionario_Dados_Pessoais(
	ID_Funcionario, 
	Matricula_Funcionario, 
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Sexo_Funcionario,
	Datanasc_Funcionario,
	Email_Funcionario,
	ID_Pais,
	Situacao,
	DataInclusao,
	DataAlteracao,
	DataExclusao)
		SELECT 
			ID_Funcionario, 
			CONVERT(BIGINT, Matricula_Funcionario) AS Matricula_Funcionario, 
			Nome_Funcionario, 
			Sobrenome_Funcionario, 
			Sexo_Funcionario, 
			Datanasc_Funcionario, 
			Email_Funcionario, 
			ID_Pais, 
			Situacao, 
			DataInclusao, 
			DataAlteracao, 
			DataExclusao
		FROM Funcionario
