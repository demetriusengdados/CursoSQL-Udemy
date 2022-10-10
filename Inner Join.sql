--Vamos Buscar os seguintes dados businessEntityID, FirstName, LastName,EmailAddress

select p.BusinessEntityID,p.FirstName,p.LastName,pe.EmailAddress
from Person.Person as P
INNER JOIN Person.EmailAddres PE on p.BusinessEntityID = pe.BusinessEntityID

--agora nos queremos os nomes dos produtos e as infotmações de suas subcategorias
-- listprice, Nome do produto, nome da subcategoria

SELECT pr.ListPrice,pr.Name,pc.Name
from Production.Product Pr
INNER JOIN Production.ProductSubcategory PC on PC.ProductSubcategoryID = 
    pr.ProductSubcategoryID

SELECT top 10 *
from Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

-- Agora vamos trazer os seguintes dados BusinessEntityID, Name,PhoneNumberTypeID,PhoneNumber 

SELECT pp.BusinessEntityId, pt.name,pt.PhoneNumberTypeId,pp.PhoneNumber
from person.PersonPhone PP
inner JOIN Person.PhoneNumberType PT ON PT.PhoneNumberTypeID = pp.PhoneNumberTypeID

--Trazendo as tabelas AddressID,City, StateProvincyId, Nome do estado

select top 10 PA.AddressID,PA.City,PS.StateProvinceID,PS.NAMES
From Person.Addres PA
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID

