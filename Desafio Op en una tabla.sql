--Desafío Operaciones en una Tabla - Hans Contreras Robledo
--Requerimientos
--Parte 1
--1. Crear una base de datos con nombre “Posts”.
CREATE DATABASE posts;

--2. Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.
CREATE TABLE posts(id INT UNIQUE, nombre_usuario VARCHAR(25), fecha_creacion DATE, contenido VARCHAR(1000), descripcion VARCHAR(255), PRIMARY KEY (id));

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (1, 'Pamela', '2021-12-24', 'Ejercicios de Algebra', 'Tarea');
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (2, 'Pamela', '2022-01-01', 'Viaje a Patagonia', 'Vacaciones');
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (3, 'Carlos', '2022-02-20', 'Top 10 mejores videojuegos 2022', 'Videojuegos');

--4. Modificar la tabla post, agregando la columna título.
ALTER TABLE posts ADD titulo VARCHAR(255);

--5. Agregar título a las publicaciones ya ingresadas.
UPDATE posts SET titulo='Titulo 1 Pamela' WHERE id = 1;
UPDATE posts SET titulo='Titulo 2 Pamela' WHERE id = 2;
UPDATE posts SET titulo='Titulo 1 Carlos' WHERE id = 3;

--6. Insertar 2 post para el usuario "Pedro".
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(4, 'Pedro', '2022-02-25', 'Programación en Javascript', 'Curso Javascript', 'Titulo 1 Pedro');
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(5, 'Pedro', '2022-02-25', 'Creación de DB en PostgreSQL', 'Curso Javascript', 'Titulo 2 Pedro');

--7. Eliminar el post de Carlos.
DELETE FROM posts WHERE nombre_usuario='Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos".
INSERT INTO posts(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES(6, 'Carlos', '2022-02-25', 'Lógica de relaciones en DB', 'Curso Javascript', 'Titulo 2 Carlos');

--Parte 2
--1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(id INT, fecha_hora_creacion TIMESTAMP, contenido VARCHAR(1000), FOREIGN KEY(id) REFERENCES posts(id));

--2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".
INSERT INTO comentarios VALUES (1, '2022-01-03 12:00:00', 'Tengo algunas preguntas!');
INSERT INTO comentarios VALUES (2, '2022-01-05 16:45:10', 'Increible!');
INSERT INTO comentarios VALUES (6, '2022-02-20 10:30:08', 'Hola, necesito más información');
INSERT INTO comentarios VALUES (6, '2022-02-23 15:44:12', 'Esta super');
INSERT INTO comentarios VALUES (6, '2022-02-24 18:12:43', 'Nada mal');
INSERT INTO comentarios VALUES (6, '2022-02-25 16:59:30', 'Excelente');

--3. Crear un nuevo post para "Margarita".
INSERT INTO posts (id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (7, 'Margarita', '2022-02-26', 'Hola Mundo', 'Primer post de Margarita', 'Titulo 1 Margarita');

--4. Ingresar 5 comentarios para el post de Margarita.
INSERT INTO comentarios VALUES (7, '2022-02-26 12:00:00', 'Hola, Bienvenida');
INSERT INTO comentarios VALUES (7, '2022-02-27 13:44:10', 'Saludos Cordiales');
INSERT INTO comentarios VALUES (7, '2022-02-27 18:22:02', 'Hola, que tal?');
INSERT INTO comentarios VALUES (7, '2022-02-27 20:33:33', 'Bienvenida al foro');
INSERT INTO comentarios VALUES (7, '2022-02-28 10:15:55', 'Genial, bienvenida');