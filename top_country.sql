-- Which country's customers spent the most?

Select Top 1 sum(i.total) as "Total Sales", c.Country 
from Customer as c
	join Invoice as i
		on c.CustomerId = i.CustomerId
group by c.Country
order by [Total Sales] desc