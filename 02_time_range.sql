SELECT 
	MIN(order_purchase_timestamp) AS minimum, 
	MAX(order_purchase_timestamp) AS maximum 
FROM `targetSQL.orders`;