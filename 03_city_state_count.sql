SELECT 
  COUNT(DISTINCT customer_city) AS count_cities,
  COUNT(DISTINCT customer_state) AS count_states
FROM `targetSQL.customers`
WHERE customer_id IN (
			SELECT 
				DISTINCT customer_id 
			FROM `targetSQL.orders`);