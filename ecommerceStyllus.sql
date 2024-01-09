CREATE DATABASE estetica_ecommerce;
USE estetica_ecommerce;

    CREATE TABLE tb_servicos_estetica (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    duracao INT,
    preco DECIMAL,
    PRIMARY KEY (id)
);

INSERT INTO tb_servicos_estetica (nome, descricao, duracao, preco)
VALUES 
    ('Tratamento Facial Premium', 'Tratamento facial avançado com técnicas premium para rejuvenescimento.', 120, 750.00),
    ('SPA Day Completo', 'Dia completo de relaxamento com diversos tratamentos estéticos e terapias.', 240, 1200.00),
    ('Microblading de Sobrancelhas', 'Técnica avançada de micropigmentação para um design natural de sobrancelhas.', 90, 850.00),
    ('Lifting de Cílios', 'Técnica especializada para levantar e dar volume aos cílios naturais.', 60, 700.00),
    ('Tratamento Capilar de Reconstrução', 'Tratamento profundo para reconstrução e revitalização dos fios capilares.', 120, 800.00),
    ('Procedimento Estético Facial a Laser', 'Procedimento avançado de rejuvenescimento facial utilizando tecnologia a laser.', 90, 950.00),
    ('Design Avançado de Unhas de Gel', 'Design exclusivo de unhas de gel com técnicas avançadas.', 75, 680.00),
    ('Pacote VIP para Noivas', 'Pacote completo de beleza e estética para noivas, incluindo maquiagem, cabelo e tratamentos.', 180, 1500.00);


SELECT * FROM  tb_servicos_estetica WHERE preco > 500;
SELECT * FROM  tb_servicos_estetica WHERE preco < 500;

UPDATE tb_servicos_estetica  SET preco = 800.00  WHERE id = 1;
SELECT * FROM  tb_servicos_estetica;