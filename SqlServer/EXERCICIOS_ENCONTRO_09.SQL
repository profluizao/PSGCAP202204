MISSÃO PARA O ENCONTRO 09

1) DATABASE ATACADO202204
1.1) ADICIONAR A COLUNA DataAlteracao DATETIME NULL
1.2) ADICIONAR A COLUNA DataExclusao DATETIME NULL
2) ADICIONAR A TABELA CLIENTE.
3) ADICIONAR A TABELA CARRINHO.
4) ADICIONAR A TABELA CARRINHO_ITENS.
5) ADICIONAR A TABELA PEDIDO.

-----------------------------------------------------------------------------------------------------------------

--ALTER TABLE Categoria
--	ADD
--		DataAlteracao DATETIME NULL,
--		DataExclusao DATETIME NULL
--GO

--ALTER TABLE Subcategoria
--	ADD
--		DataAlteracao DATETIME NULL,
--		DataExclusao DATETIME NULL
--GO

--ALTER TABLE Produto
--	ADD
--		DataAlteracao DATETIME NULL,
--		DataExclusao DATETIME NULL
--

-----------------------------------------------------------------------------------------------------------------

--CREATE TABLE Cliente (
--	ID_Cliente INT NOT NULL IDENTITY(1,1),
--	Nome_Cliente VARCHAR(MAX) NOT NULL,
--	Endereco_Cliente VARCHAR(255) NOT NULL,
--	Cpf_Cliente VARCHAR(14) NOT NULL,
--	Situacao BIT NULL DEFAULT 1,
--	DataInclusao DATETIME NULL DEFAULT GETDATE(),
--	DataAlteracao DATETIME NULL,
--	DataExclusao DATETIME NULL,
--	CONSTRAINT PK_Cliente PRIMARY KEY (ID_Cliente)
--)

--CREATE TABLE Pedido (
--	ID_Pedido INT NOT NULL IDENTITY(1,1),
--	ID_Cliente INT NOT NULL,
--	ID_Carrinho INT NOT NULL,
--	Observacao_Pedido VARCHAR(MAX) NULL,
--	Situacao BIT NULL DEFAULT 1,
--	DataInclusao DATETIME NULL DEFAULT GETDATE(),
--	DataAlteracao DATETIME NULL,
--	DataExclusao DATETIME NULL,
--	CONSTRAINT PK_Pedido PRIMARY KEY (ID_Pedido)
--)

--CREATE TABLE Carrinho (
--	ID_Carrinho INT NOT NULL IDENTITY(1,1),
--	ID_Pedido INT NOT NULL,
--	Situacao BIT NULL DEFAULT 1,
--	DataInclusao DATETIME NULL DEFAULT GETDATE(),
--	DataAlteracao DATETIME NULL,
--	DataExclusao DATETIME NULL,
--	CONSTRAINT PK_Carrinho PRIMARY KEY (ID_Carrinho)
--)

--CREATE TABLE Carrinho_Itens (
--	ID_Carrinho_Itens INT NOT NULL IDENTITY(1,1),
--	ID_Carrinho INT NOT NULL,
--	ID_Produto INT NOT NULL,
--	Qtde_Produto INT NOT NULL,
--	Situacao BIT NULL DEFAULT 1,
--	DataInclusao DATETIME NULL DEFAULT GETDATE(),
--	DataAlteracao DATETIME NULL,
--	DataExclusao DATETIME NULL,
--	CONSTRAINT PK_Carrinho_Itens PRIMARY KEY (ID_Carrinho_Itens),
--	CONSTRAINT FK_Carrinho_Carrinho_Itens FOREIGN KEY (ID_Carrinho) REFERENCES Carrinho(ID_Carrinho),
--	CONSTRAINT FK_Produto_Carrinho_Itens FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
--)
