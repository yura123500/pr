CREATE DATATABLE `admins`;

CREATE TABLE `computers` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`IPAdress` VARCHAR(50) NOT NULL,
	`CompName` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`Id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;

CREATE TABLE `router` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`IPSingle` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	`IPStack` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	PRIMARY KEY (`Id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

CREATE TABLE `users` (
	`Id` INT(11) NOT NULL AUTO_INCREMENT,
	`FirstName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	`LastName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	`CompName` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	`Login` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_swedish_ci',
	PRIMARY KEY (`Id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7
;

INSERT INTO `computers` (`Id`, `IPAdress`, `CompName`) VALUES (1, '192.0.0.1', 'director');
INSERT INTO `computers` (`Id`, `IPAdress`, `CompName`) VALUES (2, '192.122.2.2', 'reseption12');
INSERT INTO `computers` (`Id`, `IPAdress`, `CompName`) VALUES (3, '192.168.0.2', 'reseption12');

INSERT INTO `users` (`Id`, `FirstName`, `LastName`, `CompName`, `Login`) VALUES (1, 'Ann', 'Smith', 'reseption23', 'Ann123');
INSERT INTO `users` (`Id`, `FirstName`, `LastName`, `CompName`, `Login`) VALUES (2, 'Piter', 'Mars', 'admin1', 'Hiro13');
INSERT INTO `users` (`Id`, `FirstName`, `LastName`, `CompName`, `Login`) VALUES (3, 'Nataly', 'Portman', 'director', 'Natali123');
INSERT INTO `users` (`Id`, `FirstName`, `LastName`, `CompName`, `Login`) VALUES (4, 'Andre', 'Smith', 'reseption23', 'Andre');

INSERT INTO `router` (`Id`, `IPSingle`, `IPStack`) VALUES (1, '192.123.1.1', '192.255.255.255');
