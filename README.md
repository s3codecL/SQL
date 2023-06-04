# [PSQL by s3codecL](https://github.com/s3codecL)
## M5 Entender el control de transacciones para un buen manejo de las operaciones en los sistemas de base de datos.
#### En el siguiente módulo revisaremos conceptos básicos sobre sql para desarrollar los ejercicios planteados.

<details><summary>ESTRUCTURA DEL MÓDULO 5</summary>
<p>

```"s1.1_name.py"( 
s= sesión, 1.= orden sesión, 
1_= REBOUND EXERCISES, "EJERCICIO DE COMPROBACIÓN" 
2_= DRILLING "EVALUACIÓN SESIÓN" 
xfd = FINAL DRILLING 
)
```

</p>
</details>

- [x] Definición de base de datos. ./
- [ ] Modelos de bases de datos. 
- [ ] Bases de Datos Relacionales.
- [ ] Componentes de una base de datos relacional.
- [ ] RDBMS (Relational Database Management System).
- [ ] SQL (Structured Query Language).
- [ ] Conceptos

### DEFINICIÓN DE BASE DE DATOS
Desde un punto de vista general, una base de datos es todo aquel repositorio o almacén de datos que pertenecen a un mismo contexto, y desde donde se puede extraer información.
Desde el punto de vista informático, una base de datos se define como un sistema capaz de administrar y procesar datos, y que cuenta con una arquitectura de cliente - servidor.

- [x] Definición de base de datos.
- [x] Modelos de bases de datos. 
- [ ] Bases de Datos Relacionales.
- [ ] Componentes de una base de datos relacional.
- [ ] RDBMS (Relational Database Management System).
- [ ] SQL (Structured Query Language).
- [ ] Conceptos

### MODELOS DE BASES DE DATOS
Existen varias, siendo las más conocidas:
+ ***Relacionales:*** son una colección de elementos de datos, organizados en un conjunto de
tablas formalmente descritas, desde donde se puede acceder a los datos o volver a
montarlos de muchas maneras diferentes, sin tener que reorganizar las tablas de la base. La
interfaz estándar de programa de usuario, y aplicación a una base de datos relacional, es el
Lenguaje de Consultas Estructuradas (SQL). Algunos ejemplos, son: PostgreSQL, MySQL,
Oracle y SQL Server.
+ ***No Relacionales:*** también conocidas como NoSQL, pensadas para modelos de datos
específicos, con esquemas flexibles, y ampliamente reconocidas porque son fáciles de
desarrollar, por su funcionalidad y el rendimiento a escala. Algunos ejemplos, son:
Cassandra, Redis, MongoDB y CouchDB.
+ ***Jerárquicas:*** útiles en aplicaciones que manejan un gran volumen de información. Durante
años fueron uno de los modelos de gestión de bases de datos más utilizados, pero con el
tiempo y la aparición de otros más ágiles, han ido cayendo en desuso. 

### BASES DE DATOS RELACIONALES
Tienen dos componentes principales: la “Entidad” y las “Relaciones”
***Entidad:*** es la unidad que representa lógicamente un conjunto finito de datos del mismo tipo, por
ejemplo: Clientes, Ventas, Pagos, entre otros; donde cada uno de estos son entidades.

| Entidades  |
| ------------- |
| Cliente  |
| Venta  |
| Producto  |

###### Representación de las entidades de una BD

***Relación:*** une lógicamente dos o más tablas, para indicar qué dependencias pueden existir entre
ellas, es decir, indica la forma en que se relacionan las tablas

- [x] Definición de base de datos.
- [x] Modelos de bases de datos. 
- [x] Bases de Datos Relacionales.
- [x] Componentes de una base de datos relacional.
- [ ] RDBMS (Relational Database Management System).
- [ ] SQL (Structured Query Language).
- [ ] Conceptos

### COMPONENTES DE UNA BASE DE DATOS RELACIONAL
Encontramos los siguientes:
+ Base de datos.
+ Tabla.
+ Atributos.
+ Relaciones.
+ Índices.

- [x] Definición de base de datos.
- [x] Modelos de bases de datos. 
- [x] Bases de Datos Relacionales.
- [x] Componentes de una base de datos relacional.
- [x] RDBMS (Relational Database Management System).
- [ ] SQL (Structured Query Language).
- [ ] Conceptos

### RDBMS (RELATIONAL DATABASE MANAGEMENT SYSTEM)
Es un programa que nos permite gestionar bases de datos relacionales. Para entenderlo mejor,
previo a los RDBMS estaban los DBMS (Relational Database Management System) para gestionar
base de datos. Se compone principalmente de:
+ ***Interfaz:*** permite al usuario comunicarse con los DBMS.
+ ***Database language engine:*** motor de base de datos para interpretar las consultas, y
realizar las acciones necesarias usando su lenguaje.
+ ***Query optimizer:*** para optimizar el lenguaje de consulta, con el objetivo de poder
ejecutar las consultas lo más rápido posible.
+ ***Database engine:*** para gestionar objetos de la base de datos, como lo son las tablas
o vistas DBMS Management Component. Son componentes de gestión encargados
de realizar copias de seguridad, monitorización de rendimiento, seguridad, entre
otros.

- [x] Definición de base de datos.
- [x] Modelos de bases de datos. 
- [x] Bases de Datos Relacionales.
- [x] Componentes de una base de datos relacional.
- [x] RDBMS (Relational Database Management System).
- [x] SQL (Structured Query Language).
- [ ] Conceptos

### SQL
Structured Query Language (Lenguaje estructurado de consultas), es un lenguaje creado para la
definición y manipulación de bases de datos relacionales. Su beneficio es que facilita la
administración de datos almacenados.

- [x] Definición de base de datos.
- [x] Modelos de bases de datos. 
- [x] Bases de Datos Relacionales.
- [x] Componentes de una base de datos relacional.
- [x] RDBMS (Relational Database Management System).
- [x] SQL (Structured Query Language).
- [x] Conceptos

### Conceptos

#### ATRIBUTO
Propiedades o características que posee la entidad de la cual se desea guardar información.
#### BASE DE DATOS
Colección organizada de información estructurada o datos, típicamente almacenados
electrónicamente en un sistema de computadora.
#### BASE DE DATOS RELACIONAL
Colección de tablas que guardan información de forma estructurada.
####CARDINALIDAD
Número de entidades con la cual otra entidad se puede asociar mediante una relación binaria.
#### DDL
Lenguaje que permite a los programadores llevar a cabo las tareas de definición de estructuras
que almacenarán los datos, así como de los procedimientos y funciones que permitan
consultarlos.
#### DESNORMALIZACIÓN
Proceso de procurar optimizar el funcionamiento de una base de datos, por medio de agregar
datos redundantes.
#### DICCIONARIO DE DATOS
Listado de los datos que se usarán en el sistema. Éstos se encuentran detallados, y pueden ser
comprendidos entre los analistas de sistemas y los usuarios que tendrán acceso al documento.
#### DML
Lenguaje que permite a los usuarios de una base de datos llevar a cabo tareas de consulta, o
modificación de los datos contenidos en ella.
#### ENTIDAD
Unidad de una base de datos que contiene información. Ésta es una representación dentro de la
base de datos de un objeto, persona, empresa u otra cosa del mundo real, y como tal, posee
ciertos atributos que la diferencian del resto de entidades.
#### FOREING KEY
Campo de una columna que sirve para relacionar dos tablas. Éste se relaciona con la Primary
Key de otra tabla de la base de datos.
#### FORMAS NORMALES
Conjuntos de criterios que utilizamos para mejorar la estructura (normalizar) de las bases de
datos.
#### ÍNDICES
Estructura de datos que mejora la velocidad de las operaciones, por medio de un identificador
único de cada fila de una tabla, permitiendo un rápido acceso a los registros de ésta en una base
de datos.
#### INTEGRIDAD REFERENCIAL
Reglas que aseguran que los registros de las tablas relacionadas son válidos, y que no se borren
o cambien datos relacionados de forma accidental, produciendo errores de integridad.
#### MODELO DE DATOS
Representación, usualmente gráfica, de estructuras de datos.
#### MODELO RELACIONAL
Modelo de datos que permite visualizar la estructura de una base de datos, y las relaciones entre
éstos.
#### PRIMARY KEY
Columna o grupo de columnas que identifica, de forma exclusiva, cada fila de una tabla.
#### RELACIÓN
En las bases de datos, son asociaciones entre tablas que se crean utilizando sentencias de unión
para recuperar datos.
#### RESTRICCIÓN
Reglas y restricciones predefinidas que se aplican en una sola columna o en varias, relacionadas
a los valores permitidos en las columnas, para mantener la integridad, precisión y confiabilidad
de sus datos.
#### SCRIPT
Conjunto de comandos que se le da a un motor SQL, para indicarle lo que debe hacer y en qué
orden.
#### SERVIDOR
Tipo de software de servidor que permite la organización de la información, mediante el uso de
tablas, índices y registros.
#### SGBD
Sistema Gestor de Bases de Datos. Es un conjunto de programas no visibles, que administran y
gestionan la información que contiene una base de datos.
#### SQL
Lenguaje estándar para almacenar, manipular y recuperar datos en bases de datos.
#### TABLA
Tipo de modelado de datos, donde se guardan aquellos recogidos por un programa. Su estructura
general se asemeja a la vista de un programa de hoja de cálculo.

[s3codecL](https://github.com/s3codecL)
