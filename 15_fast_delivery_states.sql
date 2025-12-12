WITH base AS (
  SELECT 
    c.customer_state,
    (DATETIME_DIFF(o.order_delivered_customer_date, o.order_purchase_timestamp, SECOND)/86400) AS delivered_time,
    (DATETIME_DIFF(o.order_estimated_delivery_date, o.order_delivered_customer_date, SECOND)/86400) AS estimated_delivery_time
  FROM `targetSQL.orders` o
  JOIN `targetSQL.customers` c ON c.customer_id = o.customer_id
  WHERE order_delivered_customer_date IS NOT NULL
),
base2 AS (
  SELECT customer_state, (estimated_delivery_time - delivered_time) AS diff_
  FROM base
  WHERE delivered_time < estimated_delivery_time
  ORDER BY diff_ DESC
)
SELECT DISTINCT customer_state FROM base2 LIMIT 5;