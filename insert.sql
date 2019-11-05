INSERT INTO CLIENTE (ID_CLIENTE, NOME, ENDERECO, TELEFONE) VALUES (1, 'Jo�o', 'Rua A', '1234');
INSERT INTO PEDIDO (ID_PEDIDO, ID_CLIENTE, DATA_PEDIDO, DATA_ENTREGA) VALUES (1, 1, TO_DATE(NVL('', '03/11/2019 12:52:00'), 'DD/MM/YYYY HH24:MI:SS') , TO_DATE(NVL('', '10/11/2019 12:52:00'), 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (1, 'Caneta Bic', 5, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (2, 'Caderno 100F', 20, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (3, 'Caderno 200F', 25, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (4, 'Caderno 500F', 50, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (5, 'Mochila', 125, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (6, 'Lapis', 2, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (7, 'Estojo Star Wars', 35, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (8, 'Fichario', 60, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (9, 'Bag Notebook', 59, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (10, 'Agenda', 69, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (11, 'Calculadora', 80, 100);
INSERT INTO PRODUTO (ID_PRODUTO, NOME, PRECO, QUANTIDADE_ESTOQUE) VALUES (12, 'Mesa', 200, 100);
INSERT INTO PEDIDO_PRODUTO (ID_PEDIDO, ID_PRODUTO, PRECO_VENDA, QUANTIDADE) VALUES (1, 1, 5, 5);