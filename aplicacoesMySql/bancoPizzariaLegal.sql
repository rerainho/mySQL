CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(100) NOT NULL,
borda VARCHAR(50)NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
tamanhofamilia VARCHAR (3) NOT NULL,
broto VARCHAR(3) NOT NULL,
categoriasid BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (sabor, borda)
VALUES ("salgada", "cheddar");

INSERT INTO tb_categorias (sabor, borda)
VALUES ("salgada", "catupiry");

INSERT INTO tb_categorias (sabor, borda)
VALUES ("salgada");

INSERT INTO tb_categorias (sabor, borda)
VALUES ("doce", "nutella");

INSERT INTO tb_categorias (sabor, borda)
VALUES ("doce", "doce de leite");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Maguerita", "45.00", "sim", "não",1);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Costela", "120.00", "sim", "não",2);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Brocólis", "80.00", "não", "sim",1);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Carne seca", "110.00", "não", "sim",3);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Banana", "90.00", "sim", "não",5);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("M&M", "150.00", "sim", "não",4);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Chocolate com coco", "125.00", "sim", "não",4);

INSERT INTO tb_pizzas (nome, preco, tamanhofamilia, broto, categoriasid)
VALUES ("Morango com leite condensado", "140.00", "sim", "não",5);

SELECT * FROM tb_categorias, tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;
                
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, preco, tamanhofamilia, broto, tb_categorias.sabor, tb_categorias.borda 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT nome, preco, tamanhofamilia, broto, tb_categorias.sabor, tb_categorias.borda
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id WHERE nome = "Costela";
