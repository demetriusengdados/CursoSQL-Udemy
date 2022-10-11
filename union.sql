/*O operador union combina dois ou mais resultados de um select em um resultado apenas

Sintaxe:

SELECT coluna1, coluna2
from tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2
*/

SELECT [ProductID], [Name], [ProductNumber]
    FROM Production.Product
    WHERE Name LIKE '%Chain%'
UNION 
SELECT [ProductID], [Name], [ProductNumber]
    FROM Production.Product
    WHERE Name like '%Decal%'
    ORDER BY Name ASC


SELECT FirstName, Title, MiddleName
    FROM person.Person
    WHERE Title = 'Mr'
UNION
SELECT FirstName,Title,MiddleName
    FROM person.Person
    WHERE MiddleName = 'A'
    