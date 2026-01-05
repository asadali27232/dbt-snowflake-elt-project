WITH raw_genome_scores AS (
    SELECT * FROM {{ source('ntx', 'RAW_GENOME_SCORES') }}
)
SELECT MOVIEID as movie_id,
       TAGID as tag_id,
       RELEVANCE as relevance
FROM raw_genome_scores