select 
    ad_id as id,
    adset_id,
    campaign_id,
    clicks, 
    imps,
    revenue, 
    spend, 
    conv,
    __insert_date as inserted_at,
    date
from {{ ref('src_ads_bing_all_data')}}