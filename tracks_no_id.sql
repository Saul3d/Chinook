-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
select Track.Name, Album.Title as AlbumName, MediaType.Name as Type, Genre.Name 
from Track
	join Album
on Track.AlbumId = Album.AlbumId
	join MediaType
on Track.MediaTypeId = MediaType.MediaTypeId
	join Genre
on Track.GenreId = Genre.GenreId

