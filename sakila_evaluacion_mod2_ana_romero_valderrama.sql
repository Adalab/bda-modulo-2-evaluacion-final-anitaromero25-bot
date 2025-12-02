USE sakila;

/*1. Selecciona todos los nombres de las películas sin que aparezcan duplicados.*/
SELECT DISTINCT title
FROM film;

/*2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".*/
SELECT title
FROM film
WHERE rating = 'PG-13';

/*3.Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su
descripción.*/
SELECT title, description
FROM film
WHERE description LIKE '%amazing%';

/*4.1. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos*/
SELECT title,length
FROM film
WHERE length > 120;

/*5.Recupera los nombres de todos los actores.*/
SELECT first_name
FROM actor;

/*6.Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.*/
SELECT first_name,last_name
FROM actor
WHERE last_name LIKE '%Gibson%';

/*7.Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.*/
SELECT first_name,actor_id
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

/*8.Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su
clasificación.*/
SELECT title,rating
FROM film
WHERE rating NOT IN ('R','PG-13');

/*9.Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la
clasificación junto con el recuento.*/
SELECT COUNT(film_id) AS cantidad_total_pelis,rating
FROM film
GROUP BY rating;

/*10.Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su
nombre y apellido junto con la cantidad de películas alquiladas.*/
SELECT r.customer_id,c.first_name,c.last_name,COUNT(r.rental_id) AS cantidad_total_pelis_alquiladas
FROM rental r
INNER JOIN customer c ON r.customer_id = c.customer_id
GROUP BY customer_id;

/*11.Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría
junto con el recuento de alquileres.*/
SELECT COUNT(r.rental_id) AS cantidad_peli_alquiladas,c.name
FROM rental r
INNER JOIN inventory i ON r.inventory_id=i.inventory_id
INNER JOIN film f ON i.film_id = f.film_id
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY cantidad_peli_alquiladas DESC;

SELECT COUNT(r.rental_id) AS total_peliculas_alquiladas,c.name AS categoria
FROM rental r
INNER JOIN inventory i ON r.inventory_id=i.inventory_id
INNER JOIN film_category fc ON i.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY categoria
ORDER BY total_peliculas_alquiladas DESC;

/*12.Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y
muestra la clasificación junto con el promedio de duración.*/
SELECT rating AS clasificacion,AVG(length) AS promedio_duracion
FROM film
GROUP BY clasificacion;

/*13.Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".*/
SELECT a.first_name,a.last_name
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.title = 'Indian Love';

/*14.Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.*/
SELECT title
FROM film
WHERE description LIKE '%dog%' OR '%cat%';

/*15.-3. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.*/
SELECT title
FROM film
WHERE release_year BETWEEN 2005 AND 2010;
