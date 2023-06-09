--1. Listar los clientes sin arriendos por medio de una subconsulta.  

SELECT * FROM cliente
WHERE rut NOT IN (SELECT cliente_rut FROM arriendo);

--2. Listar todos los arriendos con las siguientes columnas: Folio, Fecha, Dias, ValorDia, NombreCliente, RutCliente.  

SELECT arriendo.folio, arriendo.fecha, arriendo.dias, arriendo.valordia, cliente.nombre AS NombreCliente, cliente.rut AS RutCliente
FROM arriendo, cliente
WHERE arriendo.cliente_rut = cliente.rut;

--3. Clasificar los clientes según la siguiente tabla:    

--|cantidad de arriendos mensuales entre | clasificación|
--|0 y 1					  			 | Standar      |
--|1 y 3			  					 | Gold		    |
--|3 o más 							     | Premiun	    |

SELECT cliente.nombre, 
	CASE 
		WHEN COUNT(arriendo.folio) BETWEEN 0 AND 1 THEN 'Standar'
		WHEN COUNT(arriendo.folio) BETWEEN 1 AND 3 THEN 'Gold'
		ELSE 'Premiun' 
	END AS Clasificacion
FROM cliente 
LEFT JOIN arriendo ON cliente.rut = arriendo.cliente_rut
GROUP BY cliente.rut;

--4. Por medio de una subconsulta, listar los clientes con el nombre de la herramienta más arrendada.

SELECT cliente.nombre, 
	(SELECT herramienta.nombre FROM herramienta
    INNER JOIN arriendo ON arriendo.herramienta_idherramienta = herramienta.idherramienta
    WHERE arriendo.cliente_rut = cliente.rut
    GROUP BY herramienta.nombre
    ORDER BY COUNT(*) DESC 
    LIMIT 1) AS HerramientaMasArrendada
FROM cliente;

