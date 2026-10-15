create database if not exists empleados;
use empleados;
create table if not exists empleados
 ( id int auto_increment primary key,
   nombres varchar(50),
   apellido1 varchar(50),
   apellido2 varchar(50),
   edad int
);
