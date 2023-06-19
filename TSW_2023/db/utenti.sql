CREATE DATABASE  IF NOT EXISTS `utenti`;
USE `utenti`;


CREATE TABLE `utente`(
	`email` varchar(20) NOT NULL,
	`nome` varchar(20) DEFAULT NULL,
	`cognome` varchar(20) DEFAULT NULL,
	`indirizzo` varchar(45) DEFAULT NULL,
    `pronvincia` varchar(20) DEFAULT NULL,
    `cap` varchar(20) DEFAULT NULL,
    `citta` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`email`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
