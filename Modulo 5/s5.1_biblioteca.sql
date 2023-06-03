--1. Crear tabla "editoriales", con los atributos código y nombre. Definir el código como llave primaria.

CREATE TABLE editoriales (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(50)
);

--2. Crear tabla "libros", con los atributos código, título, y codigoeditorial. 
--Definir el código como llave primaria y codigoeditorial como llave foránea, referenciando a la tabla editoriales.

CREATE TABLE libros (
  codigo INT PRIMARY KEY,
  titulo VARCHAR(50),
  codigoeditorial INT,
  FOREIGN KEY (codigoeditorial) REFERENCES editoriales(codigo)
);

--3. Insertar editoriales y libros, de acuerdo con:

--Título Autor Editorial Precio 
--Don Quijote de La Mancha I  Miguel de Cervantes  Anaya 150 
--El principito  Antoine SaintExupery  Andina 120 
--El príncipe  Maquiavelo  S.M. 180 
--Diplomacia  Henry Kissinger  S.M. 170 
--Don Quijote de La Mancha II  Miguel de Cervantes  Anaya 140 

INSERT INTO editoriales (codigo, nombre) VALUES 
(1, 'Anaya'), 
(2, 'Andina'), 
(3, 'S.M.');

INSERT INTO libros (codigo, titulo, codigoeditorial) values
(1, 'Don Quijote de La Mancha I', 1), 
(2, 'El principito', 2), 
(3, 'El príncipe', 3), 
(4, 'Diplomacia', 3), 
(5, 'Don Quijote de La Mancha II', 1);

--4. Modificar la tabla "libros", agregando la columna autor y precio.

ALTER TABLE public.libros ADD autor varchar NULL;
ALTER TABLE public.libros ADD precio numeric NULL;


--5. Agregar autor y precio a los libros ya ingresados. 

UPDATE libros SET autor = 'Miguel de Cervantes', precio = 23600 WHERE codigo = 1;

UPDATE libros SET autor = 'Antoine SaintExupery', precio = 6000 WHERE codigo = 2;

UPDATE libros SET autor = 'Maquiavelo', precio = 7900 WHERE codigo = 3;

UPDATE libros SET autor = 'Henry Kissinger', precio = 22000 WHERE codigo = 4;

UPDATE libros SET autor = 'Miguel de Cervantes', precio = 16300 WHERE codigo = 5;

--6. Insertar 2 nuevos libros. 

INSERT INTO libros (codigo, titulo, codigoeditorial, autor, precio)VALUES 
(6, 'Cien años de soledad', 2, 'Gabriel Garcia Marquez', 11000),
(7, 'El Alquimista', 3, 'Paulo Coelho', 10900);

--7. Eliminar los libros de la editorial Anaya, solo en memoria (ROLLBACK).
--select from editoriales where nombre = 'anaya';

BEGIN;
DELETE FROM editoriales WHERE nombre = 'Anaya';
ROLLBACK;

--8. Actualizar el nombre de la editorial Andina a Iberlibro en memoria
-- y actualizar el nombre de la editorial S.M. a Mountain en disco duro (SAVEPOINT / ROLLBACK TO). 
BEGIN;
SAVEPOINT editorial_update; 
UPDATE editoriales SET nombre = 'Iberlibro' WHERE codigo = 2;
ROLLBACK;

SAVEPOINT editorial_update_hard;
UPDATE editoriales SET nombre = 'Mountain' WHERE codigo = 3;
ROLLBACK TO editorial_update;


