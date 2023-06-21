select campaign_id,
channel,
clicks,
comments,
date,
engagements,
impressions,
likes,
url_clicks as link_clicks,
retweets as shares,
spend,
video_total_views as video_views
 from {{ ref('src_promoted_tweets_twitter_all_data') }}
