Select count(InvoiceDate) as TotalInvoices
from invoice
where YEAR(InvoiceDate) in (2009, 2011)


/*select count(*)
from invoice
*/