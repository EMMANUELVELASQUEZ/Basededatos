Create table `DEPARTAMENTOS` (
	`CLAVEDEPTO` Char(3) NOT NULL,
	`NOMDEPTO` Varchar(36) NOT NULL,
	`CLAVEJEFE` Char(6),
	`CLAVEDEPSUP` Char(3) NOT NULL,
 Primary Key (`CLAVEDEPTO`));

Create table `EMPLEADOS` (
	`MATRICULA` Char(6) NOT NULL COMMENT 'Clave del empleado',
	`NOMBRE` Varchar(12) NOT NULL,
	`APELLIDO` Varchar(20) NOT NULL,
	`NUMDEPTO` Char(3) NOT NULL COMMENT 'Clave de departamento',
	`EXTENSION` Char(4),
	`FECHAING` Datetime,
	`PUESTO` Char(12),
	`NIVELEST` Smallint,
	`GENERO` Char(1),
	`FECHANAC` Datetime,
	`SALARIO` Decimal(9,2),
	`COMISION` Decimal(9,2),
 Primary Key (`MATRICULA`));

Create table `PROYECTOS` (
	`NUMPROY` Char(6) NOT NULL,
	`NOMPROY` Varchar(45) NOT NULL,
	`CLAVEDEPTO` Char(3) NOT NULL,
	`HORASHOMBRE` Decimal(5,2),
	`FECHAINI` Datetime,
	`FECHAFIN` Datetime,
	`NUMPROYSUP` Char(6),
 Primary Key (`NUMPROY`));

INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('100   ', 'ANA', 'HUERTA', 'B01', '3476', '2008-09-18 00:00:00', 'GERENTE     ', 18, 'F', '1980-04-01 00:00:00', 41250, 3300);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('101   ', 'EMILIO', 'ENRIQUEZ', 'C01', '4738', '2001-04-15 00:00:00', 'GERENTE     ', 20, 'M', '1974-08-12 00:00:00', 38250, 3060);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('102   ', 'ISABEL', 'KALIXTO', 'E01', '6789', '2010-11-13 00:00:00', 'GERENTE     ', 16, 'F', '1979-12-03 00:00:00', 40175, 3214);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('103   ', 'ARMANDO', 'MIRANDA', 'D11', '6423', '2000-05-24 00:00:00', 'GERENTE     ', 16, 'M', '1974-01-01 00:00:00', 32250, 2580);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('104   ', 'OMAR', 'PEREZ', 'D21', '7831', '2005-10-09 00:00:00', 'GERENTE     ', 16, 'M', '1979-05-12 00:00:00', 36170, 2893);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('105   ', 'EDUARDO', 'SANCHEZ', 'E11', '5498', '1993-07-11 00:00:00', 'GERENTE     ', 16, 'M', '1966-06-19 00:00:00', 29750, 2380);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('106   ', 'EMMANUEL', 'CONTRERAS', 'D01', '972 ', '1990-12-31 00:00:00', 'GERENTE     ', 14, 'M', '1960-09-14 00:00:00', 26150, 2092);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('107   ', 'ELENA', 'MARTINEZ', 'D11', '4510', '2003-08-12 00:00:00', 'DISEÑADOR   ', 16, 'F', '1970-03-23 00:00:00', 27740, 2217);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('108   ', 'JASMIN', 'BONILLA', 'E11', '8997', '2009-03-22 00:00:00', 'DEPENDIENTE ', 17, 'F', '1976-03-12 00:00:00', 17750, 1420);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('109   ', 'MARIA', 'MARRUJO', 'A00', '3978', '1990-01-13 00:00:00', 'GERENTE     ', 18, 'F', '1963-12-20 00:00:00', 52750, 4220);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('110   ', 'ISAIAS', 'OCHOA', 'A00', '2167', '2007-09-07 00:00:00', 'VENDEDOR    ', 14, 'M', '1980-07-17 00:00:00', 22180, 1774);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('111   ', 'DANIEL', 'FERNANDEZ', 'D01', '9990', '2009-08-21 00:00:00', 'TECNICO     ', 16, 'M', '1980-11-09 00:00:00', 25370, 2030);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('112   ', 'MARIA', 'PEREZ', 'D11', '3782', '2004-04-24 00:00:00', 'DISEÑADOR   ', 17, 'F', '1979-01-17 00:00:00', 18270, 1462);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('113   ', 'ANGELICA', 'BASURTO', 'D11', '672 ', '2006-09-12 00:00:00', 'DISEÑADOR   ', 18, 'F', '1978-06-05 00:00:00', 24680, 1974);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('114   ', 'GABRIEL', 'MARTINEZ', 'C01', '4578', '2010-01-22 00:00:00', 'ANALISTA    ', 16, 'M', '1980-10-07 00:00:00', 28760, 2301);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('115   ', 'ESTEBAN', 'JIMENEZ', 'D21', '2094', '2000-08-22 00:00:00', 'VENDEDOR    ', 14, 'M', '1960-06-11 00:00:00', 46500, 3720);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('116   ', 'IVONNE', 'HERNANDEZ', 'D01', '2103', '2003-09-13 00:00:00', 'TECNICO     ', 14, 'F', '1969-11-09 00:00:00', 19180, 1534);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('117   ', 'MARCOS', 'HERRERA', 'D11', '2890', '2005-07-23 00:00:00', 'DISEÑADOR   ', 16, 'M', '1980-04-30 00:00:00', 20450, 1636);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('118   ', 'VIANEY', 'HUESCA', 'D11', '1682', '1999-10-21 00:00:00', 'DISEÑADOR   ', 17, 'F', '1970-11-11 00:00:00', 29840, 2387);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('119   ', 'SUSANA', 'RIVERA', 'C01', '1793', '1997-05-16 00:00:00', 'ANALISTA    ', 18, 'M', '1971-06-17 00:00:00', 28420, 2274);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('120   ', 'REBECA', 'RUIZ', 'D21', '3780', '2002-10-15 00:00:00', 'VENDEDOR    ', 17, 'M', '1975-07-13 00:00:00', 17250, 1380);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('121   ', 'PAOLA', 'PALMA', 'D01', '5698', '2006-02-24 00:00:00', 'TECNICO     ', 16, 'F', '1977-11-23 00:00:00', 23840, 1907);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('122   ', 'LUIS', 'MENDEZ', 'D11', '2896', '1993-07-25 00:00:00', 'DISEÑADOR   ', 16, 'M', '1976-04-21 00:00:00', 21340, 1707);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('123   ', 'SERGIO', 'LARA', 'E11', '4502', '1998-12-21 00:00:00', 'DEPENDIENTE ', 12, 'M', '1970-04-14 00:00:00', 15340, 1227);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('124   ', 'IKAR', 'NANNI', 'C01', '1795', '2000-11-15 00:00:00', 'ANALISTA    ', 17, 'M', '1970-12-24 00:00:00', 27380, 2190);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('125   ', 'LILIA', 'NAVA', 'D21', '961 ', '2010-09-08 00:00:00', 'VENDEDOR    ', 15, 'F', '1980-03-18 00:00:00', 29250, 2340);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('126   ', 'TANIA', 'TERRONES', 'D01', '5765', '2007-09-22 00:00:00', 'TECNICO     ', 16, 'F', '1981-12-05 00:00:00', 19950, 1596);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('127   ', 'IGNACIO', 'BRAVO', 'D11', '4501', '2006-11-17 00:00:00', 'DISEÑADOR   ', 16, 'M', '1976-08-25 00:00:00', 22250, 1780);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('128   ', 'GUADALUPE', 'ENRIQUEZ', 'E11', '2095', '2009-03-19 00:00:00', 'DEPENDIENTE ', 14, 'F', '1980-10-12 00:00:00', 26250, 2100);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('129   ', 'ERIK', 'MOLINA', 'C01', '1798', '2001-08-13 00:00:00', 'ANALISTA    ', 17, 'M', '1975-07-26 00:00:00', 28439, 1805);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('130   ', 'JOSE', 'VIDAÑA', 'E11', '3332', '2006-08-14 00:00:00', 'DEPENDIENTE ', 12, 'M', '1980-04-15 00:00:00', 15900, 1272);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('131   ', 'ANA', 'MORAGA', 'D01', '5897', '2004-10-22 00:00:00', 'TECNICO     ', 17, 'F', '1978-10-23 00:00:00', 21250, 1986);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('132   ', 'MARIA', 'TORRES', 'D11', '942 ', '2010-07-22 00:00:00', 'DISEÑADOR   ', 17, 'F', '1976-06-17 00:00:00', 25280, 2022);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('133   ', 'CARLOS', 'SOLANO', 'E11', '2098', '2009-08-05 00:00:00', 'DEPENDIENTE ', 13, 'M', '1977-11-03 00:00:00', 16755, 1675);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('134   ', 'MATEO', 'VAZQUEZ', 'D21', '9001', '2005-09-18 00:00:00', 'VENDEDOR    ', 15, 'M', '1973-08-13 00:00:00', 23800, 1904);
INSERT INTO EMPLEADOS (MATRICULA, NOMBRE, APELLIDO, NUMDEPTO, EXTENSION, FECHAING, PUESTO, NIVELEST, GENERO, FECHANAC, SALARIO, COMISION)
               VALUES ('135   ', 'RUBEN', 'REYES', 'D21', '8953', '2003-12-27 00:00:00', 'VENDEDOR    ', 16, 'M', '1965-08-06 00:00:00', 29250, 2340);
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('A00', 'DIVISION DE SERVICIOS EN TI', '000010', 'A00');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('B01', 'PLANIFICACION', '000020', 'A00');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('C01', 'CENTRO DE INFORMACION ', '000030', 'A00');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('D01', 'CENTRO DE DESARROLLO', NULL, 'A00');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('E01', 'SERVICIOS DE APOYO', '000050', 'A00');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('D11', 'PRODUCCION DE SISTEMAS', '000060', 'D01');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('D21', 'ADMINISTRACION DE SISTEMAS', '000070', 'D01');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('E11', 'OPERACIONES', '000090', 'E01');
INSERT INTO DEPARTAMENTOS (CLAVEDEPTO, NOMDEPTO, CLAVEJEFE, CLAVEDEPSUP)
                   VALUES ('E21', 'SOFTWARE DE APOYO', '000100', 'E01');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('AD3100', 'SERVICIOS DE ADMINISTRACION', 'D01', 6.5, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('MA2100', 'AUTOMATIZACION DE LINEA DE SOLDADURA', 'D01', 12, '1982-01-01 00:00:00', '1982-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('PL2100', 'PLANEACION DE LINEA DE SOLDADURA', 'B01', 1, '1982-01-01 00:00:00', '1982-09-15 00:00:00', 'MA2100');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('IF1000', 'SERVICIOS DE CONSULTA', 'C01', 2, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('IF2000', 'ENTRENAMIENTO DEL USUARIO', 'C01', 1, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP1000', 'APOYO DE OPERACIONES', 'E01', 6, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP2000', 'SERVICIOS DE SISTEMAS EN GENERAL', 'E01', 5, '1982-01-01 00:00:00', '1983-02-01 00:00:00', NULL);
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('MA2110', 'PROGRAMACION DE LINEA DE SOLDADURA', 'D11', 9, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'MA2100');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('AD3110', 'GENERAL Y SISTEMAS', 'D21', 6, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP1010', 'OPERACION', 'E11', 5, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP1010');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP2010', 'APOYO DE SISTEMAS', 'E21', 4, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2000');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('MA2112', 'DISEÑO DE ROBOT DE LINEA DE SOLDADURA', 'D11', 3, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'MA2110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('MA2113', 'PROGRAMACJON DE CONTROL DE PROD. DE LIN. SOLD', 'D11', 3, '1982-02-15 00:00:00', '1982-12-01 00:00:00', 'MA2110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('MA2111', 'DISEÑO DE PROGRAMAS DE LINEA DE SOLDADURA', 'D11', 2, '1982-01-01 00:00:00', '1982-12-01 00:00:00', 'MA2110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('AD3111', 'PROGRAMACION DE NOMINA', 'D21', 2, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('AD3112', 'PROGRAMACION DE RECURSOS HUMANOS', 'D21', 1, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('AD3113', 'PROGRAMACION DE CONTABILIDAD', 'D21', 2, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'AD3110');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP2011', 'SOPORTE DE SISTEMAS XYZ', 'E21', 1, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP2012', 'APOYO DE APLICACIONES', 'E21', 1, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010');
INSERT INTO PROYECTOS (NUMPROY, NOMPROY, CLAVEDEPTO, HORASHOMBRE, FECHAINI, FECHAFIN, NUMPROYSUP)
               VALUES ('OP2013', 'APOYO A BD/CD', 'E21', 1, '1982-01-01 00:00:00', '1983-02-01 00:00:00', 'OP2010');

