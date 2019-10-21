-- Provide a query that shows the top 5 most purchased songs.

select top 5 sum(il.Quantity) as [Total Songs], t.TrackId, t.[Name]
from invoice as i
	join invoiceLine as il
		on i.invoiceId = il.invoiceId
	join Track as t
		on il.TrackId = t.TrackId
group by t.TrackId, t.[Name]
order by [Total Songs] desc
