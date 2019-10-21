-- Provide a query that shows the total sales per country.

Select sum(i.total), c.Country 
from Customer as c
	join Invoice as i
		on c.CustomerId = i.CustomerId
group by c.Country