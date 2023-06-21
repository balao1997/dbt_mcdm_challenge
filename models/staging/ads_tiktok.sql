select 
ad_id,
add_to_cart,
campaign_id,
channel,
clicks,
date,
impressions,
rt_installs as installs,
purchase,
registrations,
spend,
conversions as total_conversions,
video_views
from {{ ref('src_ads_tiktok_ads_all_data') }}