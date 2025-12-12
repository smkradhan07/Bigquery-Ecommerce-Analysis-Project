SELECT 
  EXTRACT(MONTH FROM order_purchase_timestamp) AS order_month,
  COUNT(order_id) AS order_counts
FROM `targetSQL.orders`
GROUP BY 1
ORDER BY 1;