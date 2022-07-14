{{ config(materialized='table') }}
with recp_account as (
select * from "Staging"."stg_account"
),

final as (
    select * from recp_account
)
select * from final