WITH raw_tags as (
    SELECT * FROM {{ source('ntx', 'RAW_TAGS') }}
)
SELECT USERID as user_id,
       MOVIEID as movie_id,
       TAG as tag,
       CAST(TIMESTAMP as TIMESTAMP_LTZ) as timestamp
FROM raw_tags