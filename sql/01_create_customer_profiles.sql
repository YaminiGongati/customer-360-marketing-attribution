CREATE OR REPLACE TABLE
  customer-360-marketing.customer360.customer_profiles AS
SELECT
  'C001' AS customer_id,
  'Asha Rao' AS customer_name,
  'asha.demo@example.com' AS email,
  DATE '2026-01-10' AS signup_date,
  'Google Ads' AS acquisition_channel
UNION ALL SELECT
  'C002', 'Ravi Kumar', 'ravi.demo@example.com',
  DATE '2026-01-15', 'Social Media'
UNION ALL SELECT
  'C003', 'Priya Reddy', 'priya.demo@example.com',
  DATE '2026-02-02', 'Email'
UNION ALL SELECT
  'C004', 'Arjun Das', 'arjun.demo@example.com',
  DATE '2026-02-14', 'Google Ads'
UNION ALL SELECT
  'C005', 'Meera Shah', 'meera.demo@example.com',
  DATE '2026-03-01', 'Social Media';