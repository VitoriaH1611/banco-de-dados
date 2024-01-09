drop database db_generation_game_online;

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    PRIMARY KEY (id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Medicamentos', 'Categoria para medicamentos diversos'),
    ('Higiene Pessoal', 'Produtos de higiene pessoal'),
    ('Cosméticos', 'Produtos de beleza e cosméticos'),
    ('Vitaminas e Suplementos', 'Suplementos nutricionais e vitaminas'),
    ('Cuidados com a Pele', 'Produtos para cuidados com a pele');


CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    valor DECIMAL(8, 2),
    estoque INT,
    id_categoria INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, valor, estoque, id_categoria) VALUES
    ('Paracetamol 500mg', 'Analgésico e antitérmico', 10.50, 100, (SELECT id FROM tb_categorias WHERE nome = 'Medicamentos')),
    ('Shampoo Anticaspa', 'Shampoo para controle de caspa', 15.90, 50, (SELECT id FROM tb_categorias WHERE nome = 'Higiene Pessoal')),
    ('Creme Facial Hidratante', 'Hidratante para pele seca', 35.00, 30, (SELECT id FROM tb_categorias WHERE nome = 'Cosméticos')),
    ('Vitamina C 1000mg', 'Suplemento vitamínico', 25.75, 80, (SELECT id FROM tb_categorias WHERE nome = 'Vitaminas e Suplementos')),
    ('Protetor Solar FPS 50', 'Proteção solar para a pele', 74.99, 40, (SELECT id FROM tb_categorias WHERE nome = 'Cuidados com a Pele')),
    ('Desodorante Roll-on', 'Desodorante antitranspirante', 8.50, 60, (SELECT id FROM tb_categorias WHERE nome = 'Higiene Pessoal')),
    ('Bálsamo Labial', 'Protetor labial hidratante', 12.00, 45, (SELECT id FROM tb_categorias WHERE nome = 'Cosméticos')),
    ('Demaquilante Bifásico', 'Demaquilante para remoção de maquiagem', 35.50, 30, (SELECT id FROM tb_categorias WHERE nome = 'Cuidados com a Pele'));


SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;


SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';
