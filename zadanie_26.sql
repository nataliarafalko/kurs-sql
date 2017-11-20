SELECT Distinct
	Region,
	City,
	SUBSTRING (Phone, 2, 3) as Kierunkowy
FROM
	Customers
WHERE Country = 'USA'
Order by Region, City