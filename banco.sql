CREATE GENERATOR GEN_PRODUTO_ID;

CREATE TABLE PRODUTO (
    ID                 INTEGER NOT NULL,
    CODIGO_BARRAS      VARCHAR(14),
    DESCRICAO          VARCHAR(128),
    VALOR_CUSTO        DOUBLE PRECISION,
    VALOR_VENDA        DOUBLE PRECISION,
    DATA_CADASTRO      TIMESTAMP,
    DATA_ATUALIZACAO   TIMESTAMP,
    DATA_ULTIMA_VENDA  TIMESTAMP
);

ALTER TABLE PRODUTO ADD CONSTRAINT PK_PRODUTO PRIMARY KEY (ID);

CREATE OR ALTER TRIGGER PRODUTO_BI FOR PRODUTO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_produto_id,1);
end;


CREATE GENERATOR GEN_PESSOA_ID;

CREATE TABLE PESSOA (
    ID                 INTEGER NOT NULL,
    NOME               VARCHAR(128),
    CPF_CNPJ           VARCHAR(128),
    TELEFONE           VARCHAR(128),
    CELULAR            VARCHAR(128),
    ENDERECO           VARCHAR(128),
    BAIRRO             VARCHAR(128),
    COMPLEMENTO        VARCHAR(128),
    CIDADE             VARCHAR(128),
    CEP                VARCHAR(128),
    DATA_CADASTRO      TIMESTAMP,
    DATA_ATUALIZACAO   TIMESTAMP,
    DATA_ULTIMA_VENDA  TIMESTAMP
);

ALTER TABLE PESSOA ADD CONSTRAINT PK_PESSOA PRIMARY KEY (ID);

CREATE OR ALTER TRIGGER PESSOA_BI FOR PESSOA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_pessoa_id,1);
end;

CREATE GENERATOR GEN_PEDIDOVENDA_ID;

CREATE TABLE PEDIDOVENDA (
    ID              INTEGER NOT NULL,
    NUMERO          INTEGER,
    DATA_EMISSAO    TIMESTAMP,
    ID_CLIENTE      INTEGER,
    VALOR_PRODUTOS  DOUBLE PRECISION,
    VALOR_DESCONTO  DOUBLE PRECISION,
    VALOR_TOTAL     DOUBLE PRECISION
);

ALTER TABLE PEDIDOVENDA ADD CONSTRAINT PK_PEDIDOVENDA PRIMARY KEY (ID);

CREATE OR ALTER TRIGGER PEDIDOVENDA_BI FOR PEDIDOVENDA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_pedidovenda_id,1);
end;



CREATE GENERATOR GEN_ITEMPEDIDOVENDA_ID;

CREATE TABLE ITEMPEDIDOVENDA (
    ID                 INTEGER NOT NULL,
    ID_PEDIDO_VENDA    INTEGER,
    ID_PRODUTO         INTEGER,
    DESCRICAO_PRODUTO  VARCHAR(128),
    VALOR_CUSTO        DOUBLE PRECISION,
    VALOR_VENDA        DOUBLE PRECISION,
    QUANTIDADE         DOUBLE PRECISION,
    VALOR_TOTAL        DOUBLE PRECISION
);

ALTER TABLE ITEMPEDIDOVENDA ADD CONSTRAINT PK_ITEMPEDIDOVENDA PRIMARY KEY (ID);

CREATE OR ALTER TRIGGER ITEMPEDIDOVENDA_BI FOR ITEMPEDIDOVENDA
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_itempedidovenda_id,1);
end;
