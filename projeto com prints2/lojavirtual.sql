CREATE DATABASE lojavirtual;

USE lojavirtual;

CREATE TABLE tab_fornecedores(
	id_fornecedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,	
	telefone VARCHAR(15) NOT NULL	
);


CREATE TABLE tab_categorias(
	id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);

CREATE TABLE tab_cargos(
	id_cargo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);
CREATE TABLE tab_animais(
	id_animal INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);
CREATE TABLE tab_marcas(
	id_marca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL
);



CREATE TABLE tab_lotes(
	id_lote INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	datavencimento DATE NOT NULL,
    entradadata DATE NOT NULL
);

CREATE TABLE tab_funcionarios(
    id_funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    nomeusuario VARCHAR(50) NOT NULL,
    perfil INT(1) NOT NULL,
    senha VARCHAR(200) NOT NULL,
    id_cargo INT NOT NULL,

    CONSTRAINT  fk_id_cargo
    FOREIGN KEY(id_cargo)
    REFERENCES tab_cargos(id_cargo)
);

CREATE TABLE tab_clientes (
  id_cliente int NOT  NULL PRIMARY KEY  AUTO_INCREMENT,
  nome varchar(20) NOT NULL,
  sobrenome varchar(50) NOT NULL,
  cpf varchar(15) NOT NULL,
  rg varchar(13) DEFAULT NULL,
  nascimento date DEFAULT NULL,
  sexo varchar(1) NOT NULL,
  email varchar(50) NOT NULL,
  senha varchar(200) NOT NULL,
  cep varchar(9) NOT NULL,
  logradouro varchar(100) NOT NULL,
  numero varchar(5) NOT NULL,
  bairro varchar(20) NOT NULL,
  cidade varchar(30) NOT NULL,
  estado varchar(2) NOT NULL
); 





CREATE TABLE tab_produtos (
  id_produto int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_fornecedor int NOT NULL,
  id_lote int NOT NULL,
  id_animal int NOT NULL,
  id_categoria int NOT NULL,
  id_marca int NOT NULL,
  nome varchar(50) NOT NULL,
  preco decimal(10,2) NOT NULL,
  imagem varchar(50) NOT NULL,
  descricao text NOT NULL,
  tamanho int(11) NOT NULL, 
  unidademedida int(11) NOT NULL,
  quantidade int(11) NOT NULL,

    CONSTRAINT  fk_id_fornecedor
    FOREIGN KEY(id_fornecedor)
    REFERENCES tab_fornecedores(id_fornecedor),  

    CONSTRAINT  fk_id_lote
    FOREIGN KEY(id_lote)
    REFERENCES tab_lotes(id_lote),  

    CONSTRAINT  fk_id_animal
    FOREIGN KEY(id_animal)
    REFERENCES tab_animais(id_animal),  

    CONSTRAINT  fk_id_categoria
    FOREIGN KEY(id_categoria)
    REFERENCES tab_categorias(id_categoria),

    CONSTRAINT  fk_id_marca
    FOREIGN KEY(id_marca)
    REFERENCES tab_marcas(id_marca)

);

CREATE TABLE tab_itens_pedidos(
    id_pedido int NOT NULL,
    id_produto int NOT NULL,
    id_cliente int NOT NULL,
    quantidade int NOT NULL,

    CONSTRAINT  fk_id_produto
    FOREIGN KEY(id_produto)
    REFERENCES tab_produtos(id_produto),

    CONSTRAINT  fk_id_cliente
    FOREIGN KEY(id_cliente)
    REFERENCES tab_clientes(id_cliente)

); 