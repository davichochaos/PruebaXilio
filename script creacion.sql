create database Test

create table Empleados (
Id int identity(1,1) primary key,
Nombre varchar (40) not null,
Cargo varchar (30) not null,
Cedula varchar (10) not null,
Area varchar (30) not null) 

create table Maquinaria(
Id int identity(1,1) primary key,
Serie varchar(15) not  null,
Descripcion varchar(60) not null,
Estado bit default 'true' not null)

create table Asignaciones(
Id int identity(1,1) primary key,
IdEmpleado int not null FOREIGN KEY REFERENCES Empleados(Id),
IdMaquinaria int not null FOREIGN KEY REFERENCES Maquinaria(Id))