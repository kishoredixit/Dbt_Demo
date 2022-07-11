{{ config(materialized='table') }}
with Recp_Opportunity as (
select * from {{ source('Staging', 'stg_opportunity') }} 
where "ExecutionDate" >= (select max("ExecutionDate" ) from "Staging".stg_opportunity )
),

final as (
    select * from Recp_Opportunity
)
select * from final