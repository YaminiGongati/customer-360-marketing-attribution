SELECT
  COUNT(*) AS total_campaigns,
  COUNTIF(campaign_id IS NULL) AS missing_campaign_ids,
  COUNTIF(spend IS NULL OR spend < 0) AS invalid_spend,
  SUM(spend) AS total_ad_spend,
  SUM(clicks) AS total_clicks,
  SUM(conversions) AS total_conversions
FROM customer-360-marketing.customer360.ad_spend;