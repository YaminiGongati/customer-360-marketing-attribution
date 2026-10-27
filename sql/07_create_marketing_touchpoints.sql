CREATE OR REPLACE TABLE
customer-360-marketing.customer360.attribution_comparison AS

WITH journeys AS (
  SELECT
    customer_id,
    channel,
    touchpoint_date,
    ROW_NUMBER() OVER (
      PARTITION BY customer_id
      ORDER BY touchpoint_date
    ) AS first_rank,
    ROW_NUMBER() OVER (
      PARTITION BY customer_id
      ORDER BY touchpoint_date DESC
    ) AS last_rank,
    COUNT(*) OVER (
      PARTITION BY customer_id
    ) AS touchpoint_count
  FROM customer-360-marketing.customer360.marketing_touchpoints
),

customer_revenue AS (
  SELECT
    customer_id,
    SUM(revenue) AS revenue
  FROM customer-360-marketing.customer360.orders
  GROUP BY customer_id
),

attribution AS (
  SELECT
    j.channel,
    SUM(
      CASE WHEN j.first_rank = 1
        THEN COALESCE(r.revenue, 0)
        ELSE 0
      END
    ) AS first_touch_revenue,

    SUM(
      CASE WHEN j.last_rank = 1
        THEN COALESCE(r.revenue, 0)
        ELSE 0
      END
    ) AS last_touch_revenue,

    SUM(
      COALESCE(r.revenue, 0) / j.touchpoint_count
    ) AS linear_revenue

  FROM journeys j
  JOIN customer_revenue r
    ON j.customer_id = r.customer_id
  GROUP BY j.channel
)

SELECT *
FROM attribution;