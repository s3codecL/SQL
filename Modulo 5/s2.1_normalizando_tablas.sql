-- Creación de las tablas normalizadas
CREATE TABLE Clientes (
  IdCliente INT PRIMARY KEY,
  Cliente VARCHAR(50),
  Ciudad VARCHAR(50)
);

CREATE TABLE Articulos (
  CodigoArticulo INT PRIMARY KEY,
  Articulo VARCHAR(50),
  Precio MONEY
);

CREATE TABLE Ordenes (
  IdOrden INT PRIMARY KEY,
  Fecha DATE,
  IdCliente INT REFERENCES Clientes(IdCliente)
);

CREATE TABLE CantidadOrdenes (
  IdOrden INT REFERENCES Ordenes(IdOrden),
  NroLinea INT,
  Cantidad INT,
  PRIMARY KEY (IdOrden, NroLinea)
);

CREATE TABLE DetallesOrdenes (
  IdOrden INT REFERENCES Ordenes(IdOrden),
  NroLinea INT,
  CodigoArticulo INT REFERENCES Articulos(CodigoArticulo),
  PRIMARY KEY (IdOrden, NroLinea)
);

-- Insertar datos a las tablas
INSERT INTO Clientes (IdCliente, Cliente, Ciudad) VALUES
  (101, 'Martin', 'Santiago'),
  (107, 'Herman', 'Valparaiso'),
  (110, 'Pedro', 'Concepcion');
 
INSERT INTO Articulos (CodigoArticulo, Articulo, Precio) VALUES
  (3141, 'Funda', 10.00),
  (3786, 'Red', 35.00),
  (4011, 'Raqueta', 65.00),
  (5794, 'Paq-6', 5.00),
  (9132, 'Paq-3', 4.75);
 
 -- * Cambiar tipo de datos a la columna precio en la tabla Articulos
-- ALTER TABLE public.articulos ALTER COLUMN precio TYPE numeric USING precio::numeric;

INSERT INTO Ordenes (IdOrden, Fecha, IdCliente) VALUES
  (2301, '2020-02-23', 101),
  (2302, '2020-02-25', 107),
  (2303, '2020-02-27', 110);

 INSERT INTO CantidadOrdenes (IdOrden, NroLinea, Cantidad) VALUES
  (2301, 1, 3),
  (2301, 2, 6),
  (2301, 3, 8),
  (2302, 1, 4),
  (2303, 1, 2),
  (2303, 2, 2);
 
INSERT INTO DetallesOrdenes (IdOrden, NroLinea, CodigoArticulo) VALUES
  (2301, 1, 3786),
  (2301, 2, 4011),
  (2301, 3, 9132),
  (2302, 1, 5794),
  (2303, 1, 4011),
  (2303, 2, 3141);

 -- Consulta de las tablas
select * from articulos a;
select * from cantidadordenes c; 
select * from clientes c; 
select * from detallesordenes d; 
select * from ordenes o
