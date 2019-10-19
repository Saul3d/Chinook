select count(invoiceLineId) as LineItems, InvoiceId
from InvoiceLine
where InvoiceId = 37
group by InvoiceId