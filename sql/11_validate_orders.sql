SELECT
  COUNT(*) AS total_orders,
  COUNTIF(order_id IS NULL) AS missing_order_ids,
  COUNTIF(customer_id IS NULL) AS missing_customer_ids,
  COUNTIF(revenue IS NULL OR revenue < 0) AS invalid_revenue_orders,
  COUNT(DISTINCT order_id) AS unique_order_ids,
  SUM(revenue) AS total_revenue
FROM customer-360-marketing.customer360.orders;