/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
select f.film_id, f.title, count(i.inventory_id) from film f join inventory i on f.film_id = i.film_id where f.title ilike 'h%' group by f.film_id, f.title order by f.title desc;
