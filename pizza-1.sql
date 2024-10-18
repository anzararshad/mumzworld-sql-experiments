-- This SQL query fetches the number of pizzas ordered by customers who clearly have great taste!
SELECT COUNT(*) AS "Pizza Lovers" 
FROM orders 
WHERE item = 'Pizza' 
AND customer_id IN (SELECT customer_id FROM customers WHERE taste = 'Exquisite');