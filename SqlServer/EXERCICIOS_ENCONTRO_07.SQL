--EXERCICIO 1
--PESQUISAR
--- ID_CATEGORIA
--- DESCRICAO_CATEGORIA
--- ID_SUBCATEGORIA
--- DESCRICAO_SUBCATEGORIA
--- ID_PRODUTO
--- DESCRICAO_PRODUTO
--USANDO INNER JOIN.

--SELECT 
--	Produto.ID_Categoria,
--	Categoria.Descricao_Categoria,
--	Produto.ID_Subcategoria,
--	Subcategoria.Descricao_Subcategoria,
--	Produto.ID_Produto,
--	Produto.Descricao_Produto
--FROM Produto
--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria = Produto.ID_Categoria

---------------------------------------------------------------------------------------

--EXERCICIO 2
--PESQUISAR
--- ID_CATEGORIA
--- DESCRICAO_CATEGORIA
--- ID_SUBCATEGORIA
--- DESCRICAO_SUBCATEGORIA
--- ID_PRODUTO
--- DESCRICAO_PRODUTO
--USANDO INNER JOIN.
--PARA PRODUTOS COM DESCRIÇÃO CONTENDO A PALAVRA GIM.

--SELECT 
--	Produto.ID_Categoria,
--	Categoria.Descricao_Categoria,
--	Produto.ID_Subcategoria,
--	Subcategoria.Descricao_Subcategoria,
--	Produto.ID_Produto,
--	Produto.Descricao_Produto
--FROM Produto
--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria = Produto.ID_Categoria
--WHERE Produto.Descricao_Produto LIKE 'gim%'

---------------------------------------------------------------------------------------

--EXERCICIO 3
--PESQUISAR
--- ID_CATEGORIA
--- DESCRICAO_CATEGORIA
--- ID_SUBCATEGORIA
--- DESCRICAO_SUBCATEGORIA
--- ID_PRODUTO
--- DESCRICAO_PRODUTO
--USANDO INNER JOIN.
--DESCRICAO DA SUBCATEGORIA COMEÇANDO COM A PALAVRA 'suco'
--DESCRICAO DO PRODUTO CONTENDO COM A PALAVRA 'maguary'

--SELECT 
--	Produto.ID_Categoria,
--	Categoria.Descricao_Categoria,
--	Produto.ID_Subcategoria,
--	Subcategoria.Descricao_Subcategoria,
--	Produto.ID_Produto,
--	Produto.Descricao_Produto
--FROM Produto
--INNER JOIN Subcategoria ON Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
--INNER JOIN Categoria ON Categoria.ID_Categoria = Produto.ID_Categoria
--WHERE (Subcategoria.Descricao_Subcategoria LIKE 'suco%')
--AND (Produto.Descricao_Produto LIKE '%maguary%')
--GO

--OU USANDO ALIAS
--SELECT 
--	PRO.ID_Categoria AS 'Código da Categoria',
--	CAT.Descricao_Categoria as 'Nome da Categoria',
--	PRO.ID_Subcategoria AS 'Código de Subcategoria',
--	SUB.Descricao_Subcategoria AS 'Nome da Subcategoria',
--	PRO.ID_Produto as 'Código do Produto',
--	PRO.Descricao_Produto AS 'Nome do Produto'
--FROM Produto AS PRO
--INNER JOIN Subcategoria AS SUB ON SUB.ID_Subcategoria = PRO.ID_Subcategoria
--INNER JOIN Categoria AS CAT ON CAT.ID_Categoria = PRO.ID_Categoria
--WHERE (SUB.Descricao_Subcategoria LIKE 'suco%')
--AND (PRO.Descricao_Produto LIKE '%maguary%')
--GO

---------------------------------------------------------------------------------------

--EXERCICIO 4
--PESQUISAR
--- DESCRICAO_CATEGORIA
--- DESCRICAO_SUBCATEGORIA
--- DESCRICAO_PRODUTO
--USANDO INNER JOIN.
--PARA CATEGORIA IGUAL A BEBIDAS.
--PARA SUBCATEGORIA CONTENDO A PALAVRA 'REFRESCO'
--PARA PRODUTO CONTENDO A PALAVRA 'TANG'

SELECT 
	C.Descricao_Categoria as 'Categoria',
	S.Descricao_Subcategoria AS 'Subcategoria',
	P.Descricao_Produto AS 'Produto'
FROM Produto AS P
INNER JOIN Subcategoria AS S ON S.ID_Subcategoria = P.ID_Subcategoria
INNER JOIN Categoria AS C ON C.ID_Categoria = P.ID_Categoria
WHERE (C.Descricao_Categoria LIKE 'bebidas')
AND (S.Descricao_Subcategoria LIKE '%refresco%')
AND (P.Descricao_Produto LIKE '%tang%')

SELECT COUNT(*) AS 'Quantidade'
FROM Produto AS P
INNER JOIN Subcategoria AS S ON S.ID_Subcategoria = P.ID_Subcategoria
INNER JOIN Categoria AS C ON C.ID_Categoria = P.ID_Categoria
WHERE (C.Descricao_Categoria LIKE 'bebidas')
AND (S.Descricao_Subcategoria LIKE '%refresco%')
AND (P.Descricao_Produto LIKE '%tang%')

