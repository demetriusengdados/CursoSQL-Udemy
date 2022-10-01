SELECT TOP 10 SUM(linetotal) AS 'Soma'
 FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(Linetotal) --apresenta os 10 valores mais baixos
 FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(Linetotal) --apresenta os 10 valores mais altos
 FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LineTotal)
 FROM Sales.SalesOrderDetail