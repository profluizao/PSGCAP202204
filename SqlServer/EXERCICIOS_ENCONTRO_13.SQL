--SCRIPT DE PROGRAMA PARA OBTER DATA

DECLARE @DATA DATETIME

SET @DATA = GETDATE()

SELECT 
	@DATA AS 'Data Atual',
	YEAR(@DATA) AS 'Ano Atual',
	MONTH(@DATA) AS 'Mês Atual',
	DAY(@DATA) AS 'Dia Atual',
	DATEPART(WEEK, @DATA) AS 'Dia da Semana'
GO

--SCRIPT PARA CRIAR PROCEDURE PROCESSAR DATA

CREATE PROCEDURE SP_Processar_Data
	@DATAPARAM DATETIME
AS
BEGIN
	SELECT 
		@DATAPARAM AS 'Data Atual',
		YEAR(@DATAPARAM) AS 'Ano Atual',
		MONTH(@DATAPARAM) AS 'Mês Atual',
		DAY(@DATAPARAM) AS 'Dia Atual',
		DATEPART(WEEK, @DATAPARAM) AS 'Dia da Semana'
END;

--SCRIPT PARA CRIAR PROCEDURE PARA BUSCAR FUNCIONARIO POR DATA DE ADMISSAO, COM PARAMETROS ANO, MES E DIA

CREATE PROCEDURE SP_Buscar_Funcionario_Por_Data_Admissao
@ANO INT,
@MES INT,
@DIA INT
AS
BEGIN
	SELECT 
		ID_FuncDadosEmpresa, 
		Matricula_Funcionario, 
		Nome_Funcionario, 
		Sobrenome_Funcionario, 
		Data_Admissao_Funcionario, 
		Ctps_Funcionario
	FROM Funcionario_Dados_Empresa
	WHERE YEAR(Data_Admissao_Funcionario) = @ANO
	AND MONTH(Data_Admissao_Funcionario) = @MES
	AND DAY(Data_Admissao_Funcionario) = @DIA
	ORDER BY Data_Admissao_Funcionario ASC
END;
