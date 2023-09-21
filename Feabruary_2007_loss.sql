SELECT customer.first_name, customer.last_name

FROM payment INNER Join customer on payment.customer_id = customer.customer_id

WHERE EXTRACT(YEAR FROM payment_date) = 2007
  AND EXTRACT(MONTH FROM payment_date) = 2

GROUP BY payment.customer_id, customer.first_name, customer.last_name

ORDER BY SUM(payment.amount) DESC
LIMIT 1
  
