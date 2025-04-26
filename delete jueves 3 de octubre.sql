
/*BORRA EMPLEADOS CON NIVEL DE ESTUDIO MENORES A 6
*/

DELETE FROM EMPLEADOS 
WHERE NIVELEST < 14;

/*
ELIMINA A LOS GERENTES
*/

DELETE FROM EMPLEADOS
WHERE PUESTO = 'GERENTES';


/*
CANCELA AQUELLOS QUE TIENE COMISION QUE TIENE O */
 
DELETE FROM EMPLEADOS 
WHERE COMISION = 0;


/*
elimina los departamentos que no tienen jefe*/

delete from departamentos
where clavejefe is null

/*elimina los departamentos cuyo departamento superior e01 que no son superior*/

DELETE from departamentos
where clavejefe <'E01'


/* BORRRA EL CONTENIDO DE LAS TABLAS */

DELETE FROM EMPLEADOS

DELETE FROM departamentos

DELETE FROM PROYECTOS


/*ELIMINAR LAS TABLAS*/
DROP TABLE EMPLEADOS
DROP TABLE departamentos
DROP TABLE PROYECTOS

/*ELIMINAR LA BASE DE DATOS*/

Drop database empleados;
