/*Desafio 1
Quantos produtos temos cadastrado NO sistema que custam mais que 1500 doláres?

Dicas - voce terá que usar a tabela production.product
voce tera que usar Count e WHERE e mais algum operador de comparação.
*/

SELECT count(listprice)
 FROM Production.Product
 WHERE ListPrice > 1500
 

/* 2- Quantas pessoas temos com o sobrenome que inicia com a letra P?
 > terá que usar a tabela person.person
 > terá que usar o count, WHERE e LIKE
 */
 
SELECT Count(LastName)
 FROM person.Person
 WHERE LastName  LIKE 'p%'
 
/* 3 - Em quantas cidades unicas estaão cadastradas nossos clientes?
 terá que usar a tabela person.address
 terá que usar count, DISTINCT
*/
 
SELECT count(DISTINCT(city))
 FROM person.Address
 
/* 4- Quais são as cidades únicas que temos cadastrados em nosso sistema?
 terá que usar a tabela person.address
 será bem siliar a resposta anterior
*/
SELECT DISTINCT (city)
 FROM person.Address
 
/* 5- Quantos produtos vermelhos tem preço entre 50 a 1000 dolares
Voce tera que usar a tabela production.product
tera que usar WHERE, BETWEEN
 */
 
SELECT count(*)
 FROM production.Product
 WHERE color = 'red'
 AND ListPrice BETWEEN 500 AND 1000
 
/* 6- Quantos produtos cadastrados tem a palavra 'road' NO nome delas?
 tera que usar a tabela production.product 
 tera que usar count, LIKE
 */
 SELECT count(*)
 FROM Production.Product
 WHERE name LIKE '%road%';