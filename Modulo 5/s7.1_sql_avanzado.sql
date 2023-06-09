--1. Listar los clientes sin ventas por medio de una subconsulta. 

SELECT * FROM cliente 
WHERE rut NOT IN(SELECT DISTINCT cliente_rut FROM venta);

--2. Listar todas ventas con las siguientes columnas: Folio, Fecha, Monto, NombreCliente, RutCliente.  

SELECT venta.folio, venta.fecha, venta.monto, cliente.nombre AS nombrecliente, cliente.rut AS rutcliente 
FROM venta 
INNER JOIN cliente ON venta.cliente_rut = cliente.rut;

--3. Clasificar los clientes según la siguiente tabla:   

--|total de ventas anuales entre | clasificación|
--|0 a 1000000					  | Standar   |
--|1000001 y 3000000			  | Gold		  |
--|3000001 o más 				  | Premiun	 	  |

SELECT cliente.rut, cliente.nombre,
CASE
	WHEN SUM(venta.monto) BETWEEN 0 AND 1000000 THEN 'Standar'
	WHEN SUM(venta.monto) BETWEEN 1000001 AND 3000000 THEN 'Gold'
	ELSE 'Premiun' 
END AS clasificacion 
FROM venta 
INNER JOIN cliente ON venta.cliente_rut = cliente.rut 
GROUP BY cliente.rut, cliente.nombre;

--4. Por medio de una subconsulta, listar las ventas con la marca del vehículo más vendido. 

SELECT venta.folio, vehiculo.marca, vehiculo.modelo, vehiculo.color, venta.fecha, venta.monto 
FROM venta 
INNER JOIN vehiculo ON venta.vehiculo_idvehiculo = vehiculo.idvehiculo 
WHERE vehiculo.marca = (SELECT marca.nombre 
						FROM marca 
						INNER JOIN vehiculo ON marca.idmarca = vehiculo.marca_idmarca 
						INNER JOIN venta ON vehiculo.idvehiculo = venta.vehiculo_idvehiculo 
						GROUP BY marca.nombre 
						ORDER BY COUNT(*) DESC 
						LIMIT 1);
						
