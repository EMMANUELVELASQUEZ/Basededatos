SELECT NUMDEPTO, 
SUM(SALARIO+COMISION)
FROM EMPLEADOS
GROUP BY NUMDEPT
HAVING SUM(SALARIO+COMISION) 
< 200000


SELECT PUESTO, SUM(SALARIO) 
FROM empleados
GROUP BY PUESTO 
HAVING COUNT(*) > 4;


SELECT NUMDEPTO, COUNT(*)
FROM EMPLEADOS
GROUP BY NUMDEPTO
HAVING COUNT(*) > 5
AND SUM(SALARIO) < 123000



SELECT NIVELEST, SUM(SALARIO)
FROM EMPLEADOS
WHERE PUESTO <> 'GERENTE'
GROUP BY NIVELEST
HAVING SUM(SALARIO) < 11200


-- A. Lista aquellos puestos cuyo salario promedio sea mayor que $35000.
SELECT puesto, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY puesto
HAVING AVG(salario) > 35000;

-- B. Produce una lista que muestre por departamento: salario promedio y número de empleados,
-- excluyendo los empleados con puesto 'GERENTE' y los departamentos con menos de 4 empleados.
SELECT departamento, AVG(salario) AS salario_promedio, COUNT(*) AS numero_empleados
FROM empleados
WHERE puesto != 'GERENTE'
GROUP BY departamento
HAVING COUNT(*) >= 4;

-- C. Listar el promedio de salario más comisión para las personas de ventas, agrupadas por
-- departamento, pero solo para aquellos departamentos que tienen más de una persona de ventas.
SELECT NUMDEPTO, AVG(salario + comision) AS promedio_salario_comision
FROM empleados
WHERE puesto = 'VENTAS'
GROUP BY NUMDEPTO
HAVING COUNT(*) > 1;

-- D. Listar los proyectos macro que tienen más de 6 horas-hombre asignados. Excluir los valores nulos.

select sum (HORASHOMBRE),NUMPROYSUP
FROM 'proyectos'
WHERE NUMPROYSUP IS NOT NULL
GROUP BY NUMPROYSUP
HAVING SUM(HORASHOMBRE)>6

-- E. Encontrar el salario promedio para empleados solamente y contar el número de personas
-- encontradas, por nivel educativo, siempre y cuando tengan más de 3 personas.


SELECT AVG(SALARIO) , COUNT(*), NIVELEST
FROM EMPLEADOS
GROUP BY NIVELEST
HAVING COUNT(*)>3;

