--• Inserte los datos de una empresa.:

INSERT INTO empresa (rut, nombre, direccion, telefono, correo, web) VALUES 
('76555555-k', 'Ceva Man', 'Av. 5 de Abril 2385', '+56912345678', 'avalenzuela@cevaman.com', 'www.Ceva Man.com');

--• Inserte 2 tipos de vehículo:

INSERT INTO tipovehiculo (idtipovehiculo, nombre) VALUES 
(1, 'Auto'), (2, 'Camioneta');

--• Inserte 3 clientes:

INSERT INTO cliente (rut, nombre, correo, direccion, celular, alta) VALUES 
('14234234-4', 'Felipe Gonzalez', 'fgonzalez@cevaman.com', 'Calle Olimpo 1233', '+56923456789', 'S'),
('16123123-5', 'Gustavo Andrade', 'gandrade@cevaman.com', 'Calle Zeus 7899', '+56945678901', 'S'),
('18345345-3', 'Jose Cordova', 'jcordova@cevaman.com', 'Calle Hercules 4566', '+56934567890', 'S');

--• Inserte 2 marcas:

INSERT INTO marca (idmarca, nombre) VALUES 
(1, 'Toyota'), (2, 'Nissan');

--• Inserte 5 vehículos:

INSERT INTO vehiculo (idvehiculo, patente, marca, modelo, color, precio, frecuenciamantencion, marca_idmarca, tipovehiculo_idtipovehiculo) VALUES 
(1, 'AB1234', 'Toyota', 'Corolla', 'Blanco', 6990000, 8000, 1, 1), 
(2, 'CD5678', 'Nissan', 'Frontier', 'Negro', 19500000, 10000, 2, 2), 
(3, 'EF9012', 'Toyota', 'Yaris', 'Azul', 8540000, 8000, 1, 1), 
(4, 'GH3456', 'Nissan', 'X-Trail', 'Gris', 12290000, 8000, 2, 2), 
(5, 'IJ7890', 'Toyota', 'Hilux', 'Rojo', 16780000, 10000, 1, 2);

--• Elimina el último cliente:

DELETE FROM cliente WHERE rut = '18345345-3';

--• Inserte 1 venta para cada cliente:

INSERT INTO venta (folio, fecha, monto, vehiculo_idvehiculo, cliente_rut) VALUES 
(1, '2021-10-01', 19500000, 2, '14234234-4'),
(2, '2021-10-02', 8540000, 3, '16123123-5');

--• Modifique el nombre del segundo cliente:

UPDATE cliente SET nombre = 'Martin Andrade' WHERE rut = '16123123-5';

--• Liste todas las ventas:

SELECT * FROM venta;

--• Liste las ventas del primer cliente:

SELECT * FROM venta WHERE cliente_rut = '14234234-4';

--• Obtener la patente de todos los vehículos:

SELECT patente FROM vehiculo;