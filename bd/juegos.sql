create database juegos;
use juegos;

create table crud (id_juego int auto_increment, 
	nombre varchar(150), 
	anio varchar(150), 
	empresa varchar(150), 
	primary key(id_juego));
ALTER TABLE crud CONVERT TO CHARACTER SET utf8;


DROP procedure IF EXISTS `sp_mostrar_datos`;

DELIMITER $$
USE `log`$$
CREATE PROCEDURE `sp_mostrar_datos` ()
BEGIN
	select id_juego,
			nombre,
			anio,
			empresa 
	from crud;
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_insertar_datos`;

DELIMITER $$
USE `log`$$
CREATE PROCEDURE `sp_insertar_datos` (in nombreI varchar(50),
										in anioI varchar(50),
                                        in empresaI varchar(50))
BEGIN
	insert into crud (nombre,
							anio,
							empresa)
			values (nombreI,anioI,empresaI);
END$$

DELIMITER ;


DROP procedure IF EXISTS `sp_actualizar_datos`;

DELIMITER $$
USE `log`$$
CREATE PROCEDURE `sp_actualizar_datos` (in nombreU varchar(50),
										in anioU varchar(50),
                                        in empresaU varchar(50),
                                        in idJuegoU int)
BEGIN
	update crud set nombre=nombreU,
						anio=anioU,
						empresa=empresaU
				where id_juego=idJuegoU;
END$$

DELIMITER ;


DROP procedure IF EXISTS `sp_eliminar_datos`;

DELIMITER $$
USE `log`$$
CREATE PROCEDURE `sp_eliminar_datos` (in idJuegoD int)
BEGIN
	delete from crud
    where id_juego=idJuegoD;
END$$

DELIMITER ;

DROP procedure IF EXISTS `sp_obtener_regJuego`;

DELIMITER $$
USE `log`$$
CREATE PROCEDURE `sp_obtener_regJuego` (in idJuegoO int)
BEGIN
	select * from crud where id_juego=idJuegoO;
END$$

DELIMITER ;
