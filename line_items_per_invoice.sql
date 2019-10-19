select *
from InvoiceLine

select count(InvoiceLineId) as InvoiceLineTotal, InvoiceId
from InvoiceLine
group by InvoiceId