# Netflix Metadata & Ratings Transformation (dbt)

This directory contains the core **dbt project** for transforming MovieLens/Netflix data in Snowflake.

## Layers

-   **Staging**: `models/staging/` - Cleaned source tables prefix with `src_`.
-   **Dimensional**: `models/dim/`, `models/fact/` - Star schema models for analytics.
-   **Marts**: `models/marts/` - Pre-calculated aggregates and business logic.

## Getting Started

1. Install dbt packages: `dbt deps`
2. Load seeds: `dbt seed`
3. Run the pipeline: `dbt build`

Refer to the [Root README](../README.md) for full project documentation and architecture details.
