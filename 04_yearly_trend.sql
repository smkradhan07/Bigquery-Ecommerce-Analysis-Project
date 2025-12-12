SELECT 
  EXTRACT(YEAR FROM order_purchase_timestamp) AS order_year,
  COUNT(order_id) AS order_counts
FROM `targetSQL.orders`
GROUP BY 1
ORDER BY 1;