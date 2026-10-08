SELECT
COUNT(*) AS total_opportunities,
COUNT(*) FILTER (WHERE deal_stage = 'Won') AS Won_Opportunities,
COUNT(*) FILTER (WHERE deal_stage = 'Lost') AS Lost_Opportunities
FROM sales_pipeline;

SELECT
COUNT(*) AS total_opportunities,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS Won_Opportunites,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS Lost_Opportunites,
ROUND(
COUNT(*) FILTER(WHERE deal_stage = 'Won') * 100.0 / 
NULLIF (
COUNT(*) FILTER(WHERE deal_stage IN ('Won', 'Lost')),
0
), 
2
) AS win_rate_percent
FROM sales_pipeline;

SELECT
SUM(close_value) AS total_sales_value,
ROUND(AVG(close_value), 2) AS avg_deal_value,
MAX(close_value) AS largest_deal
FROM sales_pipeline
WHERE deal_stage = 'Won';

SELECT
sales_agent,
COUNT(*) AS total_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS won_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS lost_opprotunities,
SUM(close_value) FILTER(WHERE deal_stage = 'Won') AS won_sales_value
FROM sales_pipeline
GROUP BY sales_agent
Order BY won_sales_value DESC;

SELECT
product,
COUNT(*) AS total_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS won_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS lost_opprotunities,
SUM(close_value) FILTER(WHERE deal_stage = 'Won') AS won_sales_value,
ROUND(AVG(close_value) FILTER(WHERE deal_stage = 'Won'), 2) AS avg_won_deal_value
FROM sales_pipeline
GROUP BY product
ORDER BY won_sales_value DESC;

SELECT
a.sector,
COUNT(s.opportunity_id) AS total_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS won_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS lost_opprotunities,
SUM(close_value) FILTER(WHERE deal_stage = 'Won') AS won_sales_value
FROM sales_pipeline s
JOIN accounts a
ON a.account = s.account
GROUP BY a.sector
ORDER BY won_sales_value DESC;

SELECT 
DATE_TRUNC('month', close_date) AS month,
COUNT(*) AS total_opprotunities,
SUM(close_value) AS sales_value
FROM sales_pipeline
GROUP BY month
ORDER BY sales_value DESC;

SELECT 
deal_stage,
COUNT(*) AS total_opprotunities,
ROUND(
AVG(close_date - engage_date),
2
) AS avg_days_to_close
FROM sales_pipeline
GROUP BY deal_stage
ORDER BY avg_days_to_close DESC;

SELECT
s.account,
a.sector,
COUNT(*) AS won_opprotunities,
SUM(s.close_value) AS won_sales_value,
ROUND(AVG(s.close_value),2) AS avg_deal_value
FROM sales_pipeline s
JOIN accounts a
ON s.account = a.account
WHERE deal_stage = 'Won'
GROUP BY a.sector, s.account
Order By won_sales_value DESC
LIMIT 10;

SELECT
sales_agent,
COUNT(*) AS total_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS won_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS lost_opprotunities,
ROUND(
COUNT(*) FILTER(WHERE deal_stage = 'Won') * 100.0 /
NULLIF(
COUNT(*) FILTER(WHERE deal_stage IN ('Won', 'Lost')),
0
),
2
) AS won_rate_percent
FROM sales_pipeline
GROUP BY sales_agent
ORDER BY won_rate_percent DESC;

SELECT
deal_stage,
COUNT(*) AS pipeline_opprotunities
FROM sales_pipeline	
WHERE deal_stage IN ('Engaging', 'Prospecting')
GROUP BY deal_stage
Order BY pipeline_opprotunities DESC;

SELECT 
sales_agent,
COUNT(*) AS active_opprotunities
FROM sales_pipeline
WHERE deal_stage IN ('Engaging', 'Prospecting')
GROUP BY sales_agent
Order By active_opprotunities DESC;

SELECT
product,
COUNT(*) FILTER(WHERE deal_stage = 'Won') AS won_opprotunities,
COUNT(*) FILTER(WHERE deal_stage = 'Lost') AS lost_opprotunities,
ROUND(
COUNT(*) FILTER(WHERE deal_stage = 'Won') * 100.0 / 
NULLIF(
COUNT(*) FILTER(WHERE deal_stage IN ('Won', 'Lost')),
0
),
2
) AS win_rate_percent
FROM sales_pipeline
GROUP BY product
Order By win_rate_percent DESC;

