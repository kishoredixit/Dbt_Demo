{{ config(
    materialized="incremental",
    schema="DWh",
    Unique_id='Id'
    ) 
}}

with final as (
SELECT
"Id" AS "Opportunity_Id",
"AccountId",
"StageName",
"Amount",
"Probability" ,
"ExpectedRevenue" ,
"TotalOpportunityQuantity" ,
"CloseDate" ,
"CurrencyIsoCode" ,
Null AS "FiscalQuarter_Id",
NUll AS "FiscalYear_Id"
FROM "Recp"."Recp_Opportunity"   
)
select * from final