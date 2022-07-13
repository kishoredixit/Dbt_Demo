{{ config(materialized='table') }}
with Recp_Opportunity as (
select * from "Staging"."stg_opportunity"
),

final as (
    select * from Recp_Opportunity
)
select * from final