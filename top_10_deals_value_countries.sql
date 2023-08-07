Select country.country ,count (*) as deals_amount ,sum(payment.amount) as deals_value  

From customer Join address on customer.address_id = address.address_id
Join city on address.city_id = city.city_id
Join country on city.country_id = country.country_id
Join payment on customer.customer_id = payment.customer_id

Group by country.country 
Order by deals_value Desc limit 10