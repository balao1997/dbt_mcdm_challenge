To add data from new ad platform, you should:
1. Add new raw data to seed in csv format
2. In folder models/staging create a new view with fields that we need for dashboard
3. Add new CTE with this view in file models/marts/paid_ads__basic_performance.sql and add it to query paid_ads__basic_performance using union all
