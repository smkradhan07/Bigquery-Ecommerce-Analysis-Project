WITH base_table AS (
  SELECT 
    EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
    SUM(p.payment_value) AS cost
  FROM `targetSQL.orders` o
  JOIN `targetSQL.payments` p ON o.order_id = p.order_id
  WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) BETWEEN 2017 AND 2018
    AND EXTRACT(MONTH FROM o.order_purchase_timestamp) BETWEEN 1 AND 8
  GROUP BY 1
),
actual_cost_table AS (
  SELECT *, LEAD(cost) OVER(ORDER BY year) AS next_cost
  FROM base_table
)
SELECT 
  year,
  (next_cost - cost) / cost * 100 AS percent
FROM actual_cost_table;