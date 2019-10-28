--SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id
SELECT a.Title, Count(s.Id)
FROM Album a LEFT JOIN Song s 
ON s.AlbumId = a.Id
GROUP BY a.Title;

SELECT ar.ArtistName, Count(s.Title)
FROM Artist ar LEFT JOIN Song s 
ON s.ArtistId = ar.Id
GROUP BY ar.ArtistName;

SELECT g.Label, Count(s.Id)
FROM Genre g LEFT JOIN Song s
ON s.GenreId = g.Id
GROUP BY g.Label;

SELECT Title, AlbumLength
FROM Album
WHERE AlbumLength = (
	SELECT Max(AlbumLength)
	FROM Album);

SELECT a.Title, s.Title, s.SongLength
FROM Album a LEFT JOIN Song s
ON s.AlbumId = a.Id
WHERE SongLength = (
	SELECT Max(SongLength)
	FROM Song);

