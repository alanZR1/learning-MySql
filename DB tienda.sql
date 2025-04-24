create database tienda;
use tienda;

create table fabricante(
id int auto_increment primary key,
nombre varchar (100)
);

create table producto (
id int auto_increment primary key,
nombre varchar (100),
precio decimal (10,2),
id_fabricante int,
foreign key (id_fabricante) references fabricante (id)
);