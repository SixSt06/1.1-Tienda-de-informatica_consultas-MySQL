CREATE DATABASE IF NOT EXISTS Tienda;

Use Tienda;

Create Table if not exists Fabricantes(
	id int auto_increment primary key,
	nombre nvarchar(50)
);

Create Table if not exists Productos(
	id int auto_increment primary key,
    nombre nvarchar(50),
    precio double,
    id_fabricante int not null,
    foreign key (id_fabricante) references fabricantes(id)
);

INSERT INTO fabricantes(id, nombre) 
VALUES(1, 'Asus'),
(2, 'Lenovo'),
(3, 'Hewlett-Packard'),
(4, 'Samsung'),
(5, 'Seagate'),
(6, 'Crucial'),
(7, 'Gigabyte'),
(8, 'Huawei'),
(9, 'Xiaomi');

Insert into Productos (id, nombre, precio, id_fabricante)
values
(1, "Disco duro SATA3 1TB", 89.99, 5),
(2, 'Memoria RAM DDR4 8GB', 120, 6),
(3, 'Disco SSD 1 TB', 150.99, 4),
(4, 'GeForce GTX 1050Ti', 185, 7),
(5, 'GeForce GTX 1080 Xtreme', 755, 6),
(6, 'Monitor 24 LED Full HD', 202, 1),
(7, 'Monitor 27 LED Full HD', 245.99, 1),
(8, 'Portátil Yoga 520', 559, 2),
(9, 'Portátil Ideapd 320', 444, 2),
(10, 'Impresora HP Deskjet 3720', 59.99, 3),
(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);


