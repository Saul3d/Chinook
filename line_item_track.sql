select Track.Name as Name, 
from InvoiceLine
join Track
 on InvoiceLine.TrackId = Track.TrackId