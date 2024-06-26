CREATE DATABASE rh_services;

USE rh_services;

CREATE TABLE tb_funcionarios(
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(300) NOT NULL,
  idade INT,
  departamento VARCHAR(300) NOT NULL,
  genero VARCHAR(300) NOT NULL,
  salario DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (id)

);
 
 INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
 VALUE ("Kelly Mendes", 25, "compras", "não-binário", 5356.50);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Marcondes Nunes", 48, "financeiro", "homem cisgênero", 2890.60);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Elinor Ferreira", 65, "estilo", "mulher transgênero", 7800.00);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Aurora Lins", 29, "marketing", "mulher cisgênero", 4900.65);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Ivan Silva", 32, "qualidade", "homem transgênero", 1900.60);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Jade Viana", 21, "atendimento sac", "mulher cisgênero", 1500.65);

INSERT INTO tb_funcionarios(nome, idade, departamento, genero, salario)
VALUE ("Jorge Santos", 38, "importação", "homem cisgênero", 1800.60);

SELECT * FROM tb_funcionarios;

SELECT nome FROM tb_funcionarios WHERE salario >= 2000.00;

SELECT nome FROM tb_funcionarios WHERE salario <= 2000.00;

SELECT * FROM tb_funcionarios;



