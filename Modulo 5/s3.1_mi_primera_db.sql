-- Tabla empresa
create table empresa (
	rut varchar(10) not null primary key,
	nombre varchar(120)not null,
	direccion varchar(120) not null,
	telefono varchar(15) not null,
	correo varchar(80) not null,
	web varchar(50) not null
);

-- Tabla cliente
create table cliente(
	rut varchar(10) not null primary key,
	nombre varchar(120) not null,
	correo varchar(80) not null,
	direccion varchar(120) not null,
	celular varchar(15) not null,
	alta char(1) not null
);

-- Tabla marca
create table marca(
	idmarca numeric(12) not null primary key,
	nombre varchar(120) not null
);

-- Tabla tipovehiculo
create table tipovehiculo(
	idtipovehiculo numeric(12) not null primary key,
	nombre varchar(120) not null
);

-- Tabla vehiculo
create table vehiculo(
	idvehiculo numeric(12) not null primary key,
	patente varchar(10) not null,
	marca varchar(20) not null,
	modelo varchar(20) not null,
	color varchar(15) not null,
	precio numeric(12) not null,
	frecuenciamantencion numeric(5) not null,
	marca_idmarca numeric(12) not null references marca(idmarca),
	tipovehiculo_idtipovehiculo numeric(12) not null references tipovehiculo(idtipovehiculo)
);

-- Tabla venta
create table venta(
	folio numeric(12) not null primary key,
	fecha date not null,
	monto numeric(12) not null,
	vehiculo_idvehiculo numeric(12) not null unique references vehiculo(idvehiculo),
	cliente_rut varchar(10) not null references cliente(rut)
);

-- Tala mantencion
create table mantencion(
	idmantencion numeric(12) not null primary key,
	fecha date not null,
	trabajosrealizados varchar(1000) not null,
	venta_folio numeric(12) not null references venta(folio)
);