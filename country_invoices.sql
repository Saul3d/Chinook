-- Provide a query that shows the # of invoices per country. HINT: GROUP BY
select count(invoiceId) as Invoices, BillingCountry as Country
from Invoice
group by BillingCountry
