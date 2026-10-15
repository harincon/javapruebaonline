-- Para Supabase (PostgreSQL): pegar en SQL Editor y ejecutar
create table if not exists empleados
 ( id serial primary key,
   nombres varchar(50),
   apellido1 varchar(50),
   apellido2 varchar(50),
   edad int
);
