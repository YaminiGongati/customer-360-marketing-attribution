CREATE OR REPLACE TABLE
customer-360-marketing.customer360.customer_segments AS

SELECT
  customer_id,
  customer_name,
  total_orders,
  lifetime_revenue,
  last_order_date,
  days_since_last_order,

  CASE
    WHEN days_since_last_order <= 150 THEN 'Recent'
    WHEN days_since_last_order <= 210 THEN 'Needs Attention'
    ELSE 'Inactive'
  END AS recency_segment,

  CASE
    WHEN total_orders >= 2 THEN 'Repeat Customer'
    ELSE 'One-Time Customer'
  END AS frequency_segment,

  CASE
    WHEN lifetime_revenue >= 3000 THEN 'High Value'
    WHEN lifetime_revenue >= 1500 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS monetary_segment

FROM customer-360-marketing.customer360.customer_360;