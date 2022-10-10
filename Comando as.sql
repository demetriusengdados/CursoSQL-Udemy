/*
Sintaxe
SELECT top 10 AVG(ListPrice) as "Preço Médio"
from Production.Product*/

--Desafio 1 Encontrar o FirstName e o LastName e mudar pra português
--Desafio 2 Encontrar o ProductNumber da tabela productin.product e renomear para "numero do produto"
--Desafio 3 Encontrar o sales.SalesOderDetail, unitPrice e renomear para "Preço Unitário";

select top 10 FirstName as "Nome", LastName as "Sobrenome"
from person.person

select top 10 ProductNumber as "Numero do produto"
from Production.Product

select unitPrice as "Preço Unitário"
from sales.SalesOrderDetail

