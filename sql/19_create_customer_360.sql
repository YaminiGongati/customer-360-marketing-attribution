CREATE OR REPLACE TABLE
  customer-360-marketing.customer360.customer_360 AS
SELECT
  c.customer_id,
  c.customer_name,
  c.email,
  c.signup_date,
  c.acquisition_channel,
  COUNT(o.order_id) AS total_orders,
  COALESCE(SUM(o.revenue), 0) AS lifetime_revenue,
  MAX(o.order_date) AS last_order_date,
  DATE_DIFF(CURRENT_DATE(), MAX(o.order_date), DAY)
    AS days_since_last_order
FROM
  customer-360-marketing.customer360.customer_profiles c
LEFT JOIN
  customer-360-marketing.customer360.orders o
ON
  c.customer_id = o.customer_id
GROUP BY
  c.customer_id,
  c.customer_name,
  c.email,
  c.signup_date,
  c.acquisition_channel;