WITH base AS (
  SELECT 
    c.customer_state,
    AVG(DATETIME_DIFF(o1.order_delivered_customer_date, o1.order_purchase_timestamp, SECOND)/86400) AS avg_deliver_time
  FROM `targetSQL.customers` c
  JOIN `targetSQL.orders` o1 ON c.customer_id = o1.customer_id
  WHERE o1.order_delivered_customer_date IS NOT NULL
  GROUP BY 1
),
high_ AS (
  SELECT customer_state, ROW_NUMBER() OVER(ORDER BY avg_deliver_time DESC) AS rn FROM base LIMIT 5
),
low_ AS (
  SELECT customer_state, ROW_NUMBER() OVER(ORDER BY avg_deliver_time ASC) AS rn FROM base LIMIT 5
)
SELECT h.customer_state AS highest_5_dt, l.customer_state AS lowest_5_dt
FROM high_ h
FULL OUTER JOIN low_ l ON h.rn = l.rn
ORDER BY h.rn;