SELECT 
  EXTRACT(MONTH FROM o.order_purchase_timestamp) AS ordered_month,
  p.payment_type,
  COUNT(o.order_id) AS count_of_orders
FROM `targetSQL.orders` o
JOIN `targetSQL.payments` p ON o.order_id = p.order_id
GROUP BY 1,2
ORDER BY 1 ASC,3 DESC;