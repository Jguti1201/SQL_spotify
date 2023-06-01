#Find the most popular artist in the database:
SELECT artists_names, AVG(popularity) AS avg_popularity
FROM spotifymusic.spotify_final_tracks
GROUP BY artists_names
ORDER BY avg_popularity DESC
LIMIT 1;

#Find the most popular track in the database:
SELECT name, MAX(popularity) AS max_popularity
FROM spotifymusic.spotify_final_tracks;

#Find the most popular album in the database
SELECT album_type, MAX(popularity) AS max_popularity
FROM spotifymusic.spotify_main_dataset;

#In summary, this code retrieves and analyzes data from the spotify_final_tracks table. It calculates the average popularity for each artist based on their tracks, groups the results by artist, and sorts the artists in descending order based on their average popularity. This allows you to identify the artists with the highest average popularity levels based on their tracks in the spotify_final_tracks table.
SELECT artists_names, AVG(popularity) AS avg_popularity
FROM spotifymusic.spotify_final_tracks
GROUP BY artists_names
ORDER BY avg_popularity DESC;

#In summary, this code retrieves the genres of artists from the spotify_artists table, calculates the average popularity for each genre, groups the results by genre, and then sorts the genres in descending order based on their average popularity."""
SELECT artist_genres, AVG(artist_popularity) AS avg_popularity
FROM spotifymusic.spotify_artists
GROUP BY artist_genres
ORDER BY avg_popularity DESC;

SELECT name, AVG(popularity) AS avg_popularity
#This code selects the name column and the average popularity for each track from the tracks table. It filters the results to only include tracks by artists that are similar to the user’s preferences using a subquery. The subquery selects all tracks by artists that are similar to the user’s preferences based on the track name.
FROM spotifymusic.spotify_final_tracks
WHERE artists_names IN (
  SELECT artists_names
  FROM spotifymusic.spotify_final_tracks
  WHERE name = 'keep you to myself'
)
GROUP BY name;