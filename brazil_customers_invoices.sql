select FirstName + ' ' + LastName as FullName, InvoiceId, InvoiceDate, BillingCountry
from Customer as c
	join Invoice as i 
	on c.CustomerId = i.CustomerId
where c.Country = 'Brazil';
	
