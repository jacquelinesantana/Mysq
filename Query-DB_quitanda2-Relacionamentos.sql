ALTER TABLE tb_produtos ADD categoria_id BIGINT;
-- adicionamos a coluna que vai receber chave estrangeira

-- Constraint = restrição
-- Sinalizar para mysql que esse campo é uma chave estrangeira
ALTER TABLE tb_produtos ADD CONSTRAINT 
fk_produtos_categorias -- fk_produtos_categorias nome
FOREIGN KEY (categoria_id) -- coluna chama categoria_id
REFERENCES tb_categorias(id); -- de onde vem a chave estrangeira

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE nome = "banana";

UPDATE tb_produtos SET categoria_id = 1 WHERE id = 3;

INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco, categoria_id) VALUES 
("Cenoura",500, "2023-12-15", 2.00, 2);

SELECT * FROM -- retorna todas as colunas
tb_produtos INNER JOIN tb_categorias 
-- junção da tabela tb_produtos -> tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
-- onde existe a conexão entre tabelas

SELECT * FROM 
tb_produtos LEFT JOIN tb_categorias
ON  tb_categorias.id = tb_produtos.categoria_id ;

SELECT * FROM 
tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id ;

SELECT * FROM 
tb_categorias RIGHT JOIN tb_produtos
ON tb_produtos.categoria_id = tb_categorias.id ;