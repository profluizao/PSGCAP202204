CREATE TABLE Profissao (
	ID_Profissao int IDENTITY (1, 1) NOT NULL,
	Descricao_Profissao varchar (MAX) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	DataAlteracao DATETIME NULL,
	DataExclusao DATETIME NULL,
	CONSTRAINT PK_Profissao PRIMARY KEY (ID_Profissao)
)
GO

SET IDENTITY_INSERT Profissao ON

INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADMINISTRADOR ', 1)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADMINISTRADOR DE EDIFICIO ', 2)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADMINISTRADOR DE EXPLORACAO AGRICOLA ', 3)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADMINISTRADORES ', 4)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADVOGADO ', 5)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ADVOGADO DIREITO DO TRABALHO ', 6)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENCIADOR DE PROPAGANDA ', 7)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE ADMINISTRATIVO ', 8)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE DE COMPRAS ', 9)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE DE VENDA DE SERVICOS AS EMPRESAS ', 10)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE DE VIAGEM ', 11)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE PUBLICITARIO ', 12)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTE TECNICO DE VENDAS ', 13)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTES ADMINISTRATIVOS ', 14)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AGENTES DE ADMINISTRACAO DE EMPRESAS PUBLICAS E PRIVADAS ', 15)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ALMOXARIFE ', 16)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE CARGOS E SALARIOS ', 17)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE COMERCIALIZACAO ', 18)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE COMUNICACA 8234    ANALISTA DE CREDITO E COBRANCA ', 19)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE IMPORTACAO E EXPORTACAO ', 20)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE OCUPACAO ', 21)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE ORGANIZACAO E METODOS ', 22)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE PESQUISA DE MERCADO ', 23)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE RECURSOS HUMANOS ', 24)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE SEGUROS ', 25)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE SISTEMAS ', 26)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ANALISTA DE SUPORTE DE SISTEMA ', 27)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('APONTADOR DE MAO DE OBRA ', 28)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('APONTADOR DE PRODUCAO ', 29)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ARQUITETO ', 30)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ARQUIVISTA ', 31)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ASSISTENTE ADMINISTRATIVO ', 32)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ASSISTENTE DE PATRIMONIO ', 33)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ASSISTENTE DE VENDAS FINANCEIRO ', 34)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ASSISTENTE SOCIAL ', 35)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ATENDETE DE ENFERMAGEM ', 36)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ATLETA PROFISSIONAL DE FUTEBOL ', 37)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUDITOR CONTABIL ', 38)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUDITOR GERAL ', 39)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE ALMOXARIFADO ', 40)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE BIBLIOTECA ', 41)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE CONTABILIDADE ', 42)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE ENFERMAGEM ', 43)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE ESCRITORIO ', 44)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE FARMACIA ', 45)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE IMPORTACAO E EXPORTACAO ', 46)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE LABORATORIO DE ANALISES CLINICAS ', 47)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE LABORATORIO DE ANALISES FISICOQUIMICAS ', 48)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE PESSOAL ', 49)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE SEGUROS ', 50)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIAR DE SERVICOS JURIDICOS ', 51)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIARES DE CONTABILIDADE ', 52)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('AUXILIARES DE ESCRITORIO ', 53)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('BABA ', 54)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('BARMAN ', 55)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('BIBLIOTECARIO ', 56)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('BIOLOGISTA ', 57)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('BIOQUIMICO ', 58)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CABELEIREIRO ', 59)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CARTEIRO ', 60)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ADMINISTRATIVOS ', 61)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ALMOXARIFADO ', 62)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE CONTABILIDADE ', 63)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE CONTABILIDADE E FINANCAS ', 64)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE CONTAS A PAGAR ', 65)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE CONTROLE DE PATRIMONIO ', 66)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO ', 67)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO CONTABILIDADE ', 68)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO CREDITO E COBRANCA ', 69)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO ORCAMENTO ', 70)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO PESSOAL ', 71)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO SERVICOS GERAIS ', 72)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE ESCRITORIO TESOURARIA ', 73)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE RECEPCAO HOTEL ', 74)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE SERVICO DE TRANSPORTE RODOVIARIO ', 75)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CHEFE DE SERVICOS DE TELECOMUNICACOES ', 76)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CIRURGIAO ', 77)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CIRURGIAO DENTISTA ', 78)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CODIFICADOR DE DADOS ', 79)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('COMERCIANTE VAREJISTA ', 80)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('COMISSARIO DE BORDO AERONAVES ', 81)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('COMPRADOR COMERCIO ATACADISTA E VAREJISTA ', 82)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONDUTOR DE CAMINHAO BASCULANTE ', 83)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONDUTORES DE AUTOMOVEIS ', 84)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONSULTOR JURIDICO ', 85)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONTADOR ', 86)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONTRAMESTRE DE EMBARCACAO ', 87)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CONTRAMESTRE INDUSTRIA TEXTIL ', 88)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('COORDENADOR DE ENSINO ', 89)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CORRESPONDENTE COMERCIAL ', 90)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('COZINHEIRO CHEFE ', 91)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('CRONOANALISTA ', 92)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DATILOGRAFO ', 93)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DEMONSTRADOR ', 94)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DESENHISTA ', 95)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DESENHISTA PROJETISTA ', 96)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DESENHISTA TECNICO ', 97)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DESPACHANTE ', 98)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIAGRAMADOR ', 99)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIGITADOR ', 100)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA ', 101)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA DE COMERCIO VAREJISTA ', 102)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA DE COMUNICACOES ', 103)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA DE CONSTRUCAO CIVIL ', 104)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA DE PRESTACAO DE SERVICOS ', 105)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA DE SERVICOS CLINICOS E HOSPITALARES ', 106)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA FINANCEIRA ', 107)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE EMPRESA MANUFATUREIRA ', 108)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE ESTABELECIMENTO DE ENSINO ', 109)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETOR DE ESTABELECIMENTO DE ENSINO SUPERIOR ', 110)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('DIRETORES DE EMPRESAS ', 111)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ECONOMISTA ', 112)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ECONOMISTA MERCADOLOGIA ', 113)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ECONOMISTA PROGRAMACAO ECONOMICO FINANCEIRA ', 114)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ECONOMISTAS ', 115)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('EDITOR DE LIVROS ', 116)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENCARREGADO DE DIGITACAO E OPERACAO ', 117)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENFERMEIRO ', 118)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENFERMEIRO DO TRABALHO ', 119)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENFERMEIROS ', 120)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO AERONAUTICO ', 121)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO AGRONOMO ', 122)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO CIVIL ', 123)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE CONTROLE DE QUALIDADE ', 124)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE MANUTENCAO ELETRICIDADE E ELETRONICA ', 125)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE MINAS ', 126)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE ORGANIZACAO E METODOS ', 127)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE SEGURANCA DO TRABALHO ', 128)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE TELECOMUNICACOES ', 129)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO DE TRAFEGO ', 130)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO ELETRICISTA ', 131)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO ELETRONICO ', 132)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO MECANICO ', 133)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIRO QUIMICO ', 134)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ENGENHEIROS ', 135)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ESCRITURARIO ', 136)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ESCRIVAO ', 137)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ESTATISTICO ', 138)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ESTETICISTA ', 139)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FARMACEUTICO ', 140)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FISIOTERAPEUTA ', 141)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FONOAUDIOLOGO ', 142)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FUNCIONARIO PUBLICO ESTADUAL SUPERIOR ', 143)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FUNCIONARIO PUBLICO FEDERAL SUPERIOR ', 144)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FUNCIONARIO PUBLICO MUNICIPAL SUPERIOR ', 145)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('FUNCIONARIO PUBLICO SUPERIOR ', 146)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GEOLOGO ', 147)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE ADMINISTRATIVO ', 148)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE COMERCIAL ', 149)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE BANCO ', 150)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE BAR ', 151)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE COMPRA ', 152)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE  EMPRESAS ', 153)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE HOTEL ', 154)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE INFORMATICA ', 155)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE LOJA ', 156)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE MARKETING ', 157)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE OPERACAO ', 158)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE PESQUISA E DESENVOLVIMENTO ', 159)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE PESSOAL ', 160)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE PLANEJAMENTO ', 161)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE POSTAL E TELECOMUNICACOES ', 162)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE PRODUCAO ', 163)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE PROPAGANDA ', 164)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE RESTAURANTE ', 165)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE RH ', 166)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE TRANSPORTE ', 167)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE DE VENDAS ', 168)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE EXECUTIVO ', 169)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE FINANCEIRO ', 170)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('GERENTE OPERACIONAL ', 171)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('INSPETOR DE PRODUCAO ', 172)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('INSPETOR DE QUALIDADE ', 173)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('INSPETOR DE	SERVICOS DE TRANSPORTE ', 174)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('INSPETOR TECNICO DE VENDAS ', 175)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('INSTRUTOR DE APRENDIZAGEM E TREINAMENTO ', 176)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('JORNALISTA ', 177)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('LABORATORISTA ANALISES CLINICAS ', 178)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('LABORATORISTA INDUSTRIAL ', 179)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('LOCUTOR ', 180)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MAITRE ', 181)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO ', 182)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO ANESTESISTA ', 183)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO CARDIOLOGISTA ', 184)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO DO TRABALHO ', 185)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO GINECOLOGISTA ', 186)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO ORTOPEDISTA ', 187)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO PEDIATRA ', 188)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO PSIQUIATRA ', 189)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MEDICO VETERINARIO ', 190)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MESTRE CONTRUCAO CIVIL ', 191)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MESTRE INDUSTRIAL ', 192)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTOCICLISTA TRANSPORTE DE MERCADORIAS ', 193)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTORISTA ', 194)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTORISTA DE CAMINHAO ', 195)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTORISTA DE FURGAO OU VEICULO SIMILAR ', 196)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTORISTA DE ONIBUS ', 197)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MOTORISTA DE TAXI ', 198)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('MUSICO ', 199)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('NUTRICIONISTA ', 200)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE CAMERA DE TELEVISAO ', 201)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE COMPUTADOR ', 202)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE EQUIPAMENTOS DE ENTRADA DE DADOS ', 203)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE ESTACAO DE RADIO ', 204)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE MAQUINAS E VEICULOS ', 205)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE MICRO ', 206)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE PRODUTOS FINANCEIROS ', 207)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE RAIOS X ', 208)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OPERADOR DE TELEMARKETING ', 209)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ORIENTADOR EDUCACIONAL ', 210)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('OURIVES ', 211)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PEDAGOGO ', 212)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PILOTO ', 213)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PINTOR ', 214)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PRODUTOR DE RADIO E TELEVISAO ', 215)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE 1A A 4A SERIE ENSINO DE 1O GRAU ', 216)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ADMINISTRACAO ENSINO SUPERIOR ', 217)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ALUNOS COM DEFICENCIAS MENTAIS ', 218)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE BIOLOGIA ENSINO DE 2O GRAU ', 219)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE CIENCIAS NATURAIS ENSINO DE 1O GRAU ', 220)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE COMUNICACAO ', 221)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE CONTABILIDADE ENSINO SUPERIOR ', 222)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE DIDATICA ENSINO SUPERIOR ', 223)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE DIREITO ', 224)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ECONOMIA ', 225)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE EDUCACAO FISICA ', 226)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ENFERMAGEM ', 227)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ENSINO PRE ESCOLAR ', 228)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ESTATISTICA ', 229)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ESTUDOS SOCIAIS ENSINO DE 1O GRAU ', 230)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE FISICA ', 231)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE FISIOTERAPIA ENSINO SUPERIOR ', 232)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE HISTORIA ', 233)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE INGLES ', 234)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE LINGUA PORTUGUESA ', 235)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE LINGUAS ESTRANGEIRAS ', 236)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE MATEMATICA ', 237)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE ORIENTACAO EDUCACIONAL ENSINO SUPERIOR ', 238)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE PEDAGOGIA ', 239)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE PORTUGUES E LITERATURA ', 240)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE PRATICA DE ENSINO ENSINO SUPERIOR ', 241)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE PSICOLOGIA ', 242)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE QUIMICA ', 243)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE SOCIOLOGIA ', 244)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSOR DE TECNOLOGIA ', 245)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES ', 246)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE BIOLOGIA ', 247)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE CIENCIAS HUMANAS ', 248)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE ENSINO DE 2O GRAU ', 249)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE ENSINO DE PRIMEIRO GRAU ', 250)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE ENSINO ESPECIAL ', 251)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE ENSINO PRE ESCOLAR ', 252)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE ENSINO SUPERIOR ', 253)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSORES DE PEDAGOGIA ', 254)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROFESSSOR DE GEOGRAFIA ', 255)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROGRAMADOR DE COMPUTADOR ', 256)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PROPAGANDISTA DE PRODUTOS DE LABORATORIO ', 257)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('PSICOLOGO ', 258)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('QUIMICO ', 259)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('QUIMICO ANALISTA ', 260)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('QUIMICO INDUSTRIAL ', 261)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('RECEPCIONISTA ', 262)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('REDATOR ', 263)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('RELACOES PUBLICAS ', 264)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('REPORTER ', 265)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('REPRESENTANTE COMERCIAL ', 266)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SECRETARIO ', 267)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SECRETARIO BILINGUE ', 268)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SECRETARIO EXECUTIVO ', 269)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SERVENTUARIOS DA JUSTICA ', 270)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SOCIOLOGO ', 271)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISOR DE COMPRAS ', 272)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISOR DE VENDAS COMERCIO ATACADISTA ', 273)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISOR DE VENDAS COMERCIO VAREJISTA ', 274)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISOR EDUCACIONAL ', 275)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISORES DE COMPRAS E COMPRADORES ', 276)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('SUPERVISORES DE VENDAS ', 277)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO ', 278)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO AGRICOLA ', 279)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO AGROPECUARIO ', 280)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE ADMINISTRACAO ', 281)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE CONTABILIDADE ', 282)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE ENFERMAGEM ', 283)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE LABORATORIO ', 284)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE MANUTENCAO ELETRICA ', 285)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE MANUTENCAO ELETRONICA ', 286)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE OBRAS CIVIS ', 287)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE PLANEJAMENTO DE PRODUCAO ', 288)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE SEGURANCA DO TRABALHO ', 289)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE SEGUROS ', 290)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO DE TELECOMUNICACOES ', 291)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO ELETRONICO ', 292)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO MECANICO ', 293)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO MECANICO MAQUINAS ', 294)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO METALURGICO ', 295)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICO QUIMICO ', 296)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICOS DE BIOLOGIA  ', 297)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICOS DE ELETRICIDADE ', 298)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICOS DE ENFERMAGEM ', 299)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TECNICOS DE OBRAS CIVIS ', 300)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TERAPEUTA OCUPACIONAL ', 301)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TOPOGRAFO ', 302)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TRABALHADORES DAS PROFISSOES CIENTIFICAS ', 303)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TRABALHADORES DE COMERCIO ', 304)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TRABALHADORES DE SERVICOS ADMINISTRATIVOS ', 305)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TRABALHADORES DE SERVICOS DE CONTABILIDADE ', 306)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('TRABALHADORES DE SERVICOS DE TURISMO ', 307)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDOR A DOMICILIO ', 308)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDOR AMBULANTE ', 309)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDOR DE COMERCIO ATACADISTA ', 310)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDOR DE COMERCIO VAREJISTA ', 311)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDOR PRACISTA ', 312)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDORES DE COMERCIO ATACADISTA E VAREJISTA ', 313)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VENDEDORES PRACISTAS ', 314)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('VEREADOR ', 315)
INSERT INTO Profissao (Descricao_Profissao, ID_Profissao) VALUES ('ZOOTECNISTA', 316)

SET IDENTITY_INSERT Profissao OFF

