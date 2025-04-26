trae 2 articulos de las linea 351 mostrando los datos de linea tambien 
SELECT *
FROM lineas
ORDER BY nomlinea and cvelinea = 351






modificar el anterior comando moviendo la linea y el articulo





mostrar nombre y existencias de los articulos de la linea electronica

SELECT cvelinea,nomlinea
FROM Lineas
WHERE NOMLINEA = 'eletronica';


muestrame el subtotal masiva de los vendido de yolanda sandival


SELECT f.subtotal + f.iva 
from clientes c, facturas f
where c.cvecli = f.cvecli
and c.nomcli = 'yolanda saldivar'

mostrar el nombre del articulo y el producto de precio por cantidad para la factura de yolanda sandilvar

SELECT f.subtotal + f.iva 
from clientes c, facturas f
where c.cvecli = f.cvecli
and
and 
and c.nomcli = 'yolanda saldivar'