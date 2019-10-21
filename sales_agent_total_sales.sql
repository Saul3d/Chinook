-- Provide a query that shows total sales made by each sales agent.
Select sum(total), e.FirstName + ' ' + e.LastName 
from invoice as i
	join Customer as c
		on i.CustomerId = c.CustomerId
	join Employee as e
		on c.SupportRepId = e.EmployeeId
group by e.FirstName + ' ' + e.LastName