CREATE TABLE Cliente (
  cpf VARCHAR(11) NOT NULL,
  nome VARCHAR(50),
  email VARCHAR(50),
  senha VARCHAR(80),
  cep INT,
  endereco VARCHAR(50),
  telefone1 INT,
  telefone2 INT,
  PRIMARY KEY (cpf));

CREATE TABLE Produto (
  codigo INT AUTO_INCREMENT,
  nome_peca VARCHAR(30),
  valor FLOAT,
  PRIMARY KEY (codigo));

CREATE TABLE ClienteCnpj (
  cnpj VARCHAR(14) NOT NULL,
  nome VARCHAR(50),
  nome_loja VARCHAR(20),
  email VARCHAR(50),
  senha VARCHAR(80),
  cep INT,
  endereco VARCHAR(50),
  telefone1 INT,
  telefone2 INT,
  PRIMARY KEY (cnpj));

CREATE TABLE Pedido (
  cod_pedido INT AUTO_INCREMENT,
  data TIMESTAMP,
  quantidade INT,
  conf_pedido BOOLEAN,
  cpf_cliente VARCHAR(11),
  cnpj_cliente VARCHAR(14),
  cod_produto INT,
  PRIMARY KEY (cod_pedido),
  FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf),
  FOREIGN KEY (cnpj_cliente) REFERENCES ClienteCnpj(cnpj),
  FOREIGN KEY (cod_produto) REFERENCES Produto(codigo));

CREATE TABLE Contato (
  nome_con VARCHAR(50),
  email_con VARCHAR(50),
  mensagem VARCHAR(300));

INSERT INTO Produto(nome_peca, valor) VALUES ('bateria palio', 139.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('disco de freio', 199.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('farois', 299.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('motor', 499.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('velas', 249.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('embreagem', 379.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('freio', 239.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('alavanca de cambio', 99.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('bateria gol', 119.90);
INSERT INTO Produto(nome_peca, valor) VALUES ('bateria celta', 159.90);