# Snowflake + dbt End-to-End ELT Project

## Overview
This project demonstrates an end-to-end ELT data pipeline using **Snowflake** and **dbt**. It covers loading raw data, building staging and transformation layers, and preparing analytics-ready models for BI and reporting.

## Architecture
The solution follows a modern data stack approach:

- Data ingestion into **Snowflake Raw Layer**
- Transformation and modeling using **dbt**
- Separate **Raw, Staging, and Serving (Gold)** layers
- Output models available for dashboards in BI tools

## Tech Stack
- Snowflake (Cloud Data Warehouse)  
- dbt (Data Build Tool)  
- SQL  
- Optional: Airflow / MWAA for orchestration  
- Optional: Power BI / Looker Studio / Tableau for reporting  

## Project Structure
```
models/
  staging/
  marts/
seeds/
snapshots/
```

## Key Concepts Demonstrated
- ELT (Extract, Load, Transform) pipeline design  
- Data modeling best practices  
- Layered warehouse architecture (Raw → Staging → Serving)  
- dbt tests, documentation, and macros  

## How to Run
1. Clone the repository  
2. Configure your `profiles.yml` for Snowflake  
3. Run the commands below:

```
dbt deps
dbt run
dbt test
```

4. View generated models in Snowflake.

## Status
This project is for learning and demonstration purposes and will continue to evolve.

---
