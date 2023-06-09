--1. Listar todos los vehículos que no han sido vendidos. 

SELECT * FROM vehiculo WHERE idvehiculo NOT IN (SELECT vehiculo_idvehiculo FROM venta);

--2. Listar todas las ventas de enero del 2020 con las columnas: Folio, FechaVenta, 
--MontoVenta, NombreCliente, RutCliente, Patente, NombreMarca, y Modelo. 

SELECT venta.folio, venta.fecha, venta.monto, cliente.nombre AS nombrecliente,
cliente.rut AS rutcliente, vehiculo.patente, marca.nombre AS nombremarca, vehiculo.modelo FROM venta 
INNER JOIN cliente ON venta.cliente_rut = cliente.rut 
INNER JOIN vehiculo ON venta.vehiculo_idvehiculo = vehiculo.idvehiculo 
INNER JOIN marca ON vehiculo.marca_idmarca = marca.idmarca 
WHERE venta.fecha >= '2020-01-01' 
AND venta.fecha <= '2020-01-31';

--3. Sumar las ventas por mes y marca del año 2020. 

SELECT EXTRACT(month from venta.fecha) as mes, marca.nombre AS nombremarca, sum(venta.monto) as total FROM venta
INNER JOIN vehiculo ON venta.vehiculo_idvehiculo = vehiculo.idvehiculo
INNER JOIN marca ON vehiculo.marca_idmarca = marca.idmarca
WHERE venta.fecha >= '2020-01-01' 
AND venta.fecha <= '2020-12-31'
GROUP BY mes, nombremarca;

--4. Listar Rut y Nombre de las tablas cliente y empresa. 

SELECT cliente.rut as rutcliente, cliente.nombre as nombrecliente, empresa.rut as rutempresa, empresa.nombre as nombreempresa
FROM cliente, empresa;