
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, tipo) VALUES
    ('Guerreiro', 'Melee'),
    ('Fada', 'Magia'),
    ('Bruxa', 'Magia Negra');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES
    ('Bloom', 12, 2300, 1200, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Stella', 11, 2100, 1100, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Flora', 10, 2000, 1000, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Musa', 13, 2500, 1300, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Tecna', 14, 2600, 1400, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Aisha', 12, 2400, 1250, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Roxy', 9, 1800, 900, (SELECT id FROM tb_classes WHERE nome = 'Fada')),
    ('Icy', 15, 2800, 1600, (SELECT id FROM tb_classes WHERE nome = 'Bruxa')),
    ('Darcy', 14, 2600, 1500, (SELECT id FROM tb_classes WHERE nome = 'Bruxa')),
    ('Stormy', 13, 2400, 1400, (SELECT id FROM tb_classes WHERE nome = 'Bruxa')),
    ('Aragorn', 10, 2500, 1800, (SELECT id FROM tb_classes WHERE nome = 'Guerreiro'));

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = 'Fada';

