--1. Inserte los datos de una empresa:

INSERT INTO empresa (rut, nombre, direccion, telefono, correo, web) 
VALUES ('90077007-7', 'Metsun Autoc', 'Calle Matinal 777', '+56998765432', 'contacto@metsun.com', 'www.metsun.com');

--2. Inserte 5 herramientas:

INSERT INTO herramienta (idherramienta, nombre, preciodia) VALUES 
(1, 'Martillo', 7980),
(2, 'Sierra Circular', 4550),
(3, 'Taladro', 25990),
(4, 'Soldador', 87490),
(5, 'Amoladora', 150750);

--3. Inserte 3 clientes:

INSERT INTO cliente (rut, nombre, correo, direccion, celular) VALUES 
('16123123-5', 'Gustavo Andrade', 'gandrade@cevaman.com', 'Calle Zeus 7899', '56945678901'),
('14234234-4', 'Felipe Gonzalez', 'fgonzalez@cevaman.com', 'Calle Olimpo 1233', '56923456789'),
('18345345-3', 'Jose Cordova', 'jcordova@cevaman.com', 'Calle Hercules 4566', '56934567890');

--4. Elimina el último cliente:

DELETE FROM cliente WHERE rut = '18345345-3';

--5. Elimina la primera herramienta:

DELETE FROM herramienta WHERE idherramienta = 1;

--6. Inserte 2 arriendos para cada cliente:

-- Arriendo 1 del Cliente 1
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)VALUES 
(1, '2023-01-01', 3, 10309, 'Tarjeta de Crédito', 2, '16123123-5');

-- Arriendo 2 del Cliente 1
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)VALUES 
(2, '2023-01-01', 3, 10309, 'Tarjeta de Crédito', 3, '16123123-5');

-- Arriendo 1 del Cliente 2
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)VALUES 
(3, '2023-03-30', 5, 20822, 'Cheque', 4, '14234234-4');

-- Arriendo 2 del Cliente 2
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)VALUES 
(4, '2023-03-30', 5, 35878, 'Cheque', 5, '14234234-4');

/* Arriendo 1 del Cliente 3 
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)
VALUES 
(5, '2023-05-05', 3, 10309, 'Efectivo', 2, '18345345-3');

-- Arriendo 2 del Cliente 3
INSERT INTO arriendo (folio, fecha, dias, valordia, garantia, herramienta_idherramienta, cliente_rut)
VALUES 
(6, '2023-05-05', 3, 800, 'Efectivo', 3, '18345345-3');*/

-- Nota: en el paso 4 se elimina el último cliente, no se pueden insertar datos --

--7. Modifique el correo electrónico del primer cliente:

UPDATE cliente SET correo = 'g.andrade.v@cevaman.com' WHERE rut = '16123123-5';

--8. Liste todas las herramientas:

SELECT * FROM herramienta;

--9. Liste los arriendos del segundo cliente:

SELECT * FROM arriendo WHERE cliente_rut = '14234234-4';

--10. Liste los clientes cuyo nombre contenga una a:

SELECT * FROM cliente WHERE nombre LIKE '%a%';

--11. Obtenga el nombre de la segunda herramienta insertada:

SELECT nombre FROM herramienta WHERE idherramienta = 2;

--12. Modifique los primeros 2 arriendos insertados con fecha 15/01/2020.

UPDATE arriendo SET fecha = '2020-01-15' WHERE folio in (1,2);

--13. Liste Folio, Fecha y ValorDia de los arriendos de enero del 2020.

SELECT folio, fecha, valordia FROM arriendo WHERE fecha >= '2020-01-01' AND fecha <= '2020-01-31';