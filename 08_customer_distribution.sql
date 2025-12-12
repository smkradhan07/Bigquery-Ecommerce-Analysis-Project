SELECT 
  customer_state,
  COUNT(customer_id) AS no_of_customers
FROM `targetSQL.customers`
GROUP BY 1;