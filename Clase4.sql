USE sakila;

--Ejercicio 1
SELECT title, special_features FROM film WHERE rating = "PG-13";
--Ejercicio 2
SELECT DISTINCT length FROM film;
--Ejercicio 3
SELECT title, rental_rate, replacement_cost FROM film WHERE replacement_cost BETWEEN 20 AND 24;
--Ejercicio 4
SELECT f.title, c.name, f.rating FROM film f, film_category fc, category c WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id AND f.special_features = "Behind the Scenes";
--Ejercicio 5
SELECT a.first_name, a.last_name from actor a, film f, film_actor fa WHERE a.actor_id = fa.actor_id AND fa.film_id = f.film_id AND f.title = "ZOOLANDER FICTION";
-- Ejercicio 6
SELECT a.address, c.city, c.country FROM store s, address a, city c, country co WHERE s.address_id = a.address_id AND a.city_id = c.city_id AND c.country_id = co.country_id AND s.store_id = 1;
-- Ejercicio 7.
SELECT film1.title, film1.rating, film2.title, film2.rating FROM film film1, film film2 WHERE film1.rating = film2.rating;
-- Ejercicio 8
SELECT DISTINCT f.title, s.first_name, s.last_name FROM staff s, store st, inventory i, film f WHERE s.store_id = st.store_id AND st.store_id = i.store_id AND i.film_id = f.film_id;
