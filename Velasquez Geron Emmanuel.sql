
INSERT INTO clientes (CVECLI,NOMCLI,DIR,RFC)
values ('801', 'emmanuel velasquez geron','carmela lagunes','e8176391nsh1829');

INSERT INTO clientes (CVECLI,NOMCLI,DIR,RFC)
values ('802', 'Gonzales alvarado alejandro','francisco villa','e8176091nsh1829');

INSERT INTO clientes (CVECLI,NOMCLI,DIR,RFC)
values ('803', 'leonardo vidal chapol','francisco imadero','e8176391nsh1827');

INSERT INTO clientes (CVECLI,NOMCLI,DIR,RFC)
values ('804', 'guzman sanchez','xalapa','e8176391nsh18267');

INSERT INTO clientes (CVECLI,NOMCLI,DIR,RFC)
values ('805', 'mendoza hernandez','ortiz rubio sur','e8176391nsh18223');



insert into lineas (CVELINEA, NOMLINEA)
values ('801','videojuegos');

insert into lineas (CVELINEA, NOMLINEA)
values ('802','ropita');

insert into lineas (CVELINEA, NOMLINEA)
values ('803','juegos de mesa');

insert into lineas (CVELINEA, NOMLINEA)
values ('804','juego de cocina');

insert into lineas (CVELINEA, NOMLINEA)
values ('805','Laptop');



insert into facturas(FOLIO, FECHA, SUBTOTAL, IVA,CVECLI)
values ('801','2024-09-19','120','750','1234567891');

insert into facturas(FOLIO, FECHA, SUBTOTAL, IVA,CVECLI)
values ('802','2024-09-19','120','750','123456783');

insert into facturas(FOLIO, FECHA, SUBTOTAL, IVA,CVECLI)
values ('803','2024-09-19','120','750','1234597891');

insert into facturas(FOLIO, FECHA, SUBTOTAL, IVA,CVECLI)
values ('804','2024-09-19','120','750','1144567891');

insert into facturas(FOLIO, FECHA, SUBTOTAL, IVA,CVECLI)
values ('805','2024-09-19','120','750','1234522891');



insert into articulos (CVEART, NOMBRE, PRECIO, EXISTENCIAS, CVELINEA)
values ('801','pantalon azul','150','12','801');

insert into articulos (CVEART, NOMBRE, PRECIO, EXISTENCIAS, CVELINEA)
values ('802','pantalon','130','13','802');

insert into articulos (CVEART, NOMBRE, PRECIO, EXISTENCIAS, CVELINEA)
values ('803','camisa negra','120','14','803');

insert into articulos (CVEART, NOMBRE, PRECIO, EXISTENCIAS, CVELINEA)
values ('804','zapatos','110','15','804');

insert into articulos (CVEART, NOMBRE, PRECIO, EXISTENCIAS, CVELINEA)
values  ('805','lentes','100','16','805');



insert into partidas(PARTIDA, FOLIO, CVEART, PVENTA)
values('801','801','801','67');

insert into partidas(PARTIDA, FOLIO, CVEART, PVENTA)
values('802','802','802','68');

insert into partidas(PARTIDA, FOLIO, CVEART, PVENTA)
values('803','803','803','69');

insert into partidas(PARTIDA, FOLIO, CVEART, PVENTA)
values('804','804','804','70');

insert into partidas(PARTIDA, FOLIO, CVEART, PVENTA, CANTIDAD)
values ('805','805','805','71');

