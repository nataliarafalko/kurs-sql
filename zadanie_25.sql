SELECT
	C.CompanyName,
	C.ContactName,
	CASE
	WHEN C.Fax is not null then C.Phone+', Fax:'+C.Fax
	WHEN C.Fax is null then C.Phone
	END as [Phone Number]
FROM
	Customers as C
WHERE
	C.Country = 'UK';