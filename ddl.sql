create database if not exists medisistema_examen;

use medisistema_examen;

create table medicos (
    id int primary key auto_increment,
    nombre varchar(100) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    horario varchar(20) not null
);

create table empleados (
    id int primary key auto_increment,
    nombre varchar(100) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50),
    horario varchar(20) not null,
    tipo varchar(40) not null
);

create table paciente (
    id_paciente int primary key auto_increment,
    nombre varchar(100) not null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50)
);

create table medicos_pacientes (
	id_consulta int primary key auto_increment,
	id_paciente int,
	id_medicos int,
	foreign key (id_paciente) references paciente(id_paciente),
	foreign key (id_medicos) references medicos(id)
);
