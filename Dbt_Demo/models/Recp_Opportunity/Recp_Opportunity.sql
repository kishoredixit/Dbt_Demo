{{ config(materialized='table') }}
with recp_opportunity as (
select * from {{ source("Staging", "stg_opportunity") }}

final as (
    select * from recp_opportunity
)
select * from final