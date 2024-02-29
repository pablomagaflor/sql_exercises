select title
from film
where rental_rate > (select AVG(rental_rate) from film);

SELECT title
FROM film 
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30');

SELECT f1.title, f2.title, f1.length
FROM film AS f1
JOIN film AS f2 ON 
f1.film_id != f2.film_id
AND f1.length = f2.length;