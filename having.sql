--Comando Having

-- o having é basicamente muito usado em junção com o group by para filtrar resultados de um agrupamento.
-- de uma forma mais simples eu gosto de entender ele como basicamente um where para dados agrupados 

-- Sintaxe
-- select coluna1, funcaoAgregacao(colune2)
-- from nomeTabela
-- group by coluna1
-- having condicao;

--Query

SELECT FirstName, COUNT(FirstName) as "quantidade"
from person.Person
group by FirstName
having count(firstname) > 10

-- Aqui queremos saber quais produtos qeu no total de vendas estão entre 162k e 500k.

SELECT TOP 10 * 
FROM Sales.SalesOrderDetail

SELECT productid, sum(linetotal) as "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(linetotal) BETWEEN 162000 and 500000


-- Desafio 1
/* Estamos querendo identificar as provincias(StateProvinceID) com o maior numero de cadastros no nosso sistema, então é preciso
encontrar quais provincias(StateProvinceID) estão registradas no banco de dados mais que 1000x

Dicas: 
usar a tabela person.address
usar having, count e operadores matematicos
*/

SELECT StateProvinceID, count(stateprovinceid) 'quantidade'
from person.Address
group by StateProvinceID
HAVING count(stateprovinceid) > 1000

--Desafio 2
/* Sendo que se trata de uma multinacional os gerentes querem saber quais produtos(productId)
não estão trazendo em média no minimo 1 milhão em total de vendas(linetotal)

dicas:
usar a tabela sales.salesorderdetail
usar having, count e operadores matematicos
*/

SELECT ProductID, AVG(linetotal)

from sales.SalesOrderDetail
group by ProductID
HAVING AVG(linetotal) < 1000000