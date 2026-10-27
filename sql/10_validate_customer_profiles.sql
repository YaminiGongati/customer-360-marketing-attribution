SELECT
  COUNT(*) AS total_customers,
  COUNTIF(customer_id IS NULL) AS missing_customer_ids,
  COUNT(DISTINCT customer_id) AS unique_customer_ids
FROM customer-360-marketing.customer360.customer_profiles;