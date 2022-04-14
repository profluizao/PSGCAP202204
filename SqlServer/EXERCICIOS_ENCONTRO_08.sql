--CREATE TABLE Colaborador(
--	ID_Colaborador INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	Nome_Colaborador VARCHAR(MAX) NOT NULL
--)

--ALTER TABLE Colaborador
--	ADD 
--		Situacao BIT NULL DEFAULT 1,
--		DataInclusao DATETIME NULL DEFAULT GETDATE()
--GO

--ALTER TABLE Colaborador
--	ADD 
--		Cpf_Colaborador CHAR(14) NOT NULL,
--		Sobrenome_Colaborador VARCHAR(MAX) NOT NULL,
--		Endereco_Colaborador VARCHAR(MAX) NOT NULL,
--		Telefone_Colaborador CHAR(14) NOT NULL,
--		Email_Colaborador VARCHAR(MAX) NULL
--GO

--ALTER TABLE Colaborador
--	ALTER COLUMN 
--		Telefone_Colaborador VARCHAR(MAX) NULL
--GO

--ALTER TABLE Colaborador
--	ADD
--		Item_Produto VARCHAR(MAX) NOT NULL
--GO

--ALTER TABLE Colaborador
--	DROP COLUMN
--		Item_produto
--GO

--DROP TABLE Colaborador
--GO
