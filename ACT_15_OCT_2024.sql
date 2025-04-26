/*mostrar el contenido de articulo*/ 

SELECT *
FROM 'articulos'


/**/
SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos;

/*mostrar el resultado anterior ordenados por cveart*/

SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos
Order by cveart;

/*ahora de manera decedente*/
SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos
Order by cveart DESC;

/*SE PUEDE USAR LA POSIICION EN VEZ DEL NOMBRE*/
SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos
Order by 2

/*ORDENADO POR VARIAS COLUMNAS*/
SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos
Order by 1, 2


/*EL NUMERO EN ORDER BY SE PUEDE USAR CUANDO EL LUGAR DE UNA COLUMNA SE TIENE 
UNA FORMULA */

SELECT cveart, nombre, precio * existencias as "monto de inventario"
From articulos
Order by 3

/*DESPLEGAR LAS FACTURAS ORDENADA POR FECHA*/
SELECT *
FROM Facturas
ORDER BY fecha ASC;

SELECT *
FROM Facturas
ORDER BY fecha;

/*MOSTRAR FOLIO Y LA SUMA DE SU Total y el iba de sus facturas ordenados por fecha*/
SELECT FOLIO, subtotal+iva
FROM Facturas
ORDER BY fecha;/*ORDER BY LLEVA UN CAMPO DE SELECT*/

/*MOSTRAR LOS CLIENTES ORDENADOS POR RFC*/
SELECT *
FROM Clientes
ORDER BY RFC;

/*MOSTRAR EL CONTENIDO DE LINEAS*/

SELECT *
FROM Lineas;
