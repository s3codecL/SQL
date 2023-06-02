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
	celular varchar(15) not null
);

-- Tabla herramienta
create table herramienta(
	idherramienta numeric(12)not null primary key,
	nombre varchar(120) not null,
	preciodia numeric(12) not null
);

-- Tabla Arriendo
create table arriendo(
	folio numeric(12) not null primary key,
	fecha date not null,
	dias numeric(5) not null,
	valordia numeric(12) not null,
	garantia varchar(30) not null,
	herramienta_idherramienta numeric(12) not null references herramienta(idherramienta),
	cliente_rut varchar(10) not null references cliente(rut)
);