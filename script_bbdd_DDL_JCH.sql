
DROP TABLE IF EXISTS `sanidad`.`T_DOLENCIA`;
CREATE TABLE IF NOT EXISTS `sanidad`.`T_DOLENCIA` (
`codigo` INT,
PRIMARY KEY (`codigo`));


DROP TABLE IF EXISTS `sanidad`.`T_PLANTAS`;
CREATE TABLE IF NOT EXISTS `sanidad`.`T_PLANTAS` (
`id` INT,
`nombre` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`));



DROP TABLE IF EXISTS `sanidad`.`T_FUNCIONES`;
CREATE TABLE IF NOT EXISTS `sanidad`.`T_FUNCIONES` (
`id` INT,
`descripcion` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`));



DROP TABLE IF EXISTS `sanidad`.`T_PERSONAL_PLANTAS_FUNCIONES`;
CREATE TABLE IF NOT EXISTS `sanidad`.`T_PERSONAL_PLANTAS_FUNCIONES` (
`id_personal_medico` SMALLINT NOT NULL,
`id_planta` INT NOT NULL,
`id_funciones` INT NOT NULL,
CONSTRAINT FK_PERSONAL_PLANTAS_FUNCIONES_PERSONAL_MEDICO
FOREIGN KEY (id_personal_medico) REFERENCES T_PERSONAL_MEDICO(id),
CONSTRAINT FK_PERSONAL_PLANTAS_FUNCIONES_PLANTAS
FOREIGN KEY (id_plantas) REFERENCES T_PLANTAS(id),
CONSTRAINT FK_PERSONAL_PLANTAS_FUNCIONES_FUNCIONES
FOREIGN KEY (id_funciones) REFERENCES T_FUNCIONES(id));









