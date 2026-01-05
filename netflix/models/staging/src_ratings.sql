WITH raw_ratings AS (
    SELECT * FROM {{ source('ntx', 'RAW_RATINGS') }}
)
SELECT USERID as user_id,
       MOVIEID as movie_id,
       RATING as rating,
       CAST(TIMESTAMP as TIMESTAMP_LTZ) as timestamp
FROM raw_ratings