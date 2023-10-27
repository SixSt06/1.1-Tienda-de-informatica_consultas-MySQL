Use Tienda;

-- Lista el nombre de todos los productos que hay en la tabla producto.
Select nombre from productos;

-- Lista los nombres y los precios de todos los productos de la tabla producto.
Select nombre, precio from productos;

-- Lista todas las columnas de la tabla producto.
Select * from productos;

-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
Select nombre, precio * 19.9, precio * 18.33 from productos;

/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). 
Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.*/
Select nombre as "Nombre de producto", precio * 19.9 as "Euros", precio * 18.33 as "Dolares" from productos;

-- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre), precio FROM productos;

-- Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
SELECT LOWER(nombre), precio FROM productos;

/*Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros 
caracteres del nombre del fabricante.*/
Select nombre, left(nombre, 2) from fabricantes;

-- Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
Select nombre, round(precio) from productos;

/*Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del 
precio para mostrarlo sin ninguna cifra decimal*/
SELECT nombre, CAST(precio AS SIGNED) AS PrecioSinDecimales FROM productos;

-- Lista el identificador de los fabricantes que tienen productos en la tabla producto
Select id_fabricante from productos;

/*Lista el identificador de los fabricantes que tienen productos en la tabla producto, 
eliminando los identificadores que aparecen repetidos.*/
Select DISTINCT id_fabricante from productos;

-- Lista los nombres de los fabricantes ordenados de forma ascendente.
Select nombre from fabricantes order by nombre asc;

-- Lista los nombres de los fabricantes ordenados de forma descendente.
Select nombre from fabricantes order by nombre desc;

/*Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y 
en segundo lugar por el precio de forma descendente.*/
Select nombre, precio from productos order by nombre asc, precio desc


