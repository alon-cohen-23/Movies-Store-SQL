SELECT staff.first_name, staff.last_name, staff.password

FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id -- Corrected typo here
JOIN staff ON rental.staff_id = staff.staff_id -- Corrected typo here

WHERE customer.first_name = 'Jared' AND customer.last_name = 'Ely'
AND film.title = 'Crooked Frogmen';
