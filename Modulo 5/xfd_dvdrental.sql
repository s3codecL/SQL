--4. Construye las siguientes consultas: 
--• Aquellas usadas para insertar, modificar y eliminar un Customer, Staff y Actor. 

INSERT INTO public.actor
(first_name, last_name, last_update)
VALUES('Martin', 'Andrade', now());

UPDATE public.staff
SET first_name='Gustavo', last_name='Andrade', email='gandradev@gmail.com', username='gandradev', "password"='12345', last_update=now()
WHERE staff_id=1;

DELETE FROM public.customer
WHERE customer_id=nextval('customer_customer_id_seq'::regclass);


--• Listar todas las "rental" con los datos del "customer" dado un año y mes. 

SELECT
customer.first_name,
customer.last_name,
customer.customer_id,
rental.rental_id,
rental.rental_date,
customer.store_id,
customer.email,
customer.address_id,
customer.create_date
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE EXTRACT(YEAR FROM rental.rental_date) = 2005
AND EXTRACT(MONTH FROM rental.rental_date) = 6;

--• Listar Número, Fecha (payment_date) y Total (amount) de todas las "payment". 

SELECT payment_id, payment_date, amount FROM payment
GROUP BY payment_id;

--• Listar todas las "film" del año 2006 que contengan un (rental_rate) mayor a 4.0.  

SELECT * FROM film WHERE release_year = 2006 AND rental_rate > 4.0
ORDER BY film_id DESC;

--5. Realiza un Diccionario de datos que contenga el nombre de las tablas y columnas, si éstas pueden ser nulas, y su tipo de dato correspondiente. 

SELECT c.table_name AS tabla, c.column_name AS columna, c.is_nullable, c.data_type
FROM information_schema.columns c
WHERE c.table_schema = 'public';