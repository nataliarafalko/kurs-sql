SELECT
	C.CompanyName,
	C.ContactName,
	C.Phone
FROM
	Customers as C
WHERE
	C.Fax is null