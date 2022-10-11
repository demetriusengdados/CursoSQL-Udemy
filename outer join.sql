-- Queremos descobrir quais pessoas tem um cartão de crédito registrado usando inner join: 19118 pessoas
                                                                             --left join: 19972 pessoas


-- Query Usando o Inner Join
SELECT * 
FROM Person.Person as PP
INNER JOIN Sales.PersonCreditCard as PC
on PP.BusinessEntityID = PC.BusinessEntityID


--Query Usando Left Join
SELECT *
FROM Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard as PC
on PP.BusinessEntityID = PC.BusinessEntityID
