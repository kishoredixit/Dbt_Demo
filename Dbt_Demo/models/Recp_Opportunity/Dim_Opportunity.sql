{{ config(
    materialized="incremental",
    schema="DWh",
    Unique_id='Id'
    ) 
}}

with final as (
SELECT 
"Id" AS "Opportunity_Id",
"IsDeleted",
"AccountId",
"Name",
"Description",
"StageName",
"CloseDate",
"Type",
"NextStep",
"LeadSource",
"IsClosed",
"IsWon",
"ForecastCategory",
"ForecastCategoryName",
"CampaignId",
"HasOpportunityLineItem",
"Pricebook2Id",
"OwnerId",
"CreatedDate",
"CreatedById",
"LastModifiedDate",
"LastModifiedById",
"LastActivityDate",
"FiscalQuarter",
"FiscalYear",
"Fiscal",
"LastViewedDate",
"LastReferencedDate",
"HasOpenActivity",
"HasOverdueTask",
"AgeInDays",
"ConnectionReceivedId",
"ConnectionSentId",
"ContactId",
"ContractID",
"IqScore",
"IsExcludedFromTerritory2Filter",
"IsSplit",
"LastActivityInDays",
"LastAmountChangedHistoryId",
"LastCloseDateChangedHistoryId",
"LastStageChangeDate",
"LastStageChangeInDays",
"PartnerAccountId",
"PricebookId",
"RecordTypeId",
"SyncedQuoteID",
"Territory2Id",
"ExecutionDate"
FROM "Recp"."Recp_Opportunity"
   
)
select * from final
