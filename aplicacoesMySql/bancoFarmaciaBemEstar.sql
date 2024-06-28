CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
comreceita VARCHAR(3) NOT NULL,
semreceita VARCHAR(3)NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
generico VARCHAR (100),
marca VARCHAR(100) NOT NULL,
categoriasid BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (comreceita, semreceita)
VALUES ("sim", "não");

INSERT INTO tb_categorias (comreceita, semreceita)
VALUES ("sim", "sim");

INSERT INTO tb_categorias (comreceita, semreceita)
VALUES ("sim", "");

INSERT INTO tb_categorias (comreceita, semreceita)
VALUES ("não", "sim");

INSERT INTO tb_categorias (comreceita, semreceita)
VALUES ("não", "não");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Donaren", "60.00", "sim", "apsen",1);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Adacne clin gel", "220.00", "não", "glenmark",2);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Janúvia", "300.00", "não", "globalfarma",3);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Glicazilda", "35.50", "sim", "ems",3);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("simeticona", "25.00", "não", "luftal",4);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("novalgina", "37.00", "não", "sanofi",4);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Nitrato De Oxiconazol", "125.19", "sim", "prati",5);

INSERT INTO tb_produtos (nome, preco, generico, marca, categoriasid)
VALUES ("Amoxilina", "80.00", "não", "vansil",5);

SELECT * FROM tb_categorias, tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
                
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, generico, marca, tb_categorias.comreceita, tb_categorias.semreceita 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, preco, generico, marca, tb_categorias.comreceita, tb_categorias.semreceita
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id WHERE marca = "globalfarma";