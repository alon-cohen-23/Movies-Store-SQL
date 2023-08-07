SELECT staff.first_name, staff.last_name, staff.password

FROM film
JOIN inventory ON film.film_id = inventory.film_id And film.title = 'Crooked Frogmen' 
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id 
And customer.first_name = 'Jared' AND customer.last_name = 'Ely' 
JOIN staff ON rental.staff_id = staff.staff_id 

/*
WHERE customer.first_name = 'Jared' AND customer.last_name = 'Ely'
AND film.title = 'Crooked Frogmen';
*/