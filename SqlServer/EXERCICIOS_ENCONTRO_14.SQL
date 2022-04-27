--CRIANDO UMA TABELA FUNCIONARIOTEMP, EM OUTRO DATABASE.
CREATE TABLE FuncionarioTemporario(
	ID_Funcionario bigint NOT NULL,
	Matricula_Funcionario bigint NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(max) NOT NULL,
	ID_Pais int NOT NULL,
	Data_Admissao_Funcionario DATETIME NOT NULL, 
	Ctps_Funcionario VARCHAR(50),
	Situacao bit NULL DEFAULT 1,
	DataInclusao datetime NULL DEFAULT GETDATE(),
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_FuncTemp PRIMARY KEY(ID_Funcionario ASC)
)
GO

--IMPORTANDO DADOS DE OUTRO DATABASE.
--ATENÇÃO AO NOME DA TABELA, QUE DEVE INCLUIR O DATABASE DE ORIGEM, E O PERFIL AO QUAL A TABELA PERTENCE.

INSERT INTO FuncionarioTemporario(
	ID_Funcionario,
	Matricula_Funcionario,
	Nome_Funcionario,
	Sobrenome_Funcionario,
	Data_Admissao_Funcionario,
	Ctps_Funcionario,
	Sexo_Funcionario,
	Datanasc_Funcionario,
	Email_Funcionario,
	ID_Pais
)
SELECT 
	FDP.ID_Funcionario, 
	FDP.Matricula_Funcionario, 
	FDP.Nome_Funcionario, 
	FDP.Sobrenome_Funcionario, 
	FDE.Data_Admissao_Funcionario, 
	FDE.Ctps_Funcionario, 
	FDP.Sexo_Funcionario, 
	FDP.Datanasc_Funcionario, 
    FDP.Email_Funcionario,
	FDP.ID_Pais
FROM Atacado202204.dbo.Funcionario_Dados_Empresa AS FDE INNER JOIN
    Atacado202204.dbo.Funcionario_Dados_Pessoais AS FDP 
		ON FDE.Matricula_Funcionario = FDP.Matricula_Funcionario

