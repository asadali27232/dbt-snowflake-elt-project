WITH raw_links AS (
    SELECT * FROM {{ source('ntx', 'RAW_LINKS') }}
)
SELECT MOVIEID as movie_id,
       IMDBID as imdb_id,
       TMDBID as tmdb_id
FROM raw_links