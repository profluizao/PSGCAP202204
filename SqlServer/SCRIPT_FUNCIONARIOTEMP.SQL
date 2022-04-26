CREATE TABLE Funcionario(
	ID_Funcionario bigint NOT NULL,
	Matricula_Funcionario bigint NOT NULL,
	Nome_Funcionario varchar(50) NOT NULL,
	Sobrenome_Funcionario varchar(50) NOT NULL,
	Sexo_Funcionario char(1) NOT NULL,
	Datanasc_Funcionario datetime NOT NULL,
	Email_Funcionario varchar(max) NOT NULL,
	ID_Pais int NOT NULL,
	Situacao bit NULL,
	DataInclusao datetime NULL,
	DataAlteracao datetime NULL,
	DataExclusao datetime NULL,
	CONSTRAINT PK_FuncTemp PRIMARY KEY(ID_Funcionario ASC)
)
GO


INSERT INTO FuncionarioTemp(
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
	DataExclusao
)
SELECT 
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
	DataExclusao
FROM Funcionario_Dados_Pessoais
GO

DELETE FROM FuncionarioTemp
GO
