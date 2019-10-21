-- How many Invoices were there in 2009 and 2011?
Select count(InvoiceDate) as TotalInvoices, year(InvoiceDate) as [Year]
from invoice
where YEAR(InvoiceDate) in (2009, 2011)
group by year(InvoiceDate)

/*select count(*)
from invoice
*/