SELECT 
  c.customer_state,
  SUM(oi.freight_value) AS total_freight_value,
  AVG(oi.freight_value) AS avg_freight_value
FROM `targetSQL.customers` c
JOIN `targetSQL.orders` o1 ON c.customer_id = o1.customer_id
JOIN `targetSQL.order_items` oi ON o1.order_id = oi.order_id
GROUP BY 1
ORDER BY total_freight_value DESC;