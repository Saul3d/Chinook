
select c.FirstName + ' ' + c.LastName as CustomersName, e.FirstName + ' ' + e.Lastname as SalesRep, c.country,  sum(total) as InvoiceTotal
from invoice as i 
	join Customer as c
	on i.CustomerId = c.CustomerId
	join  Employee as e
	on c.SupportRepId = e.EmployeeId

	group by c.FirstName + ' ' + c.LastName, e.FirstName + ' ' + e.Lastname, c.Country