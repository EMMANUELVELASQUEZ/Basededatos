SELECT 
    NIVELEST,
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
    AND AVG(salario) > 35000;

