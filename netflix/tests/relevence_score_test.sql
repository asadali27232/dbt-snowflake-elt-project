SELECT * FROM {{ ref('fact_genome_scores') }}
WHERE relevance_score < 0 OR relevance_score > 1