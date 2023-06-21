with bing as (
    select 
    date,
    null as add_to_cart,
    clicks, 
    null as comments,
    null as engagements,
    impressions,
    null as installs,
    null as likes,
    null as link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    null as purchase, 
    null as registrations,
    revenue,
    null as shares,
    spend, 
    total_conversions,
    null as video_views,
    ad_id,
    adset_id,
    campaign_id,
    channel, 
    null as creative_id,
    null as placement_id
    from {{ ref('ads_bing')}}
),

facebook as (
    select 
    date,
    add_to_cart,
    clicks, 
    comments,
    null as engagements,
    impressions,
    installs,
    likes,
    link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    purchase, 
    registrations,
    null as revenue,
    shares,
    spend, 
    null as total_conversions,
    null as video_views,
    ad_id,
    adset_id,
    campaign_id,
    channel, 
    creative_id,
    null as placement_id
    from {{ ref('ads_facebook')}}
),

tiktok as (
    select 
    date,
    add_to_cart,
    clicks, 
    null as comments,
    null as engagements,
    impressions,
    installs,
    null as likes,
    null as link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    purchase, 
    registrations,
    null as revenue,
    null as shares,
    spend, 
    total_conversions,
    null as video_views,
    ad_id,
    null as adset_id,
    campaign_id,
    channel, 
    null as creative_id,
    null as placement_id
    from {{ ref('ads_tiktok')}}
),

twitter as (
    select 
    date,
    null as add_to_cart,
    clicks, 
    comments,
    engagements,
    impressions,
    null as installs,
    likes,
    link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    null as purchase, 
    null as registrations,
    null as revenue,
    shares,
    spend, 
    null as total_conversions,
    video_views,
    null as ad_id,
    null as adset_id,
    campaign_id,
    channel, 
    null as creative_id,
    null as placement_id
     from {{ ref('ads_twitter')}}
),

all_data as (
    select * from bing
    union all
    select * from facebook
    union all
    select * from tiktok
    union all
    select * from twitter
),

final as (
    select channel, SUM(spend) / SUM(coalesce(total_conversions, purchase)) AS conversion_cost    
    from all_data
    group by channel
)

select * from final