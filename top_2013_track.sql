-- Provide a query that shows the most purchased track of 2013.
select top 10 with ties t.Name, sum(il.Quantity)
from InvoiceLine as il
	join Track t
		on il.TrackId = t.TrackId
	join Invoice i
		on i.InvoiceId = il.InvoiceId
where YEAR(i.InvoiceDate) = 2013
group by t.TrackId, t.Name
order by 2 desc