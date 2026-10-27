SELECT
  COUNT(*) AS total_customer_records,
  COUNT(DISTINCT customer_id) AS unique_customers,
  COUNTIF(customer_id IS NULL) AS missing_customer_ids,
  COUNTIF(customer_name IS NULL) AS missing_customer_names,
  SUM(lifetime_revenue) AS combined_lifetime_revenue
FROM customer-360-marketing.customer360.customer_360;