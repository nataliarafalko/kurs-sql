SELECT 
	O.CustomerID, 
	O.OrderID, 
	(OD.UnitPrice * OD.Quantity) as OrdVal, 
	ROW_NUMBER() OVER(PARTITION BY O.CustomerID ORDER BY (OD.UnitPrice * OD.Quantity) DESC ) as num

FROM 
	dbo.Orders as O JOIN dbo.[Order Details] as OD on O.OrderID = OD.OrderID 
WHERE O.CustomerID IN('ALFKI', 'ISLAT', 'SAVEA')

ORDER BY O.CustomerID, OrdVal DESC;
