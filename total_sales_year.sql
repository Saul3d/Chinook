select sum(Total) as Total, year(InvoiceDate)
from invoice
where year(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)                                                                                                                          