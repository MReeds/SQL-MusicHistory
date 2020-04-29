SELECT * FROM Genre;

SELECT * FROM Artist;

SELECT * FROM Album;

SELECT * FROM Song;

INSERT INTO Artist (ArtistName, YearEstablished)
VALUES("A Day To Remember", "2003");

INSERT INTO Album
VALUES("23", "What Seperates Me From You", "11/15/2013", "2269", "ADTR Records", "28", "13");

INSERT INTO Song(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES("2nd Sucks", "120", "11/15/2013", "13", "28", "23"); 

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

SELECT a.Title, b.ArtistName FROM Album a LEFT JOIN Artist b ON a.ArtistId = b.ArtistId;

SELECT AlbumId, COUNT(*) FROM Song GROUP BY AlbumId;

SELECT ArtistId, COUNT(*) FROM Song GROUP BY ArtistId;

SELECT GenreId, COUNT(*) FROM Song GROUP BY GenreId;

SELECT a.Title, MAX(AlbumLength)
FROM Album a;

SELECT a.Title, b.Title, MAX(SongLength) FROM Song a LEFT JOIN Album b ON a.SongId = b.AlbumId;