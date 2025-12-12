SELECT 
  c.customer_state,
  SUM(oi.price) AS total_price,
  AVG(oi.price) AS avg_price
FROM `targetSQL.customers` c
JOIN `targetSQL.orders` o1 ON c.customer_id = o1.customer_id
JOIN `targetSQL.order_items` oi ON o1.order_id = oi.order_id
GROUP BY 1
ORDER BY total_price DESC;