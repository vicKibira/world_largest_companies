{{
    config(materialized='view')
}}

with stg_dim_largest_companies as (
    select
        rank,
        name,
        industry,
        revenue,
        revenue_growth,
        employees,
        headquarters
    from {{ref('largest_companies')}}
)

select * from stg_dim_largest_companies