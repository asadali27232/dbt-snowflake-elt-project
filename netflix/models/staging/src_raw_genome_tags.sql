WITH raw_genome_tags AS (
    SELECT * FROM {{ source('ntx', 'RAW_GENOME_TAGS') }}
)
SELECT TAGID as tag_id,
       TAG as tag
FROM raw_genome_tags