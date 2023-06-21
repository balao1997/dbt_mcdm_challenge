select 
    ad_id,
    add_to_cart,
    adset_id,
    campaign_id,
    channel,
    clicks + clicks_2 as clicks,
    comments + comments_2 as comments,
    creative_id,
    date,
    impressions,
    mobile_app_install as installs,
    likes,
    inline_link_clicks as link_clicks,
    purchase + purchase_2 as purchase,
    complete_registration as registrations,
    shares + shares_2 as shares,
    spend
 from {{ ref('src_ads_creative_facebook_all_data')}}