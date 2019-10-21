-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
select count(TrackId), Name
from PlaylistTrack
	join Playlist
	on Playlist.PlaylistId = PlaylistTrack.PlaylistId
group by Name