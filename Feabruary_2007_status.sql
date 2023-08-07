Select Count (*) as counter, 
Case When sub.Feabruary_payments >25 Then 'satisfied'
When sub.Feabruary_payments Between 10 And 25 Then 'questionable'
Else 'cheap' End as customer_status

From (
Select customer.customer_id, Sum(payment.amount) as Feabruary_payments
	From payment Join customer on payment.customer_id = customer.customer_id
Where EXTRACT(YEAR FROM payment.payment_date) = 2007
  AND EXTRACT(MONTH FROM payment.payment_date) = 2 
Group by customer.customer_id	
		) sub
Group by customer_status		