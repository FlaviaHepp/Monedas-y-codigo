USE AdventureWorks2019
GO

-- Se desea obtener la lista de las monedas con las que se comercializa y su correspondiente código

SELECT sc.CurrencyCode AS Codigo, sc.Name AS Moneda
FROM Sales.Currency sc
INNER JOIN Sales.CountryRegionCurrency scr
ON sc.CurrencyCode = scr.CurrencyCode
INNER JOIN Sales.SalesTerritory sst
ON sst.CountryRegionCode = scr.CountryRegionCode
ORDER BY sc.Name