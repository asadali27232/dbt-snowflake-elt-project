WITH raw_movies AS (
    SELECT * FROM {{ source('ntx', 'RAW_MOVIES') }}
)
SELECT movie_id,
       title,
       genres
FROM raw_movies