- #####################
-- ### DIA # 6 - Examen ###
-- #####################

-- Comando general para revisión de bases de datos creadas
show databases;

-- Crear base de datos
create database dia6;

-- Utilizar BBDD dia6
use dia6;

-- Crear tabla departamento
create table departamento(
	id int primary key,
    nombre varchar(50) not null
);

-- Crear tabla profesor
create table profesor(
	id int primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento date,
    sexo enum('H','M'),
    id_departamento int,
    foreign key(id_departamento) references departamento(id)
);

-- Crear tabla grado
create table grado(
	id int primary key,
    nombre varchar(100) not null
);

-- Crear tabla asignatura
create table asignatura(
	id int primary key,
    nombre varchar(100) not null,
    creditos float not null,
    tipo enum('básica', 'obligatoria', 'optativa') not null,
    curso tinyint(3) not null,
    cuatrimestre tinyint(3) not null,
    id_profesor int,
    foreign key(id_profesor) references profesor(id),
    id_grado int, 
    foreign key(id_grado) references grado(id)
);

-- Crear tabla curso escolar
create table curso_escolar(
	id int primary key,
    anyo_inicio year(4) not null,
    anyo_fin year(4) not null
);

-- Crear tabla alumno
create table alumno(
	id int primary key,
    nif varchar(9),
    nombre varchar(25) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    ciudad varchar(25) not null,
    direccion varchar(50) not null,
    telefono varchar(9),
    fecha_nacimiento date,
    sexo enum('H','M')
);

-- Crear tabla alumno se matricula asignatura
create table alumno_se_matricula_asignatura(
	id_alumno int,
    foreign key(id_alumno) references alumno(id),
    id_asignatura int,
    foreign key(id_asignatura) references asignatura(id),
    id_curso_escolar int,
    foreign key(id_curso_escolar) references curso_escolar(id)
);

show tables;


