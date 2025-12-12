WITH base AS (
  SELECT 
    c.customer_state,
    AVG(oi.freight_value) AS avg_freight_value
  FROM `targetSQL.customers` c
  JOIN `targetSQL.orders` o1 ON c.customer_id = o1.customer_id
  JOIN `targetSQL.order_items` oi ON o1.order_id = oi.order_id
  GROUP BY 1
),
high_ AS (
  SELECT customer_state, ROW_NUMBER() OVER(ORDER BY avg_freight_value DESC) AS rn
  FROM base LIMIT 5
),
low_ AS (
  SELECT customer_state, ROW_NUMBER() OVER(ORDER BY avg_freight_value ASC) AS rn
  FROM base LIMIT 5
)
SELECT h.customer_state AS highest_5, l.customer_state AS lowest_5
FROM high_ h
FULL OUTER JOIN low_ l ON h.rn = l.rn
ORDER BY h.rn;