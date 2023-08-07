Select customer.first_name, customer.last_name, Sum(payment.amount)*0.1, category.name

From category Join film_category on category.category_id = film_category.category_id
Join film on film_category.film_id = film.film_id
Join inventory on film.film_id = inventory.film_id
Join rental on inventory.inventory_id = rental.inventory_id
Join payment on rental.rental_id = payment.rental_id 
Join customer on payment.customer_id = customer.customer_id
 

Where category.name = 'Action' And 
 EXTRACT(YEAR FROM payment.payment_date) = 2007
  AND EXTRACT(MONTH FROM payment.payment_date) = 2  


Group By customer.first_name, customer.last_name, category.name

Order By Sum(payment.amount) DESC
limit 10