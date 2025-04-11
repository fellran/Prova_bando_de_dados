SHOW TABLES ;
-- TABELA PRODUTO
DESCRIBE tb_produto;
INSERT INTO tb_produto (nome, preco, preco_custo, margem_lucro) VALUES ('Sanduicge de frang', 14.29, 10.00, 30), ('Lanche de Carne', 17.14, 12.00, 30), ('Suco Natural', 5.71, 4.00, 30);

-- TABELA PEDIDO
DESCRIBE tb_pedido;
INSERT INTO tb_pedido (cliente) VALUES ('João'), ('Marcelo'), ('Marcia');

-- TABELA ENTREGA
DESCRIBE tb_entrega;

INSERT INTO tb_entrega (valor_entrega, valor_ifood, porcent_ifood) VALUES (5.00, 2.00, 5.00), (10.00, 2.00, 5.00), (15.00, 2.00, 5.00);

-- TABELA COMBO
DESCRIBE tb_combo;
INSERT INTO tb_combo (nome, descricao, preco) VALUES('SanduFrango', 'frango, coca-cola, batata-frita', 50.00),
													('CarneLouca', 'lanche, coca-cola, batata-frita', 30.00),
                                                    ('sucao', 'suco, batatas, coca-cola', 15.00);

-- TABELA PRODUTO_PEDIDO
DESCRIBE tb_produto_pedido;
INSERT INTO tb_produto_pedido (id_produto, id_pedido) VALUES (1, 1), (2, 2), (3, 3);

-- TABELA PRODUTO COMBO
DESCRIBE tb_produto_combo;
INSERT INTO tb_produto_combo (id_produto, id_combo) VALUES(1, 1), (2, 2), (1, 2);


-- TABLE PEDIDO_ENTREGA
DESCRIBE tb_pedido_entrega;
INSERT INTO tb_pedido_entrega (id_entrega, id_pedido) VALUES (1, 1), (2, 2), (3, 3);

