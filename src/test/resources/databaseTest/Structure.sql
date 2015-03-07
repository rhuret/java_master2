DROP TABLE IF EXISTS `FRIEND`;
DROP TABLE IF EXISTS `PERSON`;

CREATE TABLE IF NOT EXISTS `PERSON` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
	`birthday` DATE NOT NULL,
	`sexe` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `FRIEND` (
	`idPerson` int(11) NOT NULL,
	`idFriend` int(11) NOT NULL,
PRIMARY KEY(`idPerson`, `idFriend`),
CONSTRAINT `fk_idPerson`
	FOREIGN KEY (`idPerson`)
	REFERENCES `PERSON`(`id`),
CONSTRAINT `fk_idFriend`
	FOREIGN KEY (`idFriend`)
	REFERENCES `PERSON`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=1;
