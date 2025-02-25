SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY nome ASC;

SELECT * FROM tb_produtos ORDER BY nome DESC;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.00);

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    descricao VARCHAR (255) NOT NULL
);

INSERT INTO tb_categorias (descricao) VALUES
						  ("Frutas");
                          
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao) VALUES
						  ("Legumes");
INSERT INTO tb_categorias (descricao) VALUES
("Verduras");
INSERT INTO tb_categorias (descricao) VALUES
("Cereais");
INSERT INTO tb_categorias (descricao) VALUES
("Hortaliças");
INSERT INTO tb_categorias (descricao) VALUES
("Temperos");

SELECT * FROM tb_categorias ORDER BY descricao ASC;

SELECT * FROM tb_categorias WHERE descricao = "Cereais";

SELECT * FROM tb_categorias WHERE descricao LIKE "Cer%";

SELECT * FROM tb_categorias WHERE descricao LIKE "%s";

SELECT * FROM tb_categorias WHERE descricao LIKE "%a%";

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco IN(5.0,10.0,15.0);
							--  preco = 10.0 OR preco = 5.0 OR preco = 15	
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 15.0;
UPDATE tb_categorias SET descricao = "CEREAIS" WHERE id = 4;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 15.0;

SELECT AVG(preco) AS "Média de preços" FROM tb_produtos;

SELECT SUM(preco) AS "Soma total Preços" FROM tb_produtos;

SELECT MAX(preco) AS "Valor mais caro" FROM tb_produtos;

SELECT MIN(preco) AS "Menor Valor" FROM tb_produtos;

SELECT COUNT(preco) AS "Quant de linhas" FROM tb_produtos;
