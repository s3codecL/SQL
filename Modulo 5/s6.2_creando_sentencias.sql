--1. Listar todos los arriendos con las siguientes columnas: Folio, Fecha, Días, ValorDia, NombreCliente, RutCliente.  

SELECT a.folio, a.fecha, a.dias, a.valordia, c.nombre, c.rut FROM arriendo a 
INNER JOIN cliente c ON a.cliente_rut = c.rut;

--2. Listar los clientes sin arriendos. 

SELECT c.rut, c.nombre, c.correo, c.direccion, c.celular FROM cliente c 
LEFT JOIN arriendo a ON c.rut = a.cliente_rut 
WHERE a.cliente_rut IS NULL;

--3. Liste RUT y Nombre de las tablas empresa y cliente. 

SELECT e.rut, e.nombre, c.rut, c.nombre FROM empresa e, cliente c;

--4. Liste la cantidad de arriendos por mes.

SELECT date_trunc('month', fecha) as Mes, count(*) as Cantidad_Arriendos FROM arriendo 
GROUP BY Mes;

-- * Listar el nombre de todas las herramientas arrendadas en el año 2021 y el total facturado por cada herramienta
SELECT h.nombre, SUM(a.dias*a.valordia) as Total_Facturado FROM herramienta h 
INNER JOIN arriendo a ON h.idherramienta = a.herramienta_idherramienta 
WHERE EXTRACT(YEAR FROM a.fecha) = 2021 
GROUP BY h.nombre;

	