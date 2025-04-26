/*obtener el  maximo salario que no sean gerente*/ 
SELECT MAX(salario) AS max_salario_no_gerente
FROM (
    SELECT salario
    FROM empleados
    WHERE puesto != 'Gerente'
) AS subconsulta;

/**/
SELECT salario AS max_salario
FROM empleados
WHERE salario = (SELECT MAX(salario) FROM empleados);


/**/
WHERE COLUMNA COMPARADOR (SELECT
FROM
WHERE COLUMNA COMPARADOR (SUBQUERY))
GROUP BY 
HAVING FUNCION COMPARADOR (SUBQUERY))

SELECT *
FROM empleados
WHERE salario = 
( SELECT MAX(salario)
FROM empleados
WHERE PUESTO <> 'GERENTE')

/*NOMBRE APELLIDO Y PUESTO DE QUIEN GANA MENOS*/

SELECT *
FROM empleados
WHERE salario = 
( SELECT MIN(salario)
FROM empleados)

/*DESPLEGAR EL NOMBRE COMPLETO Y NOMBRE DEL DEPARTAMENTO, 
QUE SIENDO MUJER GANE MENOS SALRIO*/

SELECT CONCAT(e.nombre, ' ', e.apellido) AS nombre_completo, d.nomdepto
FROM empleados e, departamentos d
WHERE e.NUMDEPTO = d.CLAVEDEPTO
  AND e.salario = (
      SELECT MIN(salario)
      FROM empleados
      WHERE genero = 'F'
  )
  AND e.genero = 'F';

/*en liste CLAVEDEPTO que gana por conncepto de comision,mas que todos*/

SELECT CLAVEDEPTO
FROM empleados
GROUP BY 
ORDER BY SUM(COMISION) DESC
LIMIT 1;


SELECT sum(COMISION)
from empleados
GROUP by NUMDEPTO



SELECT sum(COMISION)
from empleados
GROUP by NUMDEPTO
HAVING sum(COMISION)
>= ALL
(SELECT sum(COMISION)
from empleados
GROUP by NUMDEPTO)


/*mostrar el puesto que por salario gana mejor que todos*/

SELECT puesto
FROM empleados
WHERE salario = (
    SELECT MAX(salario)
    FROM empleados
);


/* TOTAL DE SALARIO POR PUESTO*/
SELECT PUESTO
FROM empleados
GROUP BY PUESTO

HAVING SUM (salario)>= (SELECT SUM(salario)
ALL FROM empleados
GROUP BY PUESTO)


MAYOR IGUAL ALL ES UN AND 

/*OBTENER EL NIVEL DE ESTUDIOS QUE GANA MENOS POR COMISION*/

SELECT nivelest
FROM empleados
WHERE comision = (
    SELECT MIN(comision)
    FROM empleados
);

/*obtener el salario promedio de la empresa*/ 

SELECT AVG(salario) AS salario_promedio
FROM empleados;


/*mostra el numero de departamentos que cuya suma sea mayor al promedio salario en general*/




/*modificar el siguinete comando para que muestre los departamentos que tienen que ver con
los proyectos cuyo nombre tiene la palabara apoyo o soporte*/

SELECT NOMDEPTO
FROM departamentos d
WHERE EXISTS (
    SELECT 1
    FROM empleados e, proyectos p
    WHERE e.NUMDEPTO = d.CLAVEDEPTO
      AND p.NUMPROY = e.MATRICULA
      AND (p.NOMPROY LIKE '%Apoyo%' OR p.NOMPROY LIKE '%SOPORTE%')
);






