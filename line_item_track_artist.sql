-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

select InvoiceLineId, Track.Name as PurchaseTrackName, Artist.Name as ArtistName
from InvoiceLine
join Track
	on InvoiceLine.TrackId = Track.TrackId
join Album
	on Track.AlbumId = Album.AlbumId
join Artist
	on Album.AlbumId = Artist.ArtistId
