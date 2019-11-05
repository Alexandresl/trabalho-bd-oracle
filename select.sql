/*1. Apresentar o nomes dos produtos em ordem crescente.*/
SELECT nome 
from PRODUTO 
ORDER BY NOME ASC;

/*2. Apresentar os nomes dos produtos, a quantidade em estoque e o 
preço para os produtos que tem quantidade em estoque superior a 50 
ou com preço inferior a 10.*/
SELECT nome, quantidade_estoque, preco 
from PRODUTO 
WHERE quantidade_estoque > 50 
OR (preco < 10);

/*3. Apresentar o código do pedido, a data do pedido e o nome do cliente.*/
SELECT pedido.id_pedido, pedido.data_pedido, cliente.nome 
from pedido 
INNER JOIN cliente 
ON pedido.id_cliente = cliente.id_cliente;

/*4. Apresentar o código do pedido, o código do produto, o nome do produto, 
o preço de venda, ordenar pelo código do pedido.*/
SELECT pedido_produto.id_pedido, pedido_produto.id_produto, produto.nome, produto.preco 
FROM pedido_produto 
INNER JOIN produto 
ON pedido_produto.id_produto = produto.id_produto 
ORDER BY PRODUTO.ID_PRODUTO ASC;

/*5. Apresentar os nomes dos produtos que foram pedidos em quantidade superior a 10.*/
SELECT PRODUTO.NOME 
FROM PRODUTO 
inner join PEDIDO_PRODUTO 
ON PRODUTO.ID_PRODUTO = PEDIDO_PRODUTO.ID_PRODUTO 
WHERE PEDIDO_PRODUTO.QUANTIDADE > 10;

/*6. Apresentar o código do pedido, a data, o nome do cliente para os pedidos do produto de código 1.*/
SELECT PEDIDO.ID_PEDIDO, PEDIDO.DATA_PEDIDO, CLIENTE.NOME
FROM PEDIDO
INNER JOIN CLIENTE ON PEDIDO.ID_CLIENTE = CLIENTE.ID_CLIENTE
INNER JOIN PEDIDO_PRODUTO ON PEDIDO.ID_PEDIDO = PEDIDO_PRODUTO.ID_PEDIDO
WHERE PEDIDO_PRODUTO.ID_PRODUTO = 1;

/*7. Apresentar o código do pedido, a data, o nome do cliente para os pedidos do produto mesa.*/

SELECT PEDIDO.ID_PEDIDO, PEDIDO.DATA_PEDIDO, CLIENTE.NOME
FROM PEDIDO
INNER JOIN CLIENTE ON PEDIDO.ID_CLIENTE = CLIENTE.ID_CLIENTE
INNER JOIN PEDIDO_PRODUTO ON PEDIDO.ID_PEDIDO = PEDIDO_PRODUTO.ID_PEDIDO
INNER JOIN PRODUTO ON PEDIDO_PRODUTO.ID_PRODUTO = PRODUTO.ID_PRODUTO
WHERE PRODUTO.NOME LIKE 'Mesa';

/*8. Apresentar o código do pedido, o nome do cliente e a data do pedido para os pedidos que ainda não foram entregues.*/
SELECT PEDIDO.ID_PEDIDO, PEDIDO.DATA_PEDIDO, CLIENTE.NOME
FROM PEDIDO
INNER JOIN CLIENTE ON PEDIDO.ID_CLIENTE = CLIENTE.ID_CLIENTE
WHERE PEDIDO.DATA_ENTREGA is null;

/*9. Apresentar o código do pedido, nome do cliente, nome do produto, total produto (quantidade*preço do produto). 
Ordenar pelo código do pedido e pelo nome do produto.*/

SELECT PEDIDO.ID_PEDIDO, CLIENTE.NOME, PRODUTO.NOME, PEDIDO_PRODUTO.PRECO_VENDA
FROM PEDIDO
INNER JOIN CLIENTE ON PEDIDO.ID_CLIENTE = CLIENTE.ID_CLIENTE
INNER JOIN PEDIDO_PRODUTO ON PEDIDO.ID_PEDIDO = PEDIDO_PRODUTO.ID_PEDIDO
INNER JOIN PRODUTO ON PEDIDO_PRODUTO.ID_PRODUTO = PRODUTO.ID_PRODUTO
ORDER BY PEDIDO.ID_PEDIDO, PRODUTO.NOME;
