SHOW TABLES;
-- TABELA PRODUTO
SELECT * FROM tb_produto;

-- TABELA PEDIDO
SELECT * FROM tb_pedido;

-- TABELA ENTREGA
SELECT * FROM tb_entrega;

-- TABELA COMBO
SELECT * FROM tb_combo;

-- TABELA PRODUTO_PEDIDO
SELECT * FROM tb_produto_pedido;

-- TABELA PRODUTO_COMBO
SELECT * FROM tb_produto_combo;

-- TABELA PEDIDO_ENTREGA
SELECT * FROM tb_pedido_entrega;

-- calculando o preço dos produtos
DROP VIEW vw_produtos_com_venda;
CREATE VIEW vw_produtos_com_venda AS
SELECT
    id_produto,
    nome AS lanche,
    CONCAT(preco_custo, ' $') AS preco_custo,
    CONCAT(margem_lucro, ' $') AS margem_lucro,
    CONCAT(ROUND((preco_custo * (1 + (margem_lucro / 100))), 2), ' $') AS preco_venda
FROM
    tb_produto;
    
SELECT * FROM vw_produtos_com_venda;

-- Calcule o valor que o iFood retira e o lucro da loja com o combo.
CREATE VIEW vw_lucro_retirado AS
SELECT
    te.id_entrega,
    tc.nome AS combos,
    CONCAT(tc.preco, ' $') AS preco,
    CONCAT(te.valor_entrega, ' $') AS valor_entrega,
    CONCAT(te.valor_ifood, ' $') AS valor_ifood,
    CONCAT(te.porcent_ifood, ' $') AS porcent_ifood,
    CONCAT(ROUND((te.valor_ifood * (te.porcent_ifood / 100)),2), ' $') AS valor_retirado_ifood,
    CONCAT(ROUND((te.valor_ifood - (te.valor_ifood * (te.porcent_ifood / 100))),2), ' $') AS lucro_loja
FROM
    tb_entrega te
JOIN
    tb_combo tc ON te.id_entrega = tc.id_combo;

SELECT * FROM vw_lucro_retirado;