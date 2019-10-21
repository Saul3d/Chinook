-- Provide a query that shows all Invoices but includes the # of invoice line items.

select invoice.invoiceId, count(InvoiceLine.InvoiceId) as InvoiceLineItems
from invoice
	join InvoiceLine
on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by Invoice.InvoiceId


select *
from InvoiceLine