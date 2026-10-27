CREATE OR REPLACE TABLE
customer-360-marketing.customer360.project_validation AS

SELECT
  'Customer Profiles' AS check_name,
  COUNT(*) AS records_checked,
  COUNTIF(customer_id IS NULL) AS issues_found
FROM customer-360-marketing.customer360.customer_profiles

UNION ALL

SELECT
  'Orders',
  COUNT(*),
  COUNTIF(order_id IS NULL OR customer_id IS NULL OR revenue IS NULL OR revenue < 0)
FROM customer-360-marketing.customer360.orders

UNION ALL

SELECT
  'Ad Campaigns',
  COUNT(*),
  COUNTIF(campaign_id IS NULL OR spend IS NULL OR spend < 0)
FROM customer-360-marketing.customer360.ad_spend

UNION ALL

SELECT
  'Marketing Touchpoints',
  COUNT(*),
  COUNTIF(customer_id IS NULL OR channel IS NULL OR touchpoint_date IS NULL)
FROM customer-360-marketing.customer360.marketing_touchpoints;