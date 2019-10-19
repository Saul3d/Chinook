Select e.FirstName, e.LastName, i.*
from invoice as i 
	join Customer as c
	on i.CustomerId = c.CustomerId
	join  Employee as e
	on c.SupportRepId = e.EmployeeId


