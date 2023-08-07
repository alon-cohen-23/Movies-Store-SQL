Select sub.*

From (Select Min(actor.first_name), Min(actor.last_name), count (*) as rents_amount, 
	  Dense_rank () over (order by count (*) Desc) As rentals_ranking

From actor Join film_actor on actor.actor_id = film_actor.actor_id
Join film on film_actor.film_id = film.film_id
Join inventory on film.film_id = inventory.film_id
Join rental on rental.inventory_id = inventory.inventory_id 

Group by actor.actor_id) sub

Where sub.rentals_ranking <= 10