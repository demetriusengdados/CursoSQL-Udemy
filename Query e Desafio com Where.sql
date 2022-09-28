--where

-- Procurando pelo primeiro e ultimo nome
SELECT *
 FROM tabela person.person;
 WHERE LastName = 'miller'AND FirstName = 'anna'

 --Condição de busca de cores
SELECT * 
 FROM production.Product
 WHERE color = 'blue' OR color = 'black'
 
--Condição de procura de valores
SELECT * 
 FROM production.Product
 WHERE ListPrice > 1500 AND ListPrice < 5000
 
SELECT *
 FROM production.Product
 WHERE color <> 'red'
 
--Desafio1 A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção 
SELECT Name
 FROM production.Product
 WHERE weigth > 500 AND weigth < 700
 

-- Desafio2 Foi pedido pelo marketing uma relação de todos os empregados(employees) que são casados(single=solteiro, married=casado) e são assalariados(salaried)
SELECT *
 FROM HumanResources.Employee
 WHERE MaritalStatus = 'm' AND SalariedFlag = 1

--Desafio3 Um usuário chamado Peter Krebs está devendo um pagamento, consiga o dele para que possamos enviar uma cobrança, deve ser usada as tabelas person.person 
-- e depois a tabela person.emailaddress

SELECT *
 FROM Person.Person
 WHERE FirstName = 'Peter' AND LastName = 'Krebs'
 
SELECT *
 FROM person.EmailAddress
 WHERE BusinessEntityID = 26