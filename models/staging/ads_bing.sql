select 
    ad_id,
    adset_id,
    campaign_id,
    channel,
    clicks, 
    date,
    imps as impressions,
    revenue, 
    spend, 
    conv as total_conversions
from {{ ref('src_ads_bing_all_data')}}