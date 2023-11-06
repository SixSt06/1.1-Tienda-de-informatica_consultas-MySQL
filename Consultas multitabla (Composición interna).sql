-- 1.- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos
Select p.nombre, p.precio, f.nombre from productos as p join fabricantes as f on f.id = p.id_fabricante;

/* 2.-  Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. 
Ordene el resultado por el nombre del fabricante, por orden alfabético.*/
Select p.nombre, p.precio, f.nombre 
from productos as p join fabricantes as f on f.id = p.id_fabricante
order by p.nombre desc;


