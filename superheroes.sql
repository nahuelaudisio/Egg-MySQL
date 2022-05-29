DROP DATABASE superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
  
SELECT * FROM personajes;

 SELECT * FROM creador;
 
insert into creador (id_creador,nombre) values (1 ,'Marvel');

insert into creador (id_creador,nombre) values (2,'DC Comics');

insert into personajes (nombre_real,personaje,Inteligencia,fuerza,velocidad,poder,
aparicion,ocupacion,id_creador) values ('Bruce Banner','Hulk',160,'600 mil',
75,96,1962,'fisico nuclear',1);


/*
***********************************************
*/
update personajes
set aparicion = 1938
where id_personaje = 2;

delete from personajes
where id_personaje = 7;






