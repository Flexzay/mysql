use factura;

create table empresa(
nit int not null  primary key,
des_negocio varchar (120)
);

insert into empresa (nit,des_negocio)values ('0001','supermercado');
insert into empresa (nit,des_negocio)values ('0002','artesanias');

create table factura (
id_factura int not null primary key,
id_pais int not null,
nit int not null,
fecha date not null,
id_usuario int not null
);

select * from factura;

insert into factura (id_factura, id_pais, nit, fecha, id_usuario) values(001,'+57',0001,'2023-10-11',1120561);
insert into factura (id_factura, id_pais, nit, fecha, id_usuario) values(002,'+100',0002,'2023-10-11',1120561);

create table producto(
id_produ int not null primary key,
id_factura int not null,
descripcion varchar(120),
cant double  not null,
precio double not null,
total double not null
);

select * from producto;

insert into producto (id_produ,id_factura,descripcion,cant,precio,total) values (564,001,'papa',2,1500,3000);
insert into producto (id_produ,id_factura,descripcion,cant,precio,total) values (578,001,'yuca',1,1200,1200);
insert into producto (id_produ,id_factura,descripcion,cant,precio,total) values (545,002,'sombrero',2,8,16);


 
create table usuario (
id_usuario int not null,
nombre varchar (120),
edad double not null,
telefono double not null
);


select * from usuario;
insert into usuario (id_usuario, nombre, edad, telefono)values(1120561, 'ricardo rivera',18,'3143920230');

create table paises(
id_pais int not null primary key,
nombre_pais varchar (120) not null
);

insert into paises (id_pais , nombre_pais)values ('+57','colombia');
insert into paises (id_pais , nombre_pais)values ('+100','brasil');


select nombre,(select sum(total) from producto where id_factura = 002),
                (select nombre_pais from paises where id_pais = '+100')
                from usuario;

select * from producto;


SELECT factura.*, usuario.*, paises.*, (
    SELECT SUM(total) 
    FROM producto
    WHERE producto.id_factura = factura.id_factura
   
) as calculo 
FROM factura
INNER JOIN usuario ON factura.id_usuario = usuario.id_usuario
INNER JOIN paises ON factura.id_pais = paises.id_pais
where id_factura = 1;




