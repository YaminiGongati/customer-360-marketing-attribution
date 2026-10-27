CREATE OR REPLACE TABLE
  customer-360-marketing.customer360.campaign_performance AS
WITH campaign_revenue AS (
  SELECT
    campaign_id,
    SUM(revenue) AS attributed_revenue
  FROM
    customer-360-marketing.customer360.orders
  GROUP BY campaign_id
)
SELECT
  a.campaign_id,
  a.channel,
  a.spend,
  a.clicks,
  a.conversions,
  COALESCE(r.attributed_revenue, 0) AS attributed_revenue,
  COALESCE(r.attributed_revenue, 0) - a.spend AS revenue_minus_ad_spend,
  SAFE_DIVIDE(
    COALESCE(r.attributed_revenue, 0) - a.spend,
    a.spend
  ) * 100 AS roi_percent,
  SAFE_DIVIDE(a.spend, a.conversions) AS cost_per_acquisition,
  SAFE_DIVIDE(a.conversions, a.clicks) * 100 AS conversion_rate_percent
FROM
  customer-360-marketing.customer360.ad_spend a
LEFT JOIN
  campaign_revenue r
ON
  a.campaign_id = r.campaign_id;