-- derrubar / apagar é a função um banco de dados
-- DROP DATABASE db_quitanda;
CREATE DATABASE db_mercado;

USE db_mercado;

-- tabela mandante, sendo independente
CREATE TABLE tb_mantimentos(
id BIGINT AUTO_INCREMENT, -- constraint = restrição
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

-- tabela dependente da tabela mantimentos 
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    mantimentosid BIGINT,
    PRIMARY KEY (id), 
    FOREIGN KEY (mantimentosid) REFERENCES tb_mantimentos(id) -- o references serve para conectar com a outra tabela
);

INSERT INTO tb_mantimentos (descricao)
VALUES ("secos");

INSERT INTO tb_mantimentos (descricao)
VALUES ("gelados");

INSERT INTO tb_mantimentos (descricao)
VALUES ("Legumes");

INSERT INTO tb_mantimentos (descricao)
VALUES ("Temperos");

INSERT INTO tb_mantimentos (descricao)
VALUES ("outros");

SELECT * FROM tb_mantimentos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES ("Leite", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES ("Leite de amêndoas", 35, "2022-03-10", 17.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES ("Leite sem lactose", 100, "2022-03-10", 12.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES ("Torrada", 1020, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES("Páprica", 1000, "2022-03-07", 15.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, mantimentosid)
VALUES("Requeijão", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

-- between = entre / ou intervalo de algo

SELECT * FROM tb_produtos WHERE preco >= 5.00 AND preco <= 10.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 10.00;

-- coringa % pesquisa e o like é o que assemelha

SELECT * FROM tb_produtos WHERE nome LIKE "%te%";

SELECT * FROM tb_produtos WHERE nome LIKE "%leite%";

-- inserindo JOIN que serve para pesquisa do relacionamento entre tabelas
SELECT nome, preco, quantidade, tb_mantimentos.descricao
FROM tb_produtos INNER JOIN tb_mantimentos 
ON tb_produtos.mantimentosid = tb_mantimentos.id;

SELECT * FROM tb_produtos, tb_mantimentos;

SELECT nome, preco, quantidade, tb_mantimentos.descricao
FROM tb_produtos LEFT JOIN tb_mantimentos 
ON tb_produtos.mantimentosid = tb_mantimentos.id;

SELECT nome, preco, quantidade, tb_mantimentos.descricao
FROM tb_produtos RIGHT JOIN tb_mantimentos 
ON tb_produtos.mantimentosid = tb_mantimentos.id;


