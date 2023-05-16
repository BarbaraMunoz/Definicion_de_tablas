--Ver tabla peliculas
select * from peliculas p;

--Obtener el ID de la película “Titanic”
select * from peliculas p where p.pelicula = 'Titanic';
--ID Titanic es id 2


--Ver tabla reparto
select * from reparto r;
--Listar a todos los actores que aparecen en la película "Titanic"
select r.actor  from reparto r where r.pelicula_id = 2;

--Consultar en cuántas películas del top 100 participa Harrison Ford
select * from reparto r where r.actor = 'Harrison Ford';
--Participa en 8 peliculas del top 100

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente
select p.pelicula, p."Año estreno" from peliculas p where p."Año estreno" between 1990 and 1999
order by p."Año estreno" asc;

--Hacer una consulta SQL que muestre los títulos con su longitud,
 --la longitud debe ser nombrado para la consulta como “longitud_titulo”
select p.pelicula, char_length(p.pelicula) as "longitud_titulo" from peliculas p;

--Consultar cual es la longitud más grande entre todos los títulos de las películas
select p.pelicula, char_length(p.pelicula) as "longitud_titulo" from peliculas p
order by longitud_titulo desc limit 1;

--Aplicar el truncado de las tablas
truncate table peliculas;
truncate table reparto;