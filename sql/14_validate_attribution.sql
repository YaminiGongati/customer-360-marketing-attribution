SELECT
  COUNT(*) AS total_channels,
  COUNTIF(channel IS NULL) AS missing_channels,
  SUM(first_touch_revenue) AS first_touch_total,
  SUM(last_touch_revenue) AS last_touch_total,
  SUM(linear_revenue) AS linear_attributed_total
FROM customer-360-marketing.customer360.attribution_comparison;