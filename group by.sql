-- O group by basicamente divide o resultado da sua pesquisa em grupos
-- Para cada grupo voce pode aplicar uma função de agregação, por exemplo:
-- Calcular a soma dos itens
-- contar o numero de itens naquele grupo

/* Sintaxe
SELECT coluna1,funcaoAgregacao(coluna2)
FROM nomeTabela
GROPUP BY coluna1;
*/

SELECT *
 FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma"
 FROM Sales.SalesOrderDetail
 GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
 FROM Sales.SalesOrderDetail
 WHERE SpecialOfferID = 9

--Vamos dizer que queremos saber a quantidade de produtos vendidos até o dia de hoje
SELECT * FROM Sales.SalesOrderDetail

SELECT ProductId, COUNT (ProductId) AS "Contagem"
 FROM Sales.SalesOrderDetail
 GROUP BY ProductID

-- Queremos agora saber quantos vezes um nome está repetido no nosso banco de dados
SELECT FirstName, Count(FirstName) AS "Contagem Nomes"
 FROM Person.Person
 GROUP BY FirstName

-- Na tabela production.product queremos saber a média de preço para os produtos que são pratas(silver)

SELECT color, AVG(ListPrice) AS "Preço Médio"
 FROM Production.Product
 WHERE Color = 'Silver'
 GROUP BY Color

/* Desafio 1
1- Queremos saber quantas pessoas tem o mesmo MiddelName agrupadas pelo MiddleName

Dicas, usar a tabela person.person
> usar o group by e uma função de agregação

Solução*/

SELECT MiddleName, COUNT(MiddleName) as "Quantidade"
 FROM Person.Person
 GROUP BY MiddleName

/* Desafio 2
2- Queremos saber em qual média é a quantidade que cada produto é vendido na loja 

Dicas 
> usar a tabela sales.salesorderdetail
usar groupby e uma função de agregação
*/

SELECT ProductID, AVG(OrderQty) AS "Média Vendas"
 FROM sales.SalesOrderDetail
 GROUP BY ProductID

/* Desafio 3
3- Queremos saber qual foram as 10 vendas que no total tiveram os maiores valores de venda(line total)
por produto do maior valor para o menor

Dicas
> tabela sales.salesorderdetail
> usar group by e uma função de agregação
> se atentar a por o que voce esta ordenando
*/

SELECT TOP 10 productid, SUM(linetotal)
 FROM sales.salesorderdetail
 GROUP BY productid
 ORDER BY SUM(linetotal) DESC;

/* Desafio 4
4- Queremos saber quantos produtos e qual a quantidade media de produtos temos cadastrados 
nas nossas ordem de serviço(WorkOrder), agrupados por productId

Dicas
> usar a tabela production.workorder
> usar group by e uma função de agregação
*/

SELECT productId, COUNT(ProductId) AS "Contagem Produto",
 AVG(OrderQty) as "Média"
 FROM Production.WorkOrder
 GROUP BY ProductID
 
 
