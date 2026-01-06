{{
    config(
        materialized='table'
    )
}}

WITH src_movies AS (
    SELECT * FROM {{ ref('dim_movies') }}
),

release_dates AS (
    SELECT * FROM {{ ref('movies_release_dates') }}
)

SELECT m.movie_id,
       m.movie_title,
       m.genres,
       rd.release_date,
       CASE
            WHEN rd.release_date IS NULL THEN 'Unknown'
            ELSE 'Known'
       END as release_status
FROM src_movies as m
LEFT JOIN release_dates as rd ON m.movie_id = rd.movie_id