SELECT
	O.EmployeeID,
	CASE
	when COUNT(O.OrderID)<50 then 'Mniej niz 50'
	when COUNT(O.OrderID) BETWEEN 50 and 100 then 'Mi�dzy 50 a 100'
	when COUNT(O.OrderID)>100 then 'Wi�cej ni� 100'
	END as Zamowienia
FROM
	Orders as O
GROUP BY O.EmployeeID