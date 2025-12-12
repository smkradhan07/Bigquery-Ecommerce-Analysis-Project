SELECT 
  CASE 
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 0 AND 6 THEN "DAWN(0-6)"
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 7 AND 12 THEN "MORNING(7-12)"
    WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 13 AND 18 THEN "AFTERNOON(13-18)"
    ELSE "NIGHT(19-24)"
  END AS time_of_the_day,
  COUNT(order_id) AS orders_count
FROM `targetSQL.orders`
GROUP BY 1
ORDER BY 2 DESC;