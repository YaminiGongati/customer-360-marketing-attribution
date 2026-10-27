SELECT 'customer_profiles' AS table_name, COUNT(*) AS total_rows
FROM customer-360-marketing.customer360.customer_profiles

UNION ALL

SELECT 'orders', COUNT(*)
FROM customer-360-marketing.customer360.orders

UNION ALL

SELECT 'ad_spend', COUNT(*)
FROM customer-360-marketing.customer360.ad_spend

UNION ALL

SELECT 'customer_360', COUNT(*)
FROM customer-360-marketing.customer360.customer_360

UNION ALL

SELECT 'customer_segments', COUNT(*)
FROM customer-360-marketing.customer360.customer_segments

UNION ALL

SELECT 'campaign_performance', COUNT(*)
FROM customer-360-marketing.customer360.campaign_performance

UNION ALL

SELECT 'marketing_touchpoints', COUNT(*)
FROM customer-360-marketing.customer360.marketing_touchpoints

UNION ALL

SELECT 'attribution_comparison', COUNT(*)
FROM customer-360-marketing.customer360.attribution_comparison

ORDER BY table_name;