WITH raw_movies as (
    SELECT * FROM {{ source('ntx', 'RAW_MOVIES') }}
)
SELECT MOVIEID as movie_id,
       TITLE as title,
       GENRES as genres
FROM raw_movies