#crear y usar base
create schema proyecto_final;
use proyecto_final;

#tabla de registro
create table usuairos (
email varchar(60) not null,
contrasena varchar(60)not null,
primary key (email)
);

select * from cuenta;
delete from cuenta;

#tabla de cuenta ESTU_ESTUDIANTE
create table cuenta (
id_usu varchar(60) not null,
email varchar (60) not null,
numero int not null,
primary key(id_usu)
);

insert into cuenta( id_usu, email,numero)values( '4','taersgfd@gmail.com', '12' );


#tabla de plantillas
create table plantillas(
id_img int not null,
imagen longblob not null,
primary key(id_img)
);

#tabla de img-perfil
create table img_perfil(
id_img_perfil int not null,
img longblob not null,
primary key (id_img_perfil)
);

#tabla de perfil
create table perfil (
id_perfil int not null,
nombres varchar(60) not null,
apellidos varchar(60) not null,
email varchar(60) not null,
numero int not null,
primary key(id_perfil)

);

#tabla de educaccion 
create table educaccion(
id_edu int not null,
area_de_estudio varchar(120) not null,
grado varchar(60) not null,
nombre_institucion varchar (120) not null,
ciudad varchar(120) not null,
mes_año date not null,
primary key(id_edu)
);

#tabla experiencia laboral 
create table experiencia(
id_exp int not null,
nombre_puesto varchar(120) not null,
empresa varchar(120) not null,
ciudad varchar (120) not null,
mes_año date not null,
primary key(id_exp)
);

# tabla de respuestas rapidas-habilidades
create table respuestas_rapidas(
id_respuesta_rapida int not null,
respuesta varchar(120) not null,
primary key(id_respuesta_rapida)
);

#tabla de habilidades 
create table habilidades(
id_habilidad int not null,
nombre_puesto varchar(120) not null,
id_respuesta_rapida int not null,
habilidad varchar(600) not null,
primary key(id_habilidad)
);

#tabla de pie de pagina 
create table pie_de_pagina(
id_pie_pagina int not null,
contenido varchar(1000) null,
primary key(id_pie_pagina)
);

#tabla repsuesta de idioamas rapidos 
create table respuesta_idiomas_rapidas(
id_idio_rapi int not null,
idioma varchar (60) not null,
primary key (id_idio_rapi)
);

#tabla de idiomas 
create table idiomas(
id_idioma int not null,
id_idio_rapi int not null,
nombre_idioma varchar(60) not null,
primary key(id_idioma)
);








