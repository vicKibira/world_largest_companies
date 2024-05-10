{{
    config(materialized='view')
}}

-- {{config(materialized='view')}}

WITH stg_largest_countries AS (
    SELECT
       rank,
       -- {{dbt.safe_cast('rank'), api.Column.translate_type('integer')}} AS rank,
       name,
       industry,
      -- {{dbt.safe_cast('revenue_(usd_millions)'), api.Column.translate_type('integer')}} AS revenue,
       --revenue_usd_millions as revenue,
      -- revenue_(usd_millions),
       revenue,
       revenue_growth,
       -- {{dbt.safe_cast('employees'), api.Column.translate_type('integer')}} AS employees,
       employees,
       headquarters
    FROM world_largest_companies
)
SELECT * FROM stg_largest_countries
