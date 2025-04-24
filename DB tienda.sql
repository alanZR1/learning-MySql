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
foreign key (id_fabricante) references fabricante(id)
);

insert into fabricante values (1, 'Asus');
insert into fabricante values (2, 'Lenovo');
insert into fabricante values (3, 'Helwett-Packard');
insert into fabricante values (4, 'Samsung');
insert into fabricante values (5, 'Seagate');
insert into fabricante values (6, 'Crucial');
insert into fabricante values (7, 'Gigabyte');
insert into fabricante values (8, 'Huawei');
insert into fabricante values (9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5); 
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6); 
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4); 
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7); 
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6); 
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1); 
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1); 
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2); 
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2); 
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3); 

SELECT nombre FROM producto;

SELECT nombre, precio FROM producto;

SELECT* FROM producto; 

SELECT nombre, precio*0.85 AS precio_en_euros FROM producto;

SELECT nombre AS 'nombre de producto', precio * 0.85 AS 'euros' FROM producto;

SELECT UPPER(nombre) AS nombre_mayuscula, precio FROM producto;

SELECT LOWER(nombre) AS nombre_minuscula, precio FROM producto;




