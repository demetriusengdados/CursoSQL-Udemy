-- order By

-- Sintaxe

--SELECT coluna1, coluna2
 --FROM TABELA
 --ORDER BY coluna1 ASC/DESC
 
SELECT *
 FROM person.Person
 ORDER BY FirstName ASC
 
SELECT * 
 FROM person.Person
 ORDER BY FirsName ASC, LastName DESC
 
--Desafio 1
/*
Obter o ProductId dos 10 primeiros produtos mais caros cadastrados NO sistema, listando do mais caro
 pro mais barato
 
 Dicas
 Você terá que usar a tabela Production.product
 Terá que usar o ORDER BY e o top 
 e para ordenar voce terá que usar o ORDER BY ASC ou DESC dependendo do resultado que está buscando
 */
 
SELECT TOP 10 productId
 FROM Production.product
 ORDER BY listprice DESC

--Desafio 2
 /*Obter o numero do produto dos produtos que tem o productid entre 1 e 4
 dicas
 voce terá que usar a tabela production.product
 voce terá que usar o ORDER BY e top
 e para ordenar voce tera que usar o ORDER BY ASC e DESC dependendo do resultado que está buscando
 */
 
 SELECT TOP 4 name, productnumber
 FROM production.product
 ORDER BY ProductID ASC 