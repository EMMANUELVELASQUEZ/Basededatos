/*HERRERA ACEVEDO_Encontrar el salario promedio de los empleados por nivel educativo,
además de contar cuántos empleados hay en cada nivel educativo. 
Solo mostraremos aquellos niveles educativos que tengan más de 3 empleados.*/

SELECT 
    NIVELEST,
    AVG(salario) AS salario_promedio,
    COUNT(*) AS total_empleados
FROM 
    empleados
GROUP BY 
    NIVELEST
HAVING 
    COUNT(*) > 3;



/*LANDERO CRUZ_Mostrar el total de salarios por nivel educativo,
 excluyendo a los vendedores Y que los salarios no pasen de 50,000*/

SELECT 
    NIVELEST,
    SUM(salario) AS TOTAL_DE_SALARIOS
FROM 
    empleados
WHERE 
    puesto <> 'Vendedor' 
   
GROUP BY 
    NIVELEST;
HAVING AVG(salario)<= 50000

/*ENCONTRAR SALARIO PROMEDIO MAYOR A 20000 Y CONTAR EL NUMERO DE PERSONAS ENCONTRADAS 
POR NIVEL EDUCATIVO, SOLO PARA GERENTES.*/

SELECT NIVELEST,
AVG(salario) AS salario_promedio,
COUNT(*) AS numero_de_personas
FROM empleados
WHERE puesto = 'Gerente'
GROUP BY NIVELEST
HAVING SUM(salario) > 20000;


/*Emmanuel Velasquez Geron Encuentra el salario promedio y el salario total de los empleados hombres en cada nivel educativo
 y filtra solo los niveles educativos que tienen al menos 8 empleados hombres y donde el salario 
 promedio de estos sea superior a $35,000*/

SELECT NIVELEST,
AVG(salario) AS SALARIO_PROMEDIO,
SUM(salario) AS SALARIO_TOTAL
FROM 
    empleados
WHERE 
    genero = 'M'
GROUP BY 
    NIVELEST
HAVING 
    COUNT(*) >= 8 
    AND AVG(salario) < 35000;

