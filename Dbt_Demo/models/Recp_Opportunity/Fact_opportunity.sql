{{ config(
    materialized="incremental",
    schema="DWh",
    Unique_id='Id'
    ) 
}}

with final as (
SELECT
"Id" 	as "opportunity_id",
"AccountId" as "accountid",
"StageName"	as "stagename",
"Amount" as "amount",
"Probability" as "probability" ,
"ExpectedRevenue" as "expectedrevenue" ,
"TotalOpportunityQuantity" as "totalopportunityquantity" ,
"CloseDate" as "closedate" ,
"CurrencyIsoCode" as 	"currencyisocode"  ,
Null AS "fiscalQuarter_id",
NUll AS "fiscalYear_id"
FROM {{ ref('recp_opportunity') }}
)
select * from final