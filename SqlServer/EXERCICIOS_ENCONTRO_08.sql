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

--SELECT * FROM EXERCICIO
--GO

--EXERCICIO 1
--PESQUISAR TODOS QUE POSSUEM IDADE ENTRE 18 E 23 ANOS.
--SELECT * 
--FROM EXERCICIO
--WHERE Idade_Exercicio BETWEEN 23 AND 25
--GO

----------------------------------------------------------

--EXERCICIO 2
--PESQUISAR TODOS QUE POSSUEM IDADE MAIOR QUE 18.
--SELECT * 
--FROM EXERCICIO
--WHERE Idade_Exercicio > 18

----------------------------------------------------------

--EXERCICIO 3
--MODIFICAR A COLUNA Nota_Exercicio PARA DECIMAL (7,2)

--ALTER TABLE Exercicio
--	ALTER COLUMN
--		Nota_Exercicio DECIMAL(7,2)
--GO

--SELECT * 
--FROM EXERCICIO

----------------------------------------------------------

--EXERCICIO 4
--ALTERAR O REGISTRO COM IDADE IGUAL A 23 PARA SITUACAO IGUAL A 0.

--SELECT * FROM Exercicio
--WHERE Idade_Exercicio = 23

--UPDATE Exercicio
--SET SITUACAO = 0
--WHERE Idade_Exercicio = 23

----------------------------------------------------------

--EXERCÍCIO 5
--ALTERAR A IDADE DE QUEM TEM NOTA ABAIXO DE 6.0 PARA 15.
--SELECT * FROM EXERCICIO
--WHERE Nota_Exercicio < 6

--UPDATE Exercicio
--SET Idade_Exercicio = 15
--WHERE Nota_Exercicio < 6

----------------------------------------------------------

--EXERCICIO 6
--A)
--ADICIONAR COLUNA ESTADO_ATUAL COMO CHAR(1) PERMITINDO NULOS.
--B)
--ALTERAR TODOS OS REGISTROS CUJA NOTA SEJA ABAIXO DE 6, PARA ESTADO ATUAL
--REPROVADO.
--C)
--ALTERAR TODOS OS REGISTROS CUJA NOTA SEJA IGUAL OU SUPERIOR A 6, 
--PARA ESTADO ATUAL APROVADO.

--ALTER TABLE Exercicio
--	ADD
--		Estado_Atual CHAR(1) NULL
--GO

--SELECT * FROM Exercicio WHERE Nota_Exercicio < 6
--UPDATE Exercicio
--	SET Estado_Atual = 'R'
--	WHERE  Nota_Exercicio < 6
--GO

--SELECT * FROM Exercicio WHERE Nota_Exercicio >= 6
--UPDATE Exercicio
--	SET Estado_Atual = 'A'
--	WHERE  Nota_Exercicio >= 6
--GO

--SELECT * FROM Exercicio
