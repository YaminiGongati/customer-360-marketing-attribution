CREATE OR REPLACE TABLE
  customer-360-marketing.customer360.ad_spend AS
SELECT
  'G001' AS campaign_id,
  'Google Ads' AS channel,
  DATE '2026-03-01' AS spend_date,
  NUMERIC '1200' AS spend,
  600 AS clicks,
  20 AS conversions
UNION ALL SELECT
  'S001', 'Social Media', DATE '2026-03-01',
  NUMERIC '800', 900, 15
UNION ALL SELECT
  'E001', 'Email', DATE '2026-03-01',
  NUMERIC '300', 400, 12;