CREATE DATABASE db_aplicacao;
USE db_aplicacao;

CREATE TABLE tb_colaboradores (
id BIGINT auto_increment,
nome VARCHAR (255),
aniversario DATE,
numeroregistro INT,
cargo VARCHAR (255),
salario DECIMAL,
PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome, aniversario, numeroregistro, cargo, salario)
VALUES 
("Vitor", "1999-10-03", 788446986, "Auxiliar de Limpeza", 1512.00),
("Samuel", "2002-07-12", 788447208, "Atendente", 1612.00),
("Mirella", "1995-05-27", 788447453, "Caixa", 1740.00),
("Isabela", "2000-04-13", 788448054, "Gerente", 3580.00),
("Igor", "1990-11-24", 788448788, "Atendente", 1612.0);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores  ADD descricao VARCHAR(255);
UPDATE tb_colaboradores set descricao = "Salário com prévia de aumento" WHERE id = 1;
