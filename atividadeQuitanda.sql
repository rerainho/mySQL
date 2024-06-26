CREATE DATABASE db_quitanda;

-- serve para usar o banco de dados
USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT, -- 1/2/3/4... 
	nome VARCHAR(255) NOT NULL, -- esse 255 é o espaço na memória reservada para colocar essa qtd de caracteres
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00); -- mesmo colocando fora de ordem funciona, porém é melhor manter um padrão como se fosse uma planilha com linhas e colunas

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99); -- no decimal tem que ser posto essa definição entre parentesese ex: (6,2) de casas decimais 0000,00 para não arredondar

-- para ajustes é necessário colocar um comando de atualização pois mexer na tabela já feita depois do cód. executado não funcionará 

SELECT * FROM tb_produtos; -- o * significa que é um comando para selecionar todos os campos,

SELECT nome, quantidade FROM tb_produtos; --  e para especificar é só substituir o * para o item (id, e outros campos da tabela) selecionado nessa coluna  ex. nome, data etc.

-- comando WHERE serve como segurança ao precisar deletar, e permite colocar um comando em específico, consulta estilizada
SELECT nome, datavalidade FROM tb_produtos WHERE id = 5;