--1. Para crear la db desde el Shell de PostgreSQL:

CREATE db nuevo_curso

\c nuevo_curso; -- para utilizar la db

/*
*. crear tabla alumnos:

CREATE table alumnos (
	id serial PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INTEGER,
    direccion VARCHAR(100),
    telefono VARCHAR(20)
);

*. insertar datos en la tabla alumnos:

INSERT INTO alumnos (nombre, apellido, edad, direccion, telefono)
VALUES 
('Martín', 'Núñez', 15, 'Av. 10 de Octubre', '555-1234'),
('Romina', 'Cáceres', 15, 'Calle 5 de Mayo', '555-5678'),
('Gustavo', 'Valenzuela', 15, 'Av. Revolución', '555-8901');
*/

--2. Para crear 3 usuarios:

CREATE USER profesor PASSWORD 'p.12345';
CREATE USER alumno1 PASSWORD 'a.12345';
CREATE USER alumno2 PASSWORD 'a.12345';

--3. Para listar la db (todas):

\l

--4. Para ingresar a la base de db:

psql nuevo_curso
\c nuevo_curso

-- * listar tabla sobre la db
select * from alumnos
--delete from alumnos

-- los pasos con (*) representan pasos adicionales para mejorar la estructura de datos
--ALTER TABLE public.alumnos ADD id serial NULL DEFAULT 0001;
--ALTER TABLE public.alumnos ADD CONSTRAINT alumnos_pk PRIMARY KEY (id);
