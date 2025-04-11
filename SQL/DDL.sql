CREATE DATABASE IF NOT EXISTS db_hamburgueria COLLATE utf8mb4_general_ci CHARSET utf8mb4;

USE db_hamburgueria;

SHOW TABLES;

CREATE TABLE iF NOT EXISTS tb_produto(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco FLOAT(5,2) NOT NULL,
    preco_custo FLOAT(5, 2) NOT NULL,
    margem_lucro FLOAT(5, 2) NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_pedido(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100) NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_entrega (
	id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    valor_entrega FLOAT(5,2) NOT NULL,
	valor_ifood FLOAT(5, 2) NOT NULL,
    porcent_ifood FLOAT(5, 2) NOT NULL
)AUTO_INCREMENT =1;

CREATE TABLE IF NOT EXISTS tb_combo (
	id_combo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco FLOAT(5, 2) NOT NULL
)AUTO_INCREMENT = 1;

-- TABELAS COM CHAVES ESTRANGEIRAS

CREATE TABLE IF NOT EXISTS tb_produto_pedido (
	id_produto_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    id_pedido INT,
    
    CONSTRAINT fk_produto_id_produto FOREIGN KEY (id_produto) REFERENCES tb_produto(id_produto),
    CONSTRAINT fk_pedido_id_pedido FOREIGN KEY (id_pedido) REFERENCES tb_pedido (id_pedido)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_pedido_entrega (
	id_pedido_entrega INT PRIMARY KEY AUTO_INCREMENT,
    id_entrega INT,
    id_pedido INT,
    
    CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES tb_pedido(id_pedido),
    CONSTRAINT fk_entrega_id_entrega FOREIGN KEY (id_entrega) REFERENCES tb_entrega(id_entrega)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS tb_produto_combo (
	id_produto_combo INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    id_combo INT,
    
    CONSTRAINT fk_produto_combo FOREIGN KEY (id_produto) REFERENCES tb_produto(id_produto),
    CONSTRAINT fk_combo_id_combo FOREIGN KEY (id_combo) REFERENCES tb_combo(id_combo)
);