SELECT
	E.EmployeeID,
	CASE E.TitleOfCourtesy 
	WHEN 'Ms.' THEN 'Pani'
	WHEN 'Mr.' THEN 'Pan'
	ELSE E.TitleOfCourtesy
	END as Tytu³,
	E.FirstName+' '+E.LastName as Pracownik
FROM
	Employees as E
WHERE
	E.EmployeeID in ('1', '2', '3', '6', '8', '9');