
CREATE DATABASE escola_fundamental2;
USE escola_fundamental2;

CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    genero VARCHAR(10),
    serie INT,
    nota_final DECIMAL(3, 1),
    PRIMARY KEY (id)
);


INSERT INTO tb_estudantes (nome, idade, genero, serie, nota_final)
VALUES 
    ('Isabela Oliveira', 13, 'Feminino', 7, 8.5),
    ('Mateus Santos', 14, 'Masculino', 8, 6.8),
    ('Carolina Lima', 13, 'Feminino', 7, 7.2),
    ('Lucas Rocha', 14, 'Masculino', 8, 9.0),
    ('Gabriela Almeida', 13, 'Feminino', 7, 7.8),
    ('Rodrigo Souza', 14, 'Masculino', 8, 6.5),
    ('Amanda Silva', 13, 'Feminino', 7, 8.9),
    ('Leonardo Pereira', 14, 'Masculino', 8, 6.3);


SELECT * FROM tb_estudantes WHERE nota_final > 7.0;
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET nota_final = 8.0 WHERE id = 3;

SELECT * FROM tb_estudantes;
