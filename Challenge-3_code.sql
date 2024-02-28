SELECT address.district, customer.email
FROM address
INNER JOIN customer ON
address.address_id = customer.address_id
WHERE district = 'California';

SELECT film.title, actor.first_name, actor.last_name  
FROM film
INNER JOIN film_actor 
	ON film.film_id = film_actor.film_id
INNER JOIN actor
	ON film_actor.actor_id = actor.actor_id
WHERE first_name = 'Nick'
	AND last_name = 'Wahlberg';

