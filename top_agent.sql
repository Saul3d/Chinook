-- Which sales agent made the most in sales over all?
Select Top 1 sum(total), e.FirstName + ' ' + e.LastName as Employee
from invoice as i
	join Customer as c
		on i.CustomerId = c.CustomerId
	join Employee as e
		on c.SupportRepId = e.EmployeeId
group by e.FirstName + ' ' + e.LastName