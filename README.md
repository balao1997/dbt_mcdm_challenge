In order to include data from a new ad platform, follow these steps:
1. Import the new raw data in CSV format to the seed.
2. Create a new view in the folder "models/staging" with the necessary fields for the dashboard.
3. Add a new CTE with this view to the file "models/marts/paid_ads__basic_performance.sql" and include it in the query "paid_ads__basic_performance" using "union all".
