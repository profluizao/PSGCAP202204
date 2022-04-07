--SELECT * FROM Funcionario

SELECT
TRIM(Nome_Funcionario) + ' ' + TRIM(Sobrenome_Funcionario)
FROM Funcionario
WHERE (Matricula_Funcionario = 1) OR (Matricula_Funcionario = 3)
GO