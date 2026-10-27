CREATE OR REPLACE TABLE
customer-360-marketing.customer360.marketing_touchpoints AS

SELECT 'C001' AS customer_id, DATE '2026-03-01' AS touchpoint_date, 'Social Media' AS channel, 'S001' AS campaign_id
UNION ALL SELECT 'C001', DATE '2026-03-03', 'Google Ads', 'G001'
UNION ALL SELECT 'C001', DATE '2026-03-05', 'Google Ads', 'G001'
UNION ALL SELECT 'C002', DATE '2026-03-10', 'Google Ads', 'G001'
UNION ALL SELECT 'C002', DATE '2026-03-12', 'Social Media', 'S001'
UNION ALL SELECT 'C002', DATE '2026-03-15', 'Social Media', 'S001'
UNION ALL SELECT 'C003', DATE '2026-03-28', 'Google Ads', 'G001'
UNION ALL SELECT 'C003', DATE '2026-04-02', 'Email', 'E001'
UNION ALL SELECT 'C004', DATE '2026-05-01', 'Social Media', 'S001'
UNION ALL SELECT 'C004', DATE '2026-05-05', 'Google Ads', 'G001'
UNION ALL SELECT 'C005', DATE '2026-05-08', 'Google Ads', 'G001'
UNION ALL SELECT 'C005', DATE '2026-05-12', 'Social Media', 'S001';