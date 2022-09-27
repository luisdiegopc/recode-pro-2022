/*
MySQL Backup
Database: sigi
Backup Time: 2022-09-26 11:12:12
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `sigi`.`aluno`;
DROP TABLE IF EXISTS `sigi`.`convidado`;
DROP TABLE IF EXISTS `sigi`.`destino`;
DROP TABLE IF EXISTS `sigi`.`evento`;
DROP TABLE IF EXISTS `sigi`.`evento_convidados`;
DROP TABLE IF EXISTS `sigi`.`hibernate_sequence`;
DROP TABLE IF EXISTS `sigi`.`promocao`;
DROP TABLE IF EXISTS `sigi`.`tb_produto`;
CREATE TABLE `aluno` (
  `id` int NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cpf` int NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `matricula` int NOT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_mae` varchar(255) DEFAULT NULL,
  `nome_pai` varchar(255) DEFAULT NULL,
  `orgao_emissao` varchar(255) DEFAULT NULL,
  `rg` int NOT NULL,
  `uf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `convidado` (
  `rg` varchar(255) NOT NULL,
  `nome_convidado` varchar(255) DEFAULT NULL,
  `evento_codigo` bigint DEFAULT NULL,
  PRIMARY KEY (`rg`),
  KEY `FK4tlkcowf3oxi1u8wmjd9bhes4` (`evento_codigo`),
  CONSTRAINT `FK4tlkcowf3oxi1u8wmjd9bhes4` FOREIGN KEY (`evento_codigo`) REFERENCES `evento` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `destino` (
  `id_destino` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(20) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `evento` (
  `codigo` bigint NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `horario` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `evento_convidados` (
  `evento_codigo` bigint NOT NULL,
  `convidados_rg` varchar(255) NOT NULL,
  UNIQUE KEY `UK_op0pjrxw8cj92659adfppnwip` (`convidados_rg`),
  KEY `FKswhoyqcqepjsh6xjfhrqpclsl` (`evento_codigo`),
  CONSTRAINT `FKbt8rk0e47tw21vfm4r1m1yftn` FOREIGN KEY (`convidados_rg`) REFERENCES `convidado` (`rg`),
  CONSTRAINT `FKswhoyqcqepjsh6xjfhrqpclsl` FOREIGN KEY (`evento_codigo`) REFERENCES `evento` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `promocao` (
  `nome` varchar(30) DEFAULT NULL,
  `desconto` float DEFAULT NULL,
  `destino` int DEFAULT NULL,
  `id_destino` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_promocao` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `destino` (`destino`),
  CONSTRAINT `promocao_ibfk_1` FOREIGN KEY (`destino`) REFERENCES `destino` (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `tb_produto` (
  `id` bigint NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `quantidade` decimal(19,2) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
BEGIN;
LOCK TABLES `sigi`.`aluno` WRITE;
DELETE FROM `sigi`.`aluno`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`convidado` WRITE;
DELETE FROM `sigi`.`convidado`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`destino` WRITE;
DELETE FROM `sigi`.`destino`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`evento` WRITE;
DELETE FROM `sigi`.`evento`;
INSERT INTO `sigi`.`evento` (`codigo`,`data`,`horario`,`local`,`nome`) VALUES (1, '2020-08-27', '10:22', 'SOBRAL', 'Viagem a Sobral'),(2, '2020-09-09', '10:21', 'QUIXADA', 'Viagem a Quixadá'),(4, '2022-09-26', '10:57', 'solonopolis', NULL);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`evento_convidados` WRITE;
DELETE FROM `sigi`.`evento_convidados`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`hibernate_sequence` WRITE;
DELETE FROM `sigi`.`hibernate_sequence`;
INSERT INTO `sigi`.`hibernate_sequence` (`next_val`) VALUES (6),(6),(6);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`promocao` WRITE;
DELETE FROM `sigi`.`promocao`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `sigi`.`tb_produto` WRITE;
DELETE FROM `sigi`.`tb_produto`;
UNLOCK TABLES;
COMMIT;
