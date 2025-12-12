SELECT 
  p.payment_installments,
  COUNT(DISTINCT o.order_id) AS t_orders
FROM `targetSQL.payments` p
JOIN `targetSQL.orders` o ON o.order_id = p.order_id
GROUP BY 1
ORDER BY 2 DESC;