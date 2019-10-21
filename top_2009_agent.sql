-- Which sales agent made the most in sales in 2009? HINT: TOP
Select top 1 count(InvoiceId), e.FirstName + ' ' + e.LastName 
from invoice as i
	join Customer as c
		on i.CustomerId = c.CustomerId
	join Employee as e
		on c.SupportRepId = e.EmployeeId
group by e.FirstName + ' ' + e.LastName