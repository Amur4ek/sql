SELECT track_name, duration
FROM track 
WHERE duration = (SELECT MAX(duration) FROM track);

select track_name, duration
from track
where duration >= 3.5;

select collection_name , year_
from collection
where year_ between 2018 and 2020

select artist_name 
from artists
where artist_name not like '% %'

select track_name
from track 
where track_name ilike '%my%'


SELECT genre_name, COUNT(artists_and_genres.artist_id) 
FROM genres
JOIN artists_and_genres ON genres.genre_id = artists_and_genres.genre_id  
GROUP BY genre_name
ORDER BY genre_name;

select album_name, count(artists_and_albums.album_id)
from albums
join artists_and_albums on albums.album_id = artists_and_albums.album_id
where year_ BETWEEN 2019 AND 2020
GROUP BY albums.album_name;

select album_name, avg(albums.album_id) 
from albums
join artists_and_albums on albums.album_id = artists_and_albums.album_id
GROUP BY albums.album_name;

SELECT artists.artist_id , artists.artist_name
FROM artists
WHERE artist_id NOT IN (
    SELECT artist_id
    FROM artists_and_albums
    JOIN albums ON artists_and_albums.album_id = albums.album_id
    WHERE albums.year_ = 2020
)
  
SELECT collection.collection_name , albums.album_name , artists.artist_name 
from artists
join artists_and_albums ON artists.artist_id = artists_and_albums.artist_id
join albums on artists_and_albums.album_id = albums.album_id 
join track on albums.album_id = track.album_id 
join collection_and_track on track.track_id = collection_and_track.track_id 
join collection on collection_and_track.collection_id = collection.collection_id 
WHERE artists.artist_name ilike '%Скриптонит%' ;

