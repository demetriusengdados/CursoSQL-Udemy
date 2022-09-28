--Count
--Sintaxe
--SELECT COUNT(*) Aqui contamos todas as colunas da tabela
--FROM TABELA

SELECT count(*)
 FROM person.Person
 
SELECT count(title)
 FROM person.Person
 
SELECT count(DISTINCT title)
 FROM person.Person
 
--Desafio1
 SELECT count(*)
 FROM Production.Product
 
--Desafio2
SELECT count(size)
 FROM Production.Product

 
