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
Select nombre, precio from productos order by nombre asc, precio desc;

-- Devuelve una lista con las 5 primeras filas de la tabla fabricante.
select * from fabricantes limit 0,5;

-- Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
Select * from fabricantes limit 3,2;

-- Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)
Select nombre, precio from productos where precio order by precio limit 0,1;

-- Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)
Select nombre, precio from productos where precio order by  precio desc limit 0,1;

-- Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
Select nombre from productos where id_fabricante = 2;

-- Lista el nombre de los productos que tienen un precio menor o igual a 120€.
Select nombre from productos where precio <= 120;

-- Lista el nombre de los productos que tienen un precio mayor o igual a 400€.
Select nombre from productos where precio >= 400;

-- Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
Select nombre from productos where precio < 400;

-- Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.
Select * from productos where precio >80 and precio < 300;

-- 25.- Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.
Select * from productos where precio between 60 and 200;

-- 26.- Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.
Select * from productos where precio > 200 and id_fabricante=6;

-- 27.- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
Select * from productos  where id_fabricante = 1 or id_fabricante = 3 or id_fabricante = 5;

-- 28.- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.
Select * from productos  where id_fabricante in (1,3,5);

/*29.- Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). 
Cree un alias para la columna que contiene el precio que se llame céntimos.*/
Select nombre, precio * 100 as 'precio en centimos' from productos;

-- 30.- Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.
Select nombre from fabricantes where nombre like 'S%';

-- 31.- Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.
Select nombre from fabricantes where nombre like '%E';

-- 32.- Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.
Select nombre from fabricantes where nombre like '%w%';

-- 33.- Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
Select nombre from fabricantes where length(nombre) = 4;

-- 34.- Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.
Select nombre from productos where nombre like "%Portatil%";

-- 35.- Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
Select nombre from productos where nombre like "%Monitor%" and precio < 215; 

/*36.- Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. 
Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).*/
Select nombre, precio from productos where precio >= 180 order by precio desc, nombre asc;








