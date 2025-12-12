SELECT 
  c.customer_state AS state,
  EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
  COUNT(o.order_id) AS count_orders
FROM `targetSQL.customers` c
JOIN `targetSQL.orders` o ON c.customer_id = o.customer_id
GROUP BY 1,2
ORDER BY 1,2;