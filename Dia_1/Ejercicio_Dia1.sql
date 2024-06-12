-- #########################
-- #### EJERCICIO # 1 ###
-- #########################

-- Creación de la base de datos
create database tienda;

-- Creación de la base de datos "tienda"
use tienda;

-- Crear tabla fabricante
create table fabricante(
id int auto_increment primary key, 
nombre varchar(100)
);

-- Mostrar tablas
show tables;

-- Crear tabla producto
create table producto(
id int auto_increment primary key,
nombre varchar(100),
precio decimal (10,2),
id_fabricante int,
foreign key(id_fabricante) references fabricante(id)
);

-- Insertar información a fabricante
insert into fabricante values (1, 'Asus');
insert into fabricante values (2, 'Apple');
insert into fabricante values (3, 'Microsoft');
insert into fabricante values (4, 'Samsung');
insert into fabricante values (5, 'Huawei');
insert into fabricante values (6, 'Acer');
insert into fabricante values (7, 'Lg');
insert into fabricante values (8, 'Lenovo');
insert into fabricante values (9, 'Dell');

-- Insertar productos a la tabla
insert into producto values (1, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (2, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (3, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (4, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (5, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (6, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (7, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (8, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (9, 'Disco duro SATA3 1TB', 86.99, 5);
insert into producto values (10, 'Impresora Hp Deskjet 3720', 59.99, 3);

-- Revisar todos los datos creados de x tabla
select * from fabricante;

-- Revisar todos los datos creados de x tabla con un dato en específico
select * from fabricante where id=2;

-- Revisar x colomna de los datos creado de y tabla
select nombre from producto;

-- Revisar xy y colomna de los datos creado de z tabla
select id, nombre from producto;

-- Actualizar dato de x colomna
update producto set nombre='Campuslands' where id=10;

select * from producto;

-- Actualizar todas las filas a un nuevo nombre (No funciona en workbench)
update producto set nombre='Campuslands';

-- Eliminar un dato de la tabla 
delete from producto where id=10;
select * from producto;

-- Eliminar todos los datos de una tabla 
delete from producto;

truncate producto;

select * from producto;