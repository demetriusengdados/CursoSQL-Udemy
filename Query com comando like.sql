--Vamos dizer que voce quer encontrar uma pessoa no banco de dados que voce sabe que o nome 
--dela era ovi... alguma coisa, voce pode usar o comando like pra achar essa pessoa.

--Sintaxe
--Select *
--FROM person.Person(nome da tabela do banco de dados)
--WHERE FirstName like 'ovi%'

Select *
 FROM person.Person(nome da tabela do banco de dados)
 WHERE FirstName like 'ovi%'

 
Select *
 FROM person.Person(nome da tabela do banco de dados)
 WHERE FirstName like '%to' --FINAL do nome tem TO
 
Select *
 FROM person.Person(nome da tabela do banco de dados)
 WHERE FirstName like '%essa%' -- quando voce nao sabe onde é a parte voce usa os 2 sinais 

