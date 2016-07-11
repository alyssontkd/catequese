-- MySQL dump 10.16  Distrib 10.1.9-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: bdcatequese
-- ------------------------------------------------------
-- Server version	10.1.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bdcatequese`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bdcatequese` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bdcatequese`;

--
-- Table structure for table `academias`
--

DROP TABLE IF EXISTS `academias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academias` (
  `id_academia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_associacao',
  `id_cidade` int(11) DEFAULT NULL COMMENT 'id_cidade',
  `id_usuario_cadastro` int(11) DEFAULT NULL COMMENT 'id_usuario_cadastro',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'id_usuario',
  `id_arte_marcial` smallint(6) DEFAULT NULL COMMENT 'id_arte_marcial',
  `nm_academia` varchar(100) DEFAULT NULL COMMENT 'nm_academia',
  `tx_endereco` varchar(100) DEFAULT NULL,
  `tx_complemento` varchar(100) DEFAULT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'dt_cadastro',
  `nr_cep` varchar(12) DEFAULT NULL COMMENT 'nr_cep',
  `bo_excluido` tinyint(1) DEFAULT NULL COMMENT 'bo_excluido',
  PRIMARY KEY (`id_academia`),
  KEY `fk_tb_assci_reference_tb_usuar2` (`id_usuario_cadastro`),
  KEY `fk_tb_assoc_reference_tb_artes` (`id_arte_marcial`),
  KEY `fk_tb_assoc_reference_tb_cidad` (`id_cidade`),
  KEY `fk_tb_assoc_reference_tb_usuar` (`id_usuario`),
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`id_arte_marcial`) REFERENCES `arte_marcial` (`id_arte_marcial`),
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `fk_tb_assci_reference_tb_usuar2` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_tb_assoc_reference_tb_artes` FOREIGN KEY (`id_arte_marcial`) REFERENCES `arte_marcial` (`id_arte_marcial`),
  CONSTRAINT `fk_tb_assoc_reference_tb_cidad` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `fk_tb_assoc_reference_tb_usuar` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='tb_academias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academias`
--

LOCK TABLES `academias` WRITE;
/*!40000 ALTER TABLE `academias` DISABLE KEYS */;
INSERT INTO `academias` VALUES (1,1724,1,1,1,'Academia Olimpica',NULL,NULL,'2015-07-30 13:16:48','71929540',NULL),(2,5817,1,1,1,'Associaçao Rioverdense de Taekwondo',NULL,NULL,'2015-07-30 13:23:51','',NULL),(6,8,1,1,1,'Academia Serafim',NULL,NULL,'2015-07-31 04:24:14','78600000',NULL),(9,4236,1,1,1,'Academia Liberdade',NULL,NULL,'2015-08-02 13:49:50','87098878',NULL),(10,4354,1,1,1,'Academia Dimmyclif',NULL,NULL,'2015-08-07 03:41:33','78985985',NULL),(11,86,1,1,1,'Studio de Artes Marciais e Crossfit','Aaaaaaaaaaaaaaaaaaaaaaaa','bbbbbbbbbbbbbbbbbbbbbbbbbbbbb','2015-08-07 03:48:41','85698842',NULL);
/*!40000 ALTER TABLE `academias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `acl`
--

DROP TABLE IF EXISTS `acl`;
/*!50001 DROP VIEW IF EXISTS `acl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `acl` (
  `id_perfil` tinyint NOT NULL,
  `nm_resource` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `nm_action` varchar(200) DEFAULT NULL COMMENT '{"label":"Ação"}',
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'index'),(2,'course-information'),(3,'access-course'),(4,'view-pay'),(5,'list'),(6,'cadastro'),(7,'gravar'),(8,'excluir'),(9,'upload'),(10,'download-img-pay'),(11,'download-video-course'),(12,'up-line'),(13,'uni-level'),(14,'dados-pessoais'),(15,'atualizar-dados'),(16,'obter-cidades'),(17,'gravar-atualizacao'),(18,'extrato'),(19,'solicitar-saque'),(20,'liberar-pagamento'),(21,'list-pagamentos-realizados'),(22,'list-contratos-pendentes'),(23,'excluir-contrato'),(24,'enviar-codigo'),(25,'view-video'),(26,'solicitar-patrocinador'),(27,'enviar-id'),(28,'recusar-patrocinador'),(29,'list-ativacao'),(30,'ativar-id'),(31,'gerar-recibo'),(32,'list-saques-realizados'),(33,'liberar-saque'),(34,'negar-saque'),(35,'negar-id'),(36,'alterar-senha'),(37,'salvar-redefinicao-senha'),(38,'imprimir-boleto'),(39,'xxx'),(40,'autocompletecidade'),(41,'cadastrocustomizado'),(42,'cadastroviaacademia'),(43,'gravarviaacademia'),(44,'excluirviaacademia'),(45,'alterarviaacademia'),(46,'gravaralteracaoviaacademia'),(47,'autocompleteacademia'),(48,'carregarsugestaoidadeporcategoria'),(49,'realizarinscricoes'),(50,'autocompleteatleta'),(51,'index-pagination'),(52,'cadastroperiodoletivodetalhe'),(53,'detalhe-pagination'),(54,'adicionarperiodoletivodetalhe'),(55,'excluirvialistagemperiodoletivo'),(56,'teste-teste'),(57,'listar-permissoes-acoes'),(58,'cadastrodetalheformacao'),(59,'adicionardetalheformacao'),(60,'excluirvialistagemdetalheformacao'),(61,'enturmar-aluno'),(62,'excluir-catequizando-turma');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arte_marcial`
--

DROP TABLE IF EXISTS `arte_marcial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arte_marcial` (
  `id_arte_marcial` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id_arte_marcial',
  `nm_arte_marcial` varchar(50) NOT NULL COMMENT 'nm_arte_marcial',
  PRIMARY KEY (`id_arte_marcial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arte_marcial`
--

LOCK TABLES `arte_marcial` WRITE;
/*!40000 ALTER TABLE `arte_marcial` DISABLE KEYS */;
INSERT INTO `arte_marcial` VALUES (1,'TAEKWONDO');
/*!40000 ALTER TABLE `arte_marcial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atleta`
--

DROP TABLE IF EXISTS `atleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atleta` (
  `id_atleta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_atleta',
  `id_academia` int(11) NOT NULL COMMENT 'id_academia',
  `id_cidade` int(11) DEFAULT NULL COMMENT 'id_cidade',
  `id_usuario_cadastro` int(11) NOT NULL COMMENT 'id_usuario_cadastro',
  `id_usuario` int(11) DEFAULT NULL COMMENT 'id_usuario',
  `nm_atleta` varchar(50) NOT NULL COMMENT 'nm_atleta',
  `dt_nascimento` datetime DEFAULT NULL COMMENT 'dt_nascimento',
  `nr_peso` float NOT NULL DEFAULT '5',
  `id_graduacao` smallint(6) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `tx_endereco` varchar(200) DEFAULT NULL COMMENT 'tx_endereco',
  `tx_complemento` varchar(100) DEFAULT NULL,
  `nr_cep` varchar(12) DEFAULT NULL COMMENT 'nr_cep',
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'dt_cadastro',
  `bo_excluido` tinyint(1) DEFAULT NULL COMMENT 'bo_excluido',
  PRIMARY KEY (`id_atleta`),
  KEY `fk_tb_atlet_reference_tb_assoc` (`id_academia`),
  KEY `fk_tb_atlet_reference_tb_cidad` (`id_cidade`),
  KEY `fk_tb_atlet_reference_tb_usuar` (`id_usuario`),
  KEY `fk_tb_atlet_reference_tb_usuar2` (`id_usuario_cadastro`),
  KEY `index_atleta_sexo` (`id_sexo`),
  KEY `index_atleta_graduacao` (`id_graduacao`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`id_graduacao`) REFERENCES `graduacoes` (`id_graduacao`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_atletas_references_graduacao` FOREIGN KEY (`id_graduacao`) REFERENCES `graduacoes` (`id_graduacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_atletas_references_sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_atlet_reference_tb_assoc` FOREIGN KEY (`id_academia`) REFERENCES `academias` (`id_academia`),
  CONSTRAINT `fk_tb_atlet_reference_tb_cidad` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `fk_tb_atlet_reference_tb_usuar` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_tb_atlet_reference_tb_usuar2` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='tb_atletas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atleta`
--

LOCK TABLES `atleta` WRITE;
/*!40000 ALTER TABLE `atleta` DISABLE KEYS */;
INSERT INTO `atleta` VALUES (1,1,4213,1,1,'Alysson Vicuña de Oliveira','1981-08-16 00:00:00',115,11,1,'Av. Jequitiba Nº 685 Ed. Bahamas Center Ap.310','Perto da Estaçao Águas Claras do Metrô','71929870','2015-08-04 03:42:16',NULL),(18,1,170,1,1,'Raquel Nascimento da SIlva','1987-07-15 00:00:00',72,1,2,'Av. Jequitiba Nº 685 Ed. Bahamas Center Ap.310','Perto da Estaçao Águas Claras do Metrô','54785247','2015-08-06 02:51:50',NULL),(19,2,347,1,1,'Bruno Cleyton da Silva Barros','1981-12-25 00:00:00',88,10,1,'Av. Alameda das Rosas','Jardim Piracema','87552441','2015-08-06 02:54:24',NULL),(20,2,240,1,1,'Joaquim Jose da Silva Xavier','1969-12-31 00:00:00',36,11,1,'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','Jardim Piracema','96587458','2015-08-06 03:06:55',NULL),(21,2,307,1,1,'Carlos Henrique de Souza','1998-10-25 00:00:00',62,10,1,'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','Sao Sebastiao','65217488','2015-08-06 03:13:59',NULL),(22,2,2576,1,1,'Arnaldo Jabor Neto','2001-09-14 00:00:00',69,4,1,'Rua 21 no Morro da Cruz','Perto do Parque de Aguas Claras','89584255','2015-08-06 03:20:45',NULL),(28,1,4236,1,1,'Americo Pinto de Oliveira','1951-05-31 00:00:00',72,7,1,'Rua 07 Quadra 03 Casa 70','Jardim Piracema','78600000','2015-08-06 04:08:58',NULL),(31,1,1724,1,1,'Suelia Rodrigues de Souza','1962-12-20 00:00:00',64,8,2,'ttttttttttttttttttt','xxxxxxxxxxxxxxxxxxxxxxx','79965874','2015-08-07 01:45:41',NULL),(32,1,1724,1,1,'Julia Nascimento de Oliveira','2014-10-05 00:00:00',15,9,2,'Av. Jequitiba Nº 685 Ed. Bahamas Center Ap.310','Perto da Estaçao Águas Claras do Metrô','71929540','2015-08-07 01:46:36',NULL),(33,1,1724,1,1,'Adolfo Martins dos Santos','1972-05-12 00:00:00',85,7,1,'Av. Alameda das Rosas','Perto do Parque de Aguas Claras','71929580','2015-08-07 01:46:46',NULL),(34,10,1724,1,1,'Maria da Penha do Nascimento','1962-03-20 00:00:00',71,7,2,'Rua 21 no Morro da Cruz','Sao Sebastiao','98563285','2015-08-07 01:46:56',NULL),(35,1,1724,1,1,'Lamartine Vieira Miranda','1981-01-01 00:00:00',98,8,1,'Av. Alameda das Rosas','Sao Sebastiao','74859675','2015-08-07 01:59:43',NULL),(36,1,1724,1,1,'Barbara Rodrigues','2005-06-15 00:00:00',54,10,2,'Rua 07 Quadra 03 Casa 70','Perto do Parque de Aguas Claras','96857744','2015-08-07 02:01:32',NULL),(37,1,4282,1,1,'Andria Carvalho Matos','1980-12-16 00:00:00',80,6,2,'Rua 21 no Morro da Cruz','Perto da Estaçao Águas Claras do Metrô','69858745','2015-08-07 02:03:23',NULL),(38,1,2312,1,1,'Luana Pereira de Oliveira','1981-08-04 00:00:00',60,4,2,'ttttttttttttttttttt','xxxxxxxxxxxxxxxxxxxxxxx','96587456','2015-08-07 02:06:47',NULL),(40,2,5817,1,1,'Lilian Nascimento','1984-06-15 00:00:00',63,6,2,'Rua 07 Quadra 03 Casa 70','Perto do Parque de Aguas Claras','98547855','2015-08-07 02:53:24',NULL),(41,2,8213,1,1,'Cristian Pedro Albuquerque','1973-04-29 00:00:00',59,4,1,'xxxxxxxxxxxxxxxxxxx','Perto do Parque de Aguas Claras','69857855','2015-08-07 02:53:47',NULL),(42,2,2228,1,1,'Carlos Antonio Potigua','1988-10-12 00:00:00',65,8,1,'Rua 21 no Morro da Cruz','Perto da Estaçao Águas Claras do Metrô','96585742','2015-08-07 02:59:56',NULL),(45,6,8,1,1,'Felipe Magalhaes Souto','1984-03-03 00:00:00',75,6,1,'Rua 07 Quadra 03 Casa 70','Sao Sebastiao','96588588','2015-08-07 03:11:51',NULL),(50,1,34,1,1,'Francis Nascimento Silva','1983-05-06 00:00:00',69,7,1,'Av. Jequitiba Nº 685 Ed. Bahamas Center Ap.310','Jardim Piracema','69855487','2015-08-08 03:24:21',NULL),(51,1,2021,1,1,'Sueiry Gomes de Souza','1982-07-06 00:00:00',78,9,2,'s3s33d3d3d3','d3ed3d3d3d3','71258540','2015-08-08 03:48:12',NULL),(52,1,2024,1,1,'Maria Graça de Lima','1987-05-28 00:00:00',53,10,2,'ttttttttttttttttttt','d3ed3d3d3d3','74985857','2015-08-08 03:55:34',NULL),(53,1,1724,1,1,'Juliana Carvalho Peres','1981-04-23 00:00:00',67,4,2,'yyyyyyyyyyyyyy','xxxxxxxxxxxxxxxxxxxxxxx','72698587','2015-08-08 04:37:00',NULL),(55,1,1724,1,1,'Ivone Lopes do Nacimento','1981-08-16 00:00:00',62,11,2,'xxxxxxxxxxxxxxxxxxx','xxxxxxxxxxxxxxxxxxxxxxx','74985857','2015-08-08 04:42:03',NULL),(56,1,4360,1,1,'Maria Gracilene','1990-05-28 00:00:00',69,8,2,'sssssssssssssssss','d3ed3d3d3d3','72698587','2015-08-08 04:44:08',NULL),(57,1,90,1,1,'Gabriel o Pensador','1987-07-15 00:00:00',59,2,1,'Av. Alameda das Rosas','d3ed3d3d3d3','74985857','2015-08-08 15:29:25',NULL),(58,6,2244,1,1,'Eber Serafim','1962-03-20 00:00:00',74,2,1,'s3s33d3d3d3','Jardim Piracema','87452178','2015-08-08 15:36:24',NULL),(59,6,36,1,1,'Elair Silva do Nascimento','1979-02-09 00:00:00',89,6,1,'s3s33d3d3d3','d3ed3d3d3d3','38587858','2015-08-09 04:49:53',NULL),(60,6,2120,1,1,'Fabiana Lopes','1985-05-14 00:00:00',51,4,2,'Av. Jequitiba Nº 685 Ed. Bahamas Center Ap.310','d3ed3d3d3d3','78547851','2015-08-09 19:12:39',NULL),(61,9,2120,1,1,'Wilmar Peres de Farias','2002-08-04 00:00:00',76,1,1,'s3s33d3d3d3','Perto da Estaçao Águas Claras do Metrô','59888752','2015-08-09 19:44:16',NULL),(62,6,1742,1,1,'Paulo Ueiner Moreira','1986-01-08 00:00:00',78,5,1,'Rua 07 Quadra 03 Casa 70','Perto do Parque de Aguas Claras','69858745','2015-08-11 03:20:23',NULL),(63,1,2120,1,1,'Armelio Pinto de Oliveira','1995-03-15 00:00:00',72,8,1,'Rua 21 no Morro da Cruz','Perto da Estaçao Águas Claras do Metrô','58758258','2015-08-12 00:58:06',NULL);
/*!40000 ALTER TABLE `atleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!50001 DROP VIEW IF EXISTS `auth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `auth` (
  `id_usuario` tinyint NOT NULL,
  `id_perfil` tinyint NOT NULL,
  `em_email` tinyint NOT NULL,
  `pw_senha` tinyint NOT NULL,
  `nm_usuario` tinyint NOT NULL,
  `id_contrato` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categoria_idade`
--

DROP TABLE IF EXISTS `categoria_idade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria_idade` (
  `id_categoria_idade` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_categoria_idade',
  `nm_categoria_idade` varchar(100) NOT NULL COMMENT 'nm_categoria_idade',
  `nr_sugestao_idade_inicial` smallint(6) DEFAULT NULL,
  `nr_sugestao_idade_final` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_idade`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='tb_categoria_idade';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_idade`
--

LOCK TABLES `categoria_idade` WRITE;
/*!40000 ALTER TABLE `categoria_idade` DISABLE KEYS */;
INSERT INTO `categoria_idade` VALUES (1,'Mirim',7,8),(2,'Infantil',9,11),(3,'Cadetes',12,14),(4,'Sub-21',16,21),(5,'Junior',15,17),(6,'Adulto',18,31),(7,'Master-1',32,34),(8,'Master-2',35,44),(9,'Master-3',45,100);
/*!40000 ALTER TABLE `categoria_idade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_peso`
--

DROP TABLE IF EXISTS `categoria_peso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria_peso` (
  `id_categoria_peso` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_categoria_peso',
  `nm_categoria_peso` varchar(100) NOT NULL COMMENT 'nm_categoria_peso',
  PRIMARY KEY (`id_categoria_peso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='tb_categoria_peso';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_peso`
--

LOCK TABLES `categoria_peso` WRITE;
/*!40000 ALTER TABLE `categoria_peso` DISABLE KEYS */;
INSERT INTO `categoria_peso` VALUES (1,'Mosca'),(2,'Galo'),(3,'Pena'),(4,'Palha'),(5,'Meio-leve'),(6,'Leve'),(7,'Meio-médio'),(8,'Médio'),(9,'Meio-pesado'),(10,'Pesado');
/*!40000 ALTER TABLE `categoria_peso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catequisando`
--

DROP TABLE IF EXISTS `catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catequisando` (
  `id_catequisando` int(11) NOT NULL AUTO_INCREMENT,
  `id_endereco` int(11) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `id_naturalidade` int(11) DEFAULT NULL,
  `id_telefone_residencial` int(11) DEFAULT NULL,
  `id_telefone_celular` int(11) DEFAULT NULL,
  `id_email` int(11) DEFAULT NULL,
  `id_situacao` int(11) DEFAULT NULL,
  `id_turno` int(11) DEFAULT NULL,
  `id_movimento_pastoral` int(11) DEFAULT NULL,
  `nm_catequisando` varchar(150) DEFAULT NULL,
  `nr_matricula` varchar(6) DEFAULT NULL,
  `dt_nascimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dt_ingresso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tx_observacao` text,
  `ds_situacao` varchar(100) DEFAULT NULL,
  `cs_necessidade_especial` char(1) DEFAULT NULL,
  `nm_necessidade_especial` varchar(50) DEFAULT NULL,
  `cs_estudante` char(1) DEFAULT NULL,
  `cs_participa_movimento_pastoral` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_catequisando`),
  KEY `FK_Reference_103` (`id_movimento_pastoral`),
  KEY `FK_Reference_90` (`id_sexo`),
  KEY `FK_Reference_91` (`id_endereco`),
  KEY `FK_Reference_92` (`id_naturalidade`),
  KEY `FK_Reference_94` (`id_telefone_residencial`),
  KEY `FK_Reference_95` (`id_telefone_celular`),
  KEY `FK_Reference_96` (`id_email`),
  KEY `FK_Reference_97` (`id_situacao`),
  KEY `FK_Reference_98` (`id_turno`),
  CONSTRAINT `FK_Reference_103` FOREIGN KEY (`id_movimento_pastoral`) REFERENCES `movimento_pastoral` (`id_movimento_pastoral`),
  CONSTRAINT `FK_Reference_90` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  CONSTRAINT `FK_Reference_91` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
  CONSTRAINT `FK_Reference_92` FOREIGN KEY (`id_naturalidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `FK_Reference_94` FOREIGN KEY (`id_telefone_residencial`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_95` FOREIGN KEY (`id_telefone_celular`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_96` FOREIGN KEY (`id_email`) REFERENCES `email` (`id_email`),
  CONSTRAINT `FK_Reference_97` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`),
  CONSTRAINT `FK_Reference_98` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catequisando`
--

LOCK TABLES `catequisando` WRITE;
/*!40000 ALTER TABLE `catequisando` DISABLE KEYS */;
INSERT INTO `catequisando` VALUES (2,1,1,1,1,1,1,1,1,1,'Dinoite meu Brother','32323','2016-01-02 02:00:00','2016-01-02 02:00:00','xxxx yyyy ','A','N',NULL,'S','S');
/*!40000 ALTER TABLE `catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catequisanto_etapa_cursou`
--

DROP TABLE IF EXISTS `catequisanto_etapa_cursou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catequisanto_etapa_cursou` (
  `id_catequisanto_etapa_cursou` int(11) NOT NULL AUTO_INCREMENT,
  `id_etapa` int(11) DEFAULT NULL,
  `id_catequisando` int(11) DEFAULT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_catequisanto_etapa_cursou`),
  KEY `FK_Reference_104` (`id_etapa`),
  KEY `FK_Reference_105` (`id_catequisando`),
  CONSTRAINT `FK_Reference_104` FOREIGN KEY (`id_etapa`) REFERENCES `etapa` (`id_etapa`),
  CONSTRAINT `FK_Reference_105` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catequisanto_etapa_cursou`
--

LOCK TABLES `catequisanto_etapa_cursou` WRITE;
/*!40000 ALTER TABLE `catequisanto_etapa_cursou` DISABLE KEYS */;
/*!40000 ALTER TABLE `catequisanto_etapa_cursou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catequista`
--

DROP TABLE IF EXISTS `catequista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catequista` (
  `id_catequista` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `id_naturalidade` int(11) DEFAULT NULL,
  `id_telefone_residencial` int(11) DEFAULT NULL,
  `id_telefone_celular` int(11) DEFAULT NULL,
  `id_email` int(11) DEFAULT NULL,
  `id_situacao` int(11) DEFAULT NULL,
  `id_detalhe_formacao` int(11) DEFAULT NULL,
  `nm_catequista` varchar(50) DEFAULT NULL,
  `nr_matricula` varchar(6) DEFAULT NULL,
  `dt_nascimento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dt_ingresso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tx_observacao` text,
  `ds_situacao` varchar(100) DEFAULT NULL,
  `cs_coordenador` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_catequista`),
  KEY `FK_Reference_133` (`id_detalhe_formacao`),
  KEY `FK_Reference_80` (`id_usuario`),
  KEY `FK_Reference_81` (`id_endereco`),
  KEY `FK_Reference_82` (`id_sexo`),
  KEY `FK_Reference_83` (`id_naturalidade`),
  KEY `FK_Reference_84` (`id_telefone_residencial`),
  KEY `FK_Reference_85` (`id_telefone_celular`),
  KEY `FK_Reference_86` (`id_email`),
  KEY `FK_Reference_89` (`id_situacao`),
  CONSTRAINT `FK_Reference_133` FOREIGN KEY (`id_detalhe_formacao`) REFERENCES `detalhe_formacao` (`id_detalhe_formacao`),
  CONSTRAINT `FK_Reference_80` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_81` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`),
  CONSTRAINT `FK_Reference_82` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  CONSTRAINT `FK_Reference_83` FOREIGN KEY (`id_naturalidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `FK_Reference_84` FOREIGN KEY (`id_telefone_residencial`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_85` FOREIGN KEY (`id_telefone_celular`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_86` FOREIGN KEY (`id_email`) REFERENCES `email` (`id_email`),
  CONSTRAINT `FK_Reference_89` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catequista`
--

LOCK TABLES `catequista` WRITE;
/*!40000 ALTER TABLE `catequista` DISABLE KEYS */;
/*!40000 ALTER TABLE `catequista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catequista_etapa_atuacao`
--

DROP TABLE IF EXISTS `catequista_etapa_atuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catequista_etapa_atuacao` (
  `id_catequista_etapa_atuacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_catequista` int(11) DEFAULT NULL,
  `id_etapa` int(11) DEFAULT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_catequista_etapa_atuacao`),
  KEY `FK_Reference_78` (`id_catequista`),
  KEY `FK_Reference_79` (`id_etapa`),
  CONSTRAINT `FK_Reference_78` FOREIGN KEY (`id_catequista`) REFERENCES `catequista` (`id_catequista`),
  CONSTRAINT `FK_Reference_79` FOREIGN KEY (`id_etapa`) REFERENCES `etapa` (`id_etapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catequista_etapa_atuacao`
--

LOCK TABLES `catequista_etapa_atuacao` WRITE;
/*!40000 ALTER TABLE `catequista_etapa_atuacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `catequista_etapa_atuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catequista_turma`
--

DROP TABLE IF EXISTS `catequista_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catequista_turma` (
  `id_catequista_turma` int(11) NOT NULL AUTO_INCREMENT,
  `id_turma` int(11) DEFAULT NULL,
  `id_catequista` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_catequista_turma`),
  KEY `FK_Reference_125` (`id_turma`),
  KEY `FK_Reference_126` (`id_catequista`),
  CONSTRAINT `FK_Reference_125` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  CONSTRAINT `FK_Reference_126` FOREIGN KEY (`id_catequista`) REFERENCES `catequista` (`id_catequista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena os Catequistas Responsaveis por uma turma';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catequista_turma`
--

LOCK TABLES `catequista_turma` WRITE;
/*!40000 ALTER TABLE `catequista_turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `catequista_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) NOT NULL,
  `nm_cidade` varchar(150) DEFAULT NULL COMMENT '{"label":"Cidade"}',
  PRIMARY KEY (`id_cidade`),
  KEY `ix_cidades_estados` (`id_estado`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_cidades_estados1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9715 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,1,'Acrelandia'),(2,1,'Assis Brasil'),(3,1,'Brasileia'),(4,1,'Bujari'),(5,1,'Capixaba'),(6,1,'Cruzeiro do Sul'),(7,1,'Epitaciolandia'),(8,1,'Feijo'),(9,1,'Jordao'),(10,1,'Mancio Lima'),(11,1,'Manoel Urbano'),(12,1,'Marechal Thaumaturgo'),(13,1,'Placido de Castro'),(14,1,'Porto Acre'),(15,1,'Porto Walter'),(16,1,'Rio Branco'),(17,1,'Rodrigues Alves'),(18,1,'Santa Rosa'),(19,1,'Sena Madureira'),(20,1,'Senador Guiomard'),(21,1,'Tarauaca'),(22,1,'Xapuri'),(23,2,'Agua Branca'),(24,2,'Alazao'),(25,2,'Alecrim'),(26,2,'Anadia'),(27,2,'Anel'),(28,2,'Anum Novo'),(29,2,'Anum Velho'),(30,2,'Arapiraca'),(31,2,'Atalaia'),(32,2,'Baixa da Onca'),(33,2,'Baixa do Capim'),(34,2,'Balsamo'),(35,2,'Bananeiras'),(36,2,'Barra de Santo Antonio'),(37,2,'Barra de Sao Miguel'),(38,2,'Barra do Bonifacio'),(39,2,'Barra Grande'),(40,2,'Batalha'),(41,2,'Batingas'),(42,2,'Belem'),(43,2,'Belo Monte'),(44,2,'Boa Sorte'),(45,2,'Boa Vista'),(46,2,'Boca da Mata'),(47,2,'Bom Jardim'),(48,2,'Bonifacio'),(49,2,'Branquinha'),(50,2,'Cacimbinhas'),(51,2,'Cajarana'),(52,2,'Cajueiro'),(53,2,'Caldeiroes de Cima'),(54,2,'Camadanta'),(55,2,'Campestre'),(56,2,'Campo Alegre'),(57,2,'Campo Grande'),(58,2,'Canaa'),(59,2,'Canafistula'),(60,2,'Canapi'),(61,2,'Canastra'),(62,2,'Cangandu'),(63,2,'Capela'),(64,2,'Carneiros'),(65,2,'Carrasco'),(66,2,'Cha Preta'),(67,2,'Coite do Noia'),(68,2,'Colonia Leopoldina'),(69,2,'Coqueiro Seco'),(70,2,'Coruripe'),(71,2,'Coruripe da Cal'),(72,2,'Craibas'),(73,2,'Delmiro Gouveia'),(74,2,'Dois Riachos'),(75,2,'Entremontes'),(76,2,'Estrela de Alagoas'),(77,2,'Feira Grande'),(78,2,'Feliz Deserto'),(79,2,'Fernao Velho'),(80,2,'Flexeiras'),(81,2,'Floriano Peixoto'),(82,2,'Gaspar'),(83,2,'Girau do Ponciano'),(84,2,'Ibateguara'),(85,2,'Igaci'),(86,2,'Igreja Nova'),(87,2,'Inhapi'),(88,2,'Jacare dos Homens'),(89,2,'Jacuipe'),(90,2,'Japaratinga'),(91,2,'Jaramataia'),(92,2,'Jenipapo'),(93,2,'Joaquim Gomes'),(94,2,'Jundia'),(95,2,'Junqueiro'),(96,2,'Lagoa da Areia'),(97,2,'Lagoa da Canoa'),(98,2,'Lagoa da Pedra'),(99,2,'Lagoa Dantas'),(100,2,'Lagoa do Caldeirao'),(101,2,'Lagoa do Canto'),(102,2,'Lagoa do Exu'),(103,2,'Lagoa do Rancho'),(104,2,'Lajes do Caldeirao'),(105,2,'Laranjal'),(106,2,'Limoeiro de Anadia'),(107,2,'Maceio'),(108,2,'Major Isidoro'),(109,2,'Mar Vermelho'),(110,2,'Maragogi'),(111,2,'Maravilha'),(112,2,'Marechal Deodoro'),(113,2,'Maribondo'),(114,2,'Massaranduba'),(115,2,'Mata Grande'),(116,2,'Matriz de Camaragibe'),(117,2,'Messias'),(118,2,'Minador do Negrao'),(119,2,'Monteiropolis'),(120,2,'Moreira'),(121,2,'Munguba'),(122,2,'Murici'),(123,2,'Novo Lino'),(124,2,'Olho D Agua Grande'),(125,2,'Olho D\'agua Das Flores'),(126,2,'Olho D\'agua De Cima'),(127,2,'Olho D\'agua Do Casado'),(128,2,'Olho D\'agua Dos Dandanhas'),(129,2,'Olivenca'),(130,2,'Ouro Branco'),(131,2,'Palestina'),(132,2,'Palmeira de Fora'),(133,2,'Palmeira dos Indios'),(134,2,'Pao de Acucar'),(135,2,'Pariconha'),(136,2,'Paripueira'),(137,2,'Passo de Camaragibe'),(138,2,'Pau D\'arco'),(139,2,'Pau Ferro'),(140,2,'Paulo Jacinto'),(141,2,'Penedo'),(142,2,'Piacabucu'),(143,2,'Pilar'),(144,2,'Pindoba'),(145,2,'Piranhas'),(146,2,'Pocao'),(147,2,'Poco da Pedra'),(148,2,'Poco das Trincheiras'),(149,2,'Porto Calvo'),(150,2,'Porto de Pedras'),(151,2,'Porto Real do Colegio'),(152,2,'Poxim'),(153,2,'Quebrangulo'),(154,2,'Riacho do Sertao'),(155,2,'Riacho Fundo de Cima'),(156,2,'Rio Largo'),(157,2,'Rocha Cavalcante'),(158,2,'Roteiro'),(159,2,'Santa Efigenia'),(160,2,'Santa Luzia do Norte'),(161,2,'Santana do Ipanema'),(162,2,'Santana do Mundau'),(163,2,'Santo Antonio'),(164,2,'Sao Bras'),(165,2,'Sao Jose da Laje'),(166,2,'Sao Jose da Tapera'),(167,2,'Sao Luis do Quitunde'),(168,2,'Sao Miguel dos Campos'),(169,2,'Sao Miguel dos Milagres'),(170,2,'Sao Sebastiao'),(171,2,'Sapucaia'),(172,2,'Satuba'),(173,2,'Senador Rui Palmeira'),(174,2,'Serra da Mandioca'),(175,2,'Serra do Sao Jose'),(176,2,'Taboleiro do Pinto'),(177,2,'Taboquinha'),(178,2,'Tanque D\'arca'),(179,2,'Taquarana'),(180,2,'Tatuamunha'),(181,2,'Teotonio Vilela'),(182,2,'Traipu'),(183,2,'Uniao dos Palmares'),(184,2,'Usina Camacari'),(185,2,'Vicosa'),(186,2,'Vila Aparecida'),(187,2,'Vila Sao Francisco'),(188,3,'Alvaraes'),(189,3,'Amatari'),(190,3,'Amatura'),(191,3,'Anama'),(192,3,'Anori'),(193,3,'Apui'),(194,3,'Ariau'),(195,3,'Atalaia do Norte'),(196,3,'Augusto Montenegro'),(197,3,'Autazes'),(198,3,'Axinim'),(199,3,'Badajos'),(200,3,'Balbina'),(201,3,'Barcelos'),(202,3,'Barreirinha'),(203,3,'Benjamin Constant'),(204,3,'Beruri'),(205,3,'Boa Vista do Ramos'),(206,3,'Boca do Acre'),(207,3,'Borba'),(208,3,'Caapiranga'),(209,3,'Cameta'),(210,3,'Canuma'),(211,3,'Canutama'),(212,3,'Carauari'),(213,3,'Careiro'),(214,3,'Careiro da Varzea'),(215,3,'Carvoeiro'),(216,3,'Coari'),(217,3,'Codajas'),(218,3,'Cucui'),(219,3,'Eirunepe'),(220,3,'Envira'),(221,3,'Floriano Peixoto'),(222,3,'Fonte Boa'),(223,3,'Freguesia do Andira'),(224,3,'Guajara'),(225,3,'Humaita'),(226,3,'Iauarete'),(227,3,'Icana'),(228,3,'Ipixuna'),(229,3,'Iranduba'),(230,3,'Itacoatiara'),(231,3,'Itamarati'),(232,3,'Itapiranga'),(233,3,'Japura'),(234,3,'Jurua'),(235,3,'Jutai'),(236,3,'Labrea'),(237,3,'Lago Preto'),(238,3,'Manacapuru'),(239,3,'Manaquiri'),(240,3,'Manaus'),(241,3,'Manicore'),(242,3,'Maraa'),(243,3,'Massauari'),(244,3,'Maues'),(245,3,'Mocambo'),(246,3,'Moura'),(247,3,'Murutinga'),(248,3,'Nhamunda'),(249,3,'Nova Olinda do Norte'),(250,3,'Novo Airao'),(251,3,'Novo Aripuana'),(252,3,'Osorio da Fonseca'),(253,3,'Parintins'),(254,3,'Pauini'),(255,3,'Pedras'),(256,3,'Presidente Figueiredo'),(257,3,'Repartimento'),(258,3,'Rio Preto da Eva'),(259,3,'Santa Isabel do Rio Negro'),(260,3,'Santa Rita'),(261,3,'Santo Antonio do Ica'),(262,3,'Sao Felipe'),(263,3,'Sao Gabriel da Cachoeira'),(264,3,'Sao Paulo de Olivenca'),(265,3,'Sao Sebastiao do Uatuma'),(266,3,'Silves'),(267,3,'Tabatinga'),(268,3,'Tapaua'),(269,3,'Tefe'),(270,3,'Tonantins'),(271,3,'Uarini'),(272,3,'Urucara'),(273,3,'Urucurituba'),(274,3,'Vila Pitinga'),(275,4,'Abacate da Pedreira'),(276,4,'Agua Branca do Amapari'),(277,4,'Amapa'),(278,4,'Amapari'),(279,4,'Ambe'),(280,4,'Aporema'),(281,4,'Ariri'),(282,4,'Bailique'),(283,4,'Boca do Jari'),(284,4,'Calcoene'),(285,4,'Cantanzal'),(286,4,'Carmo'),(287,4,'Clevelandia do Norte'),(288,4,'Corre Agua'),(289,4,'Cunani'),(290,4,'Curiau'),(291,4,'Cutias'),(292,4,'Fazendinha'),(293,4,'Ferreira Gomes'),(294,4,'Fortaleza'),(295,4,'Gaivota'),(296,4,'Gurupora'),(297,4,'Igarape do Lago'),(298,4,'Ilha de Santana'),(299,4,'Inaja'),(300,4,'Itaubal'),(301,4,'Laranjal do Jari'),(302,4,'Livramento do Pacui'),(303,4,'Lourenco'),(304,4,'Macapa'),(305,4,'Mazagao'),(306,4,'Mazagao Velho'),(307,4,'Oiapoque'),(308,4,'Paredao'),(309,4,'Porto Grande'),(310,4,'Pracuuba'),(311,4,'Santa Luzia do Pacui'),(312,4,'Santa Maria'),(313,4,'Santana'),(314,4,'Sao Joaquim do Pacui'),(315,4,'Sao Sebastiao do Livramento'),(316,4,'Sao Tome'),(317,4,'Serra do Navio'),(318,4,'Sucuriju'),(319,4,'Tartarugalzinho'),(320,4,'Vila Velha'),(321,4,'Vitoria do Jari'),(322,5,'Abadia'),(323,5,'Abaira'),(324,5,'Abare'),(325,5,'Abelhas'),(326,5,'Abobora'),(327,5,'Abrantes'),(328,5,'Acajutiba'),(329,5,'Acu da Torre'),(330,5,'Acudina'),(331,5,'Acupe'),(332,5,'Adustina'),(333,5,'Afligidos'),(334,5,'Afranio Peixoto'),(335,5,'Agua Doce'),(336,5,'Agua Fria'),(337,5,'Aguas do Paulista'),(338,5,'Aiquara'),(339,5,'Alagoinhas'),(340,5,'Alcobaca'),(341,5,'Alegre'),(342,5,'Algodao'),(343,5,'Algodoes'),(344,5,'Almadina'),(345,5,'Alto Bonito'),(346,5,'Amado Bahia'),(347,5,'Amaniu'),(348,5,'Amargosa'),(349,5,'Amelia Rodrigues'),(350,5,'America Dourada'),(351,5,'Americo Alves'),(352,5,'Anage'),(353,5,'Andarai'),(354,5,'Andorinha'),(355,5,'Angical'),(356,5,'Angico'),(357,5,'Anguera'),(358,5,'Antas'),(359,5,'Antonio Cardoso'),(360,5,'Antonio Goncalves'),(361,5,'Apora'),(362,5,'Apuarema'),(363,5,'Aracas'),(364,5,'Aracatu'),(365,5,'Araci'),(366,5,'Aramari'),(367,5,'Arapiranga'),(368,5,'Arataca'),(369,5,'Aratuipe'),(370,5,'Areias'),(371,5,'Arembepe'),(372,5,'Argoim'),(373,5,'Argolo'),(374,5,'Aribice'),(375,5,'Aritagua'),(376,5,'Aurelino Leal'),(377,5,'Baianopolis'),(378,5,'Baixa do Palmeira'),(379,5,'Baixa Grande'),(380,5,'Baixao'),(381,5,'Baixinha'),(382,5,'Baluarte'),(383,5,'Banco Central'),(384,5,'Banco da Vitoria'),(385,5,'Bandeira do Almada'),(386,5,'Bandeira do Colonia'),(387,5,'Bandiacu'),(388,5,'Banzae'),(389,5,'Baraunas'),(390,5,'Barcelos do Sul'),(391,5,'Barra'),(392,5,'Barra da Estiva'),(393,5,'Barra do Choca'),(394,5,'Barra do Jacuipe'),(395,5,'Barra do Mendes'),(396,5,'Barra do Pojuca'),(397,5,'Barra do Rocha'),(398,5,'Barra do Tarrachil'),(399,5,'Barracas'),(400,5,'Barreiras'),(401,5,'Barro Alto'),(402,5,'Barro Preto'),(403,5,'Barro Vermelho'),(404,5,'Barrocas'),(405,5,'Bastiao'),(406,5,'Bate Pe'),(407,5,'Batinga'),(408,5,'Bela Flor'),(409,5,'Belem da Cachoeira'),(410,5,'Belmonte'),(411,5,'Belo Campo'),(412,5,'Bem-bom'),(413,5,'Bendego'),(414,5,'Bento Simoes'),(415,5,'Biritinga'),(416,5,'Boa Espera'),(417,5,'Boa Nova'),(418,5,'Boa Uniao'),(419,5,'Boa Vista do Lagamar'),(420,5,'Boa Vista do Tupim'),(421,5,'Boacu'),(422,5,'Boca do Corrego'),(423,5,'Bom Jesus da Lapa'),(424,5,'Bom Jesus da Serra'),(425,5,'Bom Sossego'),(426,5,'Bonfim da Feira'),(427,5,'Boninal'),(428,5,'Bonito'),(429,5,'Boquira'),(430,5,'Botupora'),(431,5,'Botuquara'),(432,5,'Brejinho das Ametistas'),(433,5,'Brejo da Serra'),(434,5,'Brejo Luiza de Brito'),(435,5,'Brejo Novo'),(436,5,'Brejoes'),(437,5,'Brejolandia'),(438,5,'Brotas de Macaubas'),(439,5,'Brumado'),(440,5,'Bucuituba'),(441,5,'Buerarema'),(442,5,'Buracica'),(443,5,'Buranhem'),(444,5,'Buril'),(445,5,'Buris de Abrantes'),(446,5,'Buritirama'),(447,5,'Caatiba'),(448,5,'Cabaceiras do Paraguacu'),(449,5,'Cabralia'),(450,5,'Cacha Pregos'),(451,5,'Cachoeira'),(452,5,'Cachoeira do Mato'),(453,5,'Cacule'),(454,5,'Caem'),(455,5,'Caetanos'),(456,5,'Caete-acu'),(457,5,'Caetite'),(458,5,'Cafarnaum'),(459,5,'Caicara'),(460,5,'Caimbe'),(461,5,'Cairu'),(462,5,'Caiubi'),(463,5,'Cajui'),(464,5,'Caldas do Jorro'),(465,5,'Caldeirao'),(466,5,'Caldeirao Grande'),(467,5,'Caldeiras'),(468,5,'Camacan'),(469,5,'Camacari'),(470,5,'Camamu'),(471,5,'Camassandi'),(472,5,'Camirim'),(473,5,'Campinhos'),(474,5,'Campo Alegre de Lourdes'),(475,5,'Campo Formoso'),(476,5,'Camurugi'),(477,5,'Canabravinha'),(478,5,'Canapolis'),(479,5,'Canarana'),(480,5,'Canatiba'),(481,5,'Canavieiras'),(482,5,'Canche'),(483,5,'Candeal'),(484,5,'Candeias'),(485,5,'Candiba'),(486,5,'Candido Sales'),(487,5,'Canoao'),(488,5,'Cansancao'),(489,5,'Canto do Sol'),(490,5,'Canudos'),(491,5,'Capao'),(492,5,'Capela do Alto Alegre'),(493,5,'Capim Grosso'),(494,5,'Caraguatai'),(495,5,'Caraibas'),(496,5,'Caraibuna'),(497,5,'Caraipe'),(498,5,'Caraiva'),(499,5,'Caravelas'),(500,5,'Cardeal da Silva'),(501,5,'Carinhanha'),(502,5,'Caripare'),(503,5,'Carnaiba do Sertao'),(504,5,'Carrapichel'),(505,5,'Casa Nova'),(506,5,'Castelo Novo'),(507,5,'Castro Alves'),(508,5,'Catinga do Moura'),(509,5,'Catingal'),(510,5,'Catolandia'),(511,5,'Catoles'),(512,5,'Catolezinho'),(513,5,'Catu'),(514,5,'Catu de Abrantes'),(515,5,'Caturama'),(516,5,'Cavunge'),(517,5,'Central'),(518,5,'Ceraima'),(519,5,'Chorrocho'),(520,5,'Cicero Dantas'),(521,5,'Cinco Rios'),(522,5,'Cipo'),(523,5,'Coaraci'),(524,5,'Cocos'),(525,5,'Colonia'),(526,5,'Comercio'),(527,5,'Conceicao da Feira'),(528,5,'Conceicao do Almeida'),(529,5,'Conceicao do Coite'),(530,5,'Conceicao do Jacuipe'),(531,5,'Conde'),(532,5,'Condeuba'),(533,5,'Contendas do Sincora'),(534,5,'Copixaba'),(535,5,'Coqueiros'),(536,5,'Coquinhos'),(537,5,'Coracao de Maria'),(538,5,'Cordeiros'),(539,5,'Coribe'),(540,5,'Coronel Joao Sa'),(541,5,'Correntina'),(542,5,'Corta Mao'),(543,5,'Cotegipe'),(544,5,'Coutos'),(545,5,'Cravolandia'),(546,5,'Crisopolis'),(547,5,'Cristalandia'),(548,5,'Cristopolis'),(549,5,'Crussai'),(550,5,'Cruz das Almas'),(551,5,'Cumuruxatiba'),(552,5,'Cunhangi'),(553,5,'Curaca'),(554,5,'Curral Falso'),(555,5,'Dario Meira'),(556,5,'Delfino'),(557,5,'Descoberto'),(558,5,'Dias Coelho'),(559,5,'Dias D Avila'),(560,5,'Diogenes Sampaio'),(561,5,'Dom Basilio'),(562,5,'Dom Macedo Costa'),(563,5,'Dona Maria'),(564,5,'Duas Barras do Morro'),(565,5,'Elisio Medrado'),(566,5,'Encruzilhada'),(567,5,'Engenheiro Franca'),(568,5,'Engenheiro Pontes'),(569,5,'Entre Rios'),(570,5,'Erico Cardoso'),(571,5,'Esplanada'),(572,5,'Euclides da Cunha'),(573,5,'Eunapolis'),(574,5,'Fatima'),(575,5,'Feira da Mata'),(576,5,'Feira de Santana'),(577,5,'Ferradas'),(578,5,'Filadelfia'),(579,5,'Filanesia'),(580,5,'Firmino Alves'),(581,5,'Floresta Azul'),(582,5,'Formosa do Rio Preto'),(583,5,'Franca'),(584,5,'Gabiarra'),(585,5,'Galeao'),(586,5,'Gamboa'),(587,5,'Gameleira da Lapa'),(588,5,'Gameleira do Assurua'),(589,5,'Gandu'),(590,5,'Gaviao'),(591,5,'Gentio do Ouro'),(592,5,'Geolandia'),(593,5,'Gloria'),(594,5,'Gongogi'),(595,5,'Governador Joao Durval Carneiro'),(596,5,'Governador Mangabeira'),(597,5,'Guagirus'),(598,5,'Guai'),(599,5,'Guajeru'),(600,5,'Guanambi'),(601,5,'Guapira'),(602,5,'Guarajuba'),(603,5,'Guaratinga'),(604,5,'Guerem'),(605,5,'Guine'),(606,5,'Guirapa'),(607,5,'Gurupa Mirim'),(608,5,'Heliopolis'),(609,5,'Helvecia'),(610,5,'Hidrolandia'),(611,5,'Humildes'),(612,5,'Iacu'),(613,5,'Ibatui'),(614,5,'Ibiacu'),(615,5,'Ibiajara'),(616,5,'Ibiapora'),(617,5,'Ibiassuce'),(618,5,'Ibicarai'),(619,5,'Ibicoara'),(620,5,'Ibicui'),(621,5,'Ibipeba'),(622,5,'Ibipetum'),(623,5,'Ibipitanga'),(624,5,'Ibiquera'),(625,5,'Ibiraba'),(626,5,'Ibiraja'),(627,5,'Ibiranhem'),(628,5,'Ibirapitanga'),(629,5,'Ibirapua'),(630,5,'Ibirataia'),(631,5,'Ibitiara'),(632,5,'Ibitiguira'),(633,5,'Ibitira'),(634,5,'Ibitita'),(635,5,'Ibitunane'),(636,5,'Ibitupa'),(637,5,'Ibo'),(638,5,'Ibotirama'),(639,5,'Ichu'),(640,5,'Ico'),(641,5,'Igapora'),(642,5,'Igara'),(643,5,'Igarite'),(644,5,'Igatu'),(645,5,'Igrapiuna'),(646,5,'Igua'),(647,5,'Iguai'),(648,5,'Iguaibi'),(649,5,'Iguatemi'),(650,5,'Iguira'),(651,5,'Iguitu'),(652,5,'Ilha de Mare'),(653,5,'Ilheus'),(654,5,'Indai'),(655,5,'Inema'),(656,5,'Inhambupe'),(657,5,'Inhata'),(658,5,'Inhaumas'),(659,5,'Inhobim'),(660,5,'Inubia'),(661,5,'Ipecaeta'),(662,5,'Ipiau'),(663,5,'Ipira'),(664,5,'Ipiuna'),(665,5,'Ipucaba'),(666,5,'Ipupiara'),(667,5,'Irajuba'),(668,5,'Iramaia'),(669,5,'Iraporanga'),(670,5,'Iraquara'),(671,5,'Irara'),(672,5,'Irece'),(673,5,'Irundiara'),(674,5,'Ita-azul'),(675,5,'Itabela'),(676,5,'Itaberaba'),(677,5,'Itabuna'),(678,5,'Itacare'),(679,5,'Itacava'),(680,5,'Itachama'),(681,5,'Itacimirim'),(682,5,'Itaete'),(683,5,'Itagi'),(684,5,'Itagiba'),(685,5,'Itagimirim'),(686,5,'Itaguacu da Bahia'),(687,5,'Itaia'),(688,5,'Itaibo'),(689,5,'Itaipu'),(690,5,'Itaitu'),(691,5,'Itajai'),(692,5,'Itaju do Colonia'),(693,5,'Itajubaquara'),(694,5,'Itajuipe'),(695,5,'Itajuru'),(696,5,'Itamaraju'),(697,5,'Itamari'),(698,5,'Itambe'),(699,5,'Itamira'),(700,5,'Itamotinga'),(701,5,'Itanage'),(702,5,'Itanagra'),(703,5,'Itanhem'),(704,5,'Itanhi'),(705,5,'Itaparica'),(706,5,'Itape'),(707,5,'Itapebi'),(708,5,'Itapeipu'),(709,5,'Itapetinga'),(710,5,'Itapicuru'),(711,5,'Itapirema'),(712,5,'Itapitanga'),(713,5,'Itapora'),(714,5,'Itapura'),(715,5,'Itaquara'),(716,5,'Itaquarai'),(717,5,'Itarantim'),(718,5,'Itati'),(719,5,'Itatim'),(720,5,'Itatingui'),(721,5,'Itirucu'),(722,5,'Itiuba'),(723,5,'Itororo'),(724,5,'Ituacu'),(725,5,'Itubera'),(726,5,'Itupeva'),(727,5,'Iuiu'),(728,5,'Jaborandi'),(729,5,'Jacaraci'),(730,5,'Jacobina'),(731,5,'Jacu'),(732,5,'Jacuipe'),(733,5,'Jacuruna'),(734,5,'Jaguaquara'),(735,5,'Jaguara'),(736,5,'Jaguarari'),(737,5,'Jaguaripe'),(738,5,'Jaiba'),(739,5,'Jandaira'),(740,5,'Japomirim'),(741,5,'Japu'),(742,5,'Jaua'),(743,5,'Jequie'),(744,5,'Jequirica'),(745,5,'Jeremoabo'),(746,5,'Jiribatuba'),(747,5,'Jitauna'),(748,5,'Joao Amaro'),(749,5,'Joao Correia'),(750,5,'Joao Dourado'),(751,5,'Jose Goncalves'),(752,5,'Juacema'),(753,5,'Juazeiro'),(754,5,'Jucurucu'),(755,5,'Juerana'),(756,5,'Junco'),(757,5,'Jupagua'),(758,5,'Juraci'),(759,5,'Juremal'),(760,5,'Jussara'),(761,5,'Jussari'),(762,5,'Jussiape'),(763,5,'Km Sete'),(764,5,'Lafaiete Coutinho'),(765,5,'Lagoa Clara'),(766,5,'Lagoa de Melquiades'),(767,5,'Lagoa do Boi'),(768,5,'Lagoa Grande'),(769,5,'Lagoa Jose Luis'),(770,5,'Lagoa Preta'),(771,5,'Lagoa Real'),(772,5,'Laje'),(773,5,'Laje do Banco'),(774,5,'Lajedao'),(775,5,'Lajedinho'),(776,5,'Lajedo Alto'),(777,5,'Lajedo do Tabocal'),(778,5,'Lamarao'),(779,5,'Lamarao do Passe'),(780,5,'Lapao'),(781,5,'Largo'),(782,5,'Lauro de Freitas'),(783,5,'Lencois'),(784,5,'Licinio de Almeida'),(785,5,'Limoeiro do Bom Viver'),(786,5,'Livramento do Brumado'),(787,5,'Lucaia'),(788,5,'Luis Viana'),(789,5,'Lustosa'),(790,5,'Macajuba'),(791,5,'Macarani'),(792,5,'Macaubas'),(793,5,'Macurure'),(794,5,'Madre de Deus'),(795,5,'Maetinga'),(796,5,'Maiquinique'),(797,5,'Mairi'),(798,5,'Malhada'),(799,5,'Malhada de Pedras'),(800,5,'Mandiroba'),(801,5,'Mangue Seco'),(802,5,'Maniacu'),(803,5,'Manoel Vitorino'),(804,5,'Mansidao'),(805,5,'Mantiba'),(806,5,'Mar Grande'),(807,5,'Maracas'),(808,5,'Maragogipe'),(809,5,'Maragogipinho'),(810,5,'Marau'),(811,5,'Marcionilio Souza'),(812,5,'Marcolino Moura'),(813,5,'Maria Quiteria'),(814,5,'Maricoabo'),(815,5,'Mariquita'),(816,5,'Mascote'),(817,5,'Massacara'),(818,5,'Massaroca'),(819,5,'Mata da Alianca'),(820,5,'Mata de Sao Joao'),(821,5,'Mataripe'),(822,5,'Matina'),(823,5,'Matinha'),(824,5,'Medeiros Neto'),(825,5,'Miguel Calmon'),(826,5,'Milagres'),(827,5,'Mimoso do Oeste'),(828,5,'Minas do Espirito Santo'),(829,5,'Minas do Mimoso'),(830,5,'Mirandela'),(831,5,'Miranga'),(832,5,'Mirangaba'),(833,5,'Mirante'),(834,5,'Mocambo'),(835,5,'Mogiquicaba'),(836,5,'Monte Cruzeiro'),(837,5,'Monte Gordo'),(838,5,'Monte Reconcavo'),(839,5,'Monte Santo'),(840,5,'Morpara'),(841,5,'Morrinhos'),(842,5,'Morro das Flores'),(843,5,'Morro de Sao Paulo'),(844,5,'Morro do Chapeu'),(845,5,'Mortugaba'),(846,5,'Mucuge'),(847,5,'Mucuri'),(848,5,'Mulungu do Morro'),(849,5,'Mundo Novo'),(850,5,'Muniz Ferreira'),(851,5,'Muquem do Sao Francisco'),(852,5,'Muritiba'),(853,5,'Mutas'),(854,5,'Mutuipe'),(855,5,'Nage'),(856,5,'Narandiba'),(857,5,'Nazare'),(858,5,'Nilo Pecanha'),(859,5,'Nordestina'),(860,5,'Nova Alegria'),(861,5,'Nova Brasilia'),(862,5,'Nova Canaa'),(863,5,'Nova Fatima'),(864,5,'Nova Ibia'),(865,5,'Nova Itaipe'),(866,5,'Nova Itarana'),(867,5,'Nova Lidice'),(868,5,'Nova Redencao'),(869,5,'Nova Soure'),(870,5,'Nova Vicosa'),(871,5,'Novo Acre'),(872,5,'Novo Horizonte'),(873,5,'Novo Triunfo'),(874,5,'Nucleo Residencial Pilar'),(875,5,'Nuguacu'),(876,5,'Olhos D\'agua Do Seco'),(877,5,'Olhos D\'agua Do Serafim'),(878,5,'Olindina'),(879,5,'Oliveira dos Brejinhos'),(880,5,'Olivenca'),(881,5,'Onha'),(882,5,'Oriente Novo'),(883,5,'Ouricana'),(884,5,'Ouricangas'),(885,5,'Ouricuri do Ouro'),(886,5,'Ourolandia'),(887,5,'Outeiro Redondo'),(888,5,'Paiol'),(889,5,'Pajeu do Vento'),(890,5,'Palame'),(891,5,'Palmas de Monte Alto'),(892,5,'Palmeiras'),(893,5,'Parafuso'),(894,5,'Paramirim'),(895,5,'Parateca'),(896,5,'Paratinga'),(897,5,'Paripiranga'),(898,5,'Pataiba'),(899,5,'Patamute'),(900,5,'Pau A Pique'),(901,5,'Pau Brasil'),(902,5,'Paulo Afonso'),(903,5,'Pe de Serra'),(904,5,'Pedrao'),(905,5,'Pedras Altas do Mirim'),(906,5,'Pedro Alexandre'),(907,5,'Peixe'),(908,5,'Petim'),(909,5,'Piabanha'),(910,5,'Piata'),(911,5,'Picarrao'),(912,5,'Pilao Arcado'),(913,5,'Pimenteira'),(914,5,'Pindai'),(915,5,'Pindobacu'),(916,5,'Pinhoes'),(917,5,'Pintadas'),(918,5,'Piragi'),(919,5,'Pirai do Norte'),(920,5,'Piraja'),(921,5,'Pirajuia'),(922,5,'Piri'),(923,5,'Piripa'),(924,5,'Piritiba'),(925,5,'Pituba'),(926,5,'Planaltino'),(927,5,'Planalto'),(928,5,'Poco Central'),(929,5,'Poco de Fora'),(930,5,'Pocoes'),(931,5,'Pocos'),(932,5,'Pojuca'),(933,5,'Polo Petroquimico de Camacari'),(934,5,'Ponta da Areia'),(935,5,'Ponto Novo'),(936,5,'Porto Novo'),(937,5,'Porto Seguro'),(938,5,'Posto da Mata'),(939,5,'Potiragua'),(940,5,'Poxim do Sul'),(941,5,'Prado'),(942,5,'Presidente Dutra'),(943,5,'Presidente Janio Quadros'),(944,5,'Presidente Tancredo Neves'),(945,5,'Prevenido'),(946,5,'Quaracu'),(947,5,'Queimadas'),(948,5,'Quijingue'),(949,5,'Quixaba'),(950,5,'Quixabeira'),(951,5,'Rafael Jambeiro'),(952,5,'Recife'),(953,5,'Remanso'),(954,5,'Remedios'),(955,5,'Retirolandia'),(956,5,'Riachao das Neves'),(957,5,'Riachao do Jacuipe'),(958,5,'Riachao do Utinga'),(959,5,'Riacho da Guia'),(960,5,'Riacho de Santana'),(961,5,'Riacho Seco'),(962,5,'Ribeira do Amparo'),(963,5,'Ribeira do Pombal'),(964,5,'Ribeirao do Largo'),(965,5,'Ribeirao do Salto'),(966,5,'Rio da Dona'),(967,5,'Rio de Contas'),(968,5,'Rio do Antonio'),(969,5,'Rio do Braco'),(970,5,'Rio do Meio'),(971,5,'Rio do Pires'),(972,5,'Rio Fundo'),(973,5,'Rio Real'),(974,5,'Rodelas'),(975,5,'Ruy Barbosa'),(976,5,'Saldanha'),(977,5,'Salgadalia'),(978,5,'Salinas da Margarida'),(979,5,'Salobrinho'),(980,5,'Salobro'),(981,5,'Salvador'),(982,5,'Sambaiba'),(983,5,'Santa Barbara'),(984,5,'Santa Brigida'),(985,5,'Santa Cruz Cabralia'),(986,5,'Santa Cruz da Vitoria'),(987,5,'Santa Ines'),(988,5,'Santa Luzia'),(989,5,'Santa Maria da Vitoria'),(990,5,'Santa Rita de Cassia'),(991,5,'Santa Terezinha'),(992,5,'Santaluz'),(993,5,'Santana'),(994,5,'Santana do Sobrado'),(995,5,'Santanopolis'),(996,5,'Santiago do Iguape'),(997,5,'Santo Amaro'),(998,5,'Santo Antonio de Barcelona'),(999,5,'Santo Antonio de Jesus'),(1000,5,'Santo Estevao'),(1001,5,'Santo Inacio'),(1002,5,'Sao Desiderio'),(1003,5,'Sao Domingos'),(1004,5,'Sao Felipe'),(1005,5,'Sao Felix'),(1006,5,'Sao Felix do Coribe'),(1007,5,'Sao Francisco do Conde'),(1008,5,'Sao Gabriel'),(1009,5,'Sao Goncalo dos Campos'),(1010,5,'Sao Joao da Fortaleza'),(1011,5,'Sao Joao da Vitoria'),(1012,5,'Sao Jose da Vitoria'),(1013,5,'Sao Jose do Colonia'),(1014,5,'Sao Jose do Jacuipe'),(1015,5,'Sao Jose do Prado'),(1016,5,'Sao Jose do Rio Grande'),(1017,5,'Sao Miguel das Matas'),(1018,5,'Sao Paulinho'),(1019,5,'Sao Roque do Paraguacu'),(1020,5,'Sao Sebastiao do Passe'),(1021,5,'Sao Timoteo'),(1022,5,'Sapeacu'),(1023,5,'Satiro Dias'),(1024,5,'Saubara'),(1025,5,'Saudavel'),(1026,5,'Saude'),(1027,5,'Seabra'),(1028,5,'Sebastiao Laranjeiras'),(1029,5,'Senhor do Bonfim'),(1030,5,'Sento Se'),(1031,5,'Sergi'),(1032,5,'Serra da Canabrava'),(1033,5,'Serra do Ramalho'),(1034,5,'Serra Dourada'),(1035,5,'Serra Grande'),(1036,5,'Serra Preta'),(1037,5,'Serrinha'),(1038,5,'Serrolandia'),(1039,5,'Simoes Filho'),(1040,5,'Sitio da Barauna'),(1041,5,'Sitio do Mato'),(1042,5,'Sitio do Meio'),(1043,5,'Sitio do Quinto'),(1044,5,'Sitio Grande'),(1045,5,'Sitio Novo'),(1046,5,'Soares'),(1047,5,'Sobradinho'),(1048,5,'Souto Soares'),(1049,5,'Subauma'),(1050,5,'Sussuarana'),(1051,5,'Tabocas do Brejo Velho'),(1052,5,'Taboleiro do Castro'),(1053,5,'Taboquinhas'),(1054,5,'Tagua'),(1055,5,'Tamburil'),(1056,5,'Tanhacu'),(1057,5,'Tanque Novo'),(1058,5,'Tanquinho'),(1059,5,'Tanquinho do Poco'),(1060,5,'Taperoa'),(1061,5,'Tapiraipe'),(1062,5,'Tapirama'),(1063,5,'Tapiramuta'),(1064,5,'Tapiranga'),(1065,5,'Tapuia'),(1066,5,'Taquarendi'),(1067,5,'Taquarinha'),(1068,5,'Tartaruga'),(1069,5,'Tauape'),(1070,5,'Teixeira de Freitas'),(1071,5,'Teodoro Sampaio'),(1072,5,'Teofilandia'),(1073,5,'Teolandia'),(1074,5,'Terra Nova'),(1075,5,'Tijuacu'),(1076,5,'Tiquarucu'),(1077,5,'Tremedal'),(1078,5,'Triunfo do Sincora'),(1079,5,'Tucano'),(1080,5,'Uaua'),(1081,5,'Ubaira'),(1082,5,'Ubaitaba'),(1083,5,'Ubata'),(1084,5,'Ubiracaba'),(1085,5,'Ubiraita'),(1086,5,'Uibai'),(1087,5,'Umburanas'),(1088,5,'Umbuzeiro'),(1089,5,'Una'),(1090,5,'Urandi'),(1091,5,'Urucuca'),(1092,5,'Utinga'),(1093,5,'Vale Verde'),(1094,5,'Valenca'),(1095,5,'Valente'),(1096,5,'Varzea da Roca'),(1097,5,'Varzea do Caldas'),(1098,5,'Varzea do Cerco'),(1099,5,'Varzea do Poco'),(1100,5,'Varzea Nova'),(1101,5,'Varzeas'),(1102,5,'Varzedo'),(1103,5,'Velha Boipeba'),(1104,5,'Ventura'),(1105,5,'Vera Cruz'),(1106,5,'Vereda'),(1107,5,'Vila do Cafe'),(1108,5,'Vitoria da Conquista'),(1109,5,'Volta Grande'),(1110,5,'Wagner'),(1111,5,'Wanderley'),(1112,5,'Wenceslau Guimaraes'),(1113,5,'Xique-xique'),(1114,6,'Abaiara'),(1115,6,'Abilio Martins'),(1116,6,'Acarape'),(1117,6,'Acarau'),(1118,6,'Acopiara'),(1119,6,'Adrianopolis'),(1120,6,'Agua Verde'),(1121,6,'Aguai'),(1122,6,'Aiua'),(1123,6,'Aiuaba'),(1124,6,'Alagoinha'),(1125,6,'Alcantaras'),(1126,6,'Algodoes'),(1127,6,'Almofala'),(1128,6,'Altaneira'),(1129,6,'Alto Santo'),(1130,6,'Amanaiara'),(1131,6,'Amanari'),(1132,6,'Amaniutuba'),(1133,6,'Amarelas'),(1134,6,'Amaro'),(1135,6,'America'),(1136,6,'Amontada'),(1137,6,'Anaua'),(1138,6,'Aningas'),(1139,6,'Anjinhos'),(1140,6,'Antonina do Norte'),(1141,6,'Antonio Bezerra'),(1142,6,'Antonio Diogo'),(1143,6,'Antonio Marques'),(1144,6,'Aprazivel'),(1145,6,'Apuiares'),(1146,6,'Aquinopolis'),(1147,6,'Aquiraz'),(1148,6,'Aracas'),(1149,6,'Aracati'),(1150,6,'Aracatiacu'),(1151,6,'Aracatiara'),(1152,6,'Aracoiaba'),(1153,6,'Arajara'),(1154,6,'Aranau'),(1155,6,'Arapa'),(1156,6,'Arapari'),(1157,6,'Araporanga'),(1158,6,'Araquem'),(1159,6,'Ararenda'),(1160,6,'Araripe'),(1161,6,'Ararius'),(1162,6,'Aratama'),(1163,6,'Araticum'),(1164,6,'Aratuba'),(1165,6,'Areial'),(1166,6,'Ariscos dos Marianos'),(1167,6,'Arneiroz'),(1168,6,'Aroeiras'),(1169,6,'Arrojado'),(1170,6,'Aruaru'),(1171,6,'Assare'),(1172,6,'Assuncao'),(1173,6,'Aurora'),(1174,6,'Baixa Grande'),(1175,6,'Baixio'),(1176,6,'Baixio da Donana'),(1177,6,'Banabuiu'),(1178,6,'Bandeira'),(1179,6,'Barao de Aquiraz'),(1180,6,'Barbalha'),(1181,6,'Barra'),(1182,6,'Barra do Sotero'),(1183,6,'Barra Nova'),(1184,6,'Barreira'),(1185,6,'Barreira dos Vianas'),(1186,6,'Barreiras'),(1187,6,'Barreiros'),(1188,6,'Barrento'),(1189,6,'Barro'),(1190,6,'Barro Alto'),(1191,6,'Barroquinha'),(1192,6,'Baturite'),(1193,6,'Bau'),(1194,6,'Beberibe'),(1195,6,'Bela Cruz'),(1196,6,'Bela Vista'),(1197,6,'Betania'),(1198,6,'Bitupita'),(1199,6,'Bixopa'),(1200,6,'Boa Agua'),(1201,6,'Boa Esperanca'),(1202,6,'Boa Viagem'),(1203,6,'Boa Vista'),(1204,6,'Boa Vista do Caxitore'),(1205,6,'Bonfim'),(1206,6,'Bonhu'),(1207,6,'Bonito'),(1208,6,'Borges'),(1209,6,'Brejinho'),(1210,6,'Brejo Grande'),(1211,6,'Brejo Santo'),(1212,6,'Brotas'),(1213,6,'Buritizal'),(1214,6,'Buritizinho'),(1215,6,'Cabreiro'),(1216,6,'Cachoeira'),(1217,6,'Cachoeira Grande'),(1218,6,'Caicara'),(1219,6,'Caicarinha'),(1220,6,'Caio Prado'),(1221,6,'Caioca'),(1222,6,'Caipu'),(1223,6,'Calabaca'),(1224,6,'Caldeirao'),(1225,6,'California'),(1226,6,'Camara'),(1227,6,'Camboas'),(1228,6,'Camilos'),(1229,6,'Camocim'),(1230,6,'Campanario'),(1231,6,'Campestre'),(1232,6,'Campos Sales'),(1233,6,'Canaan'),(1234,6,'Canafistula'),(1235,6,'Cangati'),(1236,6,'Caninde'),(1237,6,'Canindezinho'),(1238,6,'Capistrano'),(1239,6,'Caponga'),(1240,6,'Caponga da Bernarda'),(1241,6,'Caracara'),(1242,6,'Caridade'),(1243,6,'Carire'),(1244,6,'Caririacu'),(1245,6,'Carius'),(1246,6,'Cariutaba'),(1247,6,'Carmelopolis'),(1248,6,'Carnaubal'),(1249,6,'Carnaubas'),(1250,6,'Carnaubinha'),(1251,6,'Carquejo'),(1252,6,'Carrapateiras'),(1253,6,'Caruatai'),(1254,6,'Carvalho'),(1255,6,'Carvoeiro'),(1256,6,'Cascavel'),(1257,6,'Castanhao'),(1258,6,'Catarina'),(1259,6,'Catole'),(1260,6,'Catuana'),(1261,6,'Catunda'),(1262,6,'Caucaia'),(1263,6,'Caxitore'),(1264,6,'Cedro'),(1265,6,'Cemoaba'),(1266,6,'Chaval'),(1267,6,'Choro'),(1268,6,'Chorozinho'),(1269,6,'Cipo dos Anjos'),(1270,6,'Cococi'),(1271,6,'Codia'),(1272,6,'Coite'),(1273,6,'Colina'),(1274,6,'Conceicao'),(1275,6,'Coreau'),(1276,6,'Corrego dos Fernandes'),(1277,6,'Crateus'),(1278,6,'Crato'),(1279,6,'Crioulos'),(1280,6,'Cristais'),(1281,6,'Croata'),(1282,6,'Cruxati'),(1283,6,'Cruz'),(1284,6,'Cruz de Pedra'),(1285,6,'Cruzeirinho'),(1286,6,'Cuncas'),(1287,6,'Curatis'),(1288,6,'Curupira'),(1289,6,'Custodio'),(1290,6,'Daniel de Queiros'),(1291,6,'Delmiro Gouveia'),(1292,6,'Deputado Irapuan Pinheiro'),(1293,6,'Deserto'),(1294,6,'Dom Leme'),(1295,6,'Dom Mauricio'),(1296,6,'Dom Quintino'),(1297,6,'Domingos da Costa'),(1298,6,'Donato'),(1299,6,'Dourados'),(1300,6,'Ebron'),(1301,6,'Ema'),(1302,6,'Ematuba'),(1303,6,'Encantado'),(1304,6,'Engenheiro Joao Tome'),(1305,6,'Engenheiro Jose Lopes'),(1306,6,'Engenho Velho'),(1307,6,'Erere'),(1308,6,'Espacinha'),(1309,6,'Esperanca'),(1310,6,'Espinho'),(1311,6,'Eusebio'),(1312,6,'Farias Brito'),(1313,6,'Fatima'),(1314,6,'Feiticeiro'),(1315,6,'Feitosa'),(1316,6,'Felizardo'),(1317,6,'Flamengo'),(1318,6,'Flores'),(1319,6,'Forquilha'),(1320,6,'Fortaleza'),(1321,6,'Fortim'),(1322,6,'Frecheirinha'),(1323,6,'Gado'),(1324,6,'Gado dos Rodrigues'),(1325,6,'Gameleira de Sao Sebastiao'),(1326,6,'Garcas'),(1327,6,'Gazea'),(1328,6,'General Sampaio'),(1329,6,'General Tiburcio'),(1330,6,'Genipapeiro'),(1331,6,'Gererau'),(1332,6,'Giqui'),(1333,6,'Girau'),(1334,6,'Graca'),(1335,6,'Granja'),(1336,6,'Granjeiro'),(1337,6,'Groairas'),(1338,6,'Guaiuba'),(1339,6,'Guajiru'),(1340,6,'Guanaces'),(1341,6,'Guaraciaba do Norte'),(1342,6,'Guaramiranga'),(1343,6,'Guararu'),(1344,6,'Guassi'),(1345,6,'Guassosse'),(1346,6,'Guia'),(1347,6,'Guriu'),(1348,6,'Hidrolandia'),(1349,6,'Holanda'),(1350,6,'Horizonte'),(1351,6,'Iapi'),(1352,6,'Iara'),(1353,6,'Ibaretama'),(1354,6,'Ibiapaba'),(1355,6,'Ibiapina'),(1356,6,'Ibicatu'),(1357,6,'Ibicua'),(1358,6,'Ibicuitaba'),(1359,6,'Ibicuitinga'),(1360,6,'Iborepi'),(1361,6,'Ibuacu'),(1362,6,'Ibuguacu'),(1363,6,'Icapui'),(1364,6,'Icarai'),(1365,6,'Ico'),(1366,6,'Icozinho'),(1367,6,'Ideal'),(1368,6,'Igaroi'),(1369,6,'Iguatu'),(1370,6,'Independencia'),(1371,6,'Ingazeiras'),(1372,6,'Inhamuns'),(1373,6,'Inhucu'),(1374,6,'Inhuporanga'),(1375,6,'Ipaporanga'),(1376,6,'Ipaumirim'),(1377,6,'Ipu'),(1378,6,'Ipueiras'),(1379,6,'Ipueiras dos Gomes'),(1380,6,'Iracema'),(1381,6,'Iraja'),(1382,6,'Irapua'),(1383,6,'Iratinga'),(1384,6,'Iraucuba'),(1385,6,'Isidoro'),(1386,6,'Itacima'),(1387,6,'Itagua'),(1388,6,'Itaicaba'),(1389,6,'Itaipaba'),(1390,6,'Itaitinga'),(1391,6,'Itans'),(1392,6,'Itapage'),(1393,6,'Itapebussu'),(1394,6,'Itapeim'),(1395,6,'Itapipoca'),(1396,6,'Itapiuna'),(1397,6,'Itapo'),(1398,6,'Itarema'),(1399,6,'Itatira'),(1400,6,'Jaburuna'),(1401,6,'Jacampari'),(1402,6,'Jacarecoara'),(1403,6,'Jacauna'),(1404,6,'Jaguarao'),(1405,6,'Jaguaretama'),(1406,6,'Jaguaribara'),(1407,6,'Jaguaribe'),(1408,6,'Jaguaruana'),(1409,6,'Jaibaras'),(1410,6,'Jamacaru'),(1411,6,'Jandrangoeira'),(1412,6,'Jardim'),(1413,6,'Jardimirim'),(1414,6,'Jati'),(1415,6,'Jijoca de Jericoacoara'),(1416,6,'Joao Cordeiro'),(1417,6,'Jordao'),(1418,6,'Jose de Alencar'),(1419,6,'Jua'),(1420,6,'Juatama'),(1421,6,'Juazeiro de Baixo'),(1422,6,'Juazeiro do Norte'),(1423,6,'Jubaia'),(1424,6,'Jucas'),(1425,6,'Jurema'),(1426,6,'Justiniano Serpa'),(1427,6,'Lacerda'),(1428,6,'Ladeira Grande'),(1429,6,'Lagoa de Sao Jose'),(1430,6,'Lagoa do Juvenal'),(1431,6,'Lagoa do Mato'),(1432,6,'Lagoa dos Crioulos'),(1433,6,'Lagoa Grande'),(1434,6,'Lagoinha'),(1435,6,'Lambedouro'),(1436,6,'Lameiro'),(1437,6,'Lavras da Mangabeira'),(1438,6,'Lima Campos'),(1439,6,'Limoeiro do Norte'),(1440,6,'Lisieux'),(1441,6,'Livramento'),(1442,6,'Logradouro'),(1443,6,'Macambira'),(1444,6,'Macaoca'),(1445,6,'Macarau'),(1446,6,'Maceio'),(1447,6,'Madalena'),(1448,6,'Major Simplicio'),(1449,6,'Majorlandia'),(1450,6,'Malhada Grande'),(1451,6,'Mangabeira'),(1452,6,'Manibu'),(1453,6,'Manituba'),(1454,6,'Mapua'),(1455,6,'Maracanau'),(1456,6,'Maragua'),(1457,6,'Maranguape'),(1458,6,'Mararupa'),(1459,6,'Marco'),(1460,6,'Marinheiros'),(1461,6,'Marrecas'),(1462,6,'Marrocos'),(1463,6,'Marruas'),(1464,6,'Martinopole'),(1465,6,'Massape'),(1466,6,'Mata Fresca'),(1467,6,'Matias'),(1468,6,'Matriz'),(1469,6,'Mauriti'),(1470,6,'Mel'),(1471,6,'Meruoca'),(1472,6,'Messejana'),(1473,6,'Miguel Xavier'),(1474,6,'Milagres'),(1475,6,'Milha'),(1476,6,'Milton Belo'),(1477,6,'Mineirolandia'),(1478,6,'Miragem'),(1479,6,'Miraima'),(1480,6,'Mirambe'),(1481,6,'Missao Nova'),(1482,6,'Missao Velha'),(1483,6,'Missi'),(1484,6,'Moitas'),(1485,6,'Mombaca'),(1486,6,'Mondubim'),(1487,6,'Monguba'),(1488,6,'Monsenhor Tabosa'),(1489,6,'Monte Alegre'),(1490,6,'Monte Castelo'),(1491,6,'Monte Grave'),(1492,6,'Monte Sion'),(1493,6,'Montenebo'),(1494,6,'Morada Nova'),(1495,6,'Moraujo'),(1496,6,'Morrinhos'),(1497,6,'Morrinhos Novos'),(1498,6,'Morro Branco'),(1499,6,'Mucambo'),(1500,6,'Mulungu'),(1501,6,'Mumbaba'),(1502,6,'Mundau'),(1503,6,'Muribeca'),(1504,6,'Muriti'),(1505,6,'Mutambeiras'),(1506,6,'Naraniu'),(1507,6,'Nascente'),(1508,6,'Nenenlandia'),(1509,6,'Nossa Senhora do Livramento'),(1510,6,'Nova Betania'),(1511,6,'Nova Fatima'),(1512,6,'Nova Floresta'),(1513,6,'Nova Olinda'),(1514,6,'Nova Russas'),(1515,6,'Nova Vida'),(1516,6,'Novo Assis'),(1517,6,'Novo Oriente'),(1518,6,'Ocara'),(1519,6,'Oiticica'),(1520,6,'Olho-d\'agua'),(1521,6,'Olho-d\'agua Da Bica'),(1522,6,'Oliveiras'),(1523,6,'Oros'),(1524,6,'Pacajus'),(1525,6,'Pacatuba'),(1526,6,'Pacoti'),(1527,6,'Pacuja'),(1528,6,'Padre Cicero'),(1529,6,'Padre Linhares'),(1530,6,'Padre Vieira'),(1531,6,'Pajeu'),(1532,6,'Pajucara'),(1533,6,'Palestina'),(1534,6,'Palestina do Norte'),(1535,6,'Palhano'),(1536,6,'Palmacia'),(1537,6,'Palmatoria'),(1538,6,'Panacui'),(1539,6,'Paracua'),(1540,6,'Paracuru'),(1541,6,'Paraipaba'),(1542,6,'Parajuru'),(1543,6,'Parambu'),(1544,6,'Paramoti'),(1545,6,'Parangaba'),(1546,6,'Parapui'),(1547,6,'Parazinho'),(1548,6,'Paripueira'),(1549,6,'Passagem'),(1550,6,'Passagem Funda'),(1551,6,'Pasta'),(1552,6,'Patacas'),(1553,6,'Patriarca'),(1554,6,'Pavuna'),(1555,6,'Pecem'),(1556,6,'Pedra Branca'),(1557,6,'Pedras'),(1558,6,'Pedrinhas'),(1559,6,'Peixe'),(1560,6,'Peixe Gordo'),(1561,6,'Penaforte'),(1562,6,'Pentecoste'),(1563,6,'Pereiro'),(1564,6,'Pernambuquinho'),(1565,6,'Pessoa Anta'),(1566,6,'Pindoguaba'),(1567,6,'Pindoretama'),(1568,6,'Pio X'),(1569,6,'Piquet Carneiro'),(1570,6,'Pirabibu'),(1571,6,'Pirangi'),(1572,6,'Pires Ferreira'),(1573,6,'Pitombeira'),(1574,6,'Pitombeiras'),(1575,6,'Placido Martins'),(1576,6,'Poco'),(1577,6,'Poco Comprido'),(1578,6,'Poco Grande'),(1579,6,'Podimirim'),(1580,6,'Ponta da Serra'),(1581,6,'Poranga'),(1582,6,'Porfirio Sampaio'),(1583,6,'Porteiras'),(1584,6,'Potengi'),(1585,6,'Poti'),(1586,6,'Potiretama'),(1587,6,'Prata'),(1588,6,'Prudente de Morais'),(1589,6,'Quatiguaba'),(1590,6,'Queimadas'),(1591,6,'Quimami'),(1592,6,'Quincoe'),(1593,6,'Quincunca'),(1594,6,'Quitaius'),(1595,6,'Quiterianopolis'),(1596,6,'Quixada'),(1597,6,'Quixariu'),(1598,6,'Quixelo'),(1599,6,'Quixeramobim'),(1600,6,'Quixere'),(1601,6,'Quixoa'),(1602,6,'Raimundo Martins'),(1603,6,'Redencao'),(1604,6,'Reriutaba'),(1605,6,'Riachao do Banabuiu'),(1606,6,'Riacho Grande'),(1607,6,'Riacho Verde'),(1608,6,'Riacho Vermelho'),(1609,6,'Rinare'),(1610,6,'Roldao'),(1611,6,'Russas'),(1612,6,'Sabiaguaba'),(1613,6,'Saboeiro'),(1614,6,'Sacramento'),(1615,6,'Salao'),(1616,6,'Salitre'),(1617,6,'Sambaiba'),(1618,6,'Santa Ana'),(1619,6,'Santa Fe'),(1620,6,'Santa Felicia'),(1621,6,'Santa Luzia'),(1622,6,'Santa Quiteria'),(1623,6,'Santa Tereza'),(1624,6,'Santana'),(1625,6,'Santana do Acarau'),(1626,6,'Santana do Cariri'),(1627,6,'Santarem'),(1628,6,'Santo Antonio'),(1629,6,'Santo Antonio da Pindoba'),(1630,6,'Santo Antonio dos Fernandes'),(1631,6,'Sao Bartolomeu'),(1632,6,'Sao Benedito'),(1633,6,'Sao Domingos'),(1634,6,'Sao Felipe'),(1635,6,'Sao Francisco'),(1636,6,'Sao Gerardo'),(1637,6,'Sao Goncalo do Amarante'),(1638,6,'Sao Goncalo do Umari'),(1639,6,'Sao Joao de Deus'),(1640,6,'Sao Joao do Jaguaribe'),(1641,6,'Sao Joao dos Queiroz'),(1642,6,'Sao Joaquim'),(1643,6,'Sao Joaquim do Salgado'),(1644,6,'Sao Jose'),(1645,6,'Sao Jose das Lontras'),(1646,6,'Sao Jose de Solonopole'),(1647,6,'Sao Jose do Torto'),(1648,6,'Sao Luis do Curu'),(1649,6,'Sao Miguel'),(1650,6,'Sao Paulo'),(1651,6,'Sao Pedro'),(1652,6,'Sao Romao'),(1653,6,'Sao Sebastiao'),(1654,6,'Sao Vicente'),(1655,6,'Sapo'),(1656,6,'Sapupara'),(1657,6,'Sebastiao de Abreu'),(1658,6,'Senador Carlos Jereissati'),(1659,6,'Senador Pompeu'),(1660,6,'Senador Sa'),(1661,6,'Sereno de Cima'),(1662,6,'Serra do Felix'),(1663,6,'Serragem'),(1664,6,'Serrota'),(1665,6,'Serrote'),(1666,6,'Sitia'),(1667,6,'Sitios Novos'),(1668,6,'Siupe'),(1669,6,'Sobral'),(1670,6,'Soledade'),(1671,6,'Solonopole'),(1672,6,'Suassurana'),(1673,6,'Sucatinga'),(1674,6,'Sucesso'),(1675,6,'Sussuanha'),(1676,6,'Tabainha'),(1677,6,'Taboleiro'),(1678,6,'Tabuleiro do Norte'),(1679,6,'Taiba'),(1680,6,'Tamboril'),(1681,6,'Tanques'),(1682,6,'Tapera'),(1683,6,'Taperuaba'),(1684,6,'Tapuiara'),(1685,6,'Targinos'),(1686,6,'Tarrafas'),(1687,6,'Taua'),(1688,6,'Tejucuoca'),(1689,6,'Tiangua'),(1690,6,'Timonha'),(1691,6,'Tipi'),(1692,6,'Tome'),(1693,6,'Trairi'),(1694,6,'Trapia'),(1695,6,'Trici'),(1696,6,'Troia'),(1697,6,'Trussu'),(1698,6,'Tucunduba'),(1699,6,'Tucuns'),(1700,6,'Tuina'),(1701,6,'Tururu'),(1702,6,'Ubajara'),(1703,6,'Ubauna'),(1704,6,'Ubiracu'),(1705,6,'Uiraponga'),(1706,6,'Umari'),(1707,6,'Umarituba'),(1708,6,'Umburanas'),(1709,6,'Umirim'),(1710,6,'Uruburetama'),(1711,6,'Uruoca'),(1712,6,'Uruque'),(1713,6,'Varjota'),(1714,6,'Varzea'),(1715,6,'Varzea Alegre'),(1716,6,'Varzea da Volta'),(1717,6,'Varzea do Gilo'),(1718,6,'Vazantes'),(1719,6,'Ventura'),(1720,6,'Vertentes do Lagedo'),(1721,6,'Vicosa'),(1722,6,'Vicosa do Ceara'),(1723,6,'Vila Soares'),(1724,7,'Brasilia'),(1725,7,'Brazlandia'),(1726,7,'Candangolandia'),(1727,7,'Ceilandia'),(1728,7,'Cruzeiro'),(1729,7,'Gama'),(1730,7,'Guara'),(1731,7,'Lago Norte'),(1732,7,'Lago Sul'),(1733,7,'Nucleo Bandeirante'),(1734,7,'Paranoa'),(1735,7,'Planaltina'),(1736,7,'Recanto das Emas'),(1737,7,'Riacho Fundo'),(1738,7,'Samambaia'),(1739,7,'Santa Maria'),(1740,7,'Sao Sebastiao'),(1741,7,'Sobradinho'),(1742,7,'Taguatinga'),(1743,8,'Acioli'),(1744,8,'Afonso Claudio'),(1745,8,'Agha'),(1746,8,'Agua Doce do Norte'),(1747,8,'Aguia Branca'),(1748,8,'Airituba'),(1749,8,'Alegre'),(1750,8,'Alfredo Chaves'),(1751,8,'Alto Calcado'),(1752,8,'Alto Caldeirao'),(1753,8,'Alto Mutum Preto'),(1754,8,'Alto Rio Novo'),(1755,8,'Alto Santa Maria'),(1756,8,'Anchieta'),(1757,8,'Angelo Frechiani'),(1758,8,'Anutiba'),(1759,8,'Apiaca'),(1760,8,'Aracatiba'),(1761,8,'Arace'),(1762,8,'Aracruz'),(1763,8,'Aracui'),(1764,8,'Araguaia'),(1765,8,'Ararai'),(1766,8,'Argolas'),(1767,8,'Atilio Vivacqua'),(1768,8,'Baia Nova'),(1769,8,'Baixo Guandu'),(1770,8,'Barra de Novo Brasil'),(1771,8,'Barra de Sao Francisco'),(1772,8,'Barra do Itapemirim'),(1773,8,'Barra Nova'),(1774,8,'Barra Seca'),(1775,8,'Baunilha'),(1776,8,'Bebedouro'),(1777,8,'Boa Esperanca'),(1778,8,'Boapaba'),(1779,8,'Bom Jesus do Norte'),(1780,8,'Bonsucesso'),(1781,8,'Braco do Rio'),(1782,8,'Brejetuba'),(1783,8,'Burarama'),(1784,8,'Cachoeirinha de Itauna'),(1785,8,'Cachoeiro de Itapemirim'),(1786,8,'Cafe'),(1787,8,'Calogi'),(1788,8,'Camara'),(1789,8,'Carapina'),(1790,8,'Cariacica'),(1791,8,'Castelo'),(1792,8,'Celina'),(1793,8,'Colatina'),(1794,8,'Conceicao da Barra'),(1795,8,'Conceicao do Castelo'),(1796,8,'Conceicao do Muqui'),(1797,8,'Conduru'),(1798,8,'Coqueiral'),(1799,8,'Corrego dos Monos'),(1800,8,'Cotaxe'),(1801,8,'Cristal do Norte'),(1802,8,'Crubixa'),(1803,8,'Desengano'),(1804,8,'Divino de Sao Lourenco'),(1805,8,'Divino Espirito Santo'),(1806,8,'Djalma Coutinho'),(1807,8,'Domingos Martins'),(1808,8,'Dona America'),(1809,8,'Dores do Rio Preto'),(1810,8,'Duas Barras'),(1811,8,'Ecoporanga'),(1812,8,'Estrela do Norte'),(1813,8,'Fartura'),(1814,8,'Fazenda Guandu'),(1815,8,'Fundao'),(1816,8,'Garrafao'),(1817,8,'Gironda'),(1818,8,'Goiabeiras'),(1819,8,'Governador Lacerda de Aguiar'),(1820,8,'Governador Lindenberg'),(1821,8,'Graca Aranha'),(1822,8,'Gruta'),(1823,8,'Guacui'),(1824,8,'Guarana'),(1825,8,'Guarapari'),(1826,8,'Guararema'),(1827,8,'Ibatiba'),(1828,8,'Ibes'),(1829,8,'Ibicaba'),(1830,8,'Ibiracu'),(1831,8,'Ibitirama'),(1832,8,'Ibitirui'),(1833,8,'Ibituba'),(1834,8,'Iconha'),(1835,8,'Imburana'),(1836,8,'Iriritiba'),(1837,8,'Irundi'),(1838,8,'Irupi'),(1839,8,'Isabel'),(1840,8,'Itabaiana'),(1841,8,'Itacu'),(1842,8,'Itaguacu'),(1843,8,'Itaici'),(1844,8,'Itaimbe'),(1845,8,'Itaipava'),(1846,8,'Itamira'),(1847,8,'Itaoca'),(1848,8,'Itapecoa'),(1849,8,'Itapemirim'),(1850,8,'Itaperuna'),(1851,8,'Itapina'),(1852,8,'Itaquari'),(1853,8,'Itarana'),(1854,8,'Itaunas'),(1855,8,'Itauninhas'),(1856,8,'Iuna'),(1857,8,'Jabaquara'),(1858,8,'Jacaraipe'),(1859,8,'Jacigua'),(1860,8,'Jacupemba'),(1861,8,'Jaguare'),(1862,8,'Jeronimo Monteiro'),(1863,8,'Joacuba'),(1864,8,'Joao Neiva'),(1865,8,'Joatuba'),(1866,8,'Jose Carlos'),(1867,8,'Jucu'),(1868,8,'Lajinha'),(1869,8,'Laranja da Terra'),(1870,8,'Limoeiro'),(1871,8,'Linhares'),(1872,8,'Mangarai'),(1873,8,'Mantenopolis'),(1874,8,'Marataizes'),(1875,8,'Marechal Floriano'),(1876,8,'Marilandia'),(1877,8,'Matilde'),(1878,8,'Melgaco'),(1879,8,'Menino Jesus'),(1880,8,'Mimoso do Sul'),(1881,8,'Montanha'),(1882,8,'Monte Carmelo do Rio Novo'),(1883,8,'Monte Pio'),(1884,8,'Monte Sinai'),(1885,8,'Mucurici'),(1886,8,'Mundo Novo'),(1887,8,'Muniz Freire'),(1888,8,'Muqui'),(1889,8,'Nestor Gomes'),(1890,8,'Nova Almeida'),(1891,8,'Nova Canaa'),(1892,8,'Nova Venecia'),(1893,8,'Nova Verona'),(1894,8,'Novo Brasil'),(1895,8,'Novo Horizonte'),(1896,8,'Pacotuba'),(1897,8,'Paineiras'),(1898,8,'Palmeira'),(1899,8,'Palmerino'),(1900,8,'Pancas'),(1901,8,'Paraju'),(1902,8,'Paulista'),(1903,8,'Pedro Canario'),(1904,8,'Pendanga'),(1905,8,'Pequia'),(1906,8,'Perdicao'),(1907,8,'Piacu'),(1908,8,'Pinheiros'),(1909,8,'Piracema'),(1910,8,'Piuma'),(1911,8,'Ponte de Itabapoana'),(1912,8,'Ponto Belo'),(1913,8,'Pontoes'),(1914,8,'Poranga'),(1915,8,'Porto Barra do Riacho'),(1916,8,'Praia Grande'),(1917,8,'Presidente Kennedy'),(1918,8,'Princesa'),(1919,8,'Queimado'),(1920,8,'Quilometro Null do Mutum'),(1921,8,'Regencia'),(1922,8,'Riacho'),(1923,8,'Ribeirao do Cristo'),(1924,8,'Rio Bananal'),(1925,8,'Rio Calcado'),(1926,8,'Rio Muqui'),(1927,8,'Rio Novo do Sul'),(1928,8,'Rio Preto'),(1929,8,'Rive'),(1930,8,'Sagrada Familia'),(1931,8,'Santa Angelica'),(1932,8,'Santa Cruz'),(1933,8,'Santa Julia'),(1934,8,'Santa Leopoldina'),(1935,8,'Santa Luzia de Mantenopolis'),(1936,8,'Santa Luzia do Azul'),(1937,8,'Santa Luzia do Norte'),(1938,8,'Santa Maria de Jetiba'),(1939,8,'Santa Marta'),(1940,8,'Santa Teresa'),(1941,8,'Santa Terezinha'),(1942,8,'Santissima Trindade'),(1943,8,'Santo Agostinho'),(1944,8,'Santo Antonio'),(1945,8,'Santo Antonio do Canaa'),(1946,8,'Santo Antonio do Muqui'),(1947,8,'Santo Antonio do Pousalegre'),(1948,8,'Santo Antonio do Quinze'),(1949,8,'Sao Domingos do Norte'),(1950,8,'Sao Francisco do Novo Brasil'),(1951,8,'Sao Francisco Xavier do Guandu'),(1952,8,'Sao Gabriel da Palha'),(1953,8,'Sao Geraldo'),(1954,8,'Sao Jacinto'),(1955,8,'Sao Joao de Petropolis'),(1956,8,'Sao Joao de Vicosa'),(1957,8,'Sao Joao do Sobrado'),(1958,8,'Sao Jorge da Barra Seca'),(1959,8,'Sao Jorge do Oliveira'),(1960,8,'Sao Jorge do Tiradentes'),(1961,8,'Sao Jose das Torres'),(1962,8,'Sao Jose de Mantenopolis'),(1963,8,'Sao Jose do Calcado'),(1964,8,'Sao Jose do Sobradinho'),(1965,8,'Sao Mateus'),(1966,8,'Sao Pedro'),(1967,8,'Sao Pedro de Itabapoana'),(1968,8,'Sao Pedro de Rates'),(1969,8,'Sao Rafael'),(1970,8,'Sao Roque do Cannaa'),(1971,8,'Sao Tiago'),(1972,8,'Sao Torquato'),(1973,8,'Sapucaia'),(1974,8,'Serra'),(1975,8,'Serra Pelada'),(1976,8,'Sobreiro'),(1977,8,'Sooretama'),(1978,8,'Timbui'),(1979,8,'Todos Os Santos'),(1980,8,'Urania'),(1981,8,'Vargem Alta'),(1982,8,'Vargem Grande do Soturno'),(1983,8,'Venda Nova do Imigrante'),(1984,8,'Viana'),(1985,8,'Vieira Machado'),(1986,8,'Vila Nelita'),(1987,8,'Vila Nova de Bananal'),(1988,8,'Vila Pavao'),(1989,8,'Vila Valerio'),(1990,8,'Vila Velha'),(1991,8,'Vila Verde'),(1992,8,'Vinhatico'),(1993,8,'Vinte E Cinco de Julho'),(1994,8,'Vitoria'),(1995,9,'Abadia de Goias'),(1996,9,'Abadiania'),(1997,9,'Acreuna'),(1998,9,'Adelandia'),(1999,9,'Agua Fria de Goias'),(2000,9,'Agua Limpa'),(2001,9,'Aguas Lindas de Goias'),(2002,9,'Alexania'),(2003,9,'Aloandia'),(2004,9,'Alto Alvorada'),(2005,9,'Alto Horizonte'),(2006,9,'Alto Paraiso de Goias'),(2007,9,'Alvorada do Norte'),(2008,9,'Amaralina'),(2009,9,'Americano do Brasil'),(2010,9,'Amorinopolis'),(2011,9,'Anapolis'),(2012,9,'Anhanguera'),(2013,9,'Anicuns'),(2014,9,'Aparecida'),(2015,9,'Aparecida de Goiania'),(2016,9,'Aparecida de Goias'),(2017,9,'Aparecida do Rio Claro'),(2018,9,'Aparecida do Rio Doce'),(2019,9,'Apore'),(2020,9,'Aracu'),(2021,9,'Aragarcas'),(2022,9,'Aragoiania'),(2023,9,'Araguapaz'),(2024,9,'Arenopolis'),(2025,9,'Aruana'),(2026,9,'Aurilandia'),(2027,9,'Auriverde'),(2028,9,'Avelinopolis'),(2029,9,'Bacilandia'),(2030,9,'Baliza'),(2031,9,'Bandeirantes'),(2032,9,'Barbosilandia'),(2033,9,'Barro Alto'),(2034,9,'Bela Vista de Goias'),(2035,9,'Bom Jardim de Goias'),(2036,9,'Bom Jesus de Goias'),(2037,9,'Bonfinopolis'),(2038,9,'Bonopolis'),(2039,9,'Brazabrantes'),(2040,9,'Britania'),(2041,9,'Buenolandia'),(2042,9,'Buriti Alegre'),(2043,9,'Buriti de Goias'),(2044,9,'Buritinopolis'),(2045,9,'Cabeceiras'),(2046,9,'Cachoeira Alta'),(2047,9,'Cachoeira de Goias'),(2048,9,'Cachoeira Dourada'),(2049,9,'Cacu'),(2050,9,'Caiaponia'),(2051,9,'Caicara'),(2052,9,'Calcilandia'),(2053,9,'Caldas Novas'),(2054,9,'Caldazinha'),(2055,9,'Calixto'),(2056,9,'Campestre de Goias'),(2057,9,'Campinacu'),(2058,9,'Campinorte'),(2059,9,'Campo Alegre de Goias'),(2060,9,'Campo Limpo'),(2061,9,'Campolandia'),(2062,9,'Campos Belos'),(2063,9,'Campos Verdes'),(2064,9,'Cana Brava'),(2065,9,'Canada'),(2066,9,'Capelinha'),(2067,9,'Caraiba'),(2068,9,'Carmo do Rio Verde'),(2069,9,'Castelandia'),(2070,9,'Castrinopolis'),(2071,9,'Catalao'),(2072,9,'Caturai'),(2073,9,'Cavalcante'),(2074,9,'Cavalheiro'),(2075,9,'Cebrasa'),(2076,9,'Ceres'),(2077,9,'Cezarina'),(2078,9,'Chapadao do Ceu'),(2079,9,'Choupana'),(2080,9,'Cibele'),(2081,9,'Cidade Ocidental'),(2082,9,'Cirilandia'),(2083,9,'Cocalzinho de Goias'),(2084,9,'Colinas do Sul'),(2085,9,'Corrego do Ouro'),(2086,9,'Corrego Rico'),(2087,9,'Corumba de Goias'),(2088,9,'Corumbaiba'),(2089,9,'Cristalina'),(2090,9,'Cristianopolis'),(2091,9,'Crixas'),(2092,9,'Crominia'),(2093,9,'Cruzeiro do Norte'),(2094,9,'Cumari'),(2095,9,'Damianopolis'),(2096,9,'Damolandia'),(2097,9,'Davidopolis'),(2098,9,'Davinopolis'),(2099,9,'Diolandia'),(2100,9,'Diorama'),(2101,9,'Divinopolis de Goias'),(2102,9,'Domiciano Ribeiro'),(2103,9,'Doverlandia'),(2104,9,'Edealina'),(2105,9,'Edeia'),(2106,9,'Estrela do Norte'),(2107,9,'Faina'),(2108,9,'Fazenda Nova'),(2109,9,'Firminopolis'),(2110,9,'Flores de Goias'),(2111,9,'Formosa'),(2112,9,'Formoso'),(2113,9,'Forte'),(2114,9,'Gameleira de Goias'),(2115,9,'Geriacu'),(2116,9,'Goialandia'),(2117,9,'Goianapolis'),(2118,9,'Goiandira'),(2119,9,'Goianesia'),(2120,9,'Goiania'),(2121,9,'Goianira'),(2122,9,'Goias'),(2123,9,'Goiatuba'),(2124,9,'Gouvelandia'),(2125,9,'Guapo'),(2126,9,'Guaraita'),(2127,9,'Guarani de Goias'),(2128,9,'Guarinos'),(2129,9,'Heitorai'),(2130,9,'Hidrolandia'),(2131,9,'Hidrolina'),(2132,9,'Iaciara'),(2133,9,'Inaciolandia'),(2134,9,'Indiara'),(2135,9,'Inhumas'),(2136,9,'Interlandia'),(2137,9,'Ipameri'),(2138,9,'Ipora'),(2139,9,'Israelandia'),(2140,9,'Itaberai'),(2141,9,'Itaguacu'),(2142,9,'Itaguari'),(2143,9,'Itaguaru'),(2144,9,'Itaja'),(2145,9,'Itapaci'),(2146,9,'Itapirapua'),(2147,9,'Itapuranga'),(2148,9,'Itaruma'),(2149,9,'Itaucu'),(2150,9,'Itumbiara'),(2151,9,'Ivolandia'),(2152,9,'Jacilandia'),(2153,9,'Jandaia'),(2154,9,'Jaragua'),(2155,9,'Jatai'),(2156,9,'Jaupaci'),(2157,9,'Jeroaquara'),(2158,9,'Jesupolis'),(2159,9,'Joanapolis'),(2160,9,'Joviania'),(2161,9,'Juscelandia'),(2162,9,'Juscelino Kubitschek'),(2163,9,'Jussara'),(2164,9,'Lagoa do Bauzinho'),(2165,9,'Lagolandia'),(2166,9,'Leopoldo de Bulhoes'),(2167,9,'Lucilandia'),(2168,9,'Luziania'),(2169,9,'Mairipotaba'),(2170,9,'Mambai'),(2171,9,'Mara Rosa'),(2172,9,'Marcianopolis'),(2173,9,'Marzagao'),(2174,9,'Matrincha'),(2175,9,'Maurilandia'),(2176,9,'Meia Ponte'),(2177,9,'Messianopolis'),(2178,9,'Mimoso de Goias'),(2179,9,'Minacu'),(2180,9,'Mineiros'),(2181,9,'Moipora'),(2182,9,'Monte Alegre de Goias'),(2183,9,'Montes Claros de Goias'),(2184,9,'Montividiu'),(2185,9,'Montividiu do Norte'),(2186,9,'Morrinhos'),(2187,9,'Morro Agudo de Goias'),(2188,9,'Mossamedes'),(2189,9,'Mozarlandia'),(2190,9,'Mundo Novo'),(2191,9,'Mutunopolis'),(2192,9,'Natinopolis'),(2193,9,'Nazario'),(2194,9,'Neropolis'),(2195,9,'Niquelandia'),(2196,9,'Nova America'),(2197,9,'Nova Aurora'),(2198,9,'Nova Crixas'),(2199,9,'Nova Gloria'),(2200,9,'Nova Iguacu de Goias'),(2201,9,'Nova Roma'),(2202,9,'Nova Veneza'),(2203,9,'Novo Brasil'),(2204,9,'Novo Gama'),(2205,9,'Novo Planalto'),(2206,9,'Olaria do Angico'),(2207,9,'Olhos D\'agua'),(2208,9,'Orizona'),(2209,9,'Ouro Verde de Goias'),(2210,9,'Ouroana'),(2211,9,'Ouvidor'),(2212,9,'Padre Bernardo'),(2213,9,'Palestina de Goias'),(2214,9,'Palmeiras de Goias'),(2215,9,'Palmelo'),(2216,9,'Palminopolis'),(2217,9,'Panama'),(2218,9,'Paranaiguara'),(2219,9,'Parauna'),(2220,9,'Pau-terra'),(2221,9,'Pedra Branca'),(2222,9,'Perolandia'),(2223,9,'Petrolina de Goias'),(2224,9,'Pilar de Goias'),(2225,9,'Piloandia'),(2226,9,'Piracanjuba'),(2227,9,'Piranhas'),(2228,9,'Pirenopolis'),(2229,9,'Pires Belo'),(2230,9,'Pires do Rio'),(2231,9,'Planaltina'),(2232,9,'Pontalina'),(2233,9,'Porangatu'),(2234,9,'Porteirao'),(2235,9,'Portelandia'),(2236,9,'Posse'),(2237,9,'Posse D\'abadia'),(2238,9,'Professor Jamil'),(2239,9,'Quirinopolis'),(2240,9,'Registro do Araguaia'),(2241,9,'Rialma'),(2242,9,'Rianapolis'),(2243,9,'Rio Quente'),(2244,9,'Rio Verde'),(2245,9,'Riverlandia'),(2246,9,'Rodrigues Nascimento'),(2247,9,'Rosalandia'),(2248,9,'Rubiataba'),(2249,9,'Sanclerlandia'),(2250,9,'Santa Barbara de Goias'),(2251,9,'Santa Cruz das Lajes'),(2252,9,'Santa Cruz de Goias'),(2253,9,'Santa Fe de Goias'),(2254,9,'Santa Helena de Goias'),(2255,9,'Santa Isabel'),(2256,9,'Santa Rita do Araguaia'),(2257,9,'Santa Rita do Novo Destino'),(2258,9,'Santa Rosa'),(2259,9,'Santa Rosa de Goias'),(2260,9,'Santa Tereza de Goias'),(2261,9,'Santa Terezinha de Goias'),(2262,9,'Santo Antonio da Barra'),(2263,9,'Santo Antonio de Goias'),(2264,9,'Santo Antonio do Descoberto'),(2265,9,'Santo Antonio do Rio Verde'),(2266,9,'Sao Domingos'),(2267,9,'Sao Francisco de Goias'),(2268,9,'Sao Gabriel de Goias'),(2269,9,'Sao Joao'),(2270,9,'Sao Joao D\'alianca'),(2271,9,'Sao Joao da Parauna'),(2272,9,'Sao Luis de Montes Belos'),(2273,9,'Sao Luiz do Norte'),(2274,9,'Sao Luiz do Tocantins'),(2275,9,'Sao Miguel do Araguaia'),(2276,9,'Sao Miguel do Passa Quatro'),(2277,9,'Sao Patricio'),(2278,9,'Sao Sebastiao do Rio Claro'),(2279,9,'Sao Simao'),(2280,9,'Sao Vicente'),(2281,9,'Sarandi'),(2282,9,'Senador Canedo'),(2283,9,'Serra Dourada'),(2284,9,'Serranopolis'),(2285,9,'Silvania'),(2286,9,'Simolandia'),(2287,9,'Sitio D\'abadia'),(2288,9,'Sousania'),(2289,9,'Taquaral de Goias'),(2290,9,'Taveira'),(2291,9,'Teresina de Goias'),(2292,9,'Terezopolis de Goias'),(2293,9,'Termas do Itaja'),(2294,9,'Tres Ranchos'),(2295,9,'Trindade'),(2296,9,'Trombas'),(2297,9,'Tupiracaba'),(2298,9,'Turvania'),(2299,9,'Turvelandia'),(2300,9,'Uirapuru'),(2301,9,'Uruacu'),(2302,9,'Uruana'),(2303,9,'Uruita'),(2304,9,'Urutai'),(2305,9,'Uva'),(2306,9,'Valdelandia'),(2307,9,'Valparaiso de Goias'),(2308,9,'Varjao'),(2309,9,'Vianopolis'),(2310,9,'Vicentinopolis'),(2311,9,'Vila Boa'),(2312,9,'Vila Brasilia'),(2313,9,'Vila Propicio'),(2314,9,'Vila Sertaneja'),(2315,10,'Acailandia'),(2316,10,'Afonso Cunha'),(2317,10,'Agua Doce do Maranhao'),(2318,10,'Alcantara'),(2319,10,'Aldeias Altas'),(2320,10,'Altamira do Maranhao'),(2321,10,'Alto Alegre do Maranhao'),(2322,10,'Alto Alegre do Pindare'),(2323,10,'Alto Parnaiba'),(2324,10,'Amapa do Maranhao'),(2325,10,'Amarante do Maranhao'),(2326,10,'Anajatuba'),(2327,10,'Anapurus'),(2328,10,'Anil'),(2329,10,'Apicum-acu'),(2330,10,'Araguana'),(2331,10,'Araioses'),(2332,10,'Arame'),(2333,10,'Arari'),(2334,10,'Aurizona'),(2335,10,'Axixa'),(2336,10,'Bacabal'),(2337,10,'Bacabeira'),(2338,10,'Bacatuba'),(2339,10,'Bacuri'),(2340,10,'Bacurituba'),(2341,10,'Balsas'),(2342,10,'Barao de Grajau'),(2343,10,'Barao de Tromai'),(2344,10,'Barra do Corda'),(2345,10,'Barreirinhas'),(2346,10,'Barro Duro'),(2347,10,'Bela Vista do Maranhao'),(2348,10,'Belagua'),(2349,10,'Benedito Leite'),(2350,10,'Bequimao'),(2351,10,'Bernardo do Mearim'),(2352,10,'Boa Vista do Gurupi'),(2353,10,'Boa Vista do Pindare'),(2354,10,'Bom Jardim'),(2355,10,'Bom Jesus das Selvas'),(2356,10,'Bom Lugar'),(2357,10,'Bonfim do Arari'),(2358,10,'Brejo'),(2359,10,'Brejo de Areia'),(2360,10,'Brejo de Sao Felix'),(2361,10,'Buriti'),(2362,10,'Buriti Bravo'),(2363,10,'Buriti Cortado'),(2364,10,'Buriticupu'),(2365,10,'Buritirama'),(2366,10,'Cachoeira Grande'),(2367,10,'Cajapio'),(2368,10,'Cajari'),(2369,10,'Campestre do Maranhao'),(2370,10,'Candido Mendes'),(2371,10,'Cantanhede'),(2372,10,'Capinzal do Norte'),(2373,10,'Caraiba do Norte'),(2374,10,'Carolina'),(2375,10,'Carutapera'),(2376,10,'Caxias'),(2377,10,'Cedral'),(2378,10,'Central do Maranhao'),(2379,10,'Centro do Guilherme'),(2380,10,'Centro Novo do Maranhao'),(2381,10,'Chapadinha'),(2382,10,'Cidelandia'),(2383,10,'Codo'),(2384,10,'Codozinho'),(2385,10,'Coelho Neto'),(2386,10,'Colinas'),(2387,10,'Conceicao do Lago-acu'),(2388,10,'Coroata'),(2389,10,'Curupa'),(2390,10,'Cururupu'),(2391,10,'Curva Grande'),(2392,10,'Custodio Lima'),(2393,10,'Davinopolis'),(2394,10,'Dom Pedro'),(2395,10,'Duque Bacelar'),(2396,10,'Esperantinopolis'),(2397,10,'Estandarte'),(2398,10,'Estreito'),(2399,10,'Feira Nova do Maranhao'),(2400,10,'Fernando Falcao'),(2401,10,'Formosa da Serra Negra'),(2402,10,'Fortaleza dos Nogueiras'),(2403,10,'Fortuna'),(2404,10,'Frecheiras'),(2405,10,'Godofredo Viana'),(2406,10,'Goncalves Dias'),(2407,10,'Governador Archer'),(2408,10,'Governador Edison Lobao'),(2409,10,'Governador Eugenio Barros'),(2410,10,'Governador Luiz Rocha'),(2411,10,'Governador Newton Bello'),(2412,10,'Governador Nunes Freire'),(2413,10,'Graca Aranha'),(2414,10,'Grajau'),(2415,10,'Guimaraes'),(2416,10,'Humberto de Campos'),(2417,10,'Ibipira'),(2418,10,'Icatu'),(2419,10,'Igarape do Meio'),(2420,10,'Igarape Grande'),(2421,10,'Imperatriz'),(2422,10,'Itaipava do Grajau'),(2423,10,'Itamatare'),(2424,10,'Itapecuru Mirim'),(2425,10,'Itapera'),(2426,10,'Itinga do Maranhao'),(2427,10,'Jatoba'),(2428,10,'Jenipapo dos Vieiras'),(2429,10,'Joao Lisboa'),(2430,10,'Joselandia'),(2431,10,'Junco do Maranhao'),(2432,10,'Lago da Pedra'),(2433,10,'Lago do Junco'),(2434,10,'Lago dos Rodrigues'),(2435,10,'Lago Verde'),(2436,10,'Lagoa do Mato'),(2437,10,'Lagoa Grande do Maranhao'),(2438,10,'Lajeado Novo'),(2439,10,'Lapela'),(2440,10,'Leandro'),(2441,10,'Lima Campos'),(2442,10,'Loreto'),(2443,10,'Luis Domingues'),(2444,10,'Magalhaes de Almeida'),(2445,10,'Maioba'),(2446,10,'Maracacume'),(2447,10,'Maraja do Sena'),(2448,10,'Maranhaozinho'),(2449,10,'Marianopolis'),(2450,10,'Mata'),(2451,10,'Mata Roma'),(2452,10,'Matinha'),(2453,10,'Matoes'),(2454,10,'Matoes do Norte'),(2455,10,'Milagres do Maranhao'),(2456,10,'Mirador'),(2457,10,'Miranda do Norte'),(2458,10,'Mirinzal'),(2459,10,'Moncao'),(2460,10,'Montes Altos'),(2461,10,'Morros'),(2462,10,'Nina Rodrigues'),(2463,10,'Nova Colinas'),(2464,10,'Nova Iorque'),(2465,10,'Nova Olinda do Maranhao'),(2466,10,'Olho D\'agua Das Cunhas'),(2467,10,'Olinda Nova do Maranhao'),(2468,10,'Paco do Lumiar'),(2469,10,'Palmeirandia'),(2470,10,'Papagaio'),(2471,10,'Paraibano'),(2472,10,'Parnarama'),(2473,10,'Passagem Franca'),(2474,10,'Pastos Bons'),(2475,10,'Paulino Neves'),(2476,10,'Paulo Ramos'),(2477,10,'Pedreiras'),(2478,10,'Pedro do Rosario'),(2479,10,'Penalva'),(2480,10,'Peri Mirim'),(2481,10,'Peritoro'),(2482,10,'Pimentel'),(2483,10,'Pindare Mirim'),(2484,10,'Pinheiro'),(2485,10,'Pio Xii'),(2486,10,'Pirapemas'),(2487,10,'Pocao de Pedras'),(2488,10,'Porto das Gabarras'),(2489,10,'Porto Franco'),(2490,10,'Porto Rico do Maranhao'),(2491,10,'Presidente Dutra'),(2492,10,'Presidente Juscelino'),(2493,10,'Presidente Medici'),(2494,10,'Presidente Sarney'),(2495,10,'Presidente Vargas'),(2496,10,'Primeira Cruz'),(2497,10,'Raposa'),(2498,10,'Resplandes'),(2499,10,'Riachao'),(2500,10,'Ribamar Fiquene'),(2501,10,'Ribeirao Azul'),(2502,10,'Rocado'),(2503,10,'Roque'),(2504,10,'Rosario'),(2505,10,'Sambaiba'),(2506,10,'Santa Filomena do Maranhao'),(2507,10,'Santa Helena'),(2508,10,'Santa Ines'),(2509,10,'Santa Luzia'),(2510,10,'Santa Luzia do Parua'),(2511,10,'Santa Quiteria do Maranhao'),(2512,10,'Santa Rita'),(2513,10,'Santana do Maranhao'),(2514,10,'Santo Amaro'),(2515,10,'Santo Antonio dos Lopes'),(2516,10,'Sao Benedito do Rio Preto'),(2517,10,'Sao Bento'),(2518,10,'Sao Bernardo'),(2519,10,'Sao Domingos do Azeitao'),(2520,10,'Sao Domingos do Maranhao'),(2521,10,'Sao Felix de Balsas'),(2522,10,'Sao Francisco do Brejao'),(2523,10,'Sao Francisco do Maranhao'),(2524,10,'Sao Joao Batista'),(2525,10,'Sao Joao de Cortes'),(2526,10,'Sao Joao do Caru'),(2527,10,'Sao Joao do Paraiso'),(2528,10,'Sao Joao do Soter'),(2529,10,'Sao Joao dos Patos'),(2530,10,'Sao Joaquim dos Melos'),(2531,10,'Sao Jose de Ribamar'),(2532,10,'Sao Jose dos Basilios'),(2533,10,'Sao Luis'),(2534,10,'Sao Luis Gonzaga do Maranhao'),(2535,10,'Sao Mateus do Maranhao'),(2536,10,'Sao Pedro da Agua Branca'),(2537,10,'Sao Pedro dos Crentes'),(2538,10,'Sao Raimundo das Mangabeiras'),(2539,10,'Sao Raimundo de Codo'),(2540,10,'Sao Raimundo do Doca Bezerra'),(2541,10,'Sao Roberto'),(2542,10,'Sao Vicente Ferrer'),(2543,10,'Satubinha'),(2544,10,'Senador Alexandre Costa'),(2545,10,'Senador La Rocque'),(2546,10,'Serrano do Maranhao'),(2547,10,'Sitio Novo'),(2548,10,'Sucupira do Norte'),(2549,10,'Sucupira do Riachao'),(2550,10,'Tasso Fragoso'),(2551,10,'Timbiras'),(2552,10,'Timon'),(2553,10,'Trizidela do Vale'),(2554,10,'Tufilandia'),(2555,10,'Tuntum'),(2556,10,'Turiacu'),(2557,10,'Turilandia'),(2558,10,'Tutoia'),(2559,10,'Urbano Santos'),(2560,10,'Vargem Grande'),(2561,10,'Viana'),(2562,10,'Vila Nova dos Martirios'),(2563,10,'Vitoria do Mearim'),(2564,10,'Vitorino Freire'),(2565,10,'Ze Doca'),(2566,11,'Abadia dos Dourados'),(2567,11,'Abaete'),(2568,11,'Abaete dos Mendes'),(2569,11,'Abaiba'),(2570,11,'Abre Campo'),(2571,11,'Abreus'),(2572,11,'Acaiaca'),(2573,11,'Acucena'),(2574,11,'Acurui'),(2575,11,'Adao Colares'),(2576,11,'Agua Boa'),(2577,11,'Agua Branca de Minas'),(2578,11,'Agua Comprida'),(2579,11,'Agua Viva'),(2580,11,'Aguanil'),(2581,11,'Aguas de Araxa'),(2582,11,'Aguas de Contendas'),(2583,11,'Aguas Ferreas'),(2584,11,'Aguas Formosas'),(2585,11,'Aguas Vermelhas'),(2586,11,'Aimores'),(2587,11,'Aiuruoca'),(2588,11,'Alagoa'),(2589,11,'Albertina'),(2590,11,'Alberto Isaacson'),(2591,11,'Albertos'),(2592,11,'Aldeia'),(2593,11,'Alegre'),(2594,11,'Alegria'),(2595,11,'Alem Paraiba'),(2596,11,'Alexandrita'),(2597,11,'Alfenas'),(2598,11,'Alfredo Vasconcelos'),(2599,11,'Almeida'),(2600,11,'Almenara'),(2601,11,'Alpercata'),(2602,11,'Alpinopolis'),(2603,11,'Alterosa'),(2604,11,'Alto Caparao'),(2605,11,'Alto Capim'),(2606,11,'Alto de Santa Helena'),(2607,11,'Alto Jequitiba'),(2608,11,'Alto Maranhao'),(2609,11,'Alto Rio Doce'),(2610,11,'Altolandia'),(2611,11,'Alvacao'),(2612,11,'Alvarenga'),(2613,11,'Alvinopolis'),(2614,11,'Alvorada'),(2615,11,'Alvorada de Minas'),(2616,11,'Amanda'),(2617,11,'Amanhece'),(2618,11,'Amarantina'),(2619,11,'Amparo da Serra'),(2620,11,'Andiroba'),(2621,11,'Andradas'),(2622,11,'Andrelandia'),(2623,11,'Andrequice'),(2624,11,'Angaturama'),(2625,11,'Angelandia'),(2626,11,'Angicos de Minas'),(2627,11,'Anguereta'),(2628,11,'Angustura'),(2629,11,'Antonio Carlos'),(2630,11,'Antonio Dias'),(2631,11,'Antonio dos Santos'),(2632,11,'Antonio Ferreira'),(2633,11,'Antonio Pereira'),(2634,11,'Antonio Prado de Minas'),(2635,11,'Antunes'),(2636,11,'Aparecida de Minas'),(2637,11,'Aracai'),(2638,11,'Aracati de Minas'),(2639,11,'Aracitaba'),(2640,11,'Aracuai'),(2641,11,'Araguari'),(2642,11,'Aramirim'),(2643,11,'Aranha'),(2644,11,'Arantina'),(2645,11,'Araponga'),(2646,11,'Arapora'),(2647,11,'Arapua'),(2648,11,'Araujos'),(2649,11,'Arauna'),(2650,11,'Araxa'),(2651,11,'Arcangelo'),(2652,11,'Arceburgo'),(2653,11,'Arcos'),(2654,11,'Areado'),(2655,11,'Argenita'),(2656,11,'Argirita'),(2657,11,'Aricanduva'),(2658,11,'Arinos'),(2659,11,'Aristides Batista'),(2660,11,'Ascencao'),(2661,11,'Assarai'),(2662,11,'Astolfo Dutra'),(2663,11,'Ataleia'),(2664,11,'Augusto de Lima'),(2665,11,'Avai do Jacinto'),(2666,11,'Azurita'),(2667,11,'Babilonia'),(2668,11,'Bacao'),(2669,11,'Baependi'),(2670,11,'Baguari'),(2671,11,'Baioes'),(2672,11,'Baixa'),(2673,11,'Balbinopolis'),(2674,11,'Baldim'),(2675,11,'Bambui'),(2676,11,'Bandeira'),(2677,11,'Bandeira do Sul'),(2678,11,'Bandeirantes'),(2679,11,'Barao de Cocais'),(2680,11,'Barao de Monte Alto'),(2681,11,'Barbacena'),(2682,11,'Barra Alegre'),(2683,11,'Barra da Figueira'),(2684,11,'Barra do Ariranha'),(2685,11,'Barra do Cuiete'),(2686,11,'Barra Feliz'),(2687,11,'Barra Longa'),(2688,11,'Barranco Alto'),(2689,11,'Barreiro'),(2690,11,'Barreiro Branco'),(2691,11,'Barreiro da Raiz'),(2692,11,'Barreiro do Rio Verde'),(2693,11,'Barretos de Alvinopolis'),(2694,11,'Barrocao'),(2695,11,'Barroso'),(2696,11,'Bau'),(2697,11,'Bela Vista de Minas'),(2698,11,'Belisario'),(2699,11,'Belmiro Braga'),(2700,11,'Belo Horizonte'),(2701,11,'Belo Oriente'),(2702,11,'Belo Vale'),(2703,11,'Bentopolis de Minas'),(2704,11,'Berilo'),(2705,11,'Berizal'),(2706,11,'Bertopolis'),(2707,11,'Betim'),(2708,11,'Bias Fortes'),(2709,11,'Bicas'),(2710,11,'Bicuiba'),(2711,11,'Biquinhas'),(2712,11,'Bituri'),(2713,11,'Boa Esperanca'),(2714,11,'Boa Familia'),(2715,11,'Boa Uniao de Itabirinha'),(2716,11,'Boa Vista de Minas'),(2717,11,'Bocaina de Minas'),(2718,11,'Bocaiuva'),(2719,11,'Bom Despacho'),(2720,11,'Bom Jardim de Minas'),(2721,11,'Bom Jesus da Cachoeira'),(2722,11,'Bom Jesus da Penha'),(2723,11,'Bom Jesus de Cardosos'),(2724,11,'Bom Jesus do Amparo'),(2725,11,'Bom Jesus do Divino'),(2726,11,'Bom Jesus do Galho'),(2727,11,'Bom Jesus do Madeira'),(2728,11,'Bom Pastor'),(2729,11,'Bom Repouso'),(2730,11,'Bom Retiro'),(2731,11,'Bom Sucesso'),(2732,11,'Bom Sucesso de Patos'),(2733,11,'Bonanca'),(2734,11,'Bonfim'),(2735,11,'Bonfinopolis de Minas'),(2736,11,'Bonito de Minas'),(2737,11,'Borba Gato'),(2738,11,'Borda da Mata'),(2739,11,'Botelhos'),(2740,11,'Botumirim'),(2741,11,'Bras Pires'),(2742,11,'Brasilandia de Minas'),(2743,11,'Brasilia de Minas'),(2744,11,'Brasopolis'),(2745,11,'Braunas'),(2746,11,'Brejauba'),(2747,11,'Brejaubinha'),(2748,11,'Brejo Bonito'),(2749,11,'Brejo do Amparo'),(2750,11,'Brumadinho'),(2751,11,'Brumal'),(2752,11,'Buarque de Macedo'),(2753,11,'Bueno'),(2754,11,'Bueno Brandao'),(2755,11,'Buenopolis'),(2756,11,'Bugre'),(2757,11,'Buritis'),(2758,11,'Buritizeiro'),(2759,11,'Caatinga'),(2760,11,'Cabeceira Grande'),(2761,11,'Cabo Verde'),(2762,11,'Caburu'),(2763,11,'Cacaratiba'),(2764,11,'Cacarema'),(2765,11,'Cachoeira Alegre'),(2766,11,'Cachoeira da Prata'),(2767,11,'Cachoeira de Minas'),(2768,11,'Cachoeira de Pajeu'),(2769,11,'Cachoeira de Santa Cruz'),(2770,11,'Cachoeira do Brumado'),(2771,11,'Cachoeira do Campo'),(2772,11,'Cachoeira do Manteiga'),(2773,11,'Cachoeira do Vale'),(2774,11,'Cachoeira dos Antunes'),(2775,11,'Cachoeira Dourada'),(2776,11,'Cachoeirinha'),(2777,11,'Caetano Lopes'),(2778,11,'Caetanopolis'),(2779,11,'Caete'),(2780,11,'Caiana'),(2781,11,'Caiapo'),(2782,11,'Cajuri'),(2783,11,'Caldas'),(2784,11,'Calixto'),(2785,11,'Camacho'),(2786,11,'Camanducaia'),(2787,11,'Camargos'),(2788,11,'Cambui'),(2789,11,'Cambuquira'),(2790,11,'Campanario'),(2791,11,'Campanha'),(2792,11,'Campestre'),(2793,11,'Campestrinho'),(2794,11,'Campina Verde'),(2795,11,'Campo Alegre de Minas'),(2796,11,'Campo Azul'),(2797,11,'Campo Belo'),(2798,11,'Campo do Meio'),(2799,11,'Campo Florido'),(2800,11,'Campo Redondo'),(2801,11,'Campolide'),(2802,11,'Campos Altos'),(2803,11,'Campos Gerais'),(2804,11,'Cana Verde'),(2805,11,'Canaa'),(2806,11,'Canabrava'),(2807,11,'Canapolis'),(2808,11,'Canastrao'),(2809,11,'Candeias'),(2810,11,'Canoeiros'),(2811,11,'Cantagalo'),(2812,11,'Caparao'),(2813,11,'Capela Nova'),(2814,11,'Capelinha'),(2815,11,'Capetinga'),(2816,11,'Capim Branco'),(2817,11,'Capinopolis'),(2818,11,'Capitania'),(2819,11,'Capitao Andrade'),(2820,11,'Capitao Eneas'),(2821,11,'Capitolio'),(2822,11,'Caputira'),(2823,11,'Carai'),(2824,11,'Caranaiba'),(2825,11,'Carandai'),(2826,11,'Carangola'),(2827,11,'Caratinga'),(2828,11,'Carbonita'),(2829,11,'Cardeal Mota'),(2830,11,'Careacu'),(2831,11,'Carioca'),(2832,11,'Carlos Alves'),(2833,11,'Carlos Chagas'),(2834,11,'Carmesia'),(2835,11,'Carmo da Cachoeira'),(2836,11,'Carmo da Mata'),(2837,11,'Carmo de Minas'),(2838,11,'Carmo do Cajuru'),(2839,11,'Carmo do Paranaiba'),(2840,11,'Carmo do Rio Claro'),(2841,11,'Carmopolis de Minas'),(2842,11,'Carneirinho'),(2843,11,'Carrancas'),(2844,11,'Carvalho de Brito'),(2845,11,'Carvalhopolis'),(2846,11,'Carvalhos'),(2847,11,'Casa Grande'),(2848,11,'Cascalho Rico'),(2849,11,'Cassia'),(2850,11,'Cataguarino'),(2851,11,'Cataguases'),(2852,11,'Catajas'),(2853,11,'Catas Altas'),(2854,11,'Catas Altas da Noruega'),(2855,11,'Catiara'),(2856,11,'Catuji'),(2857,11,'Catune'),(2858,11,'Catuni'),(2859,11,'Catuti'),(2860,11,'Caxambu'),(2861,11,'Cedro do Abaete'),(2862,11,'Centenario'),(2863,11,'Central de Minas'),(2864,11,'Central de Santa Helena'),(2865,11,'Centralina'),(2866,11,'Cervo'),(2867,11,'Chacara'),(2868,11,'Chale'),(2869,11,'Chapada de Minas'),(2870,11,'Chapada do Norte'),(2871,11,'Chapada Gaucha'),(2872,11,'Chaveslandia'),(2873,11,'Chiador'),(2874,11,'Chonim'),(2875,11,'Chumbo'),(2876,11,'Cipotanea'),(2877,11,'Cisneiros'),(2878,11,'Citrolandia'),(2879,11,'Claraval'),(2880,11,'Claro de Minas'),(2881,11,'Claro dos Pocoes'),(2882,11,'Claudio'),(2883,11,'Claudio Manuel'),(2884,11,'Cocais'),(2885,11,'Coco'),(2886,11,'Coimbra'),(2887,11,'Coluna'),(2888,11,'Comendador Gomes'),(2889,11,'Comercinho'),(2890,11,'Conceicao da Aparecida'),(2891,11,'Conceicao da Barra de Minas'),(2892,11,'Conceicao da Boa Vista'),(2893,11,'Conceicao da Brejauba'),(2894,11,'Conceicao da Ibitipoca'),(2895,11,'Conceicao das Alagoas'),(2896,11,'Conceicao das Pedras'),(2897,11,'Conceicao de Ipanema'),(2898,11,'Conceicao de Itagua'),(2899,11,'Conceicao de Minas'),(2900,11,'Conceicao de Piracicaba'),(2901,11,'Conceicao de Tronqueiras'),(2902,11,'Conceicao do Capim'),(2903,11,'Conceicao do Formoso'),(2904,11,'Conceicao do Mato Dentro'),(2905,11,'Conceicao do Para'),(2906,11,'Conceicao do Rio Acima'),(2907,11,'Conceicao do Rio Verde'),(2908,11,'Conceicao dos Ouros'),(2909,11,'Concordia de Mucuri'),(2910,11,'Condado do Norte'),(2911,11,'Conego Joao Pio'),(2912,11,'Conego Marinho'),(2913,11,'Confins'),(2914,11,'Congonhal'),(2915,11,'Congonhas'),(2916,11,'Congonhas do Norte'),(2917,11,'Conquista'),(2918,11,'Conselheiro Lafaiete'),(2919,11,'Conselheiro Mata'),(2920,11,'Conselheiro Pena'),(2921,11,'Consolacao'),(2922,11,'Contagem'),(2923,11,'Contrato'),(2924,11,'Contria'),(2925,11,'Coqueiral'),(2926,11,'Coracao de Jesus'),(2927,11,'Cordisburgo'),(2928,11,'Cordislandia'),(2929,11,'Corinto'),(2930,11,'Coroaci'),(2931,11,'Coromandel'),(2932,11,'Coronel Fabriciano'),(2933,11,'Coronel Murta'),(2934,11,'Coronel Pacheco'),(2935,11,'Coronel Xavier Chaves'),(2936,11,'Corrego Danta'),(2937,11,'Corrego do Barro'),(2938,11,'Corrego do Bom Jesus'),(2939,11,'Corrego do Ouro'),(2940,11,'Corrego Fundo'),(2941,11,'Corrego Novo'),(2942,11,'Corregos'),(2943,11,'Correia de Almeida'),(2944,11,'Correntinho'),(2945,11,'Costa Sena'),(2946,11,'Costas'),(2947,11,'Costas da Mantiqueira'),(2948,11,'Couto de Magalhaes de Minas'),(2949,11,'Crisolia'),(2950,11,'Crisolita'),(2951,11,'Crispim Jaques'),(2952,11,'Cristais'),(2953,11,'Cristalia'),(2954,11,'Cristiano Otoni'),(2955,11,'Cristina'),(2956,11,'Crucilandia'),(2957,11,'Cruzeiro da Fortaleza'),(2958,11,'Cruzeiro dos Peixotos'),(2959,11,'Cruzilia'),(2960,11,'Cubas'),(2961,11,'Cuite Velho'),(2962,11,'Cuparaque'),(2963,11,'Curimatai'),(2964,11,'Curral de Dentro'),(2965,11,'Curvelo'),(2966,11,'Datas'),(2967,11,'Delfim Moreira'),(2968,11,'Delfinopolis'),(2969,11,'Delta'),(2970,11,'Deputado Augusto Clementino'),(2971,11,'Derribadinha'),(2972,11,'Descoberto'),(2973,11,'Desembargador Otoni'),(2974,11,'Desemboque'),(2975,11,'Desterro de Entre Rios'),(2976,11,'Desterro do Melo'),(2977,11,'Diamante de Uba'),(2978,11,'Diamantina'),(2979,11,'Dias'),(2980,11,'Dias Tavares/siderurgica'),(2981,11,'Diogo de Vasconcelos'),(2982,11,'Dionisio'),(2983,11,'Divinesia'),(2984,11,'Divino'),(2985,11,'Divino das Laranjeiras'),(2986,11,'Divino de Virgolandia'),(2987,11,'Divino Espirito Santo'),(2988,11,'Divinolandia de Minas'),(2989,11,'Divinopolis'),(2990,11,'Divisa Alegre'),(2991,11,'Divisa Nova'),(2992,11,'Divisopolis'),(2993,11,'Dois de Abril'),(2994,11,'Dom Bosco'),(2995,11,'Dom Cavati'),(2996,11,'Dom Joaquim'),(2997,11,'Dom Lara'),(2998,11,'Dom Modesto'),(2999,11,'Dom Silverio'),(3000,11,'Dom Vicoso'),(3001,11,'Dona Euzebia'),(3002,11,'Dores da Vitoria'),(3003,11,'Dores de Campos'),(3004,11,'Dores de Guanhaes'),(3005,11,'Dores do Indaia'),(3006,11,'Dores do Paraibuna'),(3007,11,'Dores do Turvo'),(3008,11,'Doresopolis'),(3009,11,'Douradinho'),(3010,11,'Douradoquara'),(3011,11,'Doutor Campolina'),(3012,11,'Doutor Lund'),(3013,11,'Durande'),(3014,11,'Edgard Melo'),(3015,11,'Eloi Mendes'),(3016,11,'Emboabas'),(3017,11,'Engenheiro Caldas'),(3018,11,'Engenheiro Correia'),(3019,11,'Engenheiro Navarro'),(3020,11,'Engenheiro Schnoor'),(3021,11,'Engenho do Ribeiro'),(3022,11,'Engenho Novo'),(3023,11,'Entre Folhas'),(3024,11,'Entre Rios de Minas'),(3025,11,'Epaminondas Otoni'),(3026,11,'Ermidinha'),(3027,11,'Ervalia'),(3028,11,'Esmeraldas'),(3029,11,'Esmeraldas de Ferros'),(3030,11,'Espera Feliz'),(3031,11,'Espinosa'),(3032,11,'Espirito Santo do Dourado'),(3033,11,'Esteios'),(3034,11,'Estevao de Araujo'),(3035,11,'Estiva'),(3036,11,'Estrela da Barra'),(3037,11,'Estrela Dalva'),(3038,11,'Estrela de Jordania'),(3039,11,'Estrela do Indaia'),(3040,11,'Estrela do Sul'),(3041,11,'Eugenopolis'),(3042,11,'Euxenita'),(3043,11,'Ewbank da Camara'),(3044,11,'Expedicionario Alicio'),(3045,11,'Extracao'),(3046,11,'Extrema'),(3047,11,'Fama'),(3048,11,'Faria Lemos'),(3049,11,'Farias'),(3050,11,'Fechados'),(3051,11,'Felicina'),(3052,11,'Felicio dos Santos'),(3053,11,'Felisburgo'),(3054,11,'Felixlandia'),(3055,11,'Fernandes Tourinho'),(3056,11,'Fernao Dias'),(3057,11,'Ferreiras'),(3058,11,'Ferreiropolis'),(3059,11,'Ferros'),(3060,11,'Ferruginha'),(3061,11,'Fervedouro'),(3062,11,'Fidalgo'),(3063,11,'Fidelandia'),(3064,11,'Flor de Minas'),(3065,11,'Floralia'),(3066,11,'Floresta'),(3067,11,'Florestal'),(3068,11,'Florestina'),(3069,11,'Fonseca'),(3070,11,'Formiga'),(3071,11,'Formoso'),(3072,11,'Fortaleza de Minas'),(3073,11,'Fortuna de Minas'),(3074,11,'Francisco Badaro'),(3075,11,'Francisco Dumont'),(3076,11,'Francisco Sa'),(3077,11,'Franciscopolis'),(3078,11,'Frei Eustaquio'),(3079,11,'Frei Gaspar'),(3080,11,'Frei Inocencio'),(3081,11,'Frei Lagonegro'),(3082,11,'Frei Orlando'),(3083,11,'Frei Serafim'),(3084,11,'Freire Cardoso'),(3085,11,'Fronteira'),(3086,11,'Fronteira dos Vales'),(3087,11,'Fruta de Leite'),(3088,11,'Frutal'),(3089,11,'Funchal'),(3090,11,'Funilandia'),(3091,11,'Furnas'),(3092,11,'Furquim'),(3093,11,'Galego'),(3094,11,'Galena'),(3095,11,'Galileia'),(3096,11,'Gama'),(3097,11,'Gameleiras'),(3098,11,'Garapuava'),(3099,11,'Gaviao'),(3100,11,'Glaucilandia'),(3101,11,'Glaura'),(3102,11,'Glucinio'),(3103,11,'Goiabeira'),(3104,11,'Goiana'),(3105,11,'Goianases'),(3106,11,'Goncalves'),(3107,11,'Gonzaga'),(3108,11,'Gororos'),(3109,11,'Gorutuba'),(3110,11,'Gouvea'),(3111,11,'Governador Valadares'),(3112,11,'Graminea'),(3113,11,'Granada'),(3114,11,'Grao Mogol'),(3115,11,'Grota'),(3116,11,'Grupiara'),(3117,11,'Guacui'),(3118,11,'Guaipava'),(3119,11,'Guanhaes'),(3120,11,'Guape'),(3121,11,'Guaraciaba'),(3122,11,'Guaraciama'),(3123,11,'Guaranesia'),(3124,11,'Guarani'),(3125,11,'Guaranilandia'),(3126,11,'Guarara'),(3127,11,'Guarataia'),(3128,11,'Guarda dos Ferreiros'),(3129,11,'Guarda-mor'),(3130,11,'Guardinha'),(3131,11,'Guaxima'),(3132,11,'Guaxupe'),(3133,11,'Guidoval'),(3134,11,'Guimarania'),(3135,11,'Guinda'),(3136,11,'Guiricema'),(3137,11,'Gurinhata'),(3138,11,'Heliodora'),(3139,11,'Hematita'),(3140,11,'Hermilo Alves'),(3141,11,'Honoropolis'),(3142,11,'Iapu'),(3143,11,'Ibertioga'),(3144,11,'Ibia'),(3145,11,'Ibiai'),(3146,11,'Ibiracatu'),(3147,11,'Ibiraci'),(3148,11,'Ibirite'),(3149,11,'Ibitira'),(3150,11,'Ibitiura de Minas'),(3151,11,'Ibituruna'),(3152,11,'Icarai de Minas'),(3153,11,'Igarape'),(3154,11,'Igaratinga'),(3155,11,'Iguatama'),(3156,11,'Ijaci'),(3157,11,'Ilheus do Prata'),(3158,11,'Ilicinea'),(3159,11,'Imbe de Minas'),(3160,11,'Inconfidentes'),(3161,11,'Indaiabira'),(3162,11,'Independencia'),(3163,11,'Indianopolis'),(3164,11,'Ingai'),(3165,11,'Inhai'),(3166,11,'Inhapim'),(3167,11,'Inhauma'),(3168,11,'Inimutaba'),(3169,11,'Ipaba'),(3170,11,'Ipanema'),(3171,11,'Ipatinga'),(3172,11,'Ipiacu'),(3173,11,'Ipoema'),(3174,11,'Ipuiuna'),(3175,11,'Irai de Minas'),(3176,11,'Itabira'),(3177,11,'Itabirinha de Mantena'),(3178,11,'Itabirito'),(3179,11,'Itaboca'),(3180,11,'Itacambira'),(3181,11,'Itacarambi'),(3182,11,'Itaci'),(3183,11,'Itacolomi'),(3184,11,'Itaguara'),(3185,11,'Itaim'),(3186,11,'Itaipe'),(3187,11,'Itajuba'),(3188,11,'Itajutiba'),(3189,11,'Itamarandiba'),(3190,11,'Itamarati'),(3191,11,'Itamarati de Minas'),(3192,11,'Itambacuri'),(3193,11,'Itambe do Mato Dentro'),(3194,11,'Itamirim'),(3195,11,'Itamogi'),(3196,11,'Itamonte'),(3197,11,'Itamuri'),(3198,11,'Itanhandu'),(3199,11,'Itanhomi'),(3200,11,'Itaobim'),(3201,11,'Itapagipe'),(3202,11,'Itapanhoacanga'),(3203,11,'Itapecerica'),(3204,11,'Itapeva'),(3205,11,'Itapiru'),(3206,11,'Itapirucu'),(3207,11,'Itatiaiucu'),(3208,11,'Itau de Minas'),(3209,11,'Itauna'),(3210,11,'Itauninha'),(3211,11,'Itaverava'),(3212,11,'Iterere'),(3213,11,'Itinga'),(3214,11,'Itira'),(3215,11,'Itueta'),(3216,11,'Itui'),(3217,11,'Ituiutaba'),(3218,11,'Itumirim'),(3219,11,'Iturama'),(3220,11,'Itutinga'),(3221,11,'Jaboticatubas'),(3222,11,'Jacarandira'),(3223,11,'Jacare'),(3224,11,'Jacinto'),(3225,11,'Jacui'),(3226,11,'Jacutinga'),(3227,11,'Jaguaracu'),(3228,11,'Jaguarao'),(3229,11,'Jaguaritira'),(3230,11,'Jaiba'),(3231,11,'Jampruca'),(3232,11,'Janauba'),(3233,11,'Januaria'),(3234,11,'Japaraiba'),(3235,11,'Japonvar'),(3236,11,'Jardinesia'),(3237,11,'Jeceaba'),(3238,11,'Jenipapo de Minas'),(3239,11,'Jequeri'),(3240,11,'Jequitai'),(3241,11,'Jequitiba'),(3242,11,'Jequitinhonha'),(3243,11,'Jesuania'),(3244,11,'Joaima'),(3245,11,'Joanesia'),(3246,11,'Joao Monlevade'),(3247,11,'Joao Pinheiro'),(3248,11,'Joaquim Felicio'),(3249,11,'Jordania'),(3250,11,'Jose Goncalves de Minas'),(3251,11,'Jose Raydan'),(3252,11,'Joselandia'),(3253,11,'Josenopolis'),(3254,11,'Juatuba'),(3255,11,'Jubai'),(3256,11,'Juiracu'),(3257,11,'Juiz de Fora'),(3258,11,'Junco de Minas'),(3259,11,'Juramento'),(3260,11,'Jureia'),(3261,11,'Juruaia'),(3262,11,'Jurumirim'),(3263,11,'Justinopolis'),(3264,11,'Juvenilia'),(3265,11,'Lacerdinha'),(3266,11,'Ladainha'),(3267,11,'Lagamar'),(3268,11,'Lagoa Bonita'),(3269,11,'Lagoa da Prata'),(3270,11,'Lagoa dos Patos'),(3271,11,'Lagoa Dourada'),(3272,11,'Lagoa Formosa'),(3273,11,'Lagoa Grande'),(3274,11,'Lagoa Santa'),(3275,11,'Lajinha'),(3276,11,'Lambari'),(3277,11,'Lamim'),(3278,11,'Lamounier'),(3279,11,'Lapinha'),(3280,11,'Laranjal'),(3281,11,'Laranjeiras de Caldas'),(3282,11,'Lassance'),(3283,11,'Lavras'),(3284,11,'Leandro Ferreira'),(3285,11,'Leme do Prado'),(3286,11,'Leopoldina'),(3287,11,'Levinopolis'),(3288,11,'Liberdade'),(3289,11,'Lima Duarte'),(3290,11,'Limeira D\'oeste'),(3291,11,'Limeira de Mantena'),(3292,11,'Lobo Leite'),(3293,11,'Lontra'),(3294,11,'Lourenco Velho'),(3295,11,'Lufa'),(3296,11,'Luisburgo'),(3297,11,'Luislandia'),(3298,11,'Luiz Pires de Minas'),(3299,11,'Luizlandia do Oeste'),(3300,11,'Luminarias'),(3301,11,'Luminosa'),(3302,11,'Luz'),(3303,11,'Macaia'),(3304,11,'Machacalis'),(3305,11,'Machado'),(3306,11,'Macuco'),(3307,11,'Macuco de Minas'),(3308,11,'Madre de Deus de Minas'),(3309,11,'Mae dos Homens'),(3310,11,'Major Ezequiel'),(3311,11,'Major Porto'),(3312,11,'Malacacheta'),(3313,11,'Mamonas'),(3314,11,'Manga'),(3315,11,'Manhuacu'),(3316,11,'Manhumirim'),(3317,11,'Mantena'),(3318,11,'Mantiqueira'),(3319,11,'Mantiqueira do Palmital'),(3320,11,'Mar de Espanha'),(3321,11,'Marambainha'),(3322,11,'Maravilhas'),(3323,11,'Maria da Fe'),(3324,11,'Mariana'),(3325,11,'Marilac'),(3326,11,'Marilandia'),(3327,11,'Mario Campos'),(3328,11,'Maripa de Minas'),(3329,11,'Marlieria'),(3330,11,'Marmelopolis'),(3331,11,'Martinesia'),(3332,11,'Martinho Campos'),(3333,11,'Martins Guimaraes'),(3334,11,'Martins Soares'),(3335,11,'Mata Verde'),(3336,11,'Materlandia'),(3337,11,'Mateus Leme'),(3338,11,'Mathias Lobato'),(3339,11,'Matias Barbosa'),(3340,11,'Matias Cardoso'),(3341,11,'Matipo'),(3342,11,'Mato Verde'),(3343,11,'Matozinhos'),(3344,11,'Matutina'),(3345,11,'Medeiros'),(3346,11,'Medina'),(3347,11,'Melo Viana'),(3348,11,'Mendanha'),(3349,11,'Mendes Pimentel'),(3350,11,'Mendonca'),(3351,11,'Merces'),(3352,11,'Merces de Agua Limpa'),(3353,11,'Mesquita'),(3354,11,'Mestre Caetano'),(3355,11,'Miguel Burnier'),(3356,11,'Milagre'),(3357,11,'Milho Verde'),(3358,11,'Minas Novas'),(3359,11,'Minduri'),(3360,11,'Mirabela'),(3361,11,'Miradouro'),(3362,11,'Miragaia'),(3363,11,'Mirai'),(3364,11,'Miralta'),(3365,11,'Mirantao'),(3366,11,'Miraporanga'),(3367,11,'Miravania'),(3368,11,'Missionario'),(3369,11,'Mocambeiro'),(3370,11,'Mocambinho'),(3371,11,'Moeda'),(3372,11,'Moema'),(3373,11,'Monjolinho de Minas'),(3374,11,'Monjolos'),(3375,11,'Monsenhor Horta'),(3376,11,'Monsenhor Isidro'),(3377,11,'Monsenhor Joao Alexandre'),(3378,11,'Monsenhor Paulo'),(3379,11,'Montalvania'),(3380,11,'Monte Alegre de Minas'),(3381,11,'Monte Azul'),(3382,11,'Monte Belo'),(3383,11,'Monte Carmelo'),(3384,11,'Monte Celeste'),(3385,11,'Monte Formoso'),(3386,11,'Monte Rei'),(3387,11,'Monte Santo de Minas'),(3388,11,'Monte Siao'),(3389,11,'Monte Verde'),(3390,11,'Montes Claros'),(3391,11,'Montezuma'),(3392,11,'Morada Nova de Minas'),(3393,11,'Morro'),(3394,11,'Morro da Garca'),(3395,11,'Morro do Ferro'),(3396,11,'Morro do Pilar'),(3397,11,'Morro Vermelho'),(3398,11,'Mucuri'),(3399,11,'Mundo Novo de Minas'),(3400,11,'Munhoz'),(3401,11,'Muquem'),(3402,11,'Muriae'),(3403,11,'Mutum'),(3404,11,'Muzambinho'),(3405,11,'Nacip Raydan'),(3406,11,'Nanuque'),(3407,11,'Naque'),(3408,11,'Naque-nanuque'),(3409,11,'Natalandia'),(3410,11,'Natercia'),(3411,11,'Nazare de Minas'),(3412,11,'Nazareno'),(3413,11,'Nelson de Sena'),(3414,11,'Neolandia'),(3415,11,'Nepomuceno'),(3416,11,'Nhandutiba'),(3417,11,'Nicolandia'),(3418,11,'Ninheira'),(3419,11,'Nova Belem'),(3420,11,'Nova Era'),(3421,11,'Nova Esperanca'),(3422,11,'Nova Lima'),(3423,11,'Nova Minda'),(3424,11,'Nova Modica'),(3425,11,'Nova Ponte'),(3426,11,'Nova Porteirinha'),(3427,11,'Nova Resende'),(3428,11,'Nova Serrana'),(3429,11,'Nova Uniao'),(3430,11,'Novilhona'),(3431,11,'Novo Cruzeiro'),(3432,11,'Novo Horizonte'),(3433,11,'Novo Oriente de Minas'),(3434,11,'Novorizonte'),(3435,11,'Ocidente'),(3436,11,'Olaria'),(3437,11,'Olegario Maciel'),(3438,11,'Olhos D\'agua Do Oeste'),(3439,11,'Olhos-d\'agua'),(3440,11,'Olimpio Campos'),(3441,11,'Olimpio Noronha'),(3442,11,'Oliveira'),(3443,11,'Oliveira Fortes'),(3444,11,'Onca de Pitangui'),(3445,11,'Oratorios'),(3446,11,'Orizania'),(3447,11,'Ouro Branco'),(3448,11,'Ouro Fino'),(3449,11,'Ouro Preto'),(3450,11,'Ouro Verde de Minas'),(3451,11,'Paciencia'),(3452,11,'Padre Brito'),(3453,11,'Padre Carvalho'),(3454,11,'Padre Felisberto'),(3455,11,'Padre Fialho'),(3456,11,'Padre Joao Afonso'),(3457,11,'Padre Julio Maria'),(3458,11,'Padre Paraiso'),(3459,11,'Padre Pinto'),(3460,11,'Padre Viegas'),(3461,11,'Pai Pedro'),(3462,11,'Paineiras'),(3463,11,'Pains'),(3464,11,'Paiolinho'),(3465,11,'Paiva'),(3466,11,'Palma'),(3467,11,'Palmeiral'),(3468,11,'Palmeirinha'),(3469,11,'Palmital dos Carvalhos'),(3470,11,'Palmopolis'),(3471,11,'Pantano'),(3472,11,'Papagaios'),(3473,11,'Para de Minas'),(3474,11,'Paracatu'),(3475,11,'Paraguacu'),(3476,11,'Paraguai'),(3477,11,'Paraiso Garcia'),(3478,11,'Paraisopolis'),(3479,11,'Paraopeba'),(3480,11,'Paredao de Minas'),(3481,11,'Parque Durval de Barros'),(3482,11,'Parque Industrial'),(3483,11,'Passa Dez'),(3484,11,'Passa Quatro'),(3485,11,'Passa Tempo'),(3486,11,'Passa Vinte'),(3487,11,'Passabem'),(3488,11,'Passagem de Mariana'),(3489,11,'Passos'),(3490,11,'Patis'),(3491,11,'Patos de Minas'),(3492,11,'Patrimonio'),(3493,11,'Patrocinio'),(3494,11,'Patrocinio do Muriae'),(3495,11,'Paula Candido'),(3496,11,'Paula Lima'),(3497,11,'Paulistas'),(3498,11,'Pavao'),(3499,11,'Pe do Morro'),(3500,11,'Pecanha'),(3501,11,'Pedra Azul'),(3502,11,'Pedra Bonita'),(3503,11,'Pedra Corrida'),(3504,11,'Pedra do Anta'),(3505,11,'Pedra do Indaia'),(3506,11,'Pedra do Sino'),(3507,11,'Pedra Dourada'),(3508,11,'Pedra Grande'),(3509,11,'Pedra Menina'),(3510,11,'Pedralva'),(3511,11,'Pedras de Maria da Cruz'),(3512,11,'Pedrinopolis'),(3513,11,'Pedro Leopoldo'),(3514,11,'Pedro Lessa'),(3515,11,'Pedro Teixeira'),(3516,11,'Pedro Versiani'),(3517,11,'Penedia'),(3518,11,'Penha de Franca'),(3519,11,'Penha do Capim'),(3520,11,'Penha do Cassiano'),(3521,11,'Penha do Norte'),(3522,11,'Penha Longa'),(3523,11,'Pequeri'),(3524,11,'Pequi'),(3525,11,'Perdigao'),(3526,11,'Perdilandia'),(3527,11,'Perdizes'),(3528,11,'Perdoes'),(3529,11,'Pereirinhas'),(3530,11,'Periquito'),(3531,11,'Perpetuo Socorro'),(3532,11,'Pescador'),(3533,11,'Petunia'),(3534,11,'Piacatuba'),(3535,11,'Piao'),(3536,11,'Piau'),(3537,11,'Pic Sagarana'),(3538,11,'Piedade de Caratinga'),(3539,11,'Piedade de Ponte Nova'),(3540,11,'Piedade do Paraopeba'),(3541,11,'Piedade do Rio Grande'),(3542,11,'Piedade dos Gerais'),(3543,11,'Pilar'),(3544,11,'Pimenta'),(3545,11,'Pindaibas'),(3546,11,'Pingo-d\'agua'),(3547,11,'Pinheirinhos'),(3548,11,'Pinheiros Altos'),(3549,11,'Pinhotiba'),(3550,11,'Pintopolis'),(3551,11,'Pintos Negreiros'),(3552,11,'Piracaiba'),(3553,11,'Piracema'),(3554,11,'Pirajuba'),(3555,11,'Piranga'),(3556,11,'Pirangucu'),(3557,11,'Piranguinho'),(3558,11,'Piranguita'),(3559,11,'Pirapanema'),(3560,11,'Pirapetinga'),(3561,11,'Pirapora'),(3562,11,'Pirauba'),(3563,11,'Pires E Albuquerque'),(3564,11,'Piscamba'),(3565,11,'Pitangui'),(3566,11,'Pitarana'),(3567,11,'Piumhi'),(3568,11,'Planalto de Minas'),(3569,11,'Planura'),(3570,11,'Plautino Soares'),(3571,11,'Poaia'),(3572,11,'Poco Fundo'),(3573,11,'Pocoes de Paineiras'),(3574,11,'Pocos de Caldas'),(3575,11,'Pocrane'),(3576,11,'Pompeu'),(3577,11,'Poncianos'),(3578,11,'Pontalete'),(3579,11,'Ponte Alta'),(3580,11,'Ponte Alta de Minas'),(3581,11,'Ponte dos Ciganos'),(3582,11,'Ponte Firme'),(3583,11,'Ponte Nova'),(3584,11,'Ponte Segura'),(3585,11,'Pontevila'),(3586,11,'Ponto Chique'),(3587,11,'Ponto Chique do Martelo'),(3588,11,'Ponto do Marambaia'),(3589,11,'Ponto dos Volantes'),(3590,11,'Porteirinha'),(3591,11,'Porto Agrario'),(3592,11,'Porto das Flores'),(3593,11,'Porto dos Mendes'),(3594,11,'Porto Firme'),(3595,11,'Pote'),(3596,11,'Pouso Alegre'),(3597,11,'Pouso Alto'),(3598,11,'Prados'),(3599,11,'Prata'),(3600,11,'Pratapolis'),(3601,11,'Pratinha'),(3602,11,'Presidente Bernardes'),(3603,11,'Presidente Juscelino'),(3604,11,'Presidente Kubitschek'),(3605,11,'Presidente Olegario'),(3606,11,'Presidente Pena'),(3607,11,'Professor Sperber'),(3608,11,'Providencia'),(3609,11,'Prudente de Morais'),(3610,11,'Quartel de Sao Joao'),(3611,11,'Quartel do Sacramento'),(3612,11,'Quartel Geral'),(3613,11,'Quatituba'),(3614,11,'Queixada'),(3615,11,'Queluzita'),(3616,11,'Quem-quem'),(3617,11,'Quilombo'),(3618,11,'Quintinos'),(3619,11,'Raposos'),(3620,11,'Raul Soares'),(3621,11,'Ravena'),(3622,11,'Realeza'),(3623,11,'Recreio'),(3624,11,'Reduto'),(3625,11,'Resende Costa'),(3626,11,'Resplendor'),(3627,11,'Ressaquinha'),(3628,11,'Riachinho'),(3629,11,'Riacho da Cruz'),(3630,11,'Riacho dos Machados'),(3631,11,'Ribeirao das Neves'),(3632,11,'Ribeirao de Sao Domingos'),(3633,11,'Ribeirao Vermelho'),(3634,11,'Ribeiro Junqueira'),(3635,11,'Ribeiros'),(3636,11,'Rio Acima'),(3637,11,'Rio Casca'),(3638,11,'Rio das Mortes'),(3639,11,'Rio do Prado'),(3640,11,'Rio Doce'),(3641,11,'Rio Espera'),(3642,11,'Rio Manso'),(3643,11,'Rio Melo'),(3644,11,'Rio Novo'),(3645,11,'Rio Paranaiba'),(3646,11,'Rio Pardo de Minas'),(3647,11,'Rio Piracicaba'),(3648,11,'Rio Pomba'),(3649,11,'Rio Pretinho'),(3650,11,'Rio Preto'),(3651,11,'Rio Vermelho'),(3652,11,'Ritapolis'),(3653,11,'Roca Grande'),(3654,11,'Rocas Novas'),(3655,11,'Rochedo de Minas'),(3656,11,'Rodeador'),(3657,11,'Rodeiro'),(3658,11,'Rodrigo Silva'),(3659,11,'Romaria'),(3660,11,'Rosario da Limeira'),(3661,11,'Rosario de Minas'),(3662,11,'Rosario do Pontal'),(3663,11,'Roseiral'),(3664,11,'Rubelita'),(3665,11,'Rubim'),(3666,11,'Sabara'),(3667,11,'Sabinopolis'),(3668,11,'Sacramento'),(3669,11,'Salinas'),(3670,11,'Salitre de Minas'),(3671,11,'Salto da Divisa'),(3672,11,'Sanatorio Santa Fe'),(3673,11,'Santa Barbara'),(3674,11,'Santa Barbara do Leste'),(3675,11,'Santa Barbara do Monte Verde'),(3676,11,'Santa Barbara do Tugurio'),(3677,11,'Santa Cruz da Aparecida'),(3678,11,'Santa Cruz de Botumirim'),(3679,11,'Santa Cruz de Minas'),(3680,11,'Santa Cruz de Salinas'),(3681,11,'Santa Cruz do Escalvado'),(3682,11,'Santa Cruz do Prata'),(3683,11,'Santa da Pedra'),(3684,11,'Santa Efigenia'),(3685,11,'Santa Efigenia de Minas'),(3686,11,'Santa Fe de Minas'),(3687,11,'Santa Filomena'),(3688,11,'Santa Helena de Minas'),(3689,11,'Santa Isabel'),(3690,11,'Santa Juliana'),(3691,11,'Santa Luzia'),(3692,11,'Santa Luzia da Serra'),(3693,11,'Santa Margarida'),(3694,11,'Santa Maria de Itabira'),(3695,11,'Santa Maria do Salto'),(3696,11,'Santa Maria do Suacui'),(3697,11,'Santa Rita da Estrela'),(3698,11,'Santa Rita de Caldas'),(3699,11,'Santa Rita de Jacutinga'),(3700,11,'Santa Rita de Minas'),(3701,11,'Santa Rita de Ouro Preto'),(3702,11,'Santa Rita do Cedro'),(3703,11,'Santa Rita do Ibitipoca'),(3704,11,'Santa Rita do Itueto'),(3705,11,'Santa Rita do Rio do Peixe'),(3706,11,'Santa Rita do Sapucai'),(3707,11,'Santa Rita Durao'),(3708,11,'Santa Rosa da Serra'),(3709,11,'Santa Rosa de Lima'),(3710,11,'Santa Rosa dos Dourados'),(3711,11,'Santa Teresa do Bonito'),(3712,11,'Santa Terezinha de Minas'),(3713,11,'Santa Vitoria'),(3714,11,'Santana da Vargem'),(3715,11,'Santana de Caldas'),(3716,11,'Santana de Cataguases'),(3717,11,'Santana de Patos'),(3718,11,'Santana de Pirapama'),(3719,11,'Santana do Alfie'),(3720,11,'Santana do Aracuai'),(3721,11,'Santana do Campestre'),(3722,11,'Santana do Capivari'),(3723,11,'Santana do Deserto'),(3724,11,'Santana do Garambeu'),(3725,11,'Santana do Jacare'),(3726,11,'Santana do Manhuacu'),(3727,11,'Santana do Paraiso'),(3728,11,'Santana do Paraopeba'),(3729,11,'Santana do Riacho'),(3730,11,'Santana do Tabuleiro'),(3731,11,'Santana dos Montes'),(3732,11,'Santo Antonio da Boa Vista'),(3733,11,'Santo Antonio da Fortaleza'),(3734,11,'Santo Antonio da Vargem Alegre'),(3735,11,'Santo Antonio do Amparo'),(3736,11,'Santo Antonio do Aventureiro'),(3737,11,'Santo Antonio do Boqueirao'),(3738,11,'Santo Antonio do Cruzeiro'),(3739,11,'Santo Antonio do Gloria'),(3740,11,'Santo Antonio do Grama'),(3741,11,'Santo Antonio do Itambe'),(3742,11,'Santo Antonio do Jacinto'),(3743,11,'Santo Antonio do Leite'),(3744,11,'Santo Antonio do Manhuacu'),(3745,11,'Santo Antonio do Monte'),(3746,11,'Santo Antonio do Mucuri'),(3747,11,'Santo Antonio do Norte'),(3748,11,'Santo Antonio do Pirapetinga'),(3749,11,'Santo Antonio do Retiro'),(3750,11,'Santo Antonio do Rio Abaixo'),(3751,11,'Santo Antonio dos Araujos'),(3752,11,'Santo Antonio dos Campos'),(3753,11,'Santo Hilario'),(3754,11,'Santo Hipolito'),(3755,11,'Santos Dumont'),(3756,11,'Sao Bartolomeu'),(3757,11,'Sao Benedito'),(3758,11,'Sao Bento Abade'),(3759,11,'Sao Bento de Caldas'),(3760,11,'Sao Bras do Suacui'),(3761,11,'Sao Braz'),(3762,11,'Sao Candido'),(3763,11,'Sao Domingos'),(3764,11,'Sao Domingos da Bocaina'),(3765,11,'Sao Domingos das Dores'),(3766,11,'Sao Domingos do Prata'),(3767,11,'Sao Felix de Minas'),(3768,11,'Sao Francisco'),(3769,11,'Sao Francisco de Paula'),(3770,11,'Sao Francisco de Sales'),(3771,11,'Sao Francisco do Gloria'),(3772,11,'Sao Francisco do Humaita'),(3773,11,'Sao Geraldo'),(3774,11,'Sao Geraldo da Piedade'),(3775,11,'Sao Geraldo de Tumiritinga'),(3776,11,'Sao Geraldo do Baguari'),(3777,11,'Sao Geraldo do Baixio'),(3778,11,'Sao Goncalo de Botelhos'),(3779,11,'Sao Goncalo do Abaete'),(3780,11,'Sao Goncalo do Monte'),(3781,11,'Sao Goncalo do Para'),(3782,11,'Sao Goncalo do Rio Abaixo'),(3783,11,'Sao Goncalo do Rio das Pedras'),(3784,11,'Sao Goncalo do Rio Preto'),(3785,11,'Sao Goncalo do Sapucai'),(3786,11,'Sao Gotardo'),(3787,11,'Sao Jeronimo dos Pocoes'),(3788,11,'Sao Joao Batista do Gloria'),(3789,11,'Sao Joao da Chapada'),(3790,11,'Sao Joao da Lagoa'),(3791,11,'Sao Joao da Mata'),(3792,11,'Sao Joao da Ponte'),(3793,11,'Sao Joao da Sapucaia'),(3794,11,'Sao Joao da Serra'),(3795,11,'Sao Joao da Serra Negra'),(3796,11,'Sao Joao da Vereda'),(3797,11,'Sao Joao das Missoes'),(3798,11,'Sao Joao Del Rei'),(3799,11,'Sao Joao do Bonito'),(3800,11,'Sao Joao do Jacutinga'),(3801,11,'Sao Joao do Manhuacu'),(3802,11,'Sao Joao do Manteninha'),(3803,11,'Sao Joao do Oriente'),(3804,11,'Sao Joao do Pacui'),(3805,11,'Sao Joao do Paraiso'),(3806,11,'Sao Joao Evangelista'),(3807,11,'Sao Joao Nepomuceno'),(3808,11,'Sao Joaquim'),(3809,11,'Sao Joaquim de Bicas'),(3810,11,'Sao Jose da Barra'),(3811,11,'Sao Jose da Bela Vista'),(3812,11,'Sao Jose da Lapa'),(3813,11,'Sao Jose da Pedra Menina'),(3814,11,'Sao Jose da Safira'),(3815,11,'Sao Jose da Varginha'),(3816,11,'Sao Jose das Tronqueiras'),(3817,11,'Sao Jose do Acacio'),(3818,11,'Sao Jose do Alegre'),(3819,11,'Sao Jose do Barreiro'),(3820,11,'Sao Jose do Batatal'),(3821,11,'Sao Jose do Buriti'),(3822,11,'Sao Jose do Divino'),(3823,11,'Sao Jose do Goiabal'),(3824,11,'Sao Jose do Itueto'),(3825,11,'Sao Jose do Jacuri'),(3826,11,'Sao Jose do Mantimento'),(3827,11,'Sao Jose do Mato Dentro'),(3828,11,'Sao Jose do Pantano'),(3829,11,'Sao Jose do Paraopeba'),(3830,11,'Sao Jose dos Lopes'),(3831,11,'Sao Jose dos Salgados'),(3832,11,'Sao Lourenco'),(3833,11,'Sao Manoel do Guaiacu'),(3834,11,'Sao Mateus de Minas'),(3835,11,'Sao Miguel do Anta'),(3836,11,'Sao Pedro da Garca'),(3837,11,'Sao Pedro da Uniao'),(3838,11,'Sao Pedro das Tabocas'),(3839,11,'Sao Pedro de Caldas'),(3840,11,'Sao Pedro do Avai'),(3841,11,'Sao Pedro do Gloria'),(3842,11,'Sao Pedro do Jequitinhonha'),(3843,11,'Sao Pedro do Suacui'),(3844,11,'Sao Pedro dos Ferros'),(3845,11,'Sao Roberto'),(3846,11,'Sao Romao'),(3847,11,'Sao Roque de Minas'),(3848,11,'Sao Sebastiao da Barra'),(3849,11,'Sao Sebastiao da Bela Vista'),(3850,11,'Sao Sebastiao da Vala'),(3851,11,'Sao Sebastiao da Vargem Alegre'),(3852,11,'Sao Sebastiao da Vitoria'),(3853,11,'Sao Sebastiao de Braunas'),(3854,11,'Sao Sebastiao do Anta'),(3855,11,'Sao Sebastiao do Baixio'),(3856,11,'Sao Sebastiao do Barreado'),(3857,11,'Sao Sebastiao do Barreiro'),(3858,11,'Sao Sebastiao do Bonsucesso'),(3859,11,'Sao Sebastiao do Bugre'),(3860,11,'Sao Sebastiao do Gil'),(3861,11,'Sao Sebastiao do Maranhao'),(3862,11,'Sao Sebastiao do Oculo'),(3863,11,'Sao Sebastiao do Oeste'),(3864,11,'Sao Sebastiao do Paraiso'),(3865,11,'Sao Sebastiao do Pontal'),(3866,11,'Sao Sebastiao do Rio Preto'),(3867,11,'Sao Sebastiao do Rio Verde'),(3868,11,'Sao Sebastiao do Sacramento'),(3869,11,'Sao Sebastiao do Soberbo'),(3870,11,'Sao Sebastiao dos Pocoes'),(3871,11,'Sao Sebastiao dos Robertos'),(3872,11,'Sao Sebastiao dos Torres'),(3873,11,'Sao Tiago'),(3874,11,'Sao Tomas de Aquino'),(3875,11,'Sao Tome das Letras'),(3876,11,'Sao Vicente'),(3877,11,'Sao Vicente da Estrela'),(3878,11,'Sao Vicente de Minas'),(3879,11,'Sao Vicente do Grama'),(3880,11,'Sao Vicente do Rio Doce'),(3881,11,'Sao Vitor'),(3882,11,'Sapucai'),(3883,11,'Sapucai-mirim'),(3884,11,'Sapucaia'),(3885,11,'Sapucaia de Guanhaes'),(3886,11,'Sapucaia do Norte'),(3887,11,'Sarandira'),(3888,11,'Sardoa'),(3889,11,'Sarzedo'),(3890,11,'Saudade'),(3891,11,'Sem Peixe'),(3892,11,'Senador Amaral'),(3893,11,'Senador Cortes'),(3894,11,'Senador Firmino'),(3895,11,'Senador Jose Bento'),(3896,11,'Senador Melo Viana'),(3897,11,'Senador Modestino Goncalves'),(3898,11,'Senador Mourao'),(3899,11,'Senhora da Gloria'),(3900,11,'Senhora da Penha'),(3901,11,'Senhora das Dores'),(3902,11,'Senhora de Oliveira'),(3903,11,'Senhora do Carmo'),(3904,11,'Senhora do Porto'),(3905,11,'Senhora dos Remedios'),(3906,11,'Sereno'),(3907,11,'Sericita'),(3908,11,'Seritinga'),(3909,11,'Serra Azul'),(3910,11,'Serra Azul de Minas'),(3911,11,'Serra Bonita'),(3912,11,'Serra da Canastra'),(3913,11,'Serra da Saudade'),(3914,11,'Serra das Araras'),(3915,11,'Serra do Camapua'),(3916,11,'Serra do Salitre'),(3917,11,'Serra dos Aimores'),(3918,11,'Serra dos Lemes'),(3919,11,'Serra Nova'),(3920,11,'Serrania'),(3921,11,'Serranopolis de Minas'),(3922,11,'Serranos'),(3923,11,'Serro'),(3924,11,'Sertaozinho'),(3925,11,'Sete Cachoeiras'),(3926,11,'Sete Lagoas'),(3927,11,'Setubinha'),(3928,11,'Silva Campos'),(3929,11,'Silva Xavier'),(3930,11,'Silvano'),(3931,11,'Silveira Carvalho'),(3932,11,'Silveirania'),(3933,11,'Silvestre'),(3934,11,'Silvianopolis'),(3935,11,'Simao Campos'),(3936,11,'Simao Pereira'),(3937,11,'Simonesia'),(3938,11,'Sobral Pinto'),(3939,11,'Sobralia'),(3940,11,'Soledade de Minas'),(3941,11,'Sopa'),(3942,11,'Tabajara'),(3943,11,'Tabauna'),(3944,11,'Tabuao'),(3945,11,'Tabuleiro'),(3946,11,'Taiobeiras'),(3947,11,'Taparuba'),(3948,11,'Tapira'),(3949,11,'Tapirai'),(3950,11,'Tapuirama'),(3951,11,'Taquaracu de Minas'),(3952,11,'Taruacu'),(3953,11,'Tarumirim'),(3954,11,'Tebas'),(3955,11,'Teixeiras'),(3956,11,'Tejuco'),(3957,11,'Teofilo Otoni'),(3958,11,'Terra Branca'),(3959,11,'Timoteo'),(3960,11,'Tiradentes'),(3961,11,'Tiros'),(3962,11,'Tobati'),(3963,11,'Tocandira'),(3964,11,'Tocantins'),(3965,11,'Tocos do Moji'),(3966,11,'Toledo'),(3967,11,'Tomas Gonzaga'),(3968,11,'Tombos'),(3969,11,'Topazio'),(3970,11,'Torneiros'),(3971,11,'Torreoes'),(3972,11,'Tres Coracoes'),(3973,11,'Tres Ilhas'),(3974,11,'Tres Marias'),(3975,11,'Tres Pontas'),(3976,11,'Trimonte'),(3977,11,'Tuiutinga'),(3978,11,'Tumiritinga'),(3979,11,'Tupaciguara'),(3980,11,'Tuparece'),(3981,11,'Turmalina'),(3982,11,'Turvolandia'),(3983,11,'Uba'),(3984,11,'Ubai'),(3985,11,'Ubaporanga'),(3986,11,'Ubari'),(3987,11,'Uberaba'),(3988,11,'Uberlandia'),(3989,11,'Umburatiba'),(3990,11,'Umbuzeiro'),(3991,11,'Unai'),(3992,11,'Uniao de Minas'),(3993,11,'Uruana de Minas'),(3994,11,'Urucania'),(3995,11,'Urucuia'),(3996,11,'Usina Monte Alegre'),(3997,11,'Vai-volta'),(3998,11,'Valadares'),(3999,11,'Valao'),(4000,11,'Vale Verde de Minas'),(4001,11,'Valo Fundo'),(4002,11,'Vargem Alegre'),(4003,11,'Vargem Bonita'),(4004,11,'Vargem Grande do Rio Pardo'),(4005,11,'Vargem Linda'),(4006,11,'Varginha'),(4007,11,'Varjao de Minas'),(4008,11,'Varzea da Palma'),(4009,11,'Varzelandia'),(4010,11,'Vau-acu'),(4011,11,'Vazante'),(4012,11,'Vera Cruz de Minas'),(4013,11,'Verdelandia'),(4014,11,'Vereda do Paraiso'),(4015,11,'Veredas'),(4016,11,'Veredinha'),(4017,11,'Verissimo'),(4018,11,'Vermelho'),(4019,11,'Vermelho Novo'),(4020,11,'Vermelho Velho'),(4021,11,'Vespasiano'),(4022,11,'Vicosa'),(4023,11,'Vieiras'),(4024,11,'Vila Bom Jesus'),(4025,11,'Vila Costina'),(4026,11,'Vila Nova de Minas'),(4027,11,'Vila Nova dos Pocoes'),(4028,11,'Vila Pereira'),(4029,11,'Vilas Boas'),(4030,11,'Virgem da Lapa'),(4031,11,'Virginia'),(4032,11,'Virginopolis'),(4033,11,'Virgolandia'),(4034,11,'Visconde do Rio Branco'),(4035,11,'Vista Alegre'),(4036,11,'Vitorinos'),(4037,11,'Volta Grande'),(4038,11,'Wenceslau Braz'),(4039,11,'Zelandia'),(4040,11,'Zito Soares'),(4041,12,'Agua Boa'),(4042,12,'Agua Clara'),(4043,12,'Albuquerque'),(4044,12,'Alcinopolis'),(4045,12,'Alto Sucuriu'),(4046,12,'Amambai'),(4047,12,'Amandina'),(4048,12,'Amolar'),(4049,12,'Anastacio'),(4050,12,'Anaurilandia'),(4051,12,'Angelica'),(4052,12,'Anhandui'),(4053,12,'Antonio Joao'),(4054,12,'Aparecida do Taboado'),(4055,12,'Aquidauana'),(4056,12,'Aral Moreira'),(4057,12,'Arapua'),(4058,12,'Areado'),(4059,12,'Arvore Grande'),(4060,12,'Baianopolis'),(4061,12,'Balsamo'),(4062,12,'Bandeirantes'),(4063,12,'Bataguassu'),(4064,12,'Bataipora'),(4065,12,'Baus'),(4066,12,'Bela Vista'),(4067,12,'Bocaja'),(4068,12,'Bodoquena'),(4069,12,'Bom Fim'),(4070,12,'Bonito'),(4071,12,'Boqueirao'),(4072,12,'Brasilandia'),(4073,12,'Caarapo'),(4074,12,'Cabeceira do Apa'),(4075,12,'Cachoeira'),(4076,12,'Camapua'),(4077,12,'Camisao'),(4078,12,'Campestre'),(4079,12,'Campo Grande'),(4080,12,'Capao Seco'),(4081,12,'Caracol'),(4082,12,'Carumbe'),(4083,12,'Cassilandia'),(4084,12,'Chapadao do Sul'),(4085,12,'Cipolandia'),(4086,12,'Coimbra'),(4087,12,'Congonha'),(4088,12,'Corguinho'),(4089,12,'Coronel Sapucaia'),(4090,12,'Corumba'),(4091,12,'Costa Rica'),(4092,12,'Coxim'),(4093,12,'Cristalina'),(4094,12,'Cruzaltina'),(4095,12,'Culturama'),(4096,12,'Cupins'),(4097,12,'Debrasa'),(4098,12,'Deodapolis'),(4099,12,'Dois Irmaos do Buriti'),(4100,12,'Douradina'),(4101,12,'Dourados'),(4102,12,'Eldorado'),(4103,12,'Fatima do Sul'),(4104,12,'Figueirao'),(4105,12,'Garcias'),(4106,12,'Gloria de Dourados'),(4107,12,'Guacu'),(4108,12,'Guaculandia'),(4109,12,'Guadalupe do Alto Parana'),(4110,12,'Guia Lopes da Laguna'),(4111,12,'Iguatemi'),(4112,12,'Ilha Comprida'),(4113,12,'Ilha Grande'),(4114,12,'Indaia do Sul'),(4115,12,'Indaia Grande'),(4116,12,'Indapolis'),(4117,12,'Inocencia'),(4118,12,'Ipezal'),(4119,12,'Itahum'),(4120,12,'Itapora'),(4121,12,'Itaquirai'),(4122,12,'Ivinhema'),(4123,12,'Jabuti'),(4124,12,'Jacarei'),(4125,12,'Japora'),(4126,12,'Jaraguari'),(4127,12,'Jardim'),(4128,12,'Jatei'),(4129,12,'Jauru'),(4130,12,'Juscelandia'),(4131,12,'Juti'),(4132,12,'Ladario'),(4133,12,'Lagoa Bonita'),(4134,12,'Laguna Carapa'),(4135,12,'Maracaju'),(4136,12,'Miranda'),(4137,12,'Montese'),(4138,12,'Morangas'),(4139,12,'Morraria do Sul'),(4140,12,'Morumbi'),(4141,12,'Mundo Novo'),(4142,12,'Navirai'),(4143,12,'Nhecolandia'),(4144,12,'Nioaque'),(4145,12,'Nossa Senhora de Fatima'),(4146,12,'Nova Alvorada do Sul'),(4147,12,'Nova America'),(4148,12,'Nova Andradina'),(4149,12,'Nova Esperanca'),(4150,12,'Nova Jales'),(4151,12,'Novo Horizonte do Sul'),(4152,12,'Oriente'),(4153,12,'Paiaguas'),(4154,12,'Palmeiras'),(4155,12,'Panambi'),(4156,12,'Paraiso'),(4157,12,'Paranaiba'),(4158,12,'Paranhos'),(4159,12,'Pedro Gomes'),(4160,12,'Picadinha'),(4161,12,'Pirapora'),(4162,12,'Piraputanga'),(4163,12,'Ponta Pora'),(4164,12,'Ponte Vermelha'),(4165,12,'Pontinha do Cocho'),(4166,12,'Porto Esperanca'),(4167,12,'Porto Murtinho'),(4168,12,'Porto Vilma'),(4169,12,'Porto Xv de Novembro'),(4170,12,'Presidente Castelo'),(4171,12,'Prudencio Thomaz'),(4172,12,'Quebra Coco'),(4173,12,'Quebracho'),(4174,12,'Ribas do Rio Pardo'),(4175,12,'Rio Brilhante'),(4176,12,'Rio Negro'),(4177,12,'Rio Verde de Mato Grosso'),(4178,12,'Rochedinho'),(4179,12,'Rochedo'),(4180,12,'Sanga Puita'),(4181,12,'Santa Rita do Pardo'),(4182,12,'Santa Terezinha'),(4183,12,'Sao Gabriel do Oeste'),(4184,12,'Sao Joao do Apore'),(4185,12,'Sao Jose'),(4186,12,'Sao Jose do Sucuriu'),(4187,12,'Sao Pedro'),(4188,12,'Sao Romao'),(4189,12,'Selviria'),(4190,12,'Sete Quedas'),(4191,12,'Sidrolandia'),(4192,12,'Sonora'),(4193,12,'Tacuru'),(4194,12,'Tamandare'),(4195,12,'Taquari'),(4196,12,'Taquarussu'),(4197,12,'Taunay'),(4198,12,'Terenos'),(4199,12,'Tres Lagoas'),(4200,12,'Velhacaria'),(4201,12,'Vicentina'),(4202,12,'Vila Formosa'),(4203,12,'Vila Marques'),(4204,12,'Vila Rica'),(4205,12,'Vila Uniao'),(4206,12,'Vila Vargas'),(4207,12,'Vista Alegre'),(4208,13,'Acorizal'),(4209,13,'Agua Boa'),(4210,13,'Agua Fria'),(4211,13,'Aguacu'),(4212,13,'Aguapei'),(4213,13,'Aguas Claras'),(4214,13,'Ainhumas'),(4215,13,'Alcantilado'),(4216,13,'Alta Floresta'),(4217,13,'Alto Araguaia'),(4218,13,'Alto Boa Vista'),(4219,13,'Alto Coite'),(4220,13,'Alto Garcas'),(4221,13,'Alto Juruena'),(4222,13,'Alto Paraguai'),(4223,13,'Alto Paraiso'),(4224,13,'Alto Taquari'),(4225,13,'Analandia do Norte'),(4226,13,'Apiacas'),(4227,13,'Araguaiana'),(4228,13,'Araguainha'),(4229,13,'Araputanga'),(4230,13,'Arenapolis'),(4231,13,'Aripuana'),(4232,13,'Arruda'),(4233,13,'Assari'),(4234,13,'Barao de Melgaco'),(4235,13,'Barra do Bugres'),(4236,13,'Barra do Garcas'),(4237,13,'Batovi'),(4238,13,'Baus'),(4239,13,'Bauxi'),(4240,13,'Bel Rios'),(4241,13,'Bezerro Branco'),(4242,13,'Boa Esperanca'),(4243,13,'Boa Uniao'),(4244,13,'Boa Vista'),(4245,13,'Bom Sucesso'),(4246,13,'Brasnorte'),(4247,13,'Buriti'),(4248,13,'Caceres'),(4249,13,'Caite'),(4250,13,'Campinapolis'),(4251,13,'Campo Novo do Parecis'),(4252,13,'Campo Verde'),(4253,13,'Campos de Julio'),(4254,13,'Campos Novos'),(4255,13,'Canabrava do Norte'),(4256,13,'Canarana'),(4257,13,'Cangas'),(4258,13,'Capao Grande'),(4259,13,'Capao Verde'),(4260,13,'Caramujo'),(4261,13,'Caravagio'),(4262,13,'Carlinda'),(4263,13,'Cassununga'),(4264,13,'Castanheira'),(4265,13,'Catuai'),(4266,13,'Chapada dos Guimaraes'),(4267,13,'Cidade Morena'),(4268,13,'Claudia'),(4269,13,'Cocalinho'),(4270,13,'Colider'),(4271,13,'Colorado do Norte'),(4272,13,'Comodoro'),(4273,13,'Confresa'),(4274,13,'Coronel Ponce'),(4275,13,'Cotrel'),(4276,13,'Cotriguacu'),(4277,13,'Coxipo Acu'),(4278,13,'Coxipo da Ponte'),(4279,13,'Coxipo do Ouro'),(4280,13,'Cristinopolis'),(4281,13,'Cristo Rei'),(4282,13,'Cuiaba'),(4283,13,'Curvelandia'),(4284,13,'Del Rios'),(4285,13,'Denise'),(4286,13,'Diamantino'),(4287,13,'Dom Aquino'),(4288,13,'Engenho'),(4289,13,'Engenho Velho'),(4290,13,'Entre Rios'),(4291,13,'Estrela do Leste'),(4292,13,'Faval'),(4293,13,'Fazenda de Cima'),(4294,13,'Feliz Natal'),(4295,13,'Figueiropolis D Oeste'),(4296,13,'Filadelfia'),(4297,13,'Flor da Serra'),(4298,13,'Fontanilhas'),(4299,13,'Gaucha do Norte'),(4300,13,'General Carneiro'),(4301,13,'Gloria D\'oeste'),(4302,13,'Guaranta do Norte'),(4303,13,'Guarita'),(4304,13,'Guiratinga'),(4305,13,'Horizonte do Oeste'),(4306,13,'Indianapolis'),(4307,13,'Indiavai'),(4308,13,'Irenopolis'),(4309,13,'Itamarati Norte'),(4310,13,'Itauba'),(4311,13,'Itiquira'),(4312,13,'Jaciara'),(4313,13,'Jangada'),(4314,13,'Jarudore'),(4315,13,'Jatoba'),(4316,13,'Jauru'),(4317,13,'Joselandia'),(4318,13,'Juara'),(4319,13,'Juina'),(4320,13,'Juruena'),(4321,13,'Juscimeira'),(4322,13,'Lambari D\'oeste'),(4323,13,'Lavouras'),(4324,13,'Lucas do Rio Verde'),(4325,13,'Lucialva'),(4326,13,'Luciara'),(4327,13,'Machado'),(4328,13,'Marcelandia'),(4329,13,'Marzagao'),(4330,13,'Mata Dentro'),(4331,13,'Matupa'),(4332,13,'Mimoso'),(4333,13,'Mirassol D\'oeste'),(4334,13,'Nobres'),(4335,13,'Nonoai do Norte'),(4336,13,'Nortelandia'),(4337,13,'Nossa Senhora da Guia'),(4338,13,'Nossa Senhora do Livramento'),(4339,13,'Nova Alvorada'),(4340,13,'Nova Bandeirantes'),(4341,13,'Nova Brasilandia'),(4342,13,'Nova Brasilia'),(4343,13,'Nova Canaa do Norte'),(4344,13,'Nova Catanduva'),(4345,13,'Nova Galileia'),(4346,13,'Nova Guarita'),(4347,13,'Nova Lacerda'),(4348,13,'Nova Marilandia'),(4349,13,'Nova Maringa'),(4350,13,'Nova Monte Verde'),(4351,13,'Nova Mutum'),(4352,13,'Nova Olimpia'),(4353,13,'Nova Ubirata'),(4354,13,'Nova Xavantina'),(4355,13,'Novo Diamantino'),(4356,13,'Novo Eldorado'),(4357,13,'Novo Horizonte do Norte'),(4358,13,'Novo Mundo'),(4359,13,'Novo Parana'),(4360,13,'Novo Sao Joaquim'),(4361,13,'Padronal'),(4362,13,'Pai Andre'),(4363,13,'Paraiso do Leste'),(4364,13,'Paranaita'),(4365,13,'Paranatinga'),(4366,13,'Passagem da Conceicao'),(4367,13,'Pedra Preta'),(4368,13,'Peixoto de Azevedo'),(4369,13,'Pirizal'),(4370,13,'Placa de Santo Antonio'),(4371,13,'Planalto da Serra'),(4372,13,'Pocone'),(4373,13,'Pombas'),(4374,13,'Pontal do Araguaia'),(4375,13,'Ponte Branca'),(4376,13,'Ponte de Pedra'),(4377,13,'Pontes E Lacerda'),(4378,13,'Pontinopolis'),(4379,13,'Porto Alegre do Norte'),(4380,13,'Porto dos Gauchos'),(4381,13,'Porto Esperidiao'),(4382,13,'Porto Estrela'),(4383,13,'Poxoreo'),(4384,13,'Praia Rica'),(4385,13,'Primavera'),(4386,13,'Primavera do Leste'),(4387,13,'Progresso'),(4388,13,'Querencia'),(4389,13,'Rancharia'),(4390,13,'Reserva do Cabacal'),(4391,13,'Ribeirao Cascalheira'),(4392,13,'Ribeirao dos Cocais'),(4393,13,'Ribeiraozinho'),(4394,13,'Rio Branco'),(4395,13,'Rio Manso'),(4396,13,'Riolandia'),(4397,13,'Rondonopolis'),(4398,13,'Rosario Oeste'),(4399,13,'Salto do Ceu'),(4400,13,'Sangradouro'),(4401,13,'Santa Carmem'),(4402,13,'Santa Elvira'),(4403,13,'Santa Fe'),(4404,13,'Santa Rita'),(4405,13,'Santa Terezinha'),(4406,13,'Santaninha'),(4407,13,'Santo Afonso'),(4408,13,'Santo Antonio do Leverger'),(4409,13,'Santo Antonio do Rio Bonito'),(4410,13,'Sao Cristovao'),(4411,13,'Sao Domingos'),(4412,13,'Sao Felix do Araguaia'),(4413,13,'Sao Joaquim'),(4414,13,'Sao Jorge'),(4415,13,'Sao Jose'),(4416,13,'Sao Jose do Apui'),(4417,13,'Sao Jose do Planalto'),(4418,13,'Sao Jose do Povo'),(4419,13,'Sao Jose do Rio Claro'),(4420,13,'Sao Jose do Xingu'),(4421,13,'Sao Jose dos Quatro Marcos'),(4422,13,'Sao Lourenco de Fatima'),(4423,13,'Sao Pedro da Cipa'),(4424,13,'Sao Vicente'),(4425,13,'Sapezal'),(4426,13,'Selma'),(4427,13,'Serra Nova'),(4428,13,'Sinop'),(4429,13,'Sonho Azul'),(4430,13,'Sorriso'),(4431,13,'Sumidouro'),(4432,13,'Tabapora'),(4433,13,'Tangara da Serra'),(4434,13,'Tapirapua'),(4435,13,'Tapurah'),(4436,13,'Terra Nova do Norte'),(4437,13,'Terra Roxa'),(4438,13,'Tesouro'),(4439,13,'Toricueyje'),(4440,13,'Torixoreu'),(4441,13,'Tres Pontes'),(4442,13,'Uniao do Sul'),(4443,13,'Vale dos Sonhos'),(4444,13,'Vale Rico'),(4445,13,'Varginha'),(4446,13,'Varzea Grande'),(4447,13,'Vera'),(4448,13,'Vila Atlantica'),(4449,13,'Vila Bela da Santissima Trindade'),(4450,13,'Vila Bueno'),(4451,13,'Vila Mutum'),(4452,13,'Vila Operaria'),(4453,13,'Vila Paulista'),(4454,13,'Vila Progresso'),(4455,13,'Vila Rica'),(4456,13,'Vila Santo Antonio'),(4457,14,'Abaetetuba'),(4458,14,'Abel Figueiredo'),(4459,14,'Acara'),(4460,14,'Afua'),(4461,14,'Agropolis Bela Vista'),(4462,14,'Agua Azul do Norte'),(4463,14,'Agua Fria'),(4464,14,'Alenquer'),(4465,14,'Algodoal'),(4466,14,'Almeirim'),(4467,14,'Almoco'),(4468,14,'Alta Para'),(4469,14,'Altamira'),(4470,14,'Alter do Chao'),(4471,14,'Alvorada'),(4472,14,'Americano'),(4473,14,'Anajas'),(4474,14,'Ananindeua'),(4475,14,'Anapu'),(4476,14,'Antonio Lemos'),(4477,14,'Apeu'),(4478,14,'Apinages'),(4479,14,'Arapixuna'),(4480,14,'Araquaim'),(4481,14,'Arco-iris'),(4482,14,'Areias'),(4483,14,'Arumanduba'),(4484,14,'Aruri'),(4485,14,'Aturiai'),(4486,14,'Augusto Correa'),(4487,14,'Aurora do Para'),(4488,14,'Aveiro'),(4489,14,'Bagre'),(4490,14,'Baiao'),(4491,14,'Bannach'),(4492,14,'Barcarena'),(4493,14,'Barreira Branca'),(4494,14,'Barreira dos Campos'),(4495,14,'Barreiras'),(4496,14,'Baturite'),(4497,14,'Beja'),(4498,14,'Bela Vista do Caracol'),(4499,14,'Belem'),(4500,14,'Belterra'),(4501,14,'Benevides'),(4502,14,'Benfica'),(4503,14,'Boa Esperanca'),(4504,14,'Boa Fe'),(4505,14,'Boa Sorte'),(4506,14,'Boa Vista do Iririteua'),(4507,14,'Boim'),(4508,14,'Bom Jardim'),(4509,14,'Bom Jesus do Tocantins'),(4510,14,'Bonito'),(4511,14,'Braganca'),(4512,14,'Brasil Novo'),(4513,14,'Brasilia Legal'),(4514,14,'Brejo do Meio'),(4515,14,'Brejo Grande do Araguaia'),(4516,14,'Breu Branco'),(4517,14,'Breves'),(4518,14,'Bujaru'),(4519,14,'Cachoeira de Piria'),(4520,14,'Cachoeira do Arari'),(4521,14,'Cafezal'),(4522,14,'Cairari'),(4523,14,'Caju'),(4524,14,'Camara do Marajo'),(4525,14,'Cambuquira'),(4526,14,'Cameta'),(4527,14,'Camiranga'),(4528,14,'Canaa dos Carajas'),(4529,14,'Capanema'),(4530,14,'Capitao Poco'),(4531,14,'Caracara do Arari'),(4532,14,'Carajas'),(4533,14,'Carapajo'),(4534,14,'Caraparu'),(4535,14,'Caratateua'),(4536,14,'Caripi'),(4537,14,'Carrazedo'),(4538,14,'Castanhal'),(4539,14,'Castelo dos Sonhos'),(4540,14,'Chaves'),(4541,14,'Colares'),(4542,14,'Conceicao'),(4543,14,'Conceicao do Araguaia'),(4544,14,'Concordia do Para'),(4545,14,'Condeixa'),(4546,14,'Coqueiro'),(4547,14,'Cripurizao'),(4548,14,'Cripurizinho'),(4549,14,'Cuiu-cuiu'),(4550,14,'Cumaru do Norte'),(4551,14,'Curionopolis'),(4552,14,'Curralinho'),(4553,14,'Curua'),(4554,14,'Curuai'),(4555,14,'Curuca'),(4556,14,'Curucambaba'),(4557,14,'Curumu'),(4558,14,'Dom Eliseu'),(4559,14,'Eldorado dos Carajas'),(4560,14,'Emborai'),(4561,14,'Espirito Santo do Taua'),(4562,14,'Faro'),(4563,14,'Fernandes Belo'),(4564,14,'Flexal'),(4565,14,'Floresta'),(4566,14,'Floresta do Araguaia'),(4567,14,'Garrafao do Norte'),(4568,14,'Goianesia do Para'),(4569,14,'Gradaus'),(4570,14,'Guajara-acu'),(4571,14,'Guajara-miri'),(4572,14,'Gurupa'),(4573,14,'Gurupizinho'),(4574,14,'Hidreletrica Tucurui'),(4575,14,'Iatai'),(4576,14,'Icoraci'),(4577,14,'Igarape da Lama'),(4578,14,'Igarape-acu'),(4579,14,'Igarape-miri'),(4580,14,'Inanu'),(4581,14,'Inhangapi'),(4582,14,'Ipixuna do Para'),(4583,14,'Irituia'),(4584,14,'Itaituba'),(4585,14,'Itapixuna'),(4586,14,'Itatupa'),(4587,14,'Itupiranga'),(4588,14,'Jacareacanga'),(4589,14,'Jacunda'),(4590,14,'Jaguarari'),(4591,14,'Jamanxinzinho'),(4592,14,'Jambuacu'),(4593,14,'Jandiai'),(4594,14,'Japerica'),(4595,14,'Joana Coeli'),(4596,14,'Joana Peres'),(4597,14,'Joanes'),(4598,14,'Juaba'),(4599,14,'Jubim'),(4600,14,'Juruti'),(4601,14,'Km Null'),(4602,14,'Km Null'),(4603,14,'Lauro Sodre'),(4604,14,'Ligacao do Para'),(4605,14,'Limoeiro do Ajuru'),(4606,14,'Mae do Rio'),(4607,14,'Magalhaes Barata'),(4608,14,'Maiauata'),(4609,14,'Manjeiro'),(4610,14,'Maraba'),(4611,14,'Maracana'),(4612,14,'Marajoara'),(4613,14,'Marapanim'),(4614,14,'Marituba'),(4615,14,'Maruda'),(4616,14,'Mata Geral'),(4617,14,'Matapiquara'),(4618,14,'Medicilandia'),(4619,14,'Melgaco'),(4620,14,'Menino Deus do Anapu'),(4621,14,'Meruu'),(4622,14,'Mirasselvas'),(4623,14,'Miritituba'),(4624,14,'Mocajuba'),(4625,14,'Moiraba'),(4626,14,'Moju'),(4627,14,'Monsaras'),(4628,14,'Monte Alegre'),(4629,14,'Monte Alegre do Mau'),(4630,14,'Monte Dourado'),(4631,14,'Morada Nova'),(4632,14,'Mosqueiro'),(4633,14,'Muana'),(4634,14,'Mujui dos Campos'),(4635,14,'Muraja'),(4636,14,'Murucupi'),(4637,14,'Murumuru'),(4638,14,'Muta'),(4639,14,'Mutucal'),(4640,14,'Nazare de Mocajuba'),(4641,14,'Nazare dos Patos'),(4642,14,'Nova Esperanca do Piria'),(4643,14,'Nova Ipixuna'),(4644,14,'Nova Mocajuba'),(4645,14,'Nova Timboteua'),(4646,14,'Novo Planalto'),(4647,14,'Novo Progresso'),(4648,14,'Novo Repartimento'),(4649,14,'Nucleo Urbano Quilometro Null'),(4650,14,'Obidos'),(4651,14,'Oeiras do Para'),(4652,14,'Oriximina'),(4653,14,'Osvaldilandia'),(4654,14,'Otelo'),(4655,14,'Ourem'),(4656,14,'Ourilandia do Norte'),(4657,14,'Outeiro'),(4658,14,'Pacaja'),(4659,14,'Pacoval'),(4660,14,'Palestina do Para'),(4661,14,'Paragominas'),(4662,14,'Paratins'),(4663,14,'Parauapebas'),(4664,14,'Pau D\'arco'),(4665,14,'Pedreira'),(4666,14,'Peixe-boi'),(4667,14,'Penhalonga'),(4668,14,'Perseveranca'),(4669,14,'Pesqueiro'),(4670,14,'Piabas'),(4671,14,'Picarra'),(4672,14,'Pinhal'),(4673,14,'Piraquara'),(4674,14,'Piria'),(4675,14,'Placas'),(4676,14,'Ponta de Pedras'),(4677,14,'Ponta de Ramos'),(4678,14,'Portel'),(4679,14,'Porto de Moz'),(4680,14,'Porto Salvo'),(4681,14,'Porto Trombetas'),(4682,14,'Prainha'),(4683,14,'Primavera'),(4684,14,'Quatipuru'),(4685,14,'Quatro Bocas'),(4686,14,'Redencao'),(4687,14,'Remansao'),(4688,14,'Repartimento'),(4689,14,'Rio Maria'),(4690,14,'Rio Vermelho'),(4691,14,'Riozinho'),(4692,14,'Rondon do Para'),(4693,14,'Ruropolis'),(4694,14,'Salinopolis'),(4695,14,'Salvaterra'),(4696,14,'Santa Barbara do Para'),(4697,14,'Santa Cruz do Arari'),(4698,14,'Santa Isabel do Para'),(4699,14,'Santa Luzia do Para'),(4700,14,'Santa Maria'),(4701,14,'Santa Maria das Barreiras'),(4702,14,'Santa Maria do Para'),(4703,14,'Santa Rosa da Vigia'),(4704,14,'Santa Terezinha'),(4705,14,'Santana do Araguaia'),(4706,14,'Santarem'),(4707,14,'Santarem Novo'),(4708,14,'Santo Antonio'),(4709,14,'Santo Antonio do Taua'),(4710,14,'Sao Caetano de Odivelas'),(4711,14,'Sao Domingos do Araguaia'),(4712,14,'Sao Domingos do Capim'),(4713,14,'Sao Felix do Xingu'),(4714,14,'Sao Francisco'),(4715,14,'Sao Francisco da Jararaca'),(4716,14,'Sao Francisco do Para'),(4717,14,'Sao Geraldo do Araguaia'),(4718,14,'Sao Joao da Ponta'),(4719,14,'Sao Joao de Pirabas'),(4720,14,'Sao Joao do Acangata'),(4721,14,'Sao Joao do Araguaia'),(4722,14,'Sao Joao do Piria'),(4723,14,'Sao Joao dos Ramos'),(4724,14,'Sao Joaquim do Tapara'),(4725,14,'Sao Jorge'),(4726,14,'Sao Jose do Gurupi'),(4727,14,'Sao Jose do Piria'),(4728,14,'Sao Luiz do Tapajos'),(4729,14,'Sao Miguel do Guama'),(4730,14,'Sao Miguel dos Macacos'),(4731,14,'Sao Pedro de Viseu'),(4732,14,'Sao Pedro do Capim'),(4733,14,'Sao Raimundo de Borralhos'),(4734,14,'Sao Raimundo do Araguaia'),(4735,14,'Sao Raimundo dos Furtados'),(4736,14,'Sao Roberto'),(4737,14,'Sao Sebastiao da Boa Vista'),(4738,14,'Sao Sebastiao de Vicosa'),(4739,14,'Sapucaia'),(4740,14,'Senador Jose Porfirio'),(4741,14,'Serra Pelada'),(4742,14,'Soure'),(4743,14,'Tailandia'),(4744,14,'Tatuteua'),(4745,14,'Tauari'),(4746,14,'Tauarizinho'),(4747,14,'Tentugal'),(4748,14,'Terra Alta'),(4749,14,'Terra Santa'),(4750,14,'Tijoca'),(4751,14,'Timboteua'),(4752,14,'Tome-acu'),(4753,14,'Tracuateua'),(4754,14,'Trairao'),(4755,14,'Tucuma'),(4756,14,'Tucurui'),(4757,14,'Ulianopolis'),(4758,14,'Uruara'),(4759,14,'Urucuri'),(4760,14,'Urucuriteua'),(4761,14,'Val-de-caes'),(4762,14,'Veiros'),(4763,14,'Vigia'),(4764,14,'Vila do Carmo do Tocantins'),(4765,14,'Vila dos Cabanos'),(4766,14,'Vila Franca'),(4767,14,'Vila Goreth'),(4768,14,'Vila Isol'),(4769,14,'Vila Nova'),(4770,14,'Vila Planalto'),(4771,14,'Vila Santa Fe'),(4772,14,'Vila Socorro'),(4773,14,'Vilarinho do Monte'),(4774,14,'Viseu'),(4775,14,'Vista Alegre'),(4776,14,'Vista Alegre do Para'),(4777,14,'Vitoria do Xingu'),(4778,14,'Xinguara'),(4779,14,'Xinguarinha'),(4780,15,'Agua Branca'),(4781,15,'Aguiar'),(4782,15,'Alagoa Grande'),(4783,15,'Alagoa Nova'),(4784,15,'Alagoinha'),(4785,15,'Alcantil'),(4786,15,'Algodao de Jandaira'),(4787,15,'Alhandra'),(4788,15,'Amparo'),(4789,15,'Aparecida'),(4790,15,'Aracagi'),(4791,15,'Arara'),(4792,15,'Araruna'),(4793,15,'Areia'),(4794,15,'Areia de Baraunas'),(4795,15,'Areial'),(4796,15,'Areias'),(4797,15,'Aroeiras'),(4798,15,'Assis Chateaubriand'),(4799,15,'Assuncao'),(4800,15,'Baia da Traicao'),(4801,15,'Balancos'),(4802,15,'Bananeiras'),(4803,15,'Barauna'),(4804,15,'Barra de Santa Rosa'),(4805,15,'Barra de Santana'),(4806,15,'Barra de Sao Miguel'),(4807,15,'Barra do Camaratuba'),(4808,15,'Bayeux'),(4809,15,'Belem'),(4810,15,'Belem do Brejo do Cruz'),(4811,15,'Bernardino Batista'),(4812,15,'Boa Ventura'),(4813,15,'Boa Vista'),(4814,15,'Bom Jesus'),(4815,15,'Bom Sucesso'),(4816,15,'Bonito de Santa Fe'),(4817,15,'Boqueirao'),(4818,15,'Borborema'),(4819,15,'Brejo do Cruz'),(4820,15,'Brejo dos Santos'),(4821,15,'Caapora'),(4822,15,'Cabaceiras'),(4823,15,'Cabedelo'),(4824,15,'Cachoeira'),(4825,15,'Cachoeira dos Indios'),(4826,15,'Cachoeirinha'),(4827,15,'Cacimba de Areia'),(4828,15,'Cacimba de Dentro'),(4829,15,'Cacimbas'),(4830,15,'Caicara'),(4831,15,'Cajazeiras'),(4832,15,'Cajazeirinhas'),(4833,15,'Caldas Brandao'),(4834,15,'Camalau'),(4835,15,'Campina Grande'),(4836,15,'Campo Alegre'),(4837,15,'Campo Grande'),(4838,15,'Camurupim'),(4839,15,'Capim'),(4840,15,'Caraubas'),(4841,15,'Cardoso'),(4842,15,'Carrapateira'),(4843,15,'Casinha do Homem'),(4844,15,'Casserengue'),(4845,15,'Catingueira'),(4846,15,'Catole'),(4847,15,'Catole do Rocha'),(4848,15,'Caturite'),(4849,15,'Cepilho'),(4850,15,'Conceicao'),(4851,15,'Condado'),(4852,15,'Conde'),(4853,15,'Congo'),(4854,15,'Coremas'),(4855,15,'Coronel Maia'),(4856,15,'Coxixola'),(4857,15,'Cruz do Espirito Santo'),(4858,15,'Cubati'),(4859,15,'Cuite'),(4860,15,'Cuite de Mamanguape'),(4861,15,'Cuitegi'),(4862,15,'Cupissura'),(4863,15,'Curral de Cima'),(4864,15,'Curral Velho'),(4865,15,'Damiao'),(4866,15,'Desterro'),(4867,15,'Diamante'),(4868,15,'Dona Ines'),(4869,15,'Duas Estradas'),(4870,15,'Emas'),(4871,15,'Engenheiro Avidos'),(4872,15,'Esperanca'),(4873,15,'Fagundes'),(4874,15,'Fatima'),(4875,15,'Fazenda Nova'),(4876,15,'Forte Velho'),(4877,15,'Frei Martinho'),(4878,15,'Gado Bravo'),(4879,15,'Galante'),(4880,15,'Guarabira'),(4881,15,'Guarita'),(4882,15,'Gurinhem'),(4883,15,'Gurjao'),(4884,15,'Ibiara'),(4885,15,'Igaracy'),(4886,15,'Imaculada'),(4887,15,'Inga'),(4888,15,'Itabaiana'),(4889,15,'Itajubatiba'),(4890,15,'Itaporanga'),(4891,15,'Itapororoca'),(4892,15,'Itatuba'),(4893,15,'Jacarau'),(4894,15,'Jerico'),(4895,15,'Joao Pessoa'),(4896,15,'Juarez Tavora'),(4897,15,'Juazeirinho'),(4898,15,'Junco do Serido'),(4899,15,'Juripiranga'),(4900,15,'Juru'),(4901,15,'Lagoa'),(4902,15,'Lagoa de Dentro'),(4903,15,'Lagoa Seca'),(4904,15,'Lastro'),(4905,15,'Lerolandia'),(4906,15,'Livramento'),(4907,15,'Logradouro'),(4908,15,'Lucena'),(4909,15,'Mae D\'agua'),(4910,15,'Maia'),(4911,15,'Malta'),(4912,15,'Mamanguape'),(4913,15,'Manaira'),(4914,15,'Marcacao'),(4915,15,'Mari'),(4916,15,'Marizopolis'),(4917,15,'Massaranduba'),(4918,15,'Mata Limpa'),(4919,15,'Mata Virgem'),(4920,15,'Mataraca'),(4921,15,'Matinhas'),(4922,15,'Mato Grosso'),(4923,15,'Matureia'),(4924,15,'Melo'),(4925,15,'Mogeiro'),(4926,15,'Montadas'),(4927,15,'Monte Horebe'),(4928,15,'Monteiro'),(4929,15,'Montevideo'),(4930,15,'Mulungu'),(4931,15,'Muquem'),(4932,15,'Natuba'),(4933,15,'Nazare'),(4934,15,'Nazarezinho'),(4935,15,'Nossa Senhora do Livramento'),(4936,15,'Nova Floresta'),(4937,15,'Nova Olinda'),(4938,15,'Nova Palmeira'),(4939,15,'Nucleo N Null'),(4940,15,'Nucleo N Null'),(4941,15,'Odilandia'),(4942,15,'Olho D\'agua'),(4943,15,'Olivedos'),(4944,15,'Ouro Velho'),(4945,15,'Parari'),(4946,15,'Passagem'),(4947,15,'Patos'),(4948,15,'Paulista'),(4949,15,'Pedra Branca'),(4950,15,'Pedra Lavrada'),(4951,15,'Pedras de Fogo'),(4952,15,'Pedro Regis'),(4953,15,'Pelo Sinal'),(4954,15,'Pereiros'),(4955,15,'Pianco'),(4956,15,'Picui'),(4957,15,'Pilar'),(4958,15,'Piloes'),(4959,15,'Piloezinhos'),(4960,15,'Pindurao'),(4961,15,'Pio X'),(4962,15,'Piraua'),(4963,15,'Pirpirituba'),(4964,15,'Pitanga de Estrada'),(4965,15,'Pitimbu'),(4966,15,'Pocinhos'),(4967,15,'Poco Dantas'),(4968,15,'Poco de Jose de Moura'),(4969,15,'Pombal'),(4970,15,'Porteirinha de Pedra'),(4971,15,'Prata'),(4972,15,'Princesa Isabel'),(4973,15,'Puxinana'),(4974,15,'Queimadas'),(4975,15,'Quixaba'),(4976,15,'Remigio'),(4977,15,'Riachao'),(4978,15,'Riachao do Poco'),(4979,15,'Riacho de Santo Antonio'),(4980,15,'Riacho dos Cavalos'),(4981,15,'Ribeira'),(4982,15,'Rio Tinto'),(4983,15,'Rua Nova'),(4984,15,'Salema'),(4985,15,'Salgadinho'),(4986,15,'Salgado de Sao Felix'),(4987,15,'Santa Cecilia de Umbuzeiro'),(4988,15,'Santa Cruz'),(4989,15,'Santa Gertrudes'),(4990,15,'Santa Helena'),(4991,15,'Santa Ines'),(4992,15,'Santa Luzia'),(4993,15,'Santa Luzia do Cariri'),(4994,15,'Santa Maria'),(4995,15,'Santa Rita'),(4996,15,'Santa Teresinha'),(4997,15,'Santa Terezinha'),(4998,15,'Santana de Mangueira'),(4999,15,'Santana dos Garrotes'),(5000,15,'Santarem'),(5001,15,'Santo Andre'),(5002,15,'Sao Bento'),(5003,15,'Sao Bento de Pombal'),(5004,15,'Sao Domingos de Pombal'),(5005,15,'Sao Domingos do Cariri'),(5006,15,'Sao Francisco'),(5007,15,'Sao Goncalo'),(5008,15,'Sao Joao Bosco'),(5009,15,'Sao Joao do Cariri'),(5010,15,'Sao Joao do Rio do Peixe'),(5011,15,'Sao Joao do Tigre'),(5012,15,'Sao Jose da Lagoa Tapada'),(5013,15,'Sao Jose da Mata'),(5014,15,'Sao Jose de Caiana'),(5015,15,'Sao Jose de Espinharas'),(5016,15,'Sao Jose de Marimbas'),(5017,15,'Sao Jose de Piranhas'),(5018,15,'Sao Jose de Princesa'),(5019,15,'Sao Jose do Bonfim'),(5020,15,'Sao Jose do Brejo do Cruz'),(5021,15,'Sao Jose do Sabugi'),(5022,15,'Sao Jose dos Cordeiros'),(5023,15,'Sao Jose dos Ramos'),(5024,15,'Sao Mamede'),(5025,15,'Sao Miguel de Taipu'),(5026,15,'Sao Pedro'),(5027,15,'Sao Sebastiao de Lagoa de Roca'),(5028,15,'Sao Sebastiao do Umbuzeiro'),(5029,15,'Sape'),(5030,15,'Serido'),(5031,15,'Serido/sao Vicente do Serido'),(5032,15,'Serra Branca'),(5033,15,'Serra da Raiz'),(5034,15,'Serra Grande'),(5035,15,'Serra Redonda'),(5036,15,'Serraria'),(5037,15,'Sertaozinho'),(5038,15,'Sobrado'),(5039,15,'Solanea'),(5040,15,'Soledade'),(5041,15,'Sossego'),(5042,15,'Sousa'),(5043,15,'Sucuru'),(5044,15,'Sume'),(5045,15,'Tacima'),(5046,15,'Tambau'),(5047,15,'Tambauzinho'),(5048,15,'Taperoa'),(5049,15,'Tavares'),(5050,15,'Teixeira'),(5051,15,'Tenorio'),(5052,15,'Triunfo'),(5053,15,'Uirauna'),(5054,15,'Umari'),(5055,15,'Umbuzeiro'),(5056,15,'Varzea'),(5057,15,'Varzea Comprida'),(5058,15,'Varzea Nova'),(5059,15,'Vazante'),(5060,15,'Vieiropolis'),(5061,15,'Vista Serrana'),(5062,15,'Zabele'),(5063,16,'Abreu E Lima'),(5064,16,'Afogados da Ingazeira'),(5065,16,'Afranio'),(5066,16,'Agrestina'),(5067,16,'Agua Fria'),(5068,16,'Agua Preta'),(5069,16,'Aguas Belas'),(5070,16,'Airi'),(5071,16,'Alagoinha'),(5072,16,'Albuquerque Ne'),(5073,16,'Algodoes'),(5074,16,'Alianca'),(5075,16,'Altinho'),(5076,16,'Amaraji'),(5077,16,'Ameixas'),(5078,16,'Angelim'),(5079,16,'Apoti'),(5080,16,'Aracoiaba'),(5081,16,'Araripina'),(5082,16,'Arcoverde'),(5083,16,'Aripibu'),(5084,16,'Arizona'),(5085,16,'Barra de Farias'),(5086,16,'Barra de Guabiraba'),(5087,16,'Barra de Sao Pedro'),(5088,16,'Barra do Brejo'),(5089,16,'Barra do Chata'),(5090,16,'Barra do Jardim'),(5091,16,'Barra do Riachao'),(5092,16,'Barra do Sirinhaem'),(5093,16,'Barreiros'),(5094,16,'Batateira'),(5095,16,'Belem de Maria'),(5096,16,'Belem de Sao Francisco'),(5097,16,'Belo Jardim'),(5098,16,'Bengalas'),(5099,16,'Bentivi'),(5100,16,'Bernardo Vieira'),(5101,16,'Betania'),(5102,16,'Bezerros'),(5103,16,'Bizarra'),(5104,16,'Boas Novas'),(5105,16,'Bodoco'),(5106,16,'Bom Conselho'),(5107,16,'Bom Jardim'),(5108,16,'Bom Nome'),(5109,16,'Bonfim'),(5110,16,'Bonito'),(5111,16,'Brejao'),(5112,16,'Brejinho'),(5113,16,'Brejo da Madre de Deus'),(5114,16,'Buenos Aires'),(5115,16,'Buique'),(5116,16,'Cabanas'),(5117,16,'Cabo de Santo Agostinho'),(5118,16,'Cabrobo'),(5119,16,'Cachoeira do Roberto'),(5120,16,'Cachoeirinha'),(5121,16,'Caetes'),(5122,16,'Caicarinha da Penha'),(5123,16,'Calcado'),(5124,16,'Caldeiroes'),(5125,16,'Calumbi'),(5126,16,'Camaragibe'),(5127,16,'Camela'),(5128,16,'Camocim de Sao Felix'),(5129,16,'Camutanga'),(5130,16,'Canaa'),(5131,16,'Canhotinho'),(5132,16,'Capoeiras'),(5133,16,'Caraiba'),(5134,16,'Caraibeiras'),(5135,16,'Carapotos'),(5136,16,'Carice'),(5137,16,'Carima'),(5138,16,'Caririmirim'),(5139,16,'Carnaiba'),(5140,16,'Carnaubeira da Penha'),(5141,16,'Carneiro'),(5142,16,'Carpina'),(5143,16,'Carqueja'),(5144,16,'Caruaru'),(5145,16,'Casinhas'),(5146,16,'Catende'),(5147,16,'Catimbau'),(5148,16,'Catole'),(5149,16,'Cavaleiro'),(5150,16,'Cedro'),(5151,16,'Cha de Alegria'),(5152,16,'Cha do Rocha'),(5153,16,'Cha Grande'),(5154,16,'Cimbres'),(5155,16,'Clarana'),(5156,16,'Cocau'),(5157,16,'Conceicao das Crioulas'),(5158,16,'Condado'),(5159,16,'Correntes'),(5160,16,'Cortes'),(5161,16,'Couro D\'antas'),(5162,16,'Cristalia'),(5163,16,'Cruanji'),(5164,16,'Cruzes'),(5165,16,'Cuiambuca'),(5166,16,'Cumaru'),(5167,16,'Cupira'),(5168,16,'Curral Queimado'),(5169,16,'Custodia'),(5170,16,'Dois Leoes'),(5171,16,'Dormentes'),(5172,16,'Entroncamento'),(5173,16,'Escada'),(5174,16,'Espirito Santo'),(5175,16,'Exu'),(5176,16,'Fazenda Nova'),(5177,16,'Feira Nova'),(5178,16,'Feitoria'),(5179,16,'Fernando de Noronha'),(5180,16,'Ferreiros'),(5181,16,'Flores'),(5182,16,'Floresta'),(5183,16,'Frei Miguelinho'),(5184,16,'Frexeiras'),(5185,16,'Gameleira'),(5186,16,'Garanhuns'),(5187,16,'Gloria do Goita'),(5188,16,'Goiana'),(5189,16,'Goncalves Ferreira'),(5190,16,'Granito'),(5191,16,'Gravata'),(5192,16,'Gravata do Ibiapina'),(5193,16,'Grotao'),(5194,16,'Guanumbi'),(5195,16,'Henrique Dias'),(5196,16,'Iateca'),(5197,16,'Iati'),(5198,16,'Ibimirim'),(5199,16,'Ibirajuba'),(5200,16,'Ibiranga'),(5201,16,'Ibiratinga'),(5202,16,'Ibitiranga'),(5203,16,'Ibo'),(5204,16,'Icaicara'),(5205,16,'Igapo'),(5206,16,'Igarapeassu'),(5207,16,'Igarapeba'),(5208,16,'Igarassu'),(5209,16,'Iguaraci'),(5210,16,'Inaja'),(5211,16,'Ingazeira'),(5212,16,'Ipojuca'),(5213,16,'Ipubi'),(5214,16,'Ipuera'),(5215,16,'Iraguacu'),(5216,16,'Irajai'),(5217,16,'Iratama'),(5218,16,'Itacuruba'),(5219,16,'Itaiba'),(5220,16,'Itamaraca'),(5221,16,'Itambe'),(5222,16,'Itapetim'),(5223,16,'Itapissuma'),(5224,16,'Itaquitinga'),(5225,16,'Ituguacu'),(5226,16,'Iuitepora'),(5227,16,'Jabitaca'),(5228,16,'Jaboatao'),(5229,16,'Jaboatao dos Guararapes'),(5230,16,'Japecanga'),(5231,16,'Jaqueira'),(5232,16,'Jatauba'),(5233,16,'Jatiuca'),(5234,16,'Jatoba'),(5235,16,'Jenipapo'),(5236,16,'Joao Alfredo'),(5237,16,'Joaquim Nabuco'),(5238,16,'Jose da Costa'),(5239,16,'Jose Mariano'),(5240,16,'Jucaral'),(5241,16,'Jucati'),(5242,16,'Jupi'),(5243,16,'Jurema'),(5244,16,'Jutai'),(5245,16,'Lagoa'),(5246,16,'Lagoa de Sao Jose'),(5247,16,'Lagoa do Barro'),(5248,16,'Lagoa do Carro'),(5249,16,'Lagoa do Itaenga'),(5250,16,'Lagoa do Ouro'),(5251,16,'Lagoa do Souza'),(5252,16,'Lagoa dos Gatos'),(5253,16,'Lagoa Grande'),(5254,16,'Laje de Sao Jose'),(5255,16,'Laje Grande'),(5256,16,'Lajedo'),(5257,16,'Lajedo do Cedro'),(5258,16,'Limoeiro'),(5259,16,'Livramento do Tiuma'),(5260,16,'Luanda'),(5261,16,'Macaparana'),(5262,16,'Machados'),(5263,16,'Macuje'),(5264,16,'Manari'),(5265,16,'Mandacaia'),(5266,16,'Mandacaru'),(5267,16,'Manicoba'),(5268,16,'Maraial'),(5269,16,'Maravilha'),(5270,16,'Mimoso'),(5271,16,'Miracica'),(5272,16,'Mirandiba'),(5273,16,'Morais'),(5274,16,'Moreilandia'),(5275,16,'Moreno'),(5276,16,'Moxoto'),(5277,16,'Mulungu'),(5278,16,'Murupe'),(5279,16,'Mutuca'),(5280,16,'Nascente'),(5281,16,'Navarro'),(5282,16,'Nazare da Mata'),(5283,16,'Negras'),(5284,16,'Nossa Senhora da Luz'),(5285,16,'Nossa Senhora do Carmo'),(5286,16,'Nossa Senhora do O'),(5287,16,'Nova Cruz'),(5288,16,'Olho D\'agua De Dentro'),(5289,16,'Olinda'),(5290,16,'Oratorio'),(5291,16,'Ori'),(5292,16,'Orobo'),(5293,16,'Oroco'),(5294,16,'Ouricuri'),(5295,16,'Pajeu'),(5296,16,'Palmares'),(5297,16,'Palmeirina'),(5298,16,'Panelas'),(5299,16,'Pao de Acucar'),(5300,16,'Pao de Acucar do Pocao'),(5301,16,'Papagaio'),(5302,16,'Paquevira'),(5303,16,'Para'),(5304,16,'Paranatama'),(5305,16,'Paratibe'),(5306,16,'Parnamirim'),(5307,16,'Passagem do To'),(5308,16,'Passira'),(5309,16,'Pau Ferro'),(5310,16,'Paudalho'),(5311,16,'Paulista'),(5312,16,'Pedra'),(5313,16,'Perpetuo Socorro'),(5314,16,'Pesqueira'),(5315,16,'Petrolandia'),(5316,16,'Petrolina'),(5317,16,'Pirituba'),(5318,16,'Pocao'),(5319,16,'Pocao de Afranio'),(5320,16,'Poco Comprido'),(5321,16,'Poco Fundo'),(5322,16,'Pombos'),(5323,16,'Pontas de Pedra'),(5324,16,'Ponte dos Carvalhos'),(5325,16,'Praia da Conceicao'),(5326,16,'Primavera'),(5327,16,'Quipapa'),(5328,16,'Quitimbu'),(5329,16,'Quixaba'),(5330,16,'Rainha Isabel'),(5331,16,'Rajada'),(5332,16,'Rancharia'),(5333,16,'Recife'),(5334,16,'Riacho das Almas'),(5335,16,'Riacho do Meio'),(5336,16,'Riacho Fechado'),(5337,16,'Riacho Pequeno'),(5338,16,'Ribeirao'),(5339,16,'Rio da Barra'),(5340,16,'Rio Formoso'),(5341,16,'Saire'),(5342,16,'Salgadinho'),(5343,16,'Salgueiro'),(5344,16,'Saloa'),(5345,16,'Salobro'),(5346,16,'Sanharo'),(5347,16,'Santa Cruz'),(5348,16,'Santa Cruz da Baixa Verde'),(5349,16,'Santa Cruz do Capibaribe'),(5350,16,'Santa Filomena'),(5351,16,'Santa Maria da Boa Vista'),(5352,16,'Santa Maria do Cambuca'),(5353,16,'Santa Rita'),(5354,16,'Santa Terezinha'),(5355,16,'Santana de Sao Joaquim'),(5356,16,'Santo Agostinho'),(5357,16,'Santo Antonio das Queimadas'),(5358,16,'Santo Antonio dos Palmares'),(5359,16,'Sao Benedito do Sul'),(5360,16,'Sao Bento do Una'),(5361,16,'Sao Caetano do Navio'),(5362,16,'Sao Caitano'),(5363,16,'Sao Domingos'),(5364,16,'Sao Joao'),(5365,16,'Sao Joaquim do Monte'),(5366,16,'Sao Jose'),(5367,16,'Sao Jose da Coroa Grande'),(5368,16,'Sao Jose do Belmonte'),(5369,16,'Sao Jose do Egito'),(5370,16,'Sao Lazaro'),(5371,16,'Sao Lourenco da Mata'),(5372,16,'Sao Pedro'),(5373,16,'Sao Vicente'),(5374,16,'Sao Vicente Ferrer'),(5375,16,'Sapucarana'),(5376,16,'Saue'),(5377,16,'Serra Branca'),(5378,16,'Serra do Vento'),(5379,16,'Serra Talhada'),(5380,16,'Serrita'),(5381,16,'Serrolandia'),(5382,16,'Sertania'),(5383,16,'Sertaozinho de Baixo'),(5384,16,'Siriji'),(5385,16,'Sirinhaem'),(5386,16,'Sitio dos Nunes'),(5387,16,'Solidao'),(5388,16,'Surubim'),(5389,16,'Tabira'),(5390,16,'Tabocas'),(5391,16,'Tacaimbo'),(5392,16,'Tacaratu'),(5393,16,'Tamandare'),(5394,16,'Tamboata'),(5395,16,'Tapiraim'),(5396,16,'Taquaritinga do Norte'),(5397,16,'Tara'),(5398,16,'Tauapiranga'),(5399,16,'Tejucupapo'),(5400,16,'Terezinha'),(5401,16,'Terra Nova'),(5402,16,'Timbauba'),(5403,16,'Timorante'),(5404,16,'Toritama'),(5405,16,'Tracunhaem'),(5406,16,'Trapia'),(5407,16,'Tres Ladeiras'),(5408,16,'Trindade'),(5409,16,'Triunfo'),(5410,16,'Tupanaci'),(5411,16,'Tupanatinga'),(5412,16,'Tupaoca'),(5413,16,'Tuparetama'),(5414,16,'Umas'),(5415,16,'Umburetama'),(5416,16,'Upatininga'),(5417,16,'Urimama'),(5418,16,'Urucu-mirim'),(5419,16,'Urucuba'),(5420,16,'Vasques'),(5421,16,'Veneza'),(5422,16,'Venturosa'),(5423,16,'Verdejante'),(5424,16,'Vertente do Lerio'),(5425,16,'Vertentes'),(5426,16,'Vicencia'),(5427,16,'Vila Nova'),(5428,16,'Viracao'),(5429,16,'Vitoria de Santo Antao'),(5430,16,'Volta do Moxoto'),(5431,16,'Xexeu'),(5432,16,'Xucuru'),(5433,16,'Ze Gomes'),(5434,17,'Acaua'),(5435,17,'Agricolandia'),(5436,17,'Agua Branca'),(5437,17,'Alagoinha do Piaui'),(5438,17,'Alegrete do Piaui'),(5439,17,'Alto Longa'),(5440,17,'Altos'),(5441,17,'Alvorada do Gurgueia'),(5442,17,'Amarante'),(5443,17,'Angical do Piaui'),(5444,17,'Anisio de Abreu'),(5445,17,'Antonio Almeida'),(5446,17,'Aroazes'),(5447,17,'Arraial'),(5448,17,'Assuncao do Piaui'),(5449,17,'Avelino Lopes'),(5450,17,'Baixa Grande do Ribeiro'),(5451,17,'Barra D\'alcantara'),(5452,17,'Barras'),(5453,17,'Barreiras do Piaui'),(5454,17,'Barro Duro'),(5455,17,'Batalha'),(5456,17,'Bela Vista do Piaui'),(5457,17,'Belem do Piaui'),(5458,17,'Beneditinos'),(5459,17,'Bertolinia'),(5460,17,'Betania do Piaui'),(5461,17,'Boa Hora'),(5462,17,'Bocaina'),(5463,17,'Bom Jesus'),(5464,17,'Bom Principio do Piaui'),(5465,17,'Bonfim do Piaui'),(5466,17,'Boqueirao do Piaui'),(5467,17,'Brasileira'),(5468,17,'Brejo do Piaui'),(5469,17,'Buriti dos Lopes'),(5470,17,'Buriti dos Montes'),(5471,17,'Cabeceiras do Piaui'),(5472,17,'Cajazeiras do Piaui'),(5473,17,'Cajueiro da Praia'),(5474,17,'Caldeirao Grande do Piaui'),(5475,17,'Campinas do Piaui'),(5476,17,'Campo Alegre do Fidalgo'),(5477,17,'Campo Grande do Piaui'),(5478,17,'Campo Largo do Piaui'),(5479,17,'Campo Maior'),(5480,17,'Canavieira'),(5481,17,'Canto do Buriti'),(5482,17,'Capitao de Campos'),(5483,17,'Capitao Gervasio Oliveira'),(5484,17,'Caracol'),(5485,17,'Caraubas do Piaui'),(5486,17,'Caridade do Piaui'),(5487,17,'Castelo do Piaui'),(5488,17,'Caxingo'),(5489,17,'Cocal'),(5490,17,'Cocal de Telha'),(5491,17,'Cocal dos Alves'),(5492,17,'Coivaras'),(5493,17,'Colonia do Gurgueia'),(5494,17,'Colonia do Piaui'),(5495,17,'Conceicao do Caninde'),(5496,17,'Coronel Jose Dias'),(5497,17,'Corrente'),(5498,17,'Cristalandia do Piaui'),(5499,17,'Cristino Castro'),(5500,17,'Curimata'),(5501,17,'Currais'),(5502,17,'Curral Novo do Piaui'),(5503,17,'Curralinhos'),(5504,17,'Demerval Lobao'),(5505,17,'Dirceu Arcoverde'),(5506,17,'Dom Expedito Lopes'),(5507,17,'Dom Inocencio'),(5508,17,'Domingos Mourao'),(5509,17,'Elesbao Veloso'),(5510,17,'Eliseu Martins'),(5511,17,'Esperantina'),(5512,17,'Fartura do Piaui'),(5513,17,'Flores do Piaui'),(5514,17,'Floresta do Piaui'),(5515,17,'Floriano'),(5516,17,'Francinopolis'),(5517,17,'Francisco Ayres'),(5518,17,'Francisco Macedo'),(5519,17,'Francisco Santos'),(5520,17,'Fronteiras'),(5521,17,'Geminiano'),(5522,17,'Gilbues'),(5523,17,'Guadalupe'),(5524,17,'Guaribas'),(5525,17,'Hugo Napoleao'),(5526,17,'Ilha Grande'),(5527,17,'Inhuma'),(5528,17,'Ipiranga do Piaui'),(5529,17,'Isaias Coelho'),(5530,17,'Itainopolis'),(5531,17,'Itaueira'),(5532,17,'Jacobina do Piaui'),(5533,17,'Jaicos'),(5534,17,'Jardim do Mulato'),(5535,17,'Jatoba do Piaui'),(5536,17,'Jerumenha'),(5537,17,'Joao Costa'),(5538,17,'Joaquim Pires'),(5539,17,'Joca Marques'),(5540,17,'Jose de Freitas'),(5541,17,'Juazeiro do Piaui'),(5542,17,'Julio Borges'),(5543,17,'Jurema'),(5544,17,'Lagoa Alegre'),(5545,17,'Lagoa de Sao Francisco'),(5546,17,'Lagoa do Barro do Piaui'),(5547,17,'Lagoa do Piaui'),(5548,17,'Lagoa do Sitio'),(5549,17,'Lagoinha do Piaui'),(5550,17,'Landri Sales'),(5551,17,'Luis Correia'),(5552,17,'Luzilandia'),(5553,17,'Madeiro'),(5554,17,'Manoel Emidio'),(5555,17,'Marcolandia'),(5556,17,'Marcos Parente'),(5557,17,'Massape do Piaui'),(5558,17,'Matias Olimpio'),(5559,17,'Miguel Alves'),(5560,17,'Miguel Leao'),(5561,17,'Milton Brandao'),(5562,17,'Monsenhor Gil'),(5563,17,'Monsenhor Hipolito'),(5564,17,'Monte Alegre do Piaui'),(5565,17,'Morro Cabeca No Tempo'),(5566,17,'Morro do Chapeu do Piaui'),(5567,17,'Murici dos Portelas'),(5568,17,'Nazare do Piaui'),(5569,17,'Nossa Senhora de Nazare'),(5570,17,'Nossa Senhora dos Remedios'),(5571,17,'Nova Santa Rita'),(5572,17,'Novo Nilo'),(5573,17,'Novo Oriente do Piaui'),(5574,17,'Novo Santo Antonio'),(5575,17,'Oeiras'),(5576,17,'Olho D\'agua Do Piaui'),(5577,17,'Padre Marcos'),(5578,17,'Paes Landim'),(5579,17,'Pajeu do Piaui'),(5580,17,'Palmeira do Piaui'),(5581,17,'Palmeirais'),(5582,17,'Paqueta'),(5583,17,'Parnagua'),(5584,17,'Parnaiba'),(5585,17,'Passagem Franca do Piaui'),(5586,17,'Patos do Piaui'),(5587,17,'Paulistana'),(5588,17,'Pavussu'),(5589,17,'Pedro Ii'),(5590,17,'Pedro Laurentino'),(5591,17,'Picos'),(5592,17,'Pimenteiras'),(5593,17,'Pio Ix'),(5594,17,'Piracuruca'),(5595,17,'Piripiri'),(5596,17,'Porto'),(5597,17,'Porto Alegre do Piaui'),(5598,17,'Prata do Piaui'),(5599,17,'Queimada Nova'),(5600,17,'Redencao do Gurgueia'),(5601,17,'Regeneracao'),(5602,17,'Riacho Frio'),(5603,17,'Ribeira do Piaui'),(5604,17,'Ribeiro Goncalves'),(5605,17,'Rio Grande do Piaui'),(5606,17,'Santa Cruz do Piaui'),(5607,17,'Santa Cruz dos Milagres'),(5608,17,'Santa Filomena'),(5609,17,'Santa Luz'),(5610,17,'Santa Rosa do Piaui'),(5611,17,'Santana do Piaui'),(5612,17,'Santo Antonio de Lisboa'),(5613,17,'Santo Antonio dos Milagres'),(5614,17,'Santo Inacio do Piaui'),(5615,17,'Sao Braz do Piaui'),(5616,17,'Sao Felix do Piaui'),(5617,17,'Sao Francisco de Assis do Piaui'),(5618,17,'Sao Francisco do Piaui'),(5619,17,'Sao Goncalo do Gurgueia'),(5620,17,'Sao Goncalo do Piaui'),(5621,17,'Sao Joao da Canabrava'),(5622,17,'Sao Joao da Fronteira'),(5623,17,'Sao Joao da Serra'),(5624,17,'Sao Joao da Varjota'),(5625,17,'Sao Joao do Arraial'),(5626,17,'Sao Joao do Piaui'),(5627,17,'Sao Jose do Divino'),(5628,17,'Sao Jose do Peixe'),(5629,17,'Sao Jose do Piaui'),(5630,17,'Sao Juliao'),(5631,17,'Sao Lourenco do Piaui'),(5632,17,'Sao Luis do Piaui'),(5633,17,'Sao Miguel da Baixa Grande'),(5634,17,'Sao Miguel do Fidalgo'),(5635,17,'Sao Miguel do Tapuio'),(5636,17,'Sao Pedro do Piaui'),(5637,17,'Sao Raimundo Nonato'),(5638,17,'Sebastiao Barros'),(5639,17,'Sebastiao Leal'),(5640,17,'Sigefredo Pacheco'),(5641,17,'Simoes'),(5642,17,'Simplicio Mendes'),(5643,17,'Socorro do Piaui'),(5644,17,'Sussuapara'),(5645,17,'Tamboril do Piaui'),(5646,17,'Tanque do Piaui'),(5647,17,'Teresina'),(5648,17,'Uniao'),(5649,17,'Urucui'),(5650,17,'Valenca do Piaui'),(5651,17,'Varzea Branca'),(5652,17,'Varzea Grande'),(5653,17,'Vera Mendes'),(5654,17,'Vila Nova do Piaui'),(5655,17,'Wall Ferraz'),(5656,18,'Abapa'),(5657,18,'Abatia'),(5658,18,'Acampamento das Minas'),(5659,18,'Acungui'),(5660,18,'Adhemar de Barros'),(5661,18,'Adrianopolis'),(5662,18,'Agostinho'),(5663,18,'Agua Azul'),(5664,18,'Agua Boa'),(5665,18,'Agua Branca'),(5666,18,'Agua do Boi'),(5667,18,'Agua Mineral'),(5668,18,'Agua Vermelha'),(5669,18,'Agudos do Sul'),(5670,18,'Alecrim'),(5671,18,'Alexandra'),(5672,18,'Almirante Tamandare'),(5673,18,'Altamira do Parana'),(5674,18,'Altaneira'),(5675,18,'Alto Alegre'),(5676,18,'Alto Alegre do Iguacu'),(5677,18,'Alto Amparo'),(5678,18,'Alto do Amparo'),(5679,18,'Alto Para'),(5680,18,'Alto Parana'),(5681,18,'Alto Piquiri'),(5682,18,'Alto Pora'),(5683,18,'Alto Sabia'),(5684,18,'Alto Santa Fe'),(5685,18,'Alto Sao Joao'),(5686,18,'Altonia'),(5687,18,'Alvorada do Iguacu'),(5688,18,'Alvorada do Sul'),(5689,18,'Amapora'),(5690,18,'Amorinha'),(5691,18,'Ampere'),(5692,18,'Anahy'),(5693,18,'Andira'),(5694,18,'Andorinhas'),(5695,18,'Angai'),(5696,18,'Angulo'),(5697,18,'Antas'),(5698,18,'Antonina'),(5699,18,'Antonio Brandao de Oliveira'),(5700,18,'Antonio Olinto'),(5701,18,'Anunciacao'),(5702,18,'Aparecida do Oeste'),(5703,18,'Apiaba'),(5704,18,'Apucarana'),(5705,18,'Aquidaban'),(5706,18,'Aranha'),(5707,18,'Arapongas'),(5708,18,'Arapoti'),(5709,18,'Arapua'),(5710,18,'Arapuan'),(5711,18,'Ararapira'),(5712,18,'Araruna'),(5713,18,'Araucaria'),(5714,18,'Areia Branca dos Assis'),(5715,18,'Areias'),(5716,18,'Aricanduva'),(5717,18,'Ariranha do Ivai'),(5718,18,'Aroeira'),(5719,18,'Arquimedes'),(5720,18,'Assai'),(5721,18,'Assis Chateaubriand'),(5722,18,'Astorga'),(5723,18,'Atalaia'),(5724,18,'Aurora do Iguacu'),(5725,18,'Bairro Cachoeira'),(5726,18,'Bairro do Felisberto'),(5727,18,'Bairro Limoeiro'),(5728,18,'Balsa Nova'),(5729,18,'Bandeirantes'),(5730,18,'Bandeirantes D\'oeste'),(5731,18,'Banhado'),(5732,18,'Barao de Lucena'),(5733,18,'Barbosa Ferraz'),(5734,18,'Barra Bonita'),(5735,18,'Barra do Jacare'),(5736,18,'Barra Grande'),(5737,18,'Barra Mansa'),(5738,18,'Barra Santa Salete'),(5739,18,'Barracao'),(5740,18,'Barras'),(5741,18,'Barreiro'),(5742,18,'Barreiro das Frutas'),(5743,18,'Barreiros'),(5744,18,'Barrinha'),(5745,18,'Barro Preto'),(5746,18,'Bateias'),(5747,18,'Baulandia'),(5748,18,'Bela Vista'),(5749,18,'Bela Vista do Caroba'),(5750,18,'Bela Vista do Ivai'),(5751,18,'Bela Vista do Paraiso'),(5752,18,'Bela Vista do Piquiri'),(5753,18,'Bela Vista do Tapiracui'),(5754,18,'Bentopolis'),(5755,18,'Bernardelli'),(5756,18,'Betaras'),(5757,18,'Bituruna'),(5758,18,'Boa Esperanca'),(5759,18,'Boa Esperanca do Iguacu'),(5760,18,'Boa Ventura de Sao Roque'),(5761,18,'Boa Vista'),(5762,18,'Boa Vista da Aparecida'),(5763,18,'Bocaina'),(5764,18,'Bocaiuva do Sul'),(5765,18,'Bom Jardim do Sul'),(5766,18,'Bom Jesus do Sul'),(5767,18,'Bom Progresso'),(5768,18,'Bom Retiro'),(5769,18,'Bom Sucesso'),(5770,18,'Bom Sucesso do Sul'),(5771,18,'Borda do Campo'),(5772,18,'Borda do Campo de Sao Sebastiao'),(5773,18,'Borman'),(5774,18,'Borrazopolis'),(5775,18,'Botuquara'),(5776,18,'Bourbonia'),(5777,18,'Braganey'),(5778,18,'Bragantina'),(5779,18,'Brasilandia do Sul'),(5780,18,'Bugre'),(5781,18,'Bulcao'),(5782,18,'Cabrito'),(5783,18,'Cacatu'),(5784,18,'Cachoeira'),(5785,18,'Cachoeira de Cima'),(5786,18,'Cachoeira de Sao Jose'),(5787,18,'Cachoeira do Espirito Santo'),(5788,18,'Cachoeirinha'),(5789,18,'Cadeadinho'),(5790,18,'Caetano Mendes'),(5791,18,'Cafeara'),(5792,18,'Cafeeiros'),(5793,18,'Cafelandia'),(5794,18,'Cafezal do Sul'),(5795,18,'Caita'),(5796,18,'Caixa Prego'),(5797,18,'California'),(5798,18,'Calogeras'),(5799,18,'Cambara'),(5800,18,'Cambe'),(5801,18,'Cambiju'),(5802,18,'Cambira'),(5803,18,'Campestrinho'),(5804,18,'Campina'),(5805,18,'Campina da Lagoa'),(5806,18,'Campina do Miranguava'),(5807,18,'Campina do Simao'),(5808,18,'Campina dos Furtados'),(5809,18,'Campina Grande do Sul'),(5810,18,'Campinas'),(5811,18,'Campo Bonito'),(5812,18,'Campo do Meio'),(5813,18,'Campo do Tenente'),(5814,18,'Campo Largo'),(5815,18,'Campo Largo da Roseira'),(5816,18,'Campo Magro'),(5817,18,'Campo Mourao'),(5818,18,'Candido de Abreu'),(5819,18,'Candoi'),(5820,18,'Canela'),(5821,18,'Cantagalo'),(5822,18,'Canzianopolis'),(5823,18,'Capanema'),(5824,18,'Capao Alto'),(5825,18,'Capao Bonito'),(5826,18,'Capao da Lagoa'),(5827,18,'Capao Grande'),(5828,18,'Capao Rico'),(5829,18,'Capitao Leonidas Marques'),(5830,18,'Capivara'),(5831,18,'Capoeirinha'),(5832,18,'Cara Pintado'),(5833,18,'Cara-cara'),(5834,18,'Caraja'),(5835,18,'Carambei'),(5836,18,'Caramuru'),(5837,18,'Caratuva'),(5838,18,'Carazinho'),(5839,18,'Carbonera'),(5840,18,'Carlopolis'),(5841,18,'Casa Nova'),(5842,18,'Cascatinha'),(5843,18,'Cascavel'),(5844,18,'Castro'),(5845,18,'Catanduvas'),(5846,18,'Catanduvas do Sul'),(5847,18,'Catarinenses'),(5848,18,'Caxambu'),(5849,18,'Cedro'),(5850,18,'Centenario'),(5851,18,'Centenario do Sul'),(5852,18,'Central Lupion'),(5853,18,'Centralito'),(5854,18,'Centro Novo'),(5855,18,'Cerne'),(5856,18,'Cerrado Grande'),(5857,18,'Cerro Azul'),(5858,18,'Cerro Velho'),(5859,18,'Ceu Azul'),(5860,18,'Chopinzinho'),(5861,18,'Cianorte'),(5862,18,'Cidade Gaucha'),(5863,18,'Cintra Pimentel'),(5864,18,'Clevelandia'),(5865,18,'Coitinho'),(5866,18,'Colombo'),(5867,18,'Colonia Acioli'),(5868,18,'Colonia Castelhanos'),(5869,18,'Colonia Castrolanda'),(5870,18,'Colonia Centenario'),(5871,18,'Colonia Cristina'),(5872,18,'Colonia Dom Carlos'),(5873,18,'Colonia Esperanca'),(5874,18,'Colonia General Carneiro'),(5875,18,'Colonia Iapo'),(5876,18,'Colonia Melissa'),(5877,18,'Colonia Murici'),(5878,18,'Colonia Padre Paulo'),(5879,18,'Colonia Pereira'),(5880,18,'Colonia Santos Andrade'),(5881,18,'Colonia Sao Jose'),(5882,18,'Colonia Sapucai'),(5883,18,'Colonia Saude'),(5884,18,'Colonia Tapera'),(5885,18,'Colorado'),(5886,18,'Comur'),(5887,18,'Conceicao'),(5888,18,'Conchas Velhas'),(5889,18,'Conciolandia'),(5890,18,'Congonhas'),(5891,18,'Congonhinhas'),(5892,18,'Conselheiro Mairinck'),(5893,18,'Conselheiro Zacarias'),(5894,18,'Contenda'),(5895,18,'Copacabana do Norte'),(5896,18,'Corbelia'),(5897,18,'Cornelio Procopio'),(5898,18,'Coronel Domingos Soares'),(5899,18,'Coronel Firmino Martins'),(5900,18,'Coronel Vivida'),(5901,18,'Correia de Freitas'),(5902,18,'Corumbatai do Sul'),(5903,18,'Corvo'),(5904,18,'Costeira'),(5905,18,'Covo'),(5906,18,'Coxilha Rica'),(5907,18,'Cristo Rei'),(5908,18,'Cruz Machado'),(5909,18,'Cruzeiro do Iguacu'),(5910,18,'Cruzeiro do Norte'),(5911,18,'Cruzeiro do Oeste'),(5912,18,'Cruzeiro do Sul'),(5913,18,'Cruzmaltina'),(5914,18,'Cunhaporanga'),(5915,18,'Curitiba'),(5916,18,'Curiuva'),(5917,18,'Curucaca'),(5918,18,'Deputado Jose Afonso'),(5919,18,'Despique'),(5920,18,'Despraiado'),(5921,18,'Dez de Maio'),(5922,18,'Diamante'),(5923,18,'Diamante D\'oeste'),(5924,18,'Diamante do Norte'),(5925,18,'Diamante do Sul'),(5926,18,'Doce Grande'),(5927,18,'Dois Irmaos'),(5928,18,'Dois Marcos'),(5929,18,'Dois Vizinhos'),(5930,18,'Dom Rodrigo'),(5931,18,'Dorizon'),(5932,18,'Douradina'),(5933,18,'Doutor Antonio Paranhos'),(5934,18,'Doutor Camargo'),(5935,18,'Doutor Ernesto'),(5936,18,'Doutor Oliveira Castro'),(5937,18,'Doutor Ulysses'),(5938,18,'Eduardo Xavier da Silva'),(5939,18,'Emboguacu'),(5940,18,'Emboque'),(5941,18,'Encantado D\'oeste'),(5942,18,'Encruzilhada'),(5943,18,'Eneas Marques'),(5944,18,'Engenheiro Beltrao'),(5945,18,'Entre Rios'),(5946,18,'Entre Rios do Oeste'),(5947,18,'Esperanca do Norte'),(5948,18,'Esperanca Nova'),(5949,18,'Espigao Alto do Iguacu'),(5950,18,'Espirito Santo'),(5951,18,'Estacao General Lucio'),(5952,18,'Estacao Roca Nova'),(5953,18,'Europa'),(5954,18,'Euzebio de Oliveira'),(5955,18,'Faisqueira'),(5956,18,'Farol'),(5957,18,'Faxina'),(5958,18,'Faxinal'),(5959,18,'Faxinal do Ceu'),(5960,18,'Faxinal dos Elias'),(5961,18,'Faxinal Santa Cruz'),(5962,18,'Fazenda do Brigadeiro'),(5963,18,'Fazenda dos Barbosas'),(5964,18,'Fazenda Jangada'),(5965,18,'Fazenda Rio Grande'),(5966,18,'Fazenda Salmo Null'),(5967,18,'Fazendinha'),(5968,18,'Felpudo'),(5969,18,'Fenix'),(5970,18,'Fernandes Pinheiro'),(5971,18,'Fernao Dias'),(5972,18,'Ferraria'),(5973,18,'Ferreiras'),(5974,18,'Figueira'),(5975,18,'Figueira do Oeste'),(5976,18,'Fiusas'),(5977,18,'Flor da Serra'),(5978,18,'Flor da Serra do Sul'),(5979,18,'Florai'),(5980,18,'Floresta'),(5981,18,'Florestopolis'),(5982,18,'Floriano'),(5983,18,'Florida'),(5984,18,'Floropolis'),(5985,18,'Fluviopolis'),(5986,18,'Formigone'),(5987,18,'Formosa do Oeste'),(5988,18,'Foz do Iguacu'),(5989,18,'Foz do Jordao'),(5990,18,'Francisco Alves'),(5991,18,'Francisco Beltrao'),(5992,18,'Francisco Frederico Teixeira Guimaraes'),(5993,18,'Frei Timoteo'),(5994,18,'Fueros'),(5995,18,'Fundao'),(5996,18,'Gamadinho'),(5997,18,'Gamela'),(5998,18,'Gaucha'),(5999,18,'Gaviao'),(6000,18,'General Carneiro'),(6001,18,'General Osorio'),(6002,18,'Geremia Lunardelli'),(6003,18,'Godoy Moreira'),(6004,18,'Goioere'),(6005,18,'Goioxim'),(6006,18,'Gois'),(6007,18,'Goncalves Junior'),(6008,18,'Graciosa'),(6009,18,'Grandes Rios'),(6010,18,'Guaipora'),(6011,18,'Guaira'),(6012,18,'Guairaca'),(6013,18,'Guajuvira'),(6014,18,'Guamiranga'),(6015,18,'Guamirim'),(6016,18,'Guapirama'),(6017,18,'Guapore'),(6018,18,'Guaporema'),(6019,18,'Guara'),(6020,18,'Guaraci'),(6021,18,'Guaragi'),(6022,18,'Guaraituba'),(6023,18,'Guarani'),(6024,18,'Guaraniacu'),(6025,18,'Guarapuava'),(6026,18,'Guarapuavinha'),(6027,18,'Guaraquecaba'),(6028,18,'Guararema'),(6029,18,'Guaratuba'),(6030,18,'Guarauna'),(6031,18,'Guaravera'),(6032,18,'Guardamoria'),(6033,18,'Harmonia'),(6034,18,'Herculandia'),(6035,18,'Herval Grande'),(6036,18,'Herveira'),(6037,18,'Hidreletrica Itaipu'),(6038,18,'Honorio Serpa'),(6039,18,'Iarama'),(6040,18,'Ibaiti'),(6041,18,'Ibema'),(6042,18,'Ibiaci'),(6043,18,'Ibipora'),(6044,18,'Icara'),(6045,18,'Icaraima'),(6046,18,'Icatu'),(6047,18,'Igrejinha'),(6048,18,'Iguaracu'),(6049,18,'Iguatemi'),(6050,18,'Iguatu'),(6051,18,'Iguipora'),(6052,18,'Ilha do Mel'),(6053,18,'Ilha dos Valadares'),(6054,18,'Imbau'),(6055,18,'Imbauzinho'),(6056,18,'Imbituva'),(6057,18,'Inacio Martins'),(6058,18,'Inaja'),(6059,18,'Independencia'),(6060,18,'Indianopolis'),(6061,18,'Inspetor Carvalho'),(6062,18,'Invernada'),(6063,18,'Invernadinha'),(6064,18,'Iolopolis'),(6065,18,'Ipiranga'),(6066,18,'Ipora'),(6067,18,'Iracema do Oeste'),(6068,18,'Irapuan'),(6069,18,'Irati'),(6070,18,'Irere'),(6071,18,'Iretama'),(6072,18,'Itaguaje'),(6073,18,'Itaiacoca'),(6074,18,'Itaipulandia'),(6075,18,'Itambaraca'),(6076,18,'Itambe'),(6077,18,'Itapanhacanga'),(6078,18,'Itapara'),(6079,18,'Itapejara D\'oeste'),(6080,18,'Itaperucu'),(6081,18,'Itaqui'),(6082,18,'Itauna do Sul'),(6083,18,'Itinga'),(6084,18,'Ivai'),(6085,18,'Ivailandia'),(6086,18,'Ivaipora'),(6087,18,'Ivaitinga'),(6088,18,'Ivate'),(6089,18,'Ivatuba'),(6090,18,'Jaborandi'),(6091,18,'Jaboti'),(6092,18,'Jaboticabal'),(6093,18,'Jaburu'),(6094,18,'Jacare'),(6095,18,'Jacarezinho'),(6096,18,'Jaciaba'),(6097,18,'Jacutinga'),(6098,18,'Jaguapita'),(6099,18,'Jaguariaiva'),(6100,18,'Jandaia do Sul'),(6101,18,'Jangada'),(6102,18,'Jangada do Sul'),(6103,18,'Janiopolis'),(6104,18,'Japira'),(6105,18,'Japura'),(6106,18,'Jaracatia'),(6107,18,'Jardim'),(6108,18,'Jardim Alegre'),(6109,18,'Jardim Olinda'),(6110,18,'Jardim Paredao'),(6111,18,'Jardim Paulista'),(6112,18,'Jardinopolis'),(6113,18,'Jataizinho'),(6114,18,'Javacae'),(6115,18,'Jesuitas'),(6116,18,'Joa'),(6117,18,'Joaquim Tavora'),(6118,18,'Jordaozinho'),(6119,18,'Jose Lacerda'),(6120,18,'Juciara'),(6121,18,'Jundiai do Sul'),(6122,18,'Juranda'),(6123,18,'Jussara'),(6124,18,'Juvinopolis'),(6125,18,'Kalore'),(6126,18,'Km Null'),(6127,18,'Lagoa'),(6128,18,'Lagoa Bonita'),(6129,18,'Lagoa dos Ribas'),(6130,18,'Lagoa Dourada'),(6131,18,'Lagoa Seca'),(6132,18,'Lagoa Verde'),(6133,18,'Lagoinha'),(6134,18,'Lajeado'),(6135,18,'Lajeado Bonito'),(6136,18,'Lajeado Grande'),(6137,18,'Lambari'),(6138,18,'Lapa'),(6139,18,'Laranja Azeda'),(6140,18,'Laranjal'),(6141,18,'Laranjeiras do Sul'),(6142,18,'Lavra'),(6143,18,'Lavrinha'),(6144,18,'Leopolis'),(6145,18,'Lerroville'),(6146,18,'Lidianopolis'),(6147,18,'Lindoeste'),(6148,18,'Linha Giacomini'),(6149,18,'Loanda'),(6150,18,'Lobato'),(6151,18,'Londrina'),(6152,18,'Lopei'),(6153,18,'Lovat'),(6154,18,'Luar'),(6155,18,'Luiziana'),(6156,18,'Lunardelli'),(6157,18,'Lupionopolis'),(6158,18,'Macaco'),(6159,18,'Macucos'),(6160,18,'Maira'),(6161,18,'Maita'),(6162,18,'Mallet'),(6163,18,'Malu'),(6164,18,'Mambore'),(6165,18,'Mandacaia'),(6166,18,'Mandaguacu'),(6167,18,'Mandaguari'),(6168,18,'Mandiocaba'),(6169,18,'Mandirituba'),(6170,18,'Manfrinopolis'),(6171,18,'Mangueirinha'),(6172,18,'Manoel Ribas'),(6173,18,'Maraba'),(6174,18,'Maracana'),(6175,18,'Marajo'),(6176,18,'Maravilha'),(6177,18,'Marcelino'),(6178,18,'Marcionopolis'),(6179,18,'Marechal Candido Rondon'),(6180,18,'Margarida'),(6181,18,'Maria Helena'),(6182,18,'Maria Luiza'),(6183,18,'Marialva'),(6184,18,'Mariental'),(6185,18,'Marilandia do Sul'),(6186,18,'Marilena'),(6187,18,'Marilu'),(6188,18,'Mariluz'),(6189,18,'Marimbondo'),(6190,18,'Maringa'),(6191,18,'Mariopolis'),(6192,18,'Maripa'),(6193,18,'Maristela'),(6194,18,'Mariza'),(6195,18,'Marmelandia'),(6196,18,'Marmeleiro'),(6197,18,'Marques de Abrantes'),(6198,18,'Marquinho'),(6199,18,'Marrecas'),(6200,18,'Martins'),(6201,18,'Marumbi'),(6202,18,'Matelandia'),(6203,18,'Matinhos'),(6204,18,'Mato Queimado'),(6205,18,'Mato Rico'),(6206,18,'Maua da Serra'),(6207,18,'Medianeira'),(6208,18,'Meia-lua'),(6209,18,'Memoria'),(6210,18,'Mendeslandia'),(6211,18,'Mercedes'),(6212,18,'Mirador'),(6213,18,'Miranda'),(6214,18,'Mirante do Piquiri'),(6215,18,'Miraselva'),(6216,18,'Missal'),(6217,18,'Monjolinho'),(6218,18,'Monte Real'),(6219,18,'Moreira Sales'),(6220,18,'Morretes'),(6221,18,'Morro Alto'),(6222,18,'Morro Ingles'),(6223,18,'Munhoz de Melo'),(6224,18,'Natingui'),(6225,18,'Nilza'),(6226,18,'Nordestina'),(6227,18,'Nossa Senhora Aparecida'),(6228,18,'Nossa Senhora da Aparecida'),(6229,18,'Nossa Senhora da Candelaria'),(6230,18,'Nossa Senhora das Gracas'),(6231,18,'Nossa Senhora de Lourdes'),(6232,18,'Nossa Senhora do Carmo'),(6233,18,'Nova Alianca do Ivai'),(6234,18,'Nova Altamira'),(6235,18,'Nova America da Colina'),(6236,18,'Nova Amoreira'),(6237,18,'Nova Aurora'),(6238,18,'Nova Bilac'),(6239,18,'Nova Brasilia'),(6240,18,'Nova Brasilia do Itarare'),(6241,18,'Nova Cantu'),(6242,18,'Nova Concordia'),(6243,18,'Nova Esperanca'),(6244,18,'Nova Esperanca do Sudoeste'),(6245,18,'Nova Fatima'),(6246,18,'Nova Laranjeiras'),(6247,18,'Nova Londrina'),(6248,18,'Nova Lourdes'),(6249,18,'Nova Olimpia'),(6250,18,'Nova Prata do Iguacu'),(6251,18,'Nova Riqueza'),(6252,18,'Nova Santa Barbara'),(6253,18,'Nova Santa Rosa'),(6254,18,'Nova Tebas'),(6255,18,'Nova Tirol'),(6256,18,'Nova Videira'),(6257,18,'Novo Horizonte'),(6258,18,'Novo Itacolomi'),(6259,18,'Novo Jardim'),(6260,18,'Novo Sarandi'),(6261,18,'Novo Sobradinho'),(6262,18,'Novo Tres Passos'),(6263,18,'Olaria'),(6264,18,'Olho Agudo'),(6265,18,'Olho D\'agua'),(6266,18,'Oroite'),(6267,18,'Ortigueira'),(6268,18,'Ourilandia'),(6269,18,'Ourizona'),(6270,18,'Ouro Verde do Oeste'),(6271,18,'Ouro Verde do Piquiri'),(6272,18,'Padre Ponciano'),(6273,18,'Paicandu'),(6274,18,'Paiol de Baixo'),(6275,18,'Paiol Queimado'),(6276,18,'Paiquere'),(6277,18,'Palmas'),(6278,18,'Palmeira'),(6279,18,'Palmeirinha'),(6280,18,'Palmira'),(6281,18,'Palmital'),(6282,18,'Palmital de Sao Silvestre'),(6283,18,'Palmitopolis'),(6284,18,'Palotina'),(6285,18,'Panema'),(6286,18,'Pangare'),(6287,18,'Papagaios Novos'),(6288,18,'Paraiso do Norte'),(6289,18,'Parana D\'oeste'),(6290,18,'Paranacity'),(6291,18,'Paranagi'),(6292,18,'Paranagua'),(6293,18,'Paranapoema'),(6294,18,'Paranavai'),(6295,18,'Passa Una'),(6296,18,'Passo da Ilha'),(6297,18,'Passo dos Pupos'),(6298,18,'Passo Fundo'),(6299,18,'Passo Liso'),(6300,18,'Pato Bragado'),(6301,18,'Pato Branco'),(6302,18,'Patos Velhos'),(6303,18,'Pau D\'alho Do Sul'),(6304,18,'Paula Freitas'),(6305,18,'Paulistania'),(6306,18,'Paulo Frontin'),(6307,18,'Peabiru'),(6308,18,'Pedra Branca do Araraquara'),(6309,18,'Pedras'),(6310,18,'Pedro Lustosa'),(6311,18,'Pelado'),(6312,18,'Perobal'),(6313,18,'Perola'),(6314,18,'Perola do Oeste'),(6315,18,'Perola Independente'),(6316,18,'Piassuguera'),(6317,18,'Pien'),(6318,18,'Pinare'),(6319,18,'Pinhais'),(6320,18,'Pinhal do Sao Bento'),(6321,18,'Pinhal Preto'),(6322,18,'Pinhalao'),(6323,18,'Pinhalzinho'),(6324,18,'Pinhao'),(6325,18,'Pinheiro'),(6326,18,'Piquirivai'),(6327,18,'Piracema'),(6328,18,'Pirai do Sul'),(6329,18,'Pirapo'),(6330,18,'Piraquara'),(6331,18,'Piriquitos'),(6332,18,'Pitanga'),(6333,18,'Pitangueiras'),(6334,18,'Pitangui'),(6335,18,'Planaltina do Parana'),(6336,18,'Planalto'),(6337,18,'Pocinho'),(6338,18,'Poema'),(6339,18,'Ponta do Pasto'),(6340,18,'Ponta Grossa'),(6341,18,'Pontal do Parana'),(6342,18,'Porecatu'),(6343,18,'Portao'),(6344,18,'Porteira Preta'),(6345,18,'Porto Amazonas'),(6346,18,'Porto Barreiro'),(6347,18,'Porto Belo'),(6348,18,'Porto Brasilio'),(6349,18,'Porto Camargo'),(6350,18,'Porto de Cima'),(6351,18,'Porto Meira'),(6352,18,'Porto Mendes'),(6353,18,'Porto Rico'),(6354,18,'Porto San Juan'),(6355,18,'Porto Santana'),(6356,18,'Porto Sao Carlos'),(6357,18,'Porto Sao Jose'),(6358,18,'Porto Vitoria'),(6359,18,'Prado Ferreira'),(6360,18,'Pranchita'),(6361,18,'Prata'),(6362,18,'Prata Um'),(6363,18,'Presidente Castelo Branco'),(6364,18,'Presidente Kennedy'),(6365,18,'Primeiro de Maio'),(6366,18,'Progresso'),(6367,18,'Prudentopolis'),(6368,18,'Pulinopolis'),(6369,18,'Quatigua'),(6370,18,'Quatro Barras'),(6371,18,'Quatro Pontes'),(6372,18,'Quebra Freio'),(6373,18,'Quedas do Iguacu'),(6374,18,'Queimados'),(6375,18,'Querencia do Norte'),(6376,18,'Quinta do Sol'),(6377,18,'Quinzopolis'),(6378,18,'Quitandinha'),(6379,18,'Ramilandia'),(6380,18,'Rancho Alegre'),(6381,18,'Rancho Alegre D\'oeste'),(6382,18,'Realeza'),(6383,18,'Reboucas'),(6384,18,'Regiao dos Valos'),(6385,18,'Reianopolis'),(6386,18,'Renascenca'),(6387,18,'Reserva'),(6388,18,'Reserva do Iguacu'),(6389,18,'Retiro'),(6390,18,'Retiro Grande'),(6391,18,'Ribeirao Bonito'),(6392,18,'Ribeirao Claro'),(6393,18,'Ribeirao do Pinhal'),(6394,18,'Ribeirao do Pinheiro'),(6395,18,'Rio Abaixo'),(6396,18,'Rio Azul'),(6397,18,'Rio Bom'),(6398,18,'Rio Bonito'),(6399,18,'Rio Bonito do Iguacu'),(6400,18,'Rio Branco do Ivai'),(6401,18,'Rio Branco do Sul'),(6402,18,'Rio Claro do Sul'),(6403,18,'Rio da Prata'),(6404,18,'Rio das Antas'),(6405,18,'Rio das Mortes'),(6406,18,'Rio das Pedras'),(6407,18,'Rio das Pombas'),(6408,18,'Rio do Mato'),(6409,18,'Rio do Salto'),(6410,18,'Rio Negro'),(6411,18,'Rio Novo'),(6412,18,'Rio Pinheiro'),(6413,18,'Rio Quatorze'),(6414,18,'Rio Saltinho'),(6415,18,'Rio Saudade'),(6416,18,'Rio Verde'),(6417,18,'Roberto Silveira'),(6418,18,'Roca Velha'),(6419,18,'Rolandia'),(6420,18,'Romeopolis'),(6421,18,'Roncador'),(6422,18,'Rondinha'),(6423,18,'Rondon'),(6424,18,'Rosario do Ivai'),(6425,18,'Sabaudia'),(6426,18,'Sagrada Familia'),(6427,18,'Salgado Filho'),(6428,18,'Salles de Oliveira'),(6429,18,'Saltinho do Oeste'),(6430,18,'Salto do Itarare'),(6431,18,'Salto do Lontra'),(6432,18,'Salto Portao'),(6433,18,'Samambaia'),(6434,18,'Santa Amelia'),(6435,18,'Santa Cecilia do Pavao'),(6436,18,'Santa Clara'),(6437,18,'Santa Cruz de Monte Castelo'),(6438,18,'Santa Eliza'),(6439,18,'Santa Esmeralda'),(6440,18,'Santa Fe'),(6441,18,'Santa Fe do Pirapo'),(6442,18,'Santa Helena'),(6443,18,'Santa Ines'),(6444,18,'Santa Isabel do Ivai'),(6445,18,'Santa Izabel do Oeste'),(6446,18,'Santa Lucia'),(6447,18,'Santa Lurdes'),(6448,18,'Santa Luzia da Alvorada'),(6449,18,'Santa Margarida'),(6450,18,'Santa Maria'),(6451,18,'Santa Maria do Oeste'),(6452,18,'Santa Maria do Rio do Peixe'),(6453,18,'Santa Mariana'),(6454,18,'Santa Monica'),(6455,18,'Santa Quiteria'),(6456,18,'Santa Rita'),(6457,18,'Santa Rita do Oeste'),(6458,18,'Santa Rosa'),(6459,18,'Santa Tereza do Oeste'),(6460,18,'Santa Terezinha de Itaipu'),(6461,18,'Santa Zelia'),(6462,18,'Santana'),(6463,18,'Santana do Itarare'),(6464,18,'Santo Antonio'),(6465,18,'Santo Antonio da Platina'),(6466,18,'Santo Antonio do Caiua'),(6467,18,'Santo Antonio do Iratim'),(6468,18,'Santo Antonio do Palmital'),(6469,18,'Santo Antonio do Paraiso'),(6470,18,'Santo Antonio do Sudoeste'),(6471,18,'Santo Inacio'),(6472,18,'Santo Rei'),(6473,18,'Sao Bento'),(6474,18,'Sao Braz'),(6475,18,'Sao Camilo'),(6476,18,'Sao Carlos do Ivai'),(6477,18,'Sao Cirilo'),(6478,18,'Sao Clemente'),(6479,18,'Sao Cristovao'),(6480,18,'Sao Domingos'),(6481,18,'Sao Francisco'),(6482,18,'Sao Francisco de Imbau'),(6483,18,'Sao Francisco de Sales'),(6484,18,'Sao Gabriel'),(6485,18,'Sao Gotardo'),(6486,18,'Sao Jeronimo da Serra'),(6487,18,'Sao Joao'),(6488,18,'Sao Joao D\'oeste'),(6489,18,'Sao Joao da Boa Vista'),(6490,18,'Sao Joao do Caiua'),(6491,18,'Sao Joao do Ivai'),(6492,18,'Sao Joao do Pinhal'),(6493,18,'Sao Joao do Triunfo'),(6494,18,'Sao Joaquim'),(6495,18,'Sao Joaquim do Pontal'),(6496,18,'Sao Jorge D\'oeste'),(6497,18,'Sao Jorge do Ivai'),(6498,18,'Sao Jorge do Patrocinio'),(6499,18,'Sao Jose'),(6500,18,'Sao Jose da Boa Vista'),(6501,18,'Sao Jose das Palmeiras'),(6502,18,'Sao Jose do Iguacu'),(6503,18,'Sao Jose do Itavo'),(6504,18,'Sao Jose do Ivai'),(6505,18,'Sao Jose dos Pinhais'),(6506,18,'Sao Judas Tadeu'),(6507,18,'Sao Leonardo'),(6508,18,'Sao Lourenco'),(6509,18,'Sao Luiz'),(6510,18,'Sao Luiz do Puruna'),(6511,18,'Sao Manoel do Parana'),(6512,18,'Sao Marcos'),(6513,18,'Sao Martinho'),(6514,18,'Sao Mateus do Sul'),(6515,18,'Sao Miguel'),(6516,18,'Sao Miguel do Cambui'),(6517,18,'Sao Miguel do Iguacu'),(6518,18,'Sao Paulo'),(6519,18,'Sao Pedro'),(6520,18,'Sao Pedro do Florido'),(6521,18,'Sao Pedro do Iguacu'),(6522,18,'Sao Pedro do Ivai'),(6523,18,'Sao Pedro do Parana'),(6524,18,'Sao Pedro Lopei'),(6525,18,'Sao Pio X'),(6526,18,'Sao Roque'),(6527,18,'Sao Roque do Pinhal'),(6528,18,'Sao Salvador'),(6529,18,'Sao Sebastiao'),(6530,18,'Sao Sebastiao da Amoreira'),(6531,18,'Sao Silvestre'),(6532,18,'Sao Tome'),(6533,18,'Sao Valentim'),(6534,18,'Sao Vicente'),(6535,18,'Sape'),(6536,18,'Sapopema'),(6537,18,'Sarandi'),(6538,18,'Saudade do Iguacu'),(6539,18,'Sede Alvorada'),(6540,18,'Sede Chaparral'),(6541,18,'Sede Nova Sant\'ana'),(6542,18,'Sede Progresso'),(6543,18,'Selva'),(6544,18,'Senges'),(6545,18,'Senhor Bom Jesus dos Gramados'),(6546,18,'Serra dos Dourados'),(6547,18,'Serra Negra'),(6548,18,'Serranopolis do Iguacu'),(6549,18,'Serraria Klas'),(6550,18,'Serrinha'),(6551,18,'Sertaneja'),(6552,18,'Sertanopolis'),(6553,18,'Sertaozinho'),(6554,18,'Sete Saltos de Cima'),(6555,18,'Silvolandia'),(6556,18,'Siqueira Belo'),(6557,18,'Siqueira Campos'),(6558,18,'Socavao'),(6559,18,'Socorro'),(6560,18,'Sulina'),(6561,18,'Sumare'),(6562,18,'Sussui'),(6563,18,'Sutis'),(6564,18,'Taipa'),(6565,18,'Tamarana'),(6566,18,'Tambarutaca'),(6567,18,'Tamboara'),(6568,18,'Tanque Grande'),(6569,18,'Tapejara'),(6570,18,'Tapira'),(6571,18,'Tapui'),(6572,18,'Taquara'),(6573,18,'Taquari dos Polacos'),(6574,18,'Taquari dos Russos'),(6575,18,'Taquaruna'),(6576,18,'Teixeira Soares'),(6577,18,'Telemaco Borba'),(6578,18,'Teolandia'),(6579,18,'Tereza Breda'),(6580,18,'Tereza Cristina'),(6581,18,'Terra Boa'),(6582,18,'Terra Nova'),(6583,18,'Terra Rica'),(6584,18,'Terra Roxa'),(6585,18,'Tibagi'),(6586,18,'Tijucas do Sul'),(6587,18,'Tijuco Preto'),(6588,18,'Timbu Velho'),(6589,18,'Tindiquera'),(6590,18,'Tiradentes'),(6591,18,'Toledo'),(6592,18,'Tomaz Coelho'),(6593,18,'Tomazina'),(6594,18,'Tranqueira'),(6595,18,'Tres Barras do Parana'),(6596,18,'Tres Bicos'),(6597,18,'Tres Bocas'),(6598,18,'Tres Capoes'),(6599,18,'Tres Corregos'),(6600,18,'Tres Lagoas'),(6601,18,'Tres Pinheiros'),(6602,18,'Tres Placas'),(6603,18,'Triangulo'),(6604,18,'Trindade'),(6605,18,'Triolandia'),(6606,18,'Tronco'),(6607,18,'Tunas do Parana'),(6608,18,'Tuneiras do Oeste'),(6609,18,'Tupassi'),(6610,18,'Tupinamba'),(6611,18,'Turvo'),(6612,18,'Ubaldino Taques'),(6613,18,'Ubauna'),(6614,18,'Ubirata'),(6615,18,'Umuarama'),(6616,18,'Uniao'),(6617,18,'Uniao da Vitoria'),(6618,18,'Uniao do Oeste'),(6619,18,'Uniflor'),(6620,18,'Urai'),(6621,18,'Usina'),(6622,18,'Uvaia'),(6623,18,'Valentins'),(6624,18,'Valerio'),(6625,18,'Vargeado'),(6626,18,'Vassoural'),(6627,18,'Ventania'),(6628,18,'Vera Cruz do Oeste'),(6629,18,'Vera Guarani'),(6630,18,'Vere'),(6631,18,'Vida Nova'),(6632,18,'Vidigal'),(6633,18,'Vila Alta'),(6634,18,'Vila Diniz'),(6635,18,'Vila dos Roldos'),(6636,18,'Vila Florida'),(6637,18,'Vila Gandhi'),(6638,18,'Vila Guay'),(6639,18,'Vila Nova'),(6640,18,'Vila Nova de Florenca'),(6641,18,'Vila Paraiso'),(6642,18,'Vila Reis'),(6643,18,'Vila Rica do Ivai'),(6644,18,'Vila Roberto Brzezinski'),(6645,18,'Vila Silva Jardim'),(6646,18,'Vila Velha'),(6647,18,'Virmond'),(6648,18,'Vista Alegre'),(6649,18,'Vista Bonita'),(6650,18,'Vitoria'),(6651,18,'Vitorino'),(6652,18,'Warta'),(6653,18,'Wenceslau Braz'),(6654,18,'Xambre'),(6655,18,'Xaxim'),(6656,18,'Yolanda'),(6657,19,'Abarracamento'),(6658,19,'Abraao'),(6659,19,'Afonso Arinos'),(6660,19,'Agulhas Negras'),(6661,19,'Amparo'),(6662,19,'Andrade Pinto'),(6663,19,'Angra dos Reis'),(6664,19,'Anta'),(6665,19,'Aperibe'),(6666,19,'Araruama'),(6667,19,'Areal'),(6668,19,'Armacao de Buzios'),(6669,19,'Arraial do Cabo'),(6670,19,'Arrozal'),(6671,19,'Avelar'),(6672,19,'Bacaxa'),(6673,19,'Baltazar'),(6674,19,'Banquete'),(6675,19,'Barao de Juparana'),(6676,19,'Barcelos'),(6677,19,'Barra Alegre'),(6678,19,'Barra de Macae'),(6679,19,'Barra de Sao Joao'),(6680,19,'Barra do Pirai'),(6681,19,'Barra Mansa'),(6682,19,'Barra Seca'),(6683,19,'Belford Roxo'),(6684,19,'Bemposta'),(6685,19,'Boa Esperanca'),(6686,19,'Boa Sorte'),(6687,19,'Boa Ventura'),(6688,19,'Bom Jardim'),(6689,19,'Bom Jesus do Itabapoana'),(6690,19,'Bom Jesus do Querendo'),(6691,19,'Cabo Frio'),(6692,19,'Cabucu'),(6693,19,'Cachoeiras de Macacu'),(6694,19,'Cachoeiros'),(6695,19,'Calheiros'),(6696,19,'Cambiasca'),(6697,19,'Cambuci'),(6698,19,'Campo do Coelho'),(6699,19,'Campos dos Goytacazes'),(6700,19,'Campos Elyseos'),(6701,19,'Cantagalo'),(6702,19,'Carabucu'),(6703,19,'Carapebus'),(6704,19,'Cardoso Moreira'),(6705,19,'Carmo'),(6706,19,'Cascatinha'),(6707,19,'Casimiro de Abreu'),(6708,19,'Cava'),(6709,19,'Coelho da Rocha'),(6710,19,'Colonia'),(6711,19,'Comendador Levy Gasparian'),(6712,19,'Comendador Venancio'),(6713,19,'Conceicao de Jacarei'),(6714,19,'Conceicao de Macabu'),(6715,19,'Conrado'),(6716,19,'Conselheiro Paulino'),(6717,19,'Conservatoria'),(6718,19,'Cordeiro'),(6719,19,'Coroa Grande'),(6720,19,'Correas'),(6721,19,'Corrego da Prata'),(6722,19,'Corrego do Ouro'),(6723,19,'Correntezas'),(6724,19,'Cunhambebe'),(6725,19,'Dorandia'),(6726,19,'Dores de Macabu'),(6727,19,'Doutor Elias'),(6728,19,'Doutor Loreti'),(6729,19,'Duas Barras'),(6730,19,'Duque de Caxias'),(6731,19,'Engenheiro Passos'),(6732,19,'Engenheiro Paulo de Frontin'),(6733,19,'Engenheiro Pedreira'),(6734,19,'Estrada Nova'),(6735,19,'Euclidelandia'),(6736,19,'Falcao'),(6737,19,'Floriano'),(6738,19,'Fumaca'),(6739,19,'Funil'),(6740,19,'Gavioes'),(6741,19,'Getulandia'),(6742,19,'Glicerio'),(6743,19,'Goitacazes'),(6744,19,'Governador Portela'),(6745,19,'Guapimirim'),(6746,19,'Guia de Pacobaiba'),(6747,19,'Ibitiguacu'),(6748,19,'Ibitioca'),(6749,19,'Ibituporanga'),(6750,19,'Iguaba Grande'),(6751,19,'Imbarie'),(6752,19,'Inconfidencia'),(6753,19,'Inhomirim'),(6754,19,'Inoa'),(6755,19,'Ipiabas'),(6756,19,'Ipiiba'),(6757,19,'Ipuca'),(6758,19,'Itabapoana'),(6759,19,'Itaborai'),(6760,19,'Itacurussa'),(6761,19,'Itaguai'),(6762,19,'Itaipava'),(6763,19,'Itaipu'),(6764,19,'Itajara'),(6765,19,'Italva'),(6766,19,'Itambi'),(6767,19,'Itaocara'),(6768,19,'Itaperuna'),(6769,19,'Itatiaia'),(6770,19,'Jacuecanga'),(6771,19,'Jaguarembe'),(6772,19,'Jamapara'),(6773,19,'Japeri'),(6774,19,'Japuiba'),(6775,19,'Laje do Muriae'),(6776,19,'Laranjais'),(6777,19,'Lidice'),(6778,19,'Lumiar'),(6779,19,'Macabuzinho'),(6780,19,'Macae'),(6781,19,'Macuco'),(6782,19,'Mage'),(6783,19,'Mambucaba'),(6784,19,'Mangaratiba'),(6785,19,'Maniva'),(6786,19,'Manoel Ribeiro'),(6787,19,'Manuel Duarte'),(6788,19,'Marangatu'),(6789,19,'Marica'),(6790,19,'Mendes'),(6791,19,'Mesquita'),(6792,19,'Miguel Pereira'),(6793,19,'Miracema'),(6794,19,'Monera'),(6795,19,'Monjolo'),(6796,19,'Monte Alegre'),(6797,19,'Monte Verde'),(6798,19,'Monumento'),(6799,19,'Morangaba'),(6800,19,'Morro do Coco'),(6801,19,'Morro Grande'),(6802,19,'Mussurepe'),(6803,19,'Natividade'),(6804,19,'Neves'),(6805,19,'Nhunguacu'),(6806,19,'Nilopolis'),(6807,19,'Niteroi'),(6808,19,'Nossa Senhora da Aparecida'),(6809,19,'Nossa Senhora da Penha'),(6810,19,'Nossa Senhora do Amparo'),(6811,19,'Nova Friburgo'),(6812,19,'Nova Iguacu'),(6813,19,'Olinda'),(6814,19,'Ourania'),(6815,19,'Papucaia'),(6816,19,'Paquequer Pequeno'),(6817,19,'Paracambi'),(6818,19,'Paraiba do Sul'),(6819,19,'Paraiso do Tobias'),(6820,19,'Paraoquena'),(6821,19,'Parapeuna'),(6822,19,'Parati'),(6823,19,'Parati Mirim'),(6824,19,'Passa Tres'),(6825,19,'Paty do Alferes'),(6826,19,'Pedra Selada'),(6827,19,'Pedro do Rio'),(6828,19,'Penedo'),(6829,19,'Pentagna'),(6830,19,'Petropolis'),(6831,19,'Piabeta'),(6832,19,'Piao'),(6833,19,'Pinheiral'),(6834,19,'Pipeiras'),(6835,19,'Pirai'),(6836,19,'Pirangai'),(6837,19,'Pirapetinga de Bom Jesus'),(6838,19,'Porciuncula'),(6839,19,'Portela'),(6840,19,'Porto das Caixas'),(6841,19,'Porto Real'),(6842,19,'Porto Velho do Cunha'),(6843,19,'Posse'),(6844,19,'Praia de Aracatiba'),(6845,19,'Pureza'),(6846,19,'Purilandia'),(6847,19,'Quarteis'),(6848,19,'Quatis'),(6849,19,'Queimados'),(6850,19,'Quissama'),(6851,19,'Raposo'),(6852,19,'Renascenca'),(6853,19,'Resende'),(6854,19,'Retiro do Muriae'),(6855,19,'Rialto'),(6856,19,'Ribeirao de Sao Joaquim'),(6857,19,'Rio Bonito'),(6858,19,'Rio Claro'),(6859,19,'Rio das Flores'),(6860,19,'Rio das Ostras'),(6861,19,'Rio de Janeiro'),(6862,19,'Riograndina'),(6863,19,'Rosal'),(6864,19,'Sacra Familia do Tingua'),(6865,19,'Salutaris'),(6866,19,'Sambaetiba'),(6867,19,'Sampaio Correia'),(6868,19,'Sana'),(6869,19,'Santa Clara'),(6870,19,'Santa Cruz'),(6871,19,'Santa Cruz da Serra'),(6872,19,'Santa Isabel'),(6873,19,'Santa Isabel do Rio Preto'),(6874,19,'Santa Maria'),(6875,19,'Santa Maria Madalena'),(6876,19,'Santa Rita da Floresta'),(6877,19,'Santanesia'),(6878,19,'Santo Aleixo'),(6879,19,'Santo Amaro de Campos'),(6880,19,'Santo Antonio de Padua'),(6881,19,'Santo Antonio do Imbe'),(6882,19,'Santo Eduardo'),(6883,19,'Sao Fidelis'),(6884,19,'Sao Francisco de Itabapoana'),(6885,19,'Sao Goncalo'),(6886,19,'Sao Joao da Barra'),(6887,19,'Sao Joao de Meriti'),(6888,19,'Sao Joao do Paraiso'),(6889,19,'Sao Joao Marcos'),(6890,19,'Sao Joaquim'),(6891,19,'Sao Jose de Uba'),(6892,19,'Sao Jose do Ribeirao'),(6893,19,'Sao Jose do Turvo'),(6894,19,'Sao Jose do Vale do Rio Preto'),(6895,19,'Sao Mateus'),(6896,19,'Sao Pedro da Aldeia'),(6897,19,'Sao Sebastiao de Campos'),(6898,19,'Sao Sebastiao do Alto'),(6899,19,'Sao Sebastiao do Paraiba'),(6900,19,'Sao Sebastiao dos Ferreiros'),(6901,19,'Sao Vicente de Paula'),(6902,19,'Sapucaia'),(6903,19,'Saquarema'),(6904,19,'Saracuruna'),(6905,19,'Sebastiao de Lacerda'),(6906,19,'Seropedica'),(6907,19,'Serrinha'),(6908,19,'Sete Pontes'),(6909,19,'Silva Jardim'),(6910,19,'Sodrelandia'),(6911,19,'Sossego'),(6912,19,'Subaio'),(6913,19,'Sumidouro'),(6914,19,'Surui'),(6915,19,'Taboas'),(6916,19,'Tamoios'),(6917,19,'Tangua'),(6918,19,'Tapera'),(6919,19,'Tarituba'),(6920,19,'Teresopolis'),(6921,19,'Tocos'),(6922,19,'Trajano de Morais'),(6923,19,'Travessao'),(6924,19,'Tres Irmaos'),(6925,19,'Tres Rios'),(6926,19,'Triunfo'),(6927,19,'Valao do Barro'),(6928,19,'Valenca'),(6929,19,'Vargem Alegre'),(6930,19,'Varre-sai'),(6931,19,'Vassouras'),(6932,19,'Venda das Flores'),(6933,19,'Venda das Pedras'),(6934,19,'Vila da Grama'),(6935,19,'Vila do Frade'),(6936,19,'Vila Muriqui'),(6937,19,'Vila Nova de Campos'),(6938,19,'Visconde de Imbe'),(6939,19,'Volta Redonda'),(6940,19,'Werneck'),(6941,19,'Xerem'),(6942,20,'Acari'),(6943,20,'Acu'),(6944,20,'Afonso Bezerra'),(6945,20,'Agua Nova'),(6946,20,'Alexandria'),(6947,20,'Almino Afonso'),(6948,20,'Alto do Rodrigues'),(6949,20,'Angicos'),(6950,20,'Antonio Martins'),(6951,20,'Apodi'),(6952,20,'Areia Branca'),(6953,20,'Ares'),(6954,20,'Baia Formosa'),(6955,20,'Barao de Serra Branca'),(6956,20,'Barauna'),(6957,20,'Barcelona'),(6958,20,'Belo Horizonte'),(6959,20,'Bento Fernandes'),(6960,20,'Boa Saude'),(6961,20,'Bodo'),(6962,20,'Bom Jesus'),(6963,20,'Brejinho'),(6964,20,'Caicara do Norte'),(6965,20,'Caicara do Rio do Vento'),(6966,20,'Caico'),(6967,20,'Campo Grande'),(6968,20,'Campo Redondo'),(6969,20,'Canguaretama'),(6970,20,'Caraubas'),(6971,20,'Carnauba dos Dantas'),(6972,20,'Carnaubais'),(6973,20,'Ceara-mirim'),(6974,20,'Cerro Cora'),(6975,20,'Coronel Ezequiel'),(6976,20,'Coronel Joao Pessoa'),(6977,20,'Corrego de Sao Mateus'),(6978,20,'Cruzeta'),(6979,20,'Currais Novos'),(6980,20,'Doutor Severiano'),(6981,20,'Encanto'),(6982,20,'Equador'),(6983,20,'Espirito Santo'),(6984,20,'Espirito Santo do Oeste'),(6985,20,'Extremoz'),(6986,20,'Felipe Guerra'),(6987,20,'Fernando Pedroza'),(6988,20,'Firmamento'),(6989,20,'Florania'),(6990,20,'Francisco Dantas'),(6991,20,'Frutuoso Gomes'),(6992,20,'Galinhos'),(6993,20,'Gameleira'),(6994,20,'Goianinha'),(6995,20,'Governador Dix-sept Rosado'),(6996,20,'Grossos'),(6997,20,'Guamare'),(6998,20,'Ielmo Marinho'),(6999,20,'Igreja Nova'),(7000,20,'Ipanguacu'),(7001,20,'Ipiranga'),(7002,20,'Ipueira'),(7003,20,'Itaja'),(7004,20,'Itau'),(7005,20,'Jacana'),(7006,20,'Jandaira'),(7007,20,'Janduis'),(7008,20,'Japi'),(7009,20,'Jardim de Angicos'),(7010,20,'Jardim de Piranhas'),(7011,20,'Jardim do Serido'),(7012,20,'Joao Camara'),(7013,20,'Joao Dias'),(7014,20,'Jose da Penha'),(7015,20,'Jucurutu'),(7016,20,'Jundia de Cima'),(7017,20,'Lagoa D\'anta'),(7018,20,'Lagoa de Pedras'),(7019,20,'Lagoa de Velhos'),(7020,20,'Lagoa Nova'),(7021,20,'Lagoa Salgada'),(7022,20,'Lajes'),(7023,20,'Lajes Pintadas'),(7024,20,'Lucrecia'),(7025,20,'Luis Gomes'),(7026,20,'Macaiba'),(7027,20,'Macau'),(7028,20,'Major Felipe'),(7029,20,'Major Sales'),(7030,20,'Marcelino Vieira'),(7031,20,'Martins'),(7032,20,'Mata de Sao Braz'),(7033,20,'Maxaranguape'),(7034,20,'Messias Targino'),(7035,20,'Montanhas'),(7036,20,'Monte Alegre'),(7037,20,'Monte das Gameleiras'),(7038,20,'Mossoro'),(7039,20,'Natal'),(7040,20,'Nisia Floresta'),(7041,20,'Nova Cruz'),(7042,20,'Olho-d\'agua Do Borges'),(7043,20,'Ouro Branco'),(7044,20,'Parana'),(7045,20,'Parazinho'),(7046,20,'Parelhas'),(7047,20,'Parnamirim'),(7048,20,'Passa E Fica'),(7049,20,'Passagem'),(7050,20,'Patu'),(7051,20,'Pau dos Ferros'),(7052,20,'Pedra Grande'),(7053,20,'Pedra Preta'),(7054,20,'Pedro Avelino'),(7055,20,'Pedro Velho'),(7056,20,'Pendencias'),(7057,20,'Piloes'),(7058,20,'Poco Branco'),(7059,20,'Portalegre'),(7060,20,'Porto do Mangue'),(7061,20,'Pureza'),(7062,20,'Rafael Fernandes'),(7063,20,'Rafael Godeiro'),(7064,20,'Riacho da Cruz'),(7065,20,'Riacho de Santana'),(7066,20,'Riachuelo'),(7067,20,'Rio do Fogo'),(7068,20,'Rodolfo Fernandes'),(7069,20,'Rosario'),(7070,20,'Ruy Barbosa'),(7071,20,'Salva Vida'),(7072,20,'Santa Cruz'),(7073,20,'Santa Fe'),(7074,20,'Santa Maria'),(7075,20,'Santa Teresa'),(7076,20,'Santana do Matos'),(7077,20,'Santana do Serido'),(7078,20,'Santo Antonio'),(7079,20,'Santo Antonio do Potengi'),(7080,20,'Sao Bento do Norte'),(7081,20,'Sao Bento do Trairi'),(7082,20,'Sao Bernardo'),(7083,20,'Sao Fernando'),(7084,20,'Sao Francisco do Oeste'),(7085,20,'Sao Geraldo'),(7086,20,'Sao Goncalo do Amarante'),(7087,20,'Sao Joao do Sabugi'),(7088,20,'Sao Jose da Passagem'),(7089,20,'Sao Jose de Mipibu'),(7090,20,'Sao Jose do Campestre'),(7091,20,'Sao Jose do Serido'),(7092,20,'Sao Miguel'),(7093,20,'Sao Miguel de Touros'),(7094,20,'Sao Paulo do Potengi'),(7095,20,'Sao Pedro'),(7096,20,'Sao Rafael'),(7097,20,'Sao Tome'),(7098,20,'Sao Vicente'),(7099,20,'Senador Eloi de Souza'),(7100,20,'Senador Georgino Avelino'),(7101,20,'Serra Caiada'),(7102,20,'Serra da Tapuia'),(7103,20,'Serra de Sao Bento'),(7104,20,'Serra do Mel'),(7105,20,'Serra Negra do Norte'),(7106,20,'Serrinha'),(7107,20,'Serrinha dos Pintos'),(7108,20,'Severiano Melo'),(7109,20,'Sitio Novo'),(7110,20,'Taboleiro Grande'),(7111,20,'Taipu'),(7112,20,'Tangara'),(7113,20,'Tenente Ananias'),(7114,20,'Tenente Laurentino Cruz'),(7115,20,'Tibau'),(7116,20,'Tibau do Sul'),(7117,20,'Timbauba dos Batistas'),(7118,20,'Touros'),(7119,20,'Trairi'),(7120,20,'Triunfo Potiguar'),(7121,20,'Umarizal'),(7122,20,'Upanema'),(7123,20,'Varzea'),(7124,20,'Venha-ver'),(7125,20,'Vera Cruz'),(7126,20,'Vicosa'),(7127,20,'Vila Flor'),(7128,21,'Abuna'),(7129,21,'Alta Alegre dos Parecis'),(7130,21,'Alta Floresta do Oeste'),(7131,21,'Alto Paraiso'),(7132,21,'Alvorada do Oeste'),(7133,21,'Ariquemes'),(7134,21,'Buritis'),(7135,21,'Cabixi'),(7136,21,'Cacaulandia'),(7137,21,'Cacoal'),(7138,21,'Calama'),(7139,21,'Campo Novo de Rondonia'),(7140,21,'Candeias do Jamari'),(7141,21,'Castanheiras'),(7142,21,'Cerejeiras'),(7143,21,'Chupinguaia'),(7144,21,'Colorado do Oeste'),(7145,21,'Corumbiara'),(7146,21,'Costa Marques'),(7147,21,'Cujubim'),(7148,21,'Espigao D\'oeste'),(7149,21,'Governador Jorge Teixeira'),(7150,21,'Guajara-mirim'),(7151,21,'Jaci Parana'),(7152,21,'Jamari'),(7153,21,'Jaru'),(7154,21,'Ji-parana'),(7155,21,'Machadinho D\'oeste'),(7156,21,'Marco Rondon'),(7157,21,'Ministro Andreazza'),(7158,21,'Mirante da Serra'),(7159,21,'Monte Negro'),(7160,21,'Nova Brasilandia D\'oeste'),(7161,21,'Nova Mamore'),(7162,21,'Nova Uniao'),(7163,21,'Nova Vida'),(7164,21,'Novo Horizonte do Oeste'),(7165,21,'Ouro Preto do Oeste'),(7166,21,'Parecis'),(7167,21,'Pedras Negras'),(7168,21,'Pimenta Bueno'),(7169,21,'Pimenteiras do Oeste'),(7170,21,'Porto Velho'),(7171,21,'Presidente Medici'),(7172,21,'Primavera de Rondonia'),(7173,21,'Principe da Beira'),(7174,21,'Rio Crespo'),(7175,21,'Riozinho'),(7176,21,'Rolim de Moura'),(7177,21,'Santa Luzia do Oeste'),(7178,21,'Sao Felipe D\'oeste'),(7179,21,'Sao Francisco do Guapore'),(7180,21,'Sao Miguel do Guapore'),(7181,21,'Seringueiras'),(7182,21,'Tabajara'),(7183,21,'Teixeiropolis'),(7184,21,'Theobroma'),(7185,21,'Urupa'),(7186,21,'Vale do Anari'),(7187,21,'Vale do Paraiso'),(7188,21,'Vila Extrema'),(7189,21,'Vilhena'),(7190,21,'Vista Alegre do Abuna'),(7191,22,'Alto Alegre'),(7192,22,'Amajari'),(7193,22,'Boa Vista'),(7194,22,'Bonfim'),(7195,22,'Canta'),(7196,22,'Caracarai'),(7197,22,'Caroebe'),(7198,22,'Iracema'),(7199,22,'Mucajai'),(7200,22,'Normandia'),(7201,22,'Pacaraima'),(7202,22,'Rorainopolis'),(7203,22,'Sao Joao da Baliza'),(7204,22,'Sao Luiz'),(7205,22,'Uiramuta'),(7206,23,'Acegua'),(7207,23,'Afonso Rodrigues'),(7208,23,'Agua Santa'),(7209,23,'Aguas Claras'),(7210,23,'Agudo'),(7211,23,'Ajuricaba'),(7212,23,'Albardao'),(7213,23,'Alecrim'),(7214,23,'Alegrete'),(7215,23,'Alegria'),(7216,23,'Alfredo Brenner'),(7217,23,'Almirante Tamandare'),(7218,23,'Alpestre'),(7219,23,'Alto Alegre'),(7220,23,'Alto da Uniao'),(7221,23,'Alto Feliz'),(7222,23,'Alto Paredao'),(7223,23,'Alto Recreio'),(7224,23,'Alto Uruguai'),(7225,23,'Alvorada'),(7226,23,'Amaral Ferrador'),(7227,23,'Ametista do Sul'),(7228,23,'Andre da Rocha'),(7229,23,'Anta Gorda'),(7230,23,'Antonio Kerpel'),(7231,23,'Antonio Prado'),(7232,23,'Arambare'),(7233,23,'Ararica'),(7234,23,'Aratiba'),(7235,23,'Arco Verde'),(7236,23,'Arco-iris'),(7237,23,'Arroio Canoas'),(7238,23,'Arroio do Meio'),(7239,23,'Arroio do Padre'),(7240,23,'Arroio do Sal'),(7241,23,'Arroio do So'),(7242,23,'Arroio do Tigre'),(7243,23,'Arroio dos Ratos'),(7244,23,'Arroio Grande'),(7245,23,'Arvore So'),(7246,23,'Arvorezinha'),(7247,23,'Atafona'),(7248,23,'Atiacu'),(7249,23,'Augusto Pestana'),(7250,23,'Aurea'),(7251,23,'Avelino Paranhos'),(7252,23,'Azevedo Sodre'),(7253,23,'Bacupari'),(7254,23,'Bage'),(7255,23,'Baliza'),(7256,23,'Balneario Pinhal'),(7257,23,'Banhado do Colegio'),(7258,23,'Barao'),(7259,23,'Barao de Cotegipe'),(7260,23,'Barao do Triunfo'),(7261,23,'Barra do Guarita'),(7262,23,'Barra do Ouro'),(7263,23,'Barra do Quarai'),(7264,23,'Barra do Ribeiro'),(7265,23,'Barra do Rio Azul'),(7266,23,'Barra Funda'),(7267,23,'Barracao'),(7268,23,'Barreirinho'),(7269,23,'Barreiro'),(7270,23,'Barro Preto'),(7271,23,'Barro Vermelho'),(7272,23,'Barros Cassal'),(7273,23,'Basilio'),(7274,23,'Bela Vista'),(7275,23,'Beluno'),(7276,23,'Benjamin Constant do Sul'),(7277,23,'Bento Goncalves'),(7278,23,'Bexiga'),(7279,23,'Boa Esperanca'),(7280,23,'Boa Vista'),(7281,23,'Boa Vista das Missoes'),(7282,23,'Boa Vista do Burica'),(7283,23,'Boa Vista do Cadeado'),(7284,23,'Boa Vista do Incra'),(7285,23,'Boa Vista do Sul'),(7286,23,'Boca do Monte'),(7287,23,'Boi Preto'),(7288,23,'Bojuru'),(7289,23,'Bom Jardim'),(7290,23,'Bom Jesus'),(7291,23,'Bom Principio'),(7292,23,'Bom Progresso'),(7293,23,'Bom Retiro'),(7294,23,'Bom Retiro do Guaiba'),(7295,23,'Bom Retiro do Sul'),(7296,23,'Bonito'),(7297,23,'Boqueirao'),(7298,23,'Boqueirao do Leao'),(7299,23,'Borore'),(7300,23,'Bossoroca'),(7301,23,'Botucarai'),(7302,23,'Braga'),(7303,23,'Brochier'),(7304,23,'Buriti'),(7305,23,'Butia'),(7306,23,'Butias'),(7307,23,'Cacapava do Sul'),(7308,23,'Cacequi'),(7309,23,'Cachoeira do Sul'),(7310,23,'Cachoeirinha'),(7311,23,'Cacique Doble'),(7312,23,'Cadorna'),(7313,23,'Caibate'),(7314,23,'Caicara'),(7315,23,'Camaqua'),(7316,23,'Camargo'),(7317,23,'Cambara do Sul'),(7318,23,'Camobi'),(7319,23,'Campestre Baixo'),(7320,23,'Campestre da Serra'),(7321,23,'Campina das Missoes'),(7322,23,'Campina Redonda'),(7323,23,'Campinas'),(7324,23,'Campinas do Sul'),(7325,23,'Campo Bom'),(7326,23,'Campo Branco'),(7327,23,'Campo do Meio'),(7328,23,'Campo Novo'),(7329,23,'Campo Santo'),(7330,23,'Campo Seco'),(7331,23,'Campo Vicente'),(7332,23,'Campos Borges'),(7333,23,'Candelaria'),(7334,23,'Candido Freire'),(7335,23,'Candido Godoi'),(7336,23,'Candiota'),(7337,23,'Canela'),(7338,23,'Cangucu'),(7339,23,'Canhembora'),(7340,23,'Canoas'),(7341,23,'Canudos'),(7342,23,'Capane'),(7343,23,'Capao Bonito'),(7344,23,'Capao Comprido'),(7345,23,'Capao da Canoa'),(7346,23,'Capao da Porteira'),(7347,23,'Capao do Cedro'),(7348,23,'Capao do Cipo'),(7349,23,'Capao do Leao'),(7350,23,'Capela de Santana'),(7351,23,'Capela Velha'),(7352,23,'Capinzal'),(7353,23,'Capitao'),(7354,23,'Capivari do Sul'),(7355,23,'Capivarita'),(7356,23,'Capo-ere'),(7357,23,'Capoeira Grande'),(7358,23,'Caraa'),(7359,23,'Caraja Seival'),(7360,23,'Carazinho'),(7361,23,'Carlos Barbosa'),(7362,23,'Carlos Gomes'),(7363,23,'Carovi'),(7364,23,'Casca'),(7365,23,'Cascata'),(7366,23,'Caseiros'),(7367,23,'Castelinho'),(7368,23,'Catuipe'),(7369,23,'Cavajureta'),(7370,23,'Cavera'),(7371,23,'Caxias do Sul'),(7372,23,'Cazuza Ferreira'),(7373,23,'Cedro Marcado'),(7374,23,'Centenario'),(7375,23,'Centro Linha Brasil'),(7376,23,'Cerrito'),(7377,23,'Cerrito Alegre'),(7378,23,'Cerrito do Ouro Ou Vila do Cerrito'),(7379,23,'Cerro Alto'),(7380,23,'Cerro Branco'),(7381,23,'Cerro Claro'),(7382,23,'Cerro do Martins'),(7383,23,'Cerro do Roque'),(7384,23,'Cerro Grande'),(7385,23,'Cerro Grande do Sul'),(7386,23,'Cerro Largo'),(7387,23,'Chapada'),(7388,23,'Charqueadas'),(7389,23,'Charrua'),(7390,23,'Chiapetta'),(7391,23,'Chicoloma'),(7392,23,'Chimarrao'),(7393,23,'Chorao'),(7394,23,'Chui'),(7395,23,'Chuvisca'),(7396,23,'Cidreira'),(7397,23,'Cinquentenario'),(7398,23,'Ciriaco'),(7399,23,'Clara'),(7400,23,'Clemente Argolo'),(7401,23,'Coimbra'),(7402,23,'Colinas'),(7403,23,'Colonia das Almas'),(7404,23,'Colonia Medeiros'),(7405,23,'Colonia Municipal'),(7406,23,'Colonia Nova'),(7407,23,'Colonia Sao Joao'),(7408,23,'Colonia Z-null'),(7409,23,'Coloninha'),(7410,23,'Colorado'),(7411,23,'Comandai'),(7412,23,'Condor'),(7413,23,'Consolata'),(7414,23,'Constantina'),(7415,23,'Coqueiro Baixo'),(7416,23,'Coqueiros do Sul'),(7417,23,'Cordilheira'),(7418,23,'Coroados'),(7419,23,'Coronel Barros'),(7420,23,'Coronel Bicaco'),(7421,23,'Coronel Finzito'),(7422,23,'Coronel Pilar'),(7423,23,'Coronel Teixeira'),(7424,23,'Cortado'),(7425,23,'Costa da Cadeia'),(7426,23,'Costao'),(7427,23,'Cotipora'),(7428,23,'Coxilha'),(7429,23,'Coxilha Grande'),(7430,23,'Cr-null'),(7431,23,'Crissiumal'),(7432,23,'Cristal'),(7433,23,'Cristal do Sul'),(7434,23,'Criuva'),(7435,23,'Cruz Alta'),(7436,23,'Cruz Altense'),(7437,23,'Cruzeiro'),(7438,23,'Cruzeiro do Sul'),(7439,23,'Curral Alto'),(7440,23,'Curumim'),(7441,23,'Daltro Filho'),(7442,23,'Dario Lassance'),(7443,23,'David Canabarro'),(7444,23,'Delfina'),(7445,23,'Deodoro'),(7446,23,'Deposito'),(7447,23,'Derrubadas'),(7448,23,'Dezesseis de Novembro'),(7449,23,'Dilermando de Aguiar'),(7450,23,'Divino'),(7451,23,'Dois Irmaos'),(7452,23,'Dois Irmaos das Missoes'),(7453,23,'Dois Lajeados'),(7454,23,'Dom Diogo'),(7455,23,'Dom Feliciano'),(7456,23,'Dom Pedrito'),(7457,23,'Dom Pedro de Alcantara'),(7458,23,'Dona Francisca'),(7459,23,'Dona Otilia'),(7460,23,'Dourado'),(7461,23,'Doutor Bozano'),(7462,23,'Doutor Edgardo Pereira Velho'),(7463,23,'Doutor Mauricio Cardoso'),(7464,23,'Doutor Ricardo'),(7465,23,'Eldorado do Sul'),(7466,23,'Eletra'),(7467,23,'Encantado'),(7468,23,'Encruzilhada'),(7469,23,'Encruzilhada do Sul'),(7470,23,'Engenho Velho'),(7471,23,'Entre Rios do Sul'),(7472,23,'Entre-ijuis'),(7473,23,'Entrepelado'),(7474,23,'Erebango'),(7475,23,'Erechim'),(7476,23,'Ernestina'),(7477,23,'Ernesto Alves'),(7478,23,'Erval Grande'),(7479,23,'Erval Seco'),(7480,23,'Erveiras'),(7481,23,'Esmeralda'),(7482,23,'Esperanca do Sul'),(7483,23,'Espigao'),(7484,23,'Espigao Alto'),(7485,23,'Espinilho Grande'),(7486,23,'Espirito Santo'),(7487,23,'Espumoso'),(7488,23,'Esquina Araujo'),(7489,23,'Esquina Bom Sucesso'),(7490,23,'Esquina Gaucha'),(7491,23,'Esquina Ipiranga'),(7492,23,'Esquina Piratini'),(7493,23,'Estacao'),(7494,23,'Estancia Grande'),(7495,23,'Estancia Velha'),(7496,23,'Esteio'),(7497,23,'Esteira'),(7498,23,'Estreito'),(7499,23,'Estrela'),(7500,23,'Estrela Velha'),(7501,23,'Eugenio de Castro'),(7502,23,'Evangelista'),(7503,23,'Fagundes Varela'),(7504,23,'Fao'),(7505,23,'Faria Lemos'),(7506,23,'Farinhas'),(7507,23,'Farrapos'),(7508,23,'Farroupilha'),(7509,23,'Faxinal'),(7510,23,'Faxinal do Soturno'),(7511,23,'Faxinalzinho'),(7512,23,'Fazenda Fialho'),(7513,23,'Fazenda Souza'),(7514,23,'Fazenda Vilanova'),(7515,23,'Feliz'),(7516,23,'Ferreira'),(7517,23,'Flores da Cunha'),(7518,23,'Floresta'),(7519,23,'Floriano Peixoto'),(7520,23,'Florida'),(7521,23,'Fontoura Xavier'),(7522,23,'Formigueiro'),(7523,23,'Formosa'),(7524,23,'Forninho'),(7525,23,'Forquetinha'),(7526,23,'Fortaleza dos Valos'),(7527,23,'Frederico Westphalen'),(7528,23,'Frei Sebastiao'),(7529,23,'Freire'),(7530,23,'Garibaldi'),(7531,23,'Garibaldina'),(7532,23,'Garruchos'),(7533,23,'Gaurama'),(7534,23,'General Camara'),(7535,23,'Gentil'),(7536,23,'Getulio Vargas'),(7537,23,'Girua'),(7538,23,'Gloria'),(7539,23,'Glorinha'),(7540,23,'Goio-en'),(7541,23,'Gramado'),(7542,23,'Gramado dos Loureiros'),(7543,23,'Gramado Sao Pedro'),(7544,23,'Gramado Xavier'),(7545,23,'Gravatai'),(7546,23,'Guabiju'),(7547,23,'Guaiba'),(7548,23,'Guajuviras'),(7549,23,'Guapore'),(7550,23,'Guarani das Missoes'),(7551,23,'Guassupi'),(7552,23,'Harmonia'),(7553,23,'Herval'),(7554,23,'Herveiras'),(7555,23,'Hidraulica'),(7556,23,'Horizontina'),(7557,23,'Hulha Negra'),(7558,23,'Humaita'),(7559,23,'Ibarama'),(7560,23,'Ibare'),(7561,23,'Ibiaca'),(7562,23,'Ibiraiaras'),(7563,23,'Ibirapuita'),(7564,23,'Ibiruba'),(7565,23,'Igrejinha'),(7566,23,'Ijucapirama'),(7567,23,'Ijui'),(7568,23,'Ilha dos Marinheiros'),(7569,23,'Ilopolis'),(7570,23,'Imbe'),(7571,23,'Imigrante'),(7572,23,'Independencia'),(7573,23,'Inhacora'),(7574,23,'Ipe'),(7575,23,'Ipiranga'),(7576,23,'Ipiranga do Sul'),(7577,23,'Ipuacu'),(7578,23,'Irai'),(7579,23,'Irui'),(7580,23,'Itaara'),(7581,23,'Itacolomi'),(7582,23,'Itacurubi'),(7583,23,'Itai'),(7584,23,'Itaimbezinho'),(7585,23,'Itao'),(7586,23,'Itapua'),(7587,23,'Itapuca'),(7588,23,'Itaqui'),(7589,23,'Itati'),(7590,23,'Itatiba do Sul'),(7591,23,'Itauba'),(7592,23,'Ituim'),(7593,23,'Ivai'),(7594,23,'Ivora'),(7595,23,'Ivoti'),(7596,23,'Jaboticaba'),(7597,23,'Jacuizinho'),(7598,23,'Jacutinga'),(7599,23,'Jaguarao'),(7600,23,'Jaguarete'),(7601,23,'Jaguari'),(7602,23,'Jansen'),(7603,23,'Jaquirana'),(7604,23,'Jari'),(7605,23,'Jazidas Ou Capela Sao Vicente'),(7606,23,'Joao Arregui'),(7607,23,'Joao Rodrigues'),(7608,23,'Joca Tavares'),(7609,23,'Joia'),(7610,23,'Jose Otavio'),(7611,23,'Jua'),(7612,23,'Julio de Castilhos'),(7613,23,'Lagoa Bonita'),(7614,23,'Lagoa dos Tres Cantos'),(7615,23,'Lagoa Vermelha'),(7616,23,'Lagoao'),(7617,23,'Lajeado'),(7618,23,'Lajeado Bonito'),(7619,23,'Lajeado Cerne'),(7620,23,'Lajeado do Bugre'),(7621,23,'Lajeado Grande'),(7622,23,'Lara'),(7623,23,'Laranjeira'),(7624,23,'Lava-pes'),(7625,23,'Lavras do Sul'),(7626,23,'Leonel Rocha'),(7627,23,'Liberato Salzano'),(7628,23,'Lindolfo Collor'),(7629,23,'Linha Comprida'),(7630,23,'Linha Nova'),(7631,23,'Linha Vitoria'),(7632,23,'Loreto'),(7633,23,'Macambara'),(7634,23,'Machadinho'),(7635,23,'Magisterio'),(7636,23,'Mampituba'),(7637,23,'Manchinha'),(7638,23,'Mangueiras'),(7639,23,'Manoel Viana'),(7640,23,'Maquine'),(7641,23,'Marata'),(7642,23,'Marau'),(7643,23,'Marcelino Ramos'),(7644,23,'Marcorama'),(7645,23,'Mariana Pimentel'),(7646,23,'Mariano Moro'),(7647,23,'Mariante'),(7648,23,'Mariapolis'),(7649,23,'Marques de Souza'),(7650,23,'Mata'),(7651,23,'Matarazzo'),(7652,23,'Mato Castelhano'),(7653,23,'Mato Grande'),(7654,23,'Mato Leitao'),(7655,23,'Mato Queimado'),(7656,23,'Maua'),(7657,23,'Maximiliano de Almeida'),(7658,23,'Medianeira'),(7659,23,'Minas do Leao'),(7660,23,'Miraguai'),(7661,23,'Miraguaia'),(7662,23,'Mirim'),(7663,23,'Montauri'),(7664,23,'Monte Alegre'),(7665,23,'Monte Alegre dos Campos'),(7666,23,'Monte Alverne'),(7667,23,'Monte Belo do Sul'),(7668,23,'Monte Bonito'),(7669,23,'Montenegro'),(7670,23,'Mormaco'),(7671,23,'Morrinhos'),(7672,23,'Morrinhos do Sul'),(7673,23,'Morro Alto'),(7674,23,'Morro Azul'),(7675,23,'Morro Redondo'),(7676,23,'Morro Reuter'),(7677,23,'Morungava'),(7678,23,'Mostardas'),(7679,23,'Mucum'),(7680,23,'Muitos Capoes'),(7681,23,'Muliterno'),(7682,23,'Nao-me-toque'),(7683,23,'Nazare'),(7684,23,'Nicolau Vergueiro'),(7685,23,'Nonoai'),(7686,23,'Nossa Senhora Aparecida'),(7687,23,'Nossa Senhora da Conceicao'),(7688,23,'Nova Alvorada'),(7689,23,'Nova Araca'),(7690,23,'Nova Bassano'),(7691,23,'Nova Boa Vista'),(7692,23,'Nova Brescia'),(7693,23,'Nova Candelaria'),(7694,23,'Nova Esperanca do Sul'),(7695,23,'Nova Hartz'),(7696,23,'Nova Milano'),(7697,23,'Nova Padua'),(7698,23,'Nova Palma'),(7699,23,'Nova Petropolis'),(7700,23,'Nova Prata'),(7701,23,'Nova Ramada'),(7702,23,'Nova Roma do Sul'),(7703,23,'Nova Santa Rita'),(7704,23,'Nova Sardenha'),(7705,23,'Novo Barreiro'),(7706,23,'Novo Cabrais'),(7707,23,'Novo Hamburgo'),(7708,23,'Novo Horizonte'),(7709,23,'Novo Machado'),(7710,23,'Novo Planalto'),(7711,23,'Novo Tiradentes'),(7712,23,'Oliva'),(7713,23,'Oralina'),(7714,23,'Osorio'),(7715,23,'Osvaldo Cruz'),(7716,23,'Osvaldo Kroeff'),(7717,23,'Otavio Rocha'),(7718,23,'Pacheca'),(7719,23,'Padilha'),(7720,23,'Padre Gonzales'),(7721,23,'Paim Filho'),(7722,23,'Palmares do Sul'),(7723,23,'Palmas'),(7724,23,'Palmeira das Missoes'),(7725,23,'Palmitinho'),(7726,23,'Pampeiro'),(7727,23,'Panambi'),(7728,23,'Pantano Grande'),(7729,23,'Parai'),(7730,23,'Paraiso do Sul'),(7731,23,'Pareci Novo'),(7732,23,'Parobe'),(7733,23,'Passa Sete'),(7734,23,'Passinhos'),(7735,23,'Passo Burmann'),(7736,23,'Passo da Areia'),(7737,23,'Passo da Caveira'),(7738,23,'Passo das Pedras'),(7739,23,'Passo do Adao'),(7740,23,'Passo do Sabao'),(7741,23,'Passo do Sobrado'),(7742,23,'Passo Fundo'),(7743,23,'Passo Novo'),(7744,23,'Passo Raso'),(7745,23,'Paulo Bento'),(7746,23,'Pavao'),(7747,23,'Paverama'),(7748,23,'Pedras Altas'),(7749,23,'Pedreiras'),(7750,23,'Pedro Garcia'),(7751,23,'Pedro Osorio'),(7752,23,'Pedro Paiva'),(7753,23,'Pejucara'),(7754,23,'Pelotas'),(7755,23,'Picada Cafe'),(7756,23,'Pinhal'),(7757,23,'Pinhal Alto'),(7758,23,'Pinhal da Serra'),(7759,23,'Pinhal Grande'),(7760,23,'Pinhalzinho'),(7761,23,'Pinheirinho do Vale'),(7762,23,'Pinheiro Machado'),(7763,23,'Pinheiro Marcado'),(7764,23,'Pinto Bandeira'),(7765,23,'Pirai'),(7766,23,'Pirapo'),(7767,23,'Piratini'),(7768,23,'Pitanga'),(7769,23,'Planalto'),(7770,23,'Plano Alto'),(7771,23,'Poco das Antas'),(7772,23,'Poligono do Erval'),(7773,23,'Polo Petroquimico de Triunfo'),(7774,23,'Pontao'),(7775,23,'Ponte Preta'),(7776,23,'Portao'),(7777,23,'Porto Alegre'),(7778,23,'Porto Batista'),(7779,23,'Porto Lucena'),(7780,23,'Porto Maua'),(7781,23,'Porto Vera Cruz'),(7782,23,'Porto Xavier'),(7783,23,'Pouso Novo'),(7784,23,'Povo Novo'),(7785,23,'Povoado Tozzo'),(7786,23,'Pranchada'),(7787,23,'Pratos'),(7788,23,'Presidente Lucena'),(7789,23,'Progresso'),(7790,23,'Protasio Alves'),(7791,23,'Pulador'),(7792,23,'Putinga'),(7793,23,'Quarai'),(7794,23,'Quaraim'),(7795,23,'Quatro Irmaos'),(7796,23,'Quevedos'),(7797,23,'Quilombo'),(7798,23,'Quinta'),(7799,23,'Quintao'),(7800,23,'Quinze de Novembro'),(7801,23,'Quiteria'),(7802,23,'Rancho Velho'),(7803,23,'Redentora'),(7804,23,'Refugiado'),(7805,23,'Relvado'),(7806,23,'Restinga Seca'),(7807,23,'Rincao de Sao Pedro'),(7808,23,'Rincao Del Rei'),(7809,23,'Rincao do Cristovao Pereira'),(7810,23,'Rincao do Meio'),(7811,23,'Rincao do Segredo'),(7812,23,'Rincao Doce'),(7813,23,'Rincao dos Kroeff'),(7814,23,'Rincao dos Mendes'),(7815,23,'Rincao Vermelho'),(7816,23,'Rio Azul'),(7817,23,'Rio Branco'),(7818,23,'Rio da Ilha'),(7819,23,'Rio dos Indios'),(7820,23,'Rio Grande'),(7821,23,'Rio Pardinho'),(7822,23,'Rio Pardo'),(7823,23,'Rio Telha'),(7824,23,'Rio Tigre'),(7825,23,'Rio Toldo'),(7826,23,'Riozinho'),(7827,23,'Roca Sales'),(7828,23,'Rodeio Bonito'),(7829,23,'Rolador'),(7830,23,'Rolante'),(7831,23,'Rolantinho da Figueira'),(7832,23,'Ronda Alta'),(7833,23,'Rondinha'),(7834,23,'Roque Gonzales'),(7835,23,'Rosario'),(7836,23,'Rosario do Sul'),(7837,23,'Sagrada Familia'),(7838,23,'Saica'),(7839,23,'Saldanha Marinho'),(7840,23,'Saltinho'),(7841,23,'Salto'),(7842,23,'Salto do Jacui'),(7843,23,'Salvador das Missoes'),(7844,23,'Salvador do Sul'),(7845,23,'Sananduva'),(7846,23,'Sant Auta'),(7847,23,'Santa Barbara'),(7848,23,'Santa Barbara do Sul'),(7849,23,'Santa Catarina'),(7850,23,'Santa Cecilia'),(7851,23,'Santa Clara do Ingai'),(7852,23,'Santa Clara do Sul'),(7853,23,'Santa Cristina'),(7854,23,'Santa Cruz'),(7855,23,'Santa Cruz da Concordia'),(7856,23,'Santa Cruz do Sul'),(7857,23,'Santa Flora'),(7858,23,'Santa Ines'),(7859,23,'Santa Izabel do Sul'),(7860,23,'Santa Lucia'),(7861,23,'Santa Lucia do Piai'),(7862,23,'Santa Luiza'),(7863,23,'Santa Luzia'),(7864,23,'Santa Maria'),(7865,23,'Santa Maria do Herval'),(7866,23,'Santa Rita do Sul'),(7867,23,'Santa Rosa'),(7868,23,'Santa Silvana'),(7869,23,'Santa Teresinha'),(7870,23,'Santa Tereza'),(7871,23,'Santa Vitoria do Palmar'),(7872,23,'Santana'),(7873,23,'Santana da Boa Vista'),(7874,23,'Santana do Livramento'),(7875,23,'Santiago'),(7876,23,'Santo Amaro do Sul'),(7877,23,'Santo Angelo'),(7878,23,'Santo Antonio'),(7879,23,'Santo Antonio da Patrulha'),(7880,23,'Santo Antonio das Missoes'),(7881,23,'Santo Antonio de Castro'),(7882,23,'Santo Antonio do Bom Retiro'),(7883,23,'Santo Antonio do Palma'),(7884,23,'Santo Antonio do Planalto'),(7885,23,'Santo Augusto'),(7886,23,'Santo Cristo'),(7887,23,'Santo Expedito do Sul'),(7888,23,'Santo Inacio'),(7889,23,'Sao Bento'),(7890,23,'Sao Bom Jesus'),(7891,23,'Sao Borja'),(7892,23,'Sao Carlos'),(7893,23,'Sao Domingos do Sul'),(7894,23,'Sao Francisco'),(7895,23,'Sao Francisco de Assis'),(7896,23,'Sao Francisco de Paula'),(7897,23,'Sao Gabriel'),(7898,23,'Sao Jeronimo'),(7899,23,'Sao Joao'),(7900,23,'Sao Joao Batista'),(7901,23,'Sao Joao Bosco'),(7902,23,'Sao Joao da Urtiga'),(7903,23,'Sao Joao do Polesine'),(7904,23,'Sao Jorge'),(7905,23,'Sao Jose'),(7906,23,'Sao Jose da Gloria'),(7907,23,'Sao Jose das Missoes'),(7908,23,'Sao Jose de Castro'),(7909,23,'Sao Jose do Centro'),(7910,23,'Sao Jose do Herval'),(7911,23,'Sao Jose do Hortencio'),(7912,23,'Sao Jose do Inhacora'),(7913,23,'Sao Jose do Norte'),(7914,23,'Sao Jose do Ouro'),(7915,23,'Sao Jose dos Ausentes'),(7916,23,'Sao Leopoldo'),(7917,23,'Sao Lourenco das Missoes'),(7918,23,'Sao Lourenco do Sul'),(7919,23,'Sao Luis Rei'),(7920,23,'Sao Luiz'),(7921,23,'Sao Luiz Gonzaga'),(7922,23,'Sao Manuel'),(7923,23,'Sao Marcos'),(7924,23,'Sao Martinho'),(7925,23,'Sao Martinho da Serra'),(7926,23,'Sao Miguel'),(7927,23,'Sao Miguel das Missoes'),(7928,23,'Sao Nicolau'),(7929,23,'Sao Paulo'),(7930,23,'Sao Paulo das Missoes'),(7931,23,'Sao Pedro'),(7932,23,'Sao Pedro da Serra'),(7933,23,'Sao Pedro do Butia'),(7934,23,'Sao Pedro do Iraxim'),(7935,23,'Sao Pedro do Sul'),(7936,23,'Sao Roque'),(7937,23,'Sao Sebastiao'),(7938,23,'Sao Sebastiao do Cai'),(7939,23,'Sao Sepe'),(7940,23,'Sao Simao'),(7941,23,'Sao Valentim'),(7942,23,'Sao Valentim do Sul'),(7943,23,'Sao Valerio do Sul'),(7944,23,'Sao Vendelino'),(7945,23,'Sao Vicente do Sul'),(7946,23,'Sapiranga'),(7947,23,'Sapucaia do Sul'),(7948,23,'Sarandi'),(7949,23,'Scharlau'),(7950,23,'Seberi'),(7951,23,'Seca'),(7952,23,'Sede Aurora'),(7953,23,'Sede Nova'),(7954,23,'Segredo'),(7955,23,'Seival'),(7956,23,'Selbach'),(7957,23,'Senador Salgado Filho'),(7958,23,'Sentinela do Sul'),(7959,23,'Serafim Schmidt'),(7960,23,'Serafina Correa'),(7961,23,'Serio'),(7962,23,'Serra dos Gregorios'),(7963,23,'Serrinha'),(7964,23,'Sertao'),(7965,23,'Sertao Santana'),(7966,23,'Sertaozinho'),(7967,23,'Sete de Setembro'),(7968,23,'Sete Lagoas'),(7969,23,'Severiano de Almeida'),(7970,23,'Silva Jardim'),(7971,23,'Silveira'),(7972,23,'Silveira Martins'),(7973,23,'Sinimbu'),(7974,23,'Sirio'),(7975,23,'Sitio Gabriel'),(7976,23,'Sobradinho'),(7977,23,'Soledade'),(7978,23,'Souza Ramos'),(7979,23,'Suspiro'),(7980,23,'Tabai'),(7981,23,'Tabajara'),(7982,23,'Taim'),(7983,23,'Tainhas'),(7984,23,'Tamandua'),(7985,23,'Tanque'),(7986,23,'Tapejara'),(7987,23,'Tapera'),(7988,23,'Tapes'),(7989,23,'Taquara'),(7990,23,'Taquari'),(7991,23,'Taquarichim'),(7992,23,'Taquarucu do Sul'),(7993,23,'Tavares'),(7994,23,'Tenente Portela'),(7995,23,'Terra de Areia'),(7996,23,'Tesouras'),(7997,23,'Teutonia'),(7998,23,'Tiaraju'),(7999,23,'Timbauva'),(8000,23,'Tiradentes do Sul'),(8001,23,'Toropi'),(8002,23,'Toroqua'),(8003,23,'Torquato Severo'),(8004,23,'Torres'),(8005,23,'Torrinhas'),(8006,23,'Touro Passo'),(8007,23,'Tramandai'),(8008,23,'Travesseiro'),(8009,23,'Trentin'),(8010,23,'Tres Arroios'),(8011,23,'Tres Barras'),(8012,23,'Tres Cachoeiras'),(8013,23,'Tres Coroas'),(8014,23,'Tres de Maio'),(8015,23,'Tres Forquilhas'),(8016,23,'Tres Palmeiras'),(8017,23,'Tres Passos'),(8018,23,'Tres Vendas'),(8019,23,'Trindade do Sul'),(8020,23,'Triunfo'),(8021,23,'Tronqueiras'),(8022,23,'Tucunduva'),(8023,23,'Tuiuti'),(8024,23,'Tunas'),(8025,23,'Tunel Verde'),(8026,23,'Tupanci do Sul'),(8027,23,'Tupancireta'),(8028,23,'Tupancy Ou Vila Block'),(8029,23,'Tupandi'),(8030,23,'Tupantuba'),(8031,23,'Tuparendi'),(8032,23,'Tupi Silveira'),(8033,23,'Tupinamba'),(8034,23,'Turucu'),(8035,23,'Turvinho'),(8036,23,'Ubiretama'),(8037,23,'Umbu'),(8038,23,'Uniao da Serra'),(8039,23,'Unistalda'),(8040,23,'Uruguaiana'),(8041,23,'Vacacai'),(8042,23,'Vacaria'),(8043,23,'Valdastico'),(8044,23,'Vale do Rio Cai'),(8045,23,'Vale do Sol'),(8046,23,'Vale Real'),(8047,23,'Vale Veneto'),(8048,23,'Vale Verde'),(8049,23,'Vanini'),(8050,23,'Venancio Aires'),(8051,23,'Vera Cruz'),(8052,23,'Veranopolis'),(8053,23,'Vertentes'),(8054,23,'Vespasiano Correa'),(8055,23,'Viadutos'),(8056,23,'Viamao'),(8057,23,'Vicente Dutra'),(8058,23,'Victor Graeff'),(8059,23,'Vila Bender'),(8060,23,'Vila Cruz'),(8061,23,'Vila Flores'),(8062,23,'Vila Langaro'),(8063,23,'Vila Laranjeira'),(8064,23,'Vila Maria'),(8065,23,'Vila Nova do Sul'),(8066,23,'Vila Rica'),(8067,23,'Vila Seca'),(8068,23,'Vila Turvo'),(8069,23,'Vista Alegre'),(8070,23,'Vista Alegre do Prata'),(8071,23,'Vista Gaucha'),(8072,23,'Vitoria'),(8073,23,'Vitoria das Missoes'),(8074,23,'Volta Alegre'),(8075,23,'Volta Fechada'),(8076,23,'Volta Grande'),(8077,23,'Xadrez'),(8078,23,'Xangri-la'),(8079,23,'Xingu'),(8080,24,'Abdon Batista'),(8081,24,'Abelardo Luz'),(8082,24,'Agrolandia'),(8083,24,'Agronomica'),(8084,24,'Agua Doce'),(8085,24,'Aguas Brancas'),(8086,24,'Aguas Claras'),(8087,24,'Aguas de Chapeco'),(8088,24,'Aguas Frias'),(8089,24,'Aguas Mornas'),(8090,24,'Aguti'),(8091,24,'Aiure'),(8092,24,'Alfredo Wagner'),(8093,24,'Alto Alegre'),(8094,24,'Alto Bela Vista'),(8095,24,'Alto da Serra'),(8096,24,'Anchieta'),(8097,24,'Angelina'),(8098,24,'Anita Garibaldi'),(8099,24,'Anitapolis'),(8100,24,'Anta Gorda'),(8101,24,'Antonio Carlos'),(8102,24,'Apiuna'),(8103,24,'Arabuta'),(8104,24,'Araquari'),(8105,24,'Ararangua'),(8106,24,'Armazem'),(8107,24,'Arnopolis'),(8108,24,'Arroio Trinta'),(8109,24,'Arvoredo'),(8110,24,'Ascurra'),(8111,24,'Atalanta'),(8112,24,'Aterrado Torto'),(8113,24,'Aurora'),(8114,24,'Azambuja'),(8115,24,'Baia Alta'),(8116,24,'Balneario Arroio do Silva'),(8117,24,'Balneario Barra do Sul'),(8118,24,'Balneario Camboriu'),(8119,24,'Balneario Gaivota'),(8120,24,'Balneario Morro dos Conventos'),(8121,24,'Bandeirante'),(8122,24,'Barra Bonita'),(8123,24,'Barra Clara'),(8124,24,'Barra da Lagoa'),(8125,24,'Barra da Prata'),(8126,24,'Barra Fria'),(8127,24,'Barra Grande'),(8128,24,'Barra Velha'),(8129,24,'Barreiros'),(8130,24,'Barro Branco'),(8131,24,'Bateias de Baixo'),(8132,24,'Bela Vista'),(8133,24,'Bela Vista do Sul'),(8134,24,'Bela Vista do Toldo'),(8135,24,'Belmonte'),(8136,24,'Benedito Novo'),(8137,24,'Biguacu'),(8138,24,'Blumenau'),(8139,24,'Bocaina do Sul'),(8140,24,'Boiteuxburgo'),(8141,24,'Bom Jardim da Serra'),(8142,24,'Bom Jesus'),(8143,24,'Bom Jesus do Oeste'),(8144,24,'Bom Retiro'),(8145,24,'Bom Sucesso'),(8146,24,'Bombinhas'),(8147,24,'Botuvera'),(8148,24,'Braco do Norte'),(8149,24,'Braco do Trombudo'),(8150,24,'Brunopolis'),(8151,24,'Brusque'),(8152,24,'Cacador'),(8153,24,'Cachoeira de Fatima'),(8154,24,'Cachoeira do Bom Jesus'),(8155,24,'Caibi'),(8156,24,'Calmon'),(8157,24,'Camboriu'),(8158,24,'Cambuinzal'),(8159,24,'Campeche'),(8160,24,'Campinas'),(8161,24,'Campo Alegre'),(8162,24,'Campo Belo do Sul'),(8163,24,'Campo Ere'),(8164,24,'Campos Novos'),(8165,24,'Canasvieiras'),(8166,24,'Canelinha'),(8167,24,'Canoas'),(8168,24,'Canoinhas'),(8169,24,'Capao Alto'),(8170,24,'Capinzal'),(8171,24,'Capivari de Baixo'),(8172,24,'Caraiba'),(8173,24,'Catanduvas'),(8174,24,'Catuira'),(8175,24,'Caxambu do Sul'),(8176,24,'Cedro Alto'),(8177,24,'Celso Ramos'),(8178,24,'Cerro Negro'),(8179,24,'Chapadao do Lageado'),(8180,24,'Chapeco'),(8181,24,'Claraiba'),(8182,24,'Cocal do Sul'),(8183,24,'Colonia Santa Tereza'),(8184,24,'Colonia Santana'),(8185,24,'Concordia'),(8186,24,'Cordilheira Alta'),(8187,24,'Coronel Freitas'),(8188,24,'Coronel Martins'),(8189,24,'Correia Pinto'),(8190,24,'Corupa'),(8191,24,'Criciuma'),(8192,24,'Cunha Pora'),(8193,24,'Cunhatai'),(8194,24,'Curitibanos'),(8195,24,'Dal Pai'),(8196,24,'Dalbergia'),(8197,24,'Descanso'),(8198,24,'Dionisio Cerqueira'),(8199,24,'Dona Emma'),(8200,24,'Doutor Pedrinho'),(8201,24,'Engenho Velho'),(8202,24,'Enseada de Brito'),(8203,24,'Entre Rios'),(8204,24,'Ermo'),(8205,24,'Erval Velho'),(8206,24,'Espinilho'),(8207,24,'Estacao Cocal'),(8208,24,'Faxinal dos Guedes'),(8209,24,'Fazenda Zandavalli'),(8210,24,'Felipe Schmidt'),(8211,24,'Figueira'),(8212,24,'Flor do Sertao'),(8213,24,'Florianopolis'),(8214,24,'Formosa do Sul'),(8215,24,'Forquilhinha'),(8216,24,'Fragosos'),(8217,24,'Fraiburgo'),(8218,24,'Frederico Wastner'),(8219,24,'Frei Rogerio'),(8220,24,'Galvao'),(8221,24,'Garcia'),(8222,24,'Garopaba'),(8223,24,'Garuva'),(8224,24,'Gaspar'),(8225,24,'Goio-en'),(8226,24,'Governador Celso Ramos'),(8227,24,'Grao Para'),(8228,24,'Grapia'),(8229,24,'Gravatal'),(8230,24,'Guabiruba'),(8231,24,'Guaporanga'),(8232,24,'Guaraciaba'),(8233,24,'Guaramirim'),(8234,24,'Guaruja do Sul'),(8235,24,'Guata'),(8236,24,'Guatambu'),(8237,24,'Hercilio Luz'),(8238,24,'Herciliopolis'),(8239,24,'Herval D\'oeste'),(8240,24,'Ibiam'),(8241,24,'Ibicare'),(8242,24,'Ibicui'),(8243,24,'Ibirama'),(8244,24,'Icara'),(8245,24,'Ilhota'),(8246,24,'Imarui'),(8247,24,'Imbituba'),(8248,24,'Imbuia'),(8249,24,'Indaial'),(8250,24,'Indios'),(8251,24,'Ingleses do Rio Vermelho'),(8252,24,'Invernada'),(8253,24,'Iomere'),(8254,24,'Ipira'),(8255,24,'Ipomeia'),(8256,24,'Ipora do Oeste'),(8257,24,'Ipuacu'),(8258,24,'Ipumirim'),(8259,24,'Iraceminha'),(8260,24,'Irakitan'),(8261,24,'Irani'),(8262,24,'Iraputa'),(8263,24,'Irati'),(8264,24,'Irineopolis'),(8265,24,'Ita'),(8266,24,'Itaio'),(8267,24,'Itaiopolis'),(8268,24,'Itajai'),(8269,24,'Itajuba'),(8270,24,'Itapema'),(8271,24,'Itapiranga'),(8272,24,'Itapoa'),(8273,24,'Itapocu'),(8274,24,'Itoupava'),(8275,24,'Ituporanga'),(8276,24,'Jabora'),(8277,24,'Jacinto Machado'),(8278,24,'Jaguaruna'),(8279,24,'Jaragua do Sul'),(8280,24,'Jardinopolis'),(8281,24,'Joacaba'),(8282,24,'Joinville'),(8283,24,'Jose Boiteux'),(8284,24,'Jupia'),(8285,24,'Lacerdopolis'),(8286,24,'Lages'),(8287,24,'Lagoa'),(8288,24,'Lagoa da Estiva'),(8289,24,'Laguna'),(8290,24,'Lajeado Grande'),(8291,24,'Laurentino'),(8292,24,'Lauro Muller'),(8293,24,'Leao'),(8294,24,'Lebon Regis'),(8295,24,'Leoberto Leal'),(8296,24,'Lindoia do Sul'),(8297,24,'Linha das Palmeiras'),(8298,24,'Lontras'),(8299,24,'Lourdes'),(8300,24,'Luiz Alves'),(8301,24,'Luzerna'),(8302,24,'Machados'),(8303,24,'Macieira'),(8304,24,'Mafra'),(8305,24,'Major Gercino'),(8306,24,'Major Vieira'),(8307,24,'Maracaja'),(8308,24,'Marari'),(8309,24,'Marata'),(8310,24,'Maravilha'),(8311,24,'Marcilio Dias'),(8312,24,'Marechal Bormann'),(8313,24,'Marema'),(8314,24,'Mariflor'),(8315,24,'Marombas'),(8316,24,'Marombas Bossardi'),(8317,24,'Massaranduba'),(8318,24,'Matos Costa'),(8319,24,'Meleiro'),(8320,24,'Mirador'),(8321,24,'Mirim'),(8322,24,'Mirim Doce'),(8323,24,'Modelo'),(8324,24,'Mondai'),(8325,24,'Monte Alegre'),(8326,24,'Monte Carlo'),(8327,24,'Monte Castelo'),(8328,24,'Morro Chato'),(8329,24,'Morro da Fumaca'),(8330,24,'Morro do Meio'),(8331,24,'Morro Grande'),(8332,24,'Navegantes'),(8333,24,'Nossa Senhora de Caravaggio'),(8334,24,'Nova Cultura'),(8335,24,'Nova Erechim'),(8336,24,'Nova Guarita'),(8337,24,'Nova Itaberaba'),(8338,24,'Nova Petropolis'),(8339,24,'Nova Teutonia'),(8340,24,'Nova Trento'),(8341,24,'Nova Veneza'),(8342,24,'Novo Horizonte'),(8343,24,'Orleans'),(8344,24,'Otacilio Costa'),(8345,24,'Ouro'),(8346,24,'Ouro Verde'),(8347,24,'Paial'),(8348,24,'Painel'),(8349,24,'Palhoca'),(8350,24,'Palma Sola'),(8351,24,'Palmeira'),(8352,24,'Palmitos'),(8353,24,'Pantano do Sul'),(8354,24,'Papanduva'),(8355,24,'Paraiso'),(8356,24,'Passo de Torres'),(8357,24,'Passo Manso'),(8358,24,'Passos Maia'),(8359,24,'Paula Pereira'),(8360,24,'Paulo Lopes'),(8361,24,'Pedras Grandes'),(8362,24,'Penha'),(8363,24,'Perico'),(8364,24,'Peritiba'),(8365,24,'Pescaria Brava'),(8366,24,'Petrolandia'),(8367,24,'Picarras'),(8368,24,'Pindotiba'),(8369,24,'Pinhalzinho'),(8370,24,'Pinheiral'),(8371,24,'Pinheiro Preto'),(8372,24,'Pinheiros'),(8373,24,'Pirabeiraba'),(8374,24,'Piratuba'),(8375,24,'Planalto'),(8376,24,'Planalto Alegre'),(8377,24,'Poco Preto'),(8378,24,'Pomerode'),(8379,24,'Ponte Alta'),(8380,24,'Ponte Alta do Norte'),(8381,24,'Ponte Serrada'),(8382,24,'Porto Belo'),(8383,24,'Porto Uniao'),(8384,24,'Pouso Redondo'),(8385,24,'Praia Grande'),(8386,24,'Prata'),(8387,24,'Presidente Castelo Branco'),(8388,24,'Presidente Getulio'),(8389,24,'Presidente Juscelino'),(8390,24,'Presidente Kennedy'),(8391,24,'Presidente Nereu'),(8392,24,'Princesa'),(8393,24,'Quarta Linha'),(8394,24,'Quilombo'),(8395,24,'Quilometro Doze'),(8396,24,'Rancho Queimado'),(8397,24,'Ratones'),(8398,24,'Residencia Fuck'),(8399,24,'Ribeirao da Ilha'),(8400,24,'Ribeirao Pequeno'),(8401,24,'Rio Antinha'),(8402,24,'Rio Bonito'),(8403,24,'Rio D\'una'),(8404,24,'Rio da Anta'),(8405,24,'Rio da Luz'),(8406,24,'Rio das Antas'),(8407,24,'Rio das Furnas'),(8408,24,'Rio do Campo'),(8409,24,'Rio do Oeste'),(8410,24,'Rio do Sul'),(8411,24,'Rio dos Bugres'),(8412,24,'Rio dos Cedros'),(8413,24,'Rio Fortuna'),(8414,24,'Rio Maina'),(8415,24,'Rio Negrinho'),(8416,24,'Rio Preto do Sul'),(8417,24,'Rio Rufino'),(8418,24,'Riqueza'),(8419,24,'Rodeio'),(8420,24,'Romelandia'),(8421,24,'Sai'),(8422,24,'Salete'),(8423,24,'Saltinho'),(8424,24,'Salto Veloso'),(8425,24,'Sanga da Toca'),(8426,24,'Sangao'),(8427,24,'Santa Cecilia'),(8428,24,'Santa Cruz do Timbo'),(8429,24,'Santa Helena'),(8430,24,'Santa Izabel'),(8431,24,'Santa Lucia'),(8432,24,'Santa Maria'),(8433,24,'Santa Rosa de Lima'),(8434,24,'Santa Rosa do Sul'),(8435,24,'Santa Terezinha'),(8436,24,'Santa Terezinha do Progresso'),(8437,24,'Santa Terezinha do Salto'),(8438,24,'Santiago do Sul'),(8439,24,'Santo Amaro da Imperatriz'),(8440,24,'Santo Antonio de Lisboa'),(8441,24,'Sao Bento Baixo'),(8442,24,'Sao Bento do Sul'),(8443,24,'Sao Bernardino'),(8444,24,'Sao Bonifacio'),(8445,24,'Sao Carlos'),(8446,24,'Sao Cristovao'),(8447,24,'Sao Cristovao do Sul'),(8448,24,'Sao Defende'),(8449,24,'Sao Domingos'),(8450,24,'Sao Francisco do Sul'),(8451,24,'Sao Gabriel'),(8452,24,'Sao Joao Batista'),(8453,24,'Sao Joao do Itaperiu'),(8454,24,'Sao Joao do Oeste'),(8455,24,'Sao Joao do Rio Vermelho'),(8456,24,'Sao Joao do Sul'),(8457,24,'Sao Joaquim'),(8458,24,'Sao Jose'),(8459,24,'Sao Jose do Cedro'),(8460,24,'Sao Jose do Cerrito'),(8461,24,'Sao Jose do Laranjal'),(8462,24,'Sao Leonardo'),(8463,24,'Sao Lourenco do Oeste'),(8464,24,'Sao Ludgero'),(8465,24,'Sao Martinho'),(8466,24,'Sao Miguel D\'oeste'),(8467,24,'Sao Miguel da Boa Vista'),(8468,24,'Sao Miguel da Serra'),(8469,24,'Sao Pedro de Alcantara'),(8470,24,'Sao Pedro Tobias'),(8471,24,'Sao Roque'),(8472,24,'Sao Sebastiao do Arvoredo'),(8473,24,'Sao Sebastiao do Sul'),(8474,24,'Sapiranga'),(8475,24,'Saudades'),(8476,24,'Schroeder'),(8477,24,'Seara'),(8478,24,'Sede Oldemburg'),(8479,24,'Serra Alta'),(8480,24,'Sertao do Maruim'),(8481,24,'Sideropolis'),(8482,24,'Sombrio'),(8483,24,'Sorocaba do Sul'),(8484,24,'Sul Brasil'),(8485,24,'Taio'),(8486,24,'Tangara'),(8487,24,'Taquara Verde'),(8488,24,'Taquaras'),(8489,24,'Tigipio'),(8490,24,'Tigrinhos'),(8491,24,'Tijucas'),(8492,24,'Timbe do Sul'),(8493,24,'Timbo'),(8494,24,'Timbo Grande'),(8495,24,'Tres Barras'),(8496,24,'Treviso'),(8497,24,'Treze de Maio'),(8498,24,'Treze Tilias'),(8499,24,'Trombudo Central'),(8500,24,'Tubarao'),(8501,24,'Tunapolis'),(8502,24,'Tupitinga'),(8503,24,'Turvo'),(8504,24,'Uniao do Oeste'),(8505,24,'Urubici'),(8506,24,'Uruguai'),(8507,24,'Urupema'),(8508,24,'Urussanga'),(8509,24,'Vargeao'),(8510,24,'Vargem'),(8511,24,'Vargem Bonita'),(8512,24,'Vargem do Cedro'),(8513,24,'Vidal Ramos'),(8514,24,'Videira'),(8515,24,'Vila Conceicao'),(8516,24,'Vila de Volta Grande'),(8517,24,'Vila Milani'),(8518,24,'Vila Nova'),(8519,24,'Vitor Meireles'),(8520,24,'Witmarsum'),(8521,24,'Xanxere'),(8522,24,'Xavantina'),(8523,24,'Xaxim'),(8524,24,'Zortea'),(8525,25,'Altos Verdes'),(8526,25,'Amparo de Sao Francisco'),(8527,25,'Aquidaba'),(8528,25,'Aracaju'),(8529,25,'Araua'),(8530,25,'Areia Branca'),(8531,25,'Barra dos Coqueiros'),(8532,25,'Barracas'),(8533,25,'Boquim'),(8534,25,'Brejo Grande'),(8535,25,'Campo do Brito'),(8536,25,'Canhoba'),(8537,25,'Caninde de Sao Francisco'),(8538,25,'Capela'),(8539,25,'Carira'),(8540,25,'Carmopolis'),(8541,25,'Cedro de Sao Joao'),(8542,25,'Cristinapolis'),(8543,25,'Cumbe'),(8544,25,'Divina Pastora'),(8545,25,'Estancia'),(8546,25,'Feira Nova'),(8547,25,'Frei Paulo'),(8548,25,'Gararu'),(8549,25,'General Maynard'),(8550,25,'Graccho Cardoso'),(8551,25,'Ilha das Flores'),(8552,25,'Indiaroba'),(8553,25,'Itabaiana'),(8554,25,'Itabaianinha'),(8555,25,'Itabi'),(8556,25,'Itaporanga D\'ajuda'),(8557,25,'Japaratuba'),(8558,25,'Japoata'),(8559,25,'Lagarto'),(8560,25,'Lagoa Funda'),(8561,25,'Laranjeiras'),(8562,25,'Macambira'),(8563,25,'Malhada dos Bois'),(8564,25,'Malhador'),(8565,25,'Maruim'),(8566,25,'Miranda'),(8567,25,'Moita Bonita'),(8568,25,'Monte Alegre de Sergipe'),(8569,25,'Mosqueiro'),(8570,25,'Muribeca'),(8571,25,'Neopolis'),(8572,25,'Nossa Senhora Aparecida'),(8573,25,'Nossa Senhora da Gloria'),(8574,25,'Nossa Senhora das Dores'),(8575,25,'Nossa Senhora de Lourdes'),(8576,25,'Nossa Senhora do Socorro'),(8577,25,'Pacatuba'),(8578,25,'Palmares'),(8579,25,'Pedra Mole'),(8580,25,'Pedras'),(8581,25,'Pedrinhas'),(8582,25,'Pinhao'),(8583,25,'Pirambu'),(8584,25,'Poco Redondo'),(8585,25,'Poco Verde'),(8586,25,'Porto da Folha'),(8587,25,'Propria'),(8588,25,'Riachao do Dantas'),(8589,25,'Riachuelo'),(8590,25,'Ribeiropolis'),(8591,25,'Rosario do Catete'),(8592,25,'Salgado'),(8593,25,'Samambaia'),(8594,25,'Santa Luzia do Itanhy'),(8595,25,'Santa Rosa de Lima'),(8596,25,'Santana do Sao Francisco'),(8597,25,'Santo Amaro das Brotas'),(8598,25,'Sao Cristovao'),(8599,25,'Sao Domingos'),(8600,25,'Sao Francisco'),(8601,25,'Sao Jose'),(8602,25,'Sao Mateus da Palestina'),(8603,25,'Sao Miguel do Aleixo'),(8604,25,'Simao Dias'),(8605,25,'Siriri'),(8606,25,'Telha'),(8607,25,'Tobias Barreto'),(8608,25,'Tomar do Geru'),(8609,25,'Umbauba'),(8610,26,'Adamantina'),(8611,26,'Adolfo'),(8612,26,'Agisse'),(8613,26,'Agua Vermelha'),(8614,26,'Aguai'),(8615,26,'Aguas da Prata'),(8616,26,'Aguas de Lindoia'),(8617,26,'Aguas de Santa Barbara'),(8618,26,'Aguas de Sao Pedro'),(8619,26,'Agudos'),(8620,26,'Agulha'),(8621,26,'Ajapi'),(8622,26,'Alambari'),(8623,26,'Alberto Moreira'),(8624,26,'Aldeia'),(8625,26,'Aldeia de Carapicuiba'),(8626,26,'Alfredo Guedes'),(8627,26,'Alfredo Marcondes'),(8628,26,'Altair'),(8629,26,'Altinopolis'),(8630,26,'Alto Alegre'),(8631,26,'Alto Pora'),(8632,26,'Aluminio'),(8633,26,'Alvares Florence'),(8634,26,'Alvares Machado'),(8635,26,'Alvaro de Carvalho'),(8636,26,'Alvinlandia'),(8637,26,'Amadeu Amaral'),(8638,26,'Amandaba'),(8639,26,'Ameliopolis'),(8640,26,'Americana'),(8641,26,'Americo Brasiliense'),(8642,26,'Americo de Campos'),(8643,26,'Amparo'),(8644,26,'Ana Dias'),(8645,26,'Analandia'),(8646,26,'Anapolis'),(8647,26,'Andes'),(8648,26,'Andradina'),(8649,26,'Angatuba'),(8650,26,'Anhembi'),(8651,26,'Anhumas'),(8652,26,'Aparecida'),(8653,26,'Aparecida D\'oeste'),(8654,26,'Aparecida de Monte Alto'),(8655,26,'Aparecida de Sao Manuel'),(8656,26,'Aparecida do Bonito'),(8657,26,'Apiai'),(8658,26,'Apiai-mirim'),(8659,26,'Arabela'),(8660,26,'Aracacu'),(8661,26,'Aracaiba'),(8662,26,'Aracariguama'),(8663,26,'Aracatuba'),(8664,26,'Aracoiaba da Serra'),(8665,26,'Aramina'),(8666,26,'Arandu'),(8667,26,'Arapei'),(8668,26,'Araraquara'),(8669,26,'Araras'),(8670,26,'Araxas'),(8671,26,'Arcadas'),(8672,26,'Arco-iris'),(8673,26,'Arealva'),(8674,26,'Areias'),(8675,26,'Areiopolis'),(8676,26,'Ariranha'),(8677,26,'Ariri'),(8678,26,'Artemis'),(8679,26,'Artur Nogueira'),(8680,26,'Aruja'),(8681,26,'Aspasia'),(8682,26,'Assis'),(8683,26,'Assistencia'),(8684,26,'Atibaia'),(8685,26,'Atlantida'),(8686,26,'Auriflama'),(8687,26,'Avai'),(8688,26,'Avanhandava'),(8689,26,'Avare'),(8690,26,'Avencas'),(8691,26,'Bacaetava'),(8692,26,'Bacuriti'),(8693,26,'Bady Bassitt'),(8694,26,'Baguacu'),(8695,26,'Bairro Alto'),(8696,26,'Balbinos'),(8697,26,'Balsamo'),(8698,26,'Bananal'),(8699,26,'Bandeirantes D\'oeste'),(8700,26,'Barao Ataliba Nogueira'),(8701,26,'Barao de Antonina'),(8702,26,'Barao de Geraldo'),(8703,26,'Barbosa'),(8704,26,'Bariri'),(8705,26,'Barra Bonita'),(8706,26,'Barra do Chapeu'),(8707,26,'Barra do Turvo'),(8708,26,'Barra Dourada'),(8709,26,'Barrania'),(8710,26,'Barretos'),(8711,26,'Barrinha'),(8712,26,'Barueri'),(8713,26,'Bastos'),(8714,26,'Batatais'),(8715,26,'Batatuba'),(8716,26,'Batista Botelho'),(8717,26,'Bauru'),(8718,26,'Bebedouro'),(8719,26,'Bela Floresta'),(8720,26,'Bela Vista Sao-carlense'),(8721,26,'Bento de Abreu'),(8722,26,'Bernardino de Campos'),(8723,26,'Bertioga'),(8724,26,'Bilac'),(8725,26,'Birigui'),(8726,26,'Biritiba-mirim'),(8727,26,'Biritiba-ussu'),(8728,26,'Boa Esperanca do Sul'),(8729,26,'Boa Vista dos Andradas'),(8730,26,'Boa Vista Paulista'),(8731,26,'Bocaina'),(8732,26,'Bofete'),(8733,26,'Boituva'),(8734,26,'Bom Fim do Bom Jesus'),(8735,26,'Bom Jesus dos Perdoes'),(8736,26,'Bom Retiro da Esperanca'),(8737,26,'Bom Sucesso de Itarare'),(8738,26,'Bonfim Paulista'),(8739,26,'Bora'),(8740,26,'Boraceia'),(8741,26,'Borborema'),(8742,26,'Borebi'),(8743,26,'Botafogo'),(8744,26,'Botelho'),(8745,26,'Botucatu'),(8746,26,'Botujuru'),(8747,26,'Braco'),(8748,26,'Braganca Paulista'),(8749,26,'Bras Cubas'),(8750,26,'Brasitania'),(8751,26,'Brauna'),(8752,26,'Brejo Alegre'),(8753,26,'Brodowski'),(8754,26,'Brotas'),(8755,26,'Bueno de Andrada'),(8756,26,'Buri'),(8757,26,'Buritama'),(8758,26,'Buritizal'),(8759,26,'Cabralia Paulista'),(8760,26,'Cabreuva'),(8761,26,'Cacapava'),(8762,26,'Cachoeira de Emas'),(8763,26,'Cachoeira Paulista'),(8764,26,'Caconde'),(8765,26,'Cafelandia'),(8766,26,'Cafesopolis'),(8767,26,'Caiabu'),(8768,26,'Caibura'),(8769,26,'Caieiras'),(8770,26,'Caiua'),(8771,26,'Cajamar'),(8772,26,'Cajati'),(8773,26,'Cajobi'),(8774,26,'Cajuru'),(8775,26,'Cambaquara'),(8776,26,'Cambaratiba'),(8777,26,'Campestrinho'),(8778,26,'Campina de Fora'),(8779,26,'Campina do Monte Alegre'),(8780,26,'Campinal'),(8781,26,'Campinas'),(8782,26,'Campo Limpo Paulista'),(8783,26,'Campos de Cunha'),(8784,26,'Campos do Jordao'),(8785,26,'Campos Novos Paulista'),(8786,26,'Cananeia'),(8787,26,'Canas'),(8788,26,'Candia'),(8789,26,'Candido Mota'),(8790,26,'Candido Rodrigues'),(8791,26,'Canguera'),(8792,26,'Canitar'),(8793,26,'Capao Bonito'),(8794,26,'Capela do Alto'),(8795,26,'Capivari'),(8796,26,'Capivari da Mata'),(8797,26,'Caporanga'),(8798,26,'Capuava'),(8799,26,'Caraguatatuba'),(8800,26,'Carapicuiba'),(8801,26,'Cardeal'),(8802,26,'Cardoso'),(8803,26,'Caruara'),(8804,26,'Casa Branca'),(8805,26,'Cassia dos Coqueiros'),(8806,26,'Castilho'),(8807,26,'Catanduva'),(8808,26,'Catigua'),(8809,26,'Catucaba'),(8810,26,'Caucaia do Alto'),(8811,26,'Cedral'),(8812,26,'Cerqueira Cesar'),(8813,26,'Cerquilho'),(8814,26,'Cesario Lange'),(8815,26,'Cezar de Souza'),(8816,26,'Charqueada'),(8817,26,'Chavantes'),(8818,26,'Cipo-guacu'),(8819,26,'Clarinia'),(8820,26,'Clementina'),(8821,26,'Cocaes'),(8822,26,'Colina'),(8823,26,'Colombia'),(8824,26,'Conceicao de Monte Alegre'),(8825,26,'Conchal'),(8826,26,'Conchas'),(8827,26,'Cordeiropolis'),(8828,26,'Coroados'),(8829,26,'Coronel Goulart'),(8830,26,'Coronel Macedo'),(8831,26,'Corredeira'),(8832,26,'Corrego Rico'),(8833,26,'Corumbatai'),(8834,26,'Cosmopolis'),(8835,26,'Cosmorama'),(8836,26,'Costa Machado'),(8837,26,'Cotia'),(8838,26,'Cravinhos'),(8839,26,'Cristais Paulista'),(8840,26,'Cruz das Posses'),(8841,26,'Cruzalia'),(8842,26,'Cruzeiro'),(8843,26,'Cubatao'),(8844,26,'Cuiaba Paulista'),(8845,26,'Cunha'),(8846,26,'Curupa'),(8847,26,'Dalas'),(8848,26,'Descalvado'),(8849,26,'Diadema'),(8850,26,'Dirce Reis'),(8851,26,'Dirceu'),(8852,26,'Divinolandia'),(8853,26,'Dobrada'),(8854,26,'Dois Corregos'),(8855,26,'Dolcinopolis'),(8856,26,'Domelia'),(8857,26,'Dourado'),(8858,26,'Dracena'),(8859,26,'Duartina'),(8860,26,'Dumont'),(8861,26,'Duplo Ceu'),(8862,26,'Echapora'),(8863,26,'Eldorado'),(8864,26,'Eleuterio'),(8865,26,'Elias Fausto'),(8866,26,'Elisiario'),(8867,26,'Embauba'),(8868,26,'Embu'),(8869,26,'Embu-guacu'),(8870,26,'Emilianopolis'),(8871,26,'Eneida'),(8872,26,'Engenheiro Balduino'),(8873,26,'Engenheiro Coelho'),(8874,26,'Engenheiro Maia'),(8875,26,'Engenheiro Schmidt'),(8876,26,'Esmeralda'),(8877,26,'Esperanca D\'oeste'),(8878,26,'Espigao'),(8879,26,'Espirito Santo do Pinhal'),(8880,26,'Espirito Santo do Turvo'),(8881,26,'Estiva Gerbi'),(8882,26,'Estrela D\'oeste'),(8883,26,'Estrela do Norte'),(8884,26,'Euclides da Cunha Paulista'),(8885,26,'Eugenio de Melo'),(8886,26,'Fartura'),(8887,26,'Fatima'),(8888,26,'Fatima Paulista'),(8889,26,'Fazenda Velha'),(8890,26,'Fernando Prestes'),(8891,26,'Fernandopolis'),(8892,26,'Fernao'),(8893,26,'Ferraz de Vasconcelos'),(8894,26,'Flora Rica'),(8895,26,'Floreal'),(8896,26,'Floresta do Sul'),(8897,26,'Florida Paulista'),(8898,26,'Florinea'),(8899,26,'Franca'),(8900,26,'Francisco Morato'),(8901,26,'Franco da Rocha'),(8902,26,'Frutal do Campo'),(8903,26,'Gabriel Monteiro'),(8904,26,'Galia'),(8905,26,'Garca'),(8906,26,'Gardenia'),(8907,26,'Gastao Vidigal'),(8908,26,'Gaviao Peixoto'),(8909,26,'General Salgado'),(8910,26,'Getulina'),(8911,26,'Glicerio'),(8912,26,'Gramadinho'),(8913,26,'Guachos'),(8914,26,'Guaianas'),(8915,26,'Guaicara'),(8916,26,'Guaimbe'),(8917,26,'Guaira'),(8918,26,'Guamium'),(8919,26,'Guapiacu'),(8920,26,'Guapiara'),(8921,26,'Guapiranga'),(8922,26,'Guara'),(8923,26,'Guaracai'),(8924,26,'Guaraci'),(8925,26,'Guaraciaba D\'oeste'),(8926,26,'Guarani D\'oeste'),(8927,26,'Guaranta'),(8928,26,'Guarapiranga'),(8929,26,'Guarapua'),(8930,26,'Guararapes'),(8931,26,'Guararema'),(8932,26,'Guaratingueta'),(8933,26,'Guarei'),(8934,26,'Guariba'),(8935,26,'Guariroba'),(8936,26,'Guarizinho'),(8937,26,'Guaruja'),(8938,26,'Guarulhos'),(8939,26,'Guatapara'),(8940,26,'Guzolandia'),(8941,26,'Herculandia'),(8942,26,'Holambra'),(8943,26,'Holambra Ii'),(8944,26,'Hortolandia'),(8945,26,'Iacanga'),(8946,26,'Iacri'),(8947,26,'Iaras'),(8948,26,'Ibate'),(8949,26,'Ibiporanga'),(8950,26,'Ibira'),(8951,26,'Ibirarema'),(8952,26,'Ibitinga'),(8953,26,'Ibitiruna'),(8954,26,'Ibitiuva'),(8955,26,'Ibitu'),(8956,26,'Ibiuna'),(8957,26,'Icem'),(8958,26,'Ida Iolanda'),(8959,26,'Iepe'),(8960,26,'Igacaba'),(8961,26,'Igaracu do Tiete'),(8962,26,'Igarai'),(8963,26,'Igarapava'),(8964,26,'Igarata'),(8965,26,'Iguape'),(8966,26,'Ilha Comprida'),(8967,26,'Ilha Diana'),(8968,26,'Ilha Solteira'),(8969,26,'Ilhabela'),(8970,26,'Indaia do Aguapei'),(8971,26,'Indaiatuba'),(8972,26,'Indiana'),(8973,26,'Indiapora'),(8974,26,'Ingas'),(8975,26,'Inubia Paulista'),(8976,26,'Ipaussu'),(8977,26,'Ipero'),(8978,26,'Ipeuna'),(8979,26,'Ipigua'),(8980,26,'Iporanga'),(8981,26,'Ipua'),(8982,26,'Iracemapolis'),(8983,26,'Irape'),(8984,26,'Irapua'),(8985,26,'Irapuru'),(8986,26,'Itabera'),(8987,26,'Itaboa'),(8988,26,'Itai'),(8989,26,'Itaiuba'),(8990,26,'Itajobi'),(8991,26,'Itaju'),(8992,26,'Itanhaem'),(8993,26,'Itaoca'),(8994,26,'Itapecerica da Serra'),(8995,26,'Itapetininga'),(8996,26,'Itapeuna'),(8997,26,'Itapeva'),(8998,26,'Itapevi'),(8999,26,'Itapira'),(9000,26,'Itapirapua Paulista'),(9001,26,'Itapolis'),(9002,26,'Itaporanga'),(9003,26,'Itapui'),(9004,26,'Itapura'),(9005,26,'Itaquaquecetuba'),(9006,26,'Itaqueri da Serra'),(9007,26,'Itarare'),(9008,26,'Itariri'),(9009,26,'Itatiba'),(9010,26,'Itatinga'),(9011,26,'Itirapina'),(9012,26,'Itirapua'),(9013,26,'Itobi'),(9014,26,'Itororo do Paranapanema'),(9015,26,'Itu'),(9016,26,'Itupeva'),(9017,26,'Ituverava'),(9018,26,'Iubatinga'),(9019,26,'Jaborandi'),(9020,26,'Jaboticabal'),(9021,26,'Jacare'),(9022,26,'Jacarei'),(9023,26,'Jaci'),(9024,26,'Jacipora'),(9025,26,'Jacuba'),(9026,26,'Jacupiranga'),(9027,26,'Jafa'),(9028,26,'Jaguariuna'),(9029,26,'Jales'),(9030,26,'Jamaica'),(9031,26,'Jambeiro'),(9032,26,'Jandira'),(9033,26,'Jardim Belval'),(9034,26,'Jardim Presidente Dutra'),(9035,26,'Jardim Santa Luzia'),(9036,26,'Jardim Silveira'),(9037,26,'Jardinopolis'),(9038,26,'Jarinu'),(9039,26,'Jatoba'),(9040,26,'Jau'),(9041,26,'Jeriquara'),(9042,26,'Joanopolis'),(9043,26,'Joao Ramalho'),(9044,26,'Joaquim Egidio'),(9045,26,'Jordanesia'),(9046,26,'Jose Bonifacio'),(9047,26,'Juliania'),(9048,26,'Julio Mesquita'),(9049,26,'Jumirim'),(9050,26,'Jundiai'),(9051,26,'Jundiapeba'),(9052,26,'Junqueira'),(9053,26,'Junqueiropolis'),(9054,26,'Juquia'),(9055,26,'Juquiratiba'),(9056,26,'Juquitiba'),(9057,26,'Juritis'),(9058,26,'Juruce'),(9059,26,'Jurupeba'),(9060,26,'Jurupema'),(9061,26,'Lacio'),(9062,26,'Lagoa Azul'),(9063,26,'Lagoa Branca'),(9064,26,'Lagoinha'),(9065,26,'Laranjal Paulista'),(9066,26,'Laras'),(9067,26,'Lauro Penteado'),(9068,26,'Lavinia'),(9069,26,'Lavrinhas'),(9070,26,'Leme'),(9071,26,'Lencois Paulista'),(9072,26,'Limeira'),(9073,26,'Lindoia'),(9074,26,'Lins'),(9075,26,'Lobo'),(9076,26,'Lorena'),(9077,26,'Lourdes'),(9078,26,'Louveira'),(9079,26,'Lucelia'),(9080,26,'Lucianopolis'),(9081,26,'Luis Antonio'),(9082,26,'Luiziania'),(9083,26,'Lupercio'),(9084,26,'Lusitania'),(9085,26,'Lutecia'),(9086,26,'Macatuba'),(9087,26,'Macaubal'),(9088,26,'Macedonia'),(9089,26,'Macucos'),(9090,26,'Magda'),(9091,26,'Mailasqui'),(9092,26,'Mairinque'),(9093,26,'Mairipora'),(9094,26,'Major Prado'),(9095,26,'Manduri'),(9096,26,'Mangaratu'),(9097,26,'Maraba Paulista'),(9098,26,'Maracai'),(9099,26,'Marapoama'),(9100,26,'Marcondesia'),(9101,26,'Maresias'),(9102,26,'Mariapolis'),(9103,26,'Marilia'),(9104,26,'Marinopolis'),(9105,26,'Maristela'),(9106,26,'Martim Francisco'),(9107,26,'Martinho Prado Junior'),(9108,26,'Martinopolis'),(9109,26,'Matao'),(9110,26,'Maua'),(9111,26,'Mendonca'),(9112,26,'Meridiano'),(9113,26,'Mesopolis'),(9114,26,'Miguelopolis'),(9115,26,'Mineiros do Tiete'),(9116,26,'Mira Estrela'),(9117,26,'Miracatu'),(9118,26,'Miraluz'),(9119,26,'Mirandopolis'),(9120,26,'Mirante do Paranapanema'),(9121,26,'Mirassol'),(9122,26,'Mirassolandia'),(9123,26,'Mococa'),(9124,26,'Mogi das Cruzes'),(9125,26,'Mogi-guacu'),(9126,26,'Mogi-mirim'),(9127,26,'Mombuca'),(9128,26,'Moncoes'),(9129,26,'Mongagua'),(9130,26,'Montalvao'),(9131,26,'Monte Alegre do Sul'),(9132,26,'Monte Alto'),(9133,26,'Monte Aprazivel'),(9134,26,'Monte Azul Paulista'),(9135,26,'Monte Cabrao'),(9136,26,'Monte Castelo'),(9137,26,'Monte Mor'),(9138,26,'Monte Verde Paulista'),(9139,26,'Monteiro Lobato'),(9140,26,'Moreira Cesar'),(9141,26,'Morro Agudo'),(9142,26,'Morro do Alto'),(9143,26,'Morungaba'),(9144,26,'Mostardas'),(9145,26,'Motuca'),(9146,26,'Mourao'),(9147,26,'Murutinga do Sul'),(9148,26,'Nantes'),(9149,26,'Narandiba'),(9150,26,'Natividade da Serra'),(9151,26,'Nazare Paulista'),(9152,26,'Neves Paulista'),(9153,26,'Nhandeara'),(9154,26,'Nipoa'),(9155,26,'Nogueira'),(9156,26,'Nossa Senhora do Remedio'),(9157,26,'Nova Alexandria'),(9158,26,'Nova Alianca'),(9159,26,'Nova America'),(9160,26,'Nova Aparecida'),(9161,26,'Nova Campina'),(9162,26,'Nova Canaa Paulista'),(9163,26,'Nova Castilho'),(9164,26,'Nova Europa'),(9165,26,'Nova Granada'),(9166,26,'Nova Guataporanga'),(9167,26,'Nova Independencia'),(9168,26,'Nova Itapirema'),(9169,26,'Nova Luzitania'),(9170,26,'Nova Odessa'),(9171,26,'Nova Patria'),(9172,26,'Nova Veneza'),(9173,26,'Novais'),(9174,26,'Novo Cravinhos'),(9175,26,'Novo Horizonte'),(9176,26,'Nuporanga'),(9177,26,'Oasis'),(9178,26,'Ocaucu'),(9179,26,'Oleo'),(9180,26,'Olimpia'),(9181,26,'Oliveira Barros'),(9182,26,'Onda Branca'),(9183,26,'Onda Verde'),(9184,26,'Oriente'),(9185,26,'Orindiuva'),(9186,26,'Orlandia'),(9187,26,'Osasco'),(9188,26,'Oscar Bressane'),(9189,26,'Osvaldo Cruz'),(9190,26,'Ourinhos'),(9191,26,'Ouro Fino Paulista'),(9192,26,'Ouro Verde'),(9193,26,'Ouroeste'),(9194,26,'Pacaembu'),(9195,26,'Padre Nobrega'),(9196,26,'Palestina'),(9197,26,'Palmares Paulista'),(9198,26,'Palmeira D\'oeste'),(9199,26,'Palmeiras de Sao Paulo'),(9200,26,'Palmital'),(9201,26,'Panorama'),(9202,26,'Paraguacu Paulista'),(9203,26,'Paraibuna'),(9204,26,'Paraiso'),(9205,26,'Paraisolandia'),(9206,26,'Paranabi'),(9207,26,'Paranapanema'),(9208,26,'Paranapiacaba'),(9209,26,'Paranapua'),(9210,26,'Parapua'),(9211,26,'Pardinho'),(9212,26,'Pariquera-acu'),(9213,26,'Parisi'),(9214,26,'Parnaso'),(9215,26,'Parque Meia Lua'),(9216,26,'Paruru'),(9217,26,'Patrocinio Paulista'),(9218,26,'Pauliceia'),(9219,26,'Paulinia'),(9220,26,'Paulistania'),(9221,26,'Paulo de Faria'),(9222,26,'Paulopolis'),(9223,26,'Pederneiras'),(9224,26,'Pedra Bela'),(9225,26,'Pedra Branca de Itarare'),(9226,26,'Pedranopolis'),(9227,26,'Pedregulho'),(9228,26,'Pedreira'),(9229,26,'Pedrinhas Paulista'),(9230,26,'Pedro Barros'),(9231,26,'Pedro de Toledo'),(9232,26,'Penapolis'),(9233,26,'Pereira Barreto'),(9234,26,'Pereiras'),(9235,26,'Peruibe'),(9236,26,'Piacatu'),(9237,26,'Picinguaba'),(9238,26,'Piedade'),(9239,26,'Pilar do Sul'),(9240,26,'Pindamonhangaba'),(9241,26,'Pindorama'),(9242,26,'Pinhalzinho'),(9243,26,'Pinheiros'),(9244,26,'Pioneiros'),(9245,26,'Piquerobi'),(9246,26,'Piquete'),(9247,26,'Piracaia'),(9248,26,'Piracicaba'),(9249,26,'Piraju'),(9250,26,'Pirajui'),(9251,26,'Piramboia'),(9252,26,'Pirangi'),(9253,26,'Pirapitingui'),(9254,26,'Pirapora do Bom Jesus'),(9255,26,'Pirapozinho'),(9256,26,'Pirassununga'),(9257,26,'Piratininga'),(9258,26,'Pitangueiras'),(9259,26,'Planalto'),(9260,26,'Planalto do Sul'),(9261,26,'Platina'),(9262,26,'Poa'),(9263,26,'Poloni'),(9264,26,'Polvilho'),(9265,26,'Pompeia'),(9266,26,'Pongai'),(9267,26,'Pontal'),(9268,26,'Pontalinda'),(9269,26,'Pontes Gestal'),(9270,26,'Populina'),(9271,26,'Porangaba'),(9272,26,'Porto Feliz'),(9273,26,'Porto Ferreira'),(9274,26,'Porto Novo'),(9275,26,'Potim'),(9276,26,'Potirendaba'),(9277,26,'Potunduva'),(9278,26,'Pracinha'),(9279,26,'Pradinia'),(9280,26,'Pradopolis'),(9281,26,'Praia Grande'),(9282,26,'Pratania'),(9283,26,'Presidente Alves'),(9284,26,'Presidente Bernardes'),(9285,26,'Presidente Epitacio'),(9286,26,'Presidente Prudente'),(9287,26,'Presidente Venceslau'),(9288,26,'Primavera'),(9289,26,'Promissao'),(9290,26,'Prudencio E Moraes'),(9291,26,'Quadra'),(9292,26,'Quata'),(9293,26,'Queiroz'),(9294,26,'Queluz'),(9295,26,'Quintana'),(9296,26,'Quiririm'),(9297,26,'Rafard'),(9298,26,'Rancharia'),(9299,26,'Rechan'),(9300,26,'Redencao da Serra'),(9301,26,'Regente Feijo'),(9302,26,'Reginopolis'),(9303,26,'Registro'),(9304,26,'Restinga'),(9305,26,'Riacho Grande'),(9306,26,'Ribeira'),(9307,26,'Ribeirao Bonito'),(9308,26,'Ribeirao Branco'),(9309,26,'Ribeirao Corrente'),(9310,26,'Ribeirao do Sul'),(9311,26,'Ribeirao dos Indios'),(9312,26,'Ribeirao Grande'),(9313,26,'Ribeirao Pires'),(9314,26,'Ribeirao Preto'),(9315,26,'Ribeiro do Vale'),(9316,26,'Ribeiro dos Santos'),(9317,26,'Rifaina'),(9318,26,'Rincao'),(9319,26,'Rinopolis'),(9320,26,'Rio Claro'),(9321,26,'Rio das Pedras'),(9322,26,'Rio Grande da Serra'),(9323,26,'Riolandia'),(9324,26,'Riversul'),(9325,26,'Roberto'),(9326,26,'Rosalia'),(9327,26,'Rosana'),(9328,26,'Roseira'),(9329,26,'Rubiacea'),(9330,26,'Rubiao Junior'),(9331,26,'Rubineia'),(9332,26,'Ruilandia'),(9333,26,'Sabauna'),(9334,26,'Sabino'),(9335,26,'Sagres'),(9336,26,'Sales'),(9337,26,'Sales Oliveira'),(9338,26,'Salesopolis'),(9339,26,'Salmourao'),(9340,26,'Saltinho'),(9341,26,'Salto'),(9342,26,'Salto de Pirapora'),(9343,26,'Salto do Avanhandava'),(9344,26,'Salto Grande'),(9345,26,'Sandovalina'),(9346,26,'Santa Adelia'),(9347,26,'Santa Albertina'),(9348,26,'Santa America'),(9349,26,'Santa Barbara D\'oeste'),(9350,26,'Santa Branca'),(9351,26,'Santa Clara D\'oeste'),(9352,26,'Santa Cruz da Conceicao'),(9353,26,'Santa Cruz da Esperanca'),(9354,26,'Santa Cruz da Estrela'),(9355,26,'Santa Cruz das Palmeiras'),(9356,26,'Santa Cruz do Rio Pardo'),(9357,26,'Santa Cruz dos Lopes'),(9358,26,'Santa Ernestina'),(9359,26,'Santa Eudoxia'),(9360,26,'Santa Fe do Sul'),(9361,26,'Santa Gertrudes'),(9362,26,'Santa Isabel'),(9363,26,'Santa Isabel do Marinheiro'),(9364,26,'Santa Lucia'),(9365,26,'Santa Margarida Paulista'),(9366,26,'Santa Maria da Serra'),(9367,26,'Santa Maria do Gurupa'),(9368,26,'Santa Mercedes'),(9369,26,'Santa Rita D\'oeste'),(9370,26,'Santa Rita do Passa Quatro'),(9371,26,'Santa Rita do Ribeira'),(9372,26,'Santa Rosa de Viterbo'),(9373,26,'Santa Salete'),(9374,26,'Santa Teresinha de Piracicaba'),(9375,26,'Santana da Ponte Pensa'),(9376,26,'Santana de Parnaiba'),(9377,26,'Santelmo'),(9378,26,'Santo Anastacio'),(9379,26,'Santo Andre'),(9380,26,'Santo Antonio da Alegria'),(9381,26,'Santo Antonio da Estiva'),(9382,26,'Santo Antonio de Posse'),(9383,26,'Santo Antonio do Aracangua'),(9384,26,'Santo Antonio do Jardim'),(9385,26,'Santo Antonio do Paranapanema'),(9386,26,'Santo Antonio do Pinhal'),(9387,26,'Santo Antonio Paulista'),(9388,26,'Santo Expedito'),(9389,26,'Santopolis do Aguapei'),(9390,26,'Santos'),(9391,26,'Sao Benedito da Cachoeirinha'),(9392,26,'Sao Benedito das Areias'),(9393,26,'Sao Bento do Sapucai'),(9394,26,'Sao Bernardo do Campo'),(9395,26,'Sao Berto'),(9396,26,'Sao Caetano do Sul'),(9397,26,'Sao Carlos'),(9398,26,'Sao Francisco'),(9399,26,'Sao Francisco da Praia'),(9400,26,'Sao Francisco Xavier'),(9401,26,'Sao Joao da Boa Vista'),(9402,26,'Sao Joao das Duas Pontes'),(9403,26,'Sao Joao de Iracema'),(9404,26,'Sao Joao de Itaguacu'),(9405,26,'Sao Joao do Marinheiro'),(9406,26,'Sao Joao Do Pau D\'alho'),(9407,26,'Sao Joao Novo'),(9408,26,'Sao Joaquim da Barra'),(9409,26,'Sao Jose da Bela Vista'),(9410,26,'Sao Jose das Laranjeiras'),(9411,26,'Sao Jose do Barreiro'),(9412,26,'Sao Jose do Rio Pardo'),(9413,26,'Sao Jose do Rio Preto'),(9414,26,'Sao Jose dos Campos'),(9415,26,'Sao Lourenco da Serra'),(9416,26,'Sao Lourenco do Turvo'),(9417,26,'Sao Luis do Paraitinga'),(9418,26,'Sao Luiz do Guaricanga'),(9419,26,'Sao Manuel'),(9420,26,'Sao Martinho D\'oeste'),(9421,26,'Sao Miguel Arcanjo'),(9422,26,'Sao Paulo'),(9423,26,'Sao Pedro'),(9424,26,'Sao Pedro do Turvo'),(9425,26,'Sao Roque'),(9426,26,'Sao Roque da Fartura'),(9427,26,'Sao Sebastiao'),(9428,26,'Sao Sebastiao da Grama'),(9429,26,'Sao Sebastiao da Serra'),(9430,26,'Sao Silvestre de Jacarei'),(9431,26,'Sao Simao'),(9432,26,'Sao Vicente'),(9433,26,'Sapezal'),(9434,26,'Sarapui'),(9435,26,'Sarutaia'),(9436,26,'Sebastianopolis do Sul'),(9437,26,'Serra Azul'),(9438,26,'Serra Negra'),(9439,26,'Serrana'),(9440,26,'Sertaozinho'),(9441,26,'Sete Barras'),(9442,26,'Severinia'),(9443,26,'Silvania'),(9444,26,'Silveiras'),(9445,26,'Simoes'),(9446,26,'Simonsen'),(9447,26,'Socorro'),(9448,26,'Sodrelia'),(9449,26,'Solemar'),(9450,26,'Sorocaba'),(9451,26,'Sousas'),(9452,26,'Sud Mennucci'),(9453,26,'Suinana'),(9454,26,'Sumare'),(9455,26,'Sussui'),(9456,26,'Suzanapolis'),(9457,26,'Suzano'),(9458,26,'Tabajara'),(9459,26,'Tabapua'),(9460,26,'Tabatinga'),(9461,26,'Taboao da Serra'),(9462,26,'Taciba'),(9463,26,'Taguai'),(9464,26,'Taiacu'),(9465,26,'Taiacupeba'),(9466,26,'Taiuva'),(9467,26,'Talhado'),(9468,26,'Tambau'),(9469,26,'Tanabi'),(9470,26,'Tapinas'),(9471,26,'Tapirai'),(9472,26,'Tapiratiba'),(9473,26,'Taquaral'),(9474,26,'Taquaritinga'),(9475,26,'Taquarituba'),(9476,26,'Taquarivai'),(9477,26,'Tarabai'),(9478,26,'Taruma'),(9479,26,'Tatui'),(9480,26,'Taubate'),(9481,26,'Tecainda'),(9482,26,'Tejupa'),(9483,26,'Teodoro Sampaio'),(9484,26,'Termas de Ibira'),(9485,26,'Terra Nova D\'oeste'),(9486,26,'Terra Roxa'),(9487,26,'Tibirica'),(9488,26,'Tibirica do Paranapanema'),(9489,26,'Tiete'),(9490,26,'Timburi'),(9491,26,'Toledo'),(9492,26,'Torre de Pedra'),(9493,26,'Torrinha'),(9494,26,'Trabiju'),(9495,26,'Tremembe'),(9496,26,'Tres Aliancas'),(9497,26,'Tres Fronteiras'),(9498,26,'Tres Pontes'),(9499,26,'Tres Vendas'),(9500,26,'Tuiuti'),(9501,26,'Tujuguaba'),(9502,26,'Tupa'),(9503,26,'Tupi'),(9504,26,'Tupi Paulista'),(9505,26,'Turiba do Sul'),(9506,26,'Turiuba'),(9507,26,'Turmalina'),(9508,26,'Turvinia'),(9509,26,'Ubarana'),(9510,26,'Ubatuba'),(9511,26,'Ubirajara'),(9512,26,'Uchoa'),(9513,26,'Uniao Paulista'),(9514,26,'Universo'),(9515,26,'Urania'),(9516,26,'Uru'),(9517,26,'Urupes'),(9518,26,'Ururai'),(9519,26,'Utinga'),(9520,26,'Vale Formoso'),(9521,26,'Valentim Gentil'),(9522,26,'Valinhos'),(9523,26,'Valparaiso'),(9524,26,'Vangloria'),(9525,26,'Vargem'),(9526,26,'Vargem Grande do Sul'),(9527,26,'Vargem Grande Paulista'),(9528,26,'Varpa'),(9529,26,'Varzea Paulista'),(9530,26,'Venda Branca'),(9531,26,'Vera Cruz'),(9532,26,'Vicente de Carvalho'),(9533,26,'Vicentinopolis'),(9534,26,'Vila Dirce'),(9535,26,'Vila Nery'),(9536,26,'Vila Xavier'),(9537,26,'Vinhedo'),(9538,26,'Viradouro'),(9539,26,'Vista Alegre do Alto'),(9540,26,'Vitoria Brasil'),(9541,26,'Vitoriana'),(9542,26,'Votorantim'),(9543,26,'Votuporanga'),(9544,26,'Zacarias'),(9545,27,'Abreulandia'),(9546,27,'Aguiarnopolis'),(9547,27,'Alianca do Tocantins'),(9548,27,'Almas'),(9549,27,'Alvorada'),(9550,27,'Anajanopolis'),(9551,27,'Ananas'),(9552,27,'Angico'),(9553,27,'Aparecida do Rio Negro'),(9554,27,'Apinaje'),(9555,27,'Aragacui'),(9556,27,'Aragominas'),(9557,27,'Araguacema'),(9558,27,'Araguacu'),(9559,27,'Araguaina'),(9560,27,'Araguana'),(9561,27,'Araguatins'),(9562,27,'Arapoema'),(9563,27,'Arraias'),(9564,27,'Augustinopolis'),(9565,27,'Aurora do Tocantins'),(9566,27,'Axixa do Tocantins'),(9567,27,'Babaculandia'),(9568,27,'Bandeirantes do Tocantins'),(9569,27,'Barra do Grota'),(9570,27,'Barra do Ouro'),(9571,27,'Barrolandia'),(9572,27,'Bernardo Sayao'),(9573,27,'Bom Jesus do Tocantins'),(9574,27,'Brasilandia'),(9575,27,'Brasilandia do Tocantins'),(9576,27,'Brejinho de Nazare'),(9577,27,'Buriti do Tocantins'),(9578,27,'Cachoeirinha'),(9579,27,'Campos Lindos'),(9580,27,'Cana Brava'),(9581,27,'Cariri do Tocantins'),(9582,27,'Carmolandia'),(9583,27,'Carrasco Bonito'),(9584,27,'Cartucho'),(9585,27,'Caseara'),(9586,27,'Centenario'),(9587,27,'Chapada da Areia'),(9588,27,'Chapada da Natividade'),(9589,27,'Cocalandia'),(9590,27,'Cocalinho'),(9591,27,'Colinas do Tocantins'),(9592,27,'Colmeia'),(9593,27,'Combinado'),(9594,27,'Conceicao do Tocantins'),(9595,27,'Correinha'),(9596,27,'Couto de Magalhaes'),(9597,27,'Craolandia'),(9598,27,'Cristalandia'),(9599,27,'Crixas'),(9600,27,'Crixas do Tocantins'),(9601,27,'Darcinopolis'),(9602,27,'Dianopolis'),(9603,27,'Divinopolis do Tocantins'),(9604,27,'Dois Irmaos do Tocantins'),(9605,27,'Duere'),(9606,27,'Escondido'),(9607,27,'Esperantina'),(9608,27,'Fatima'),(9609,27,'Figueiropolis'),(9610,27,'Filadelfia'),(9611,27,'Formoso do Araguaia'),(9612,27,'Fortaleza do Tabocao'),(9613,27,'Goianorte'),(9614,27,'Goiatins'),(9615,27,'Guarai'),(9616,27,'Gurupi'),(9617,27,'Ilha Barreira Branca'),(9618,27,'Ipueiras'),(9619,27,'Itacaja'),(9620,27,'Itaguatins'),(9621,27,'Itapiratins'),(9622,27,'Itapora do Tocantins'),(9623,27,'Jau do Tocantins'),(9624,27,'Juarina'),(9625,27,'Jussara'),(9626,27,'Lagoa da Confusao'),(9627,27,'Lagoa do Tocantins'),(9628,27,'Lajeado'),(9629,27,'Lavandeira'),(9630,27,'Lizarda'),(9631,27,'Luzinopolis'),(9632,27,'Marianopolis do Tocantins'),(9633,27,'Mateiros'),(9634,27,'Maurilandia do Tocantins'),(9635,27,'Miracema do Tocantins'),(9636,27,'Mirandopolis'),(9637,27,'Miranorte'),(9638,27,'Monte do Carmo'),(9639,27,'Monte Lindo'),(9640,27,'Monte Santo do Tocantins'),(9641,27,'Mosquito'),(9642,27,'Muricilandia'),(9643,27,'Natal'),(9644,27,'Natividade'),(9645,27,'Nazare'),(9646,27,'Nova Olinda'),(9647,27,'Nova Rosalandia'),(9648,27,'Novo Acordo'),(9649,27,'Novo Alegre'),(9650,27,'Novo Horizonte'),(9651,27,'Novo Jardim'),(9652,27,'Oliveira de Fatima'),(9653,27,'Palmas'),(9654,27,'Palmeirante'),(9655,27,'Palmeiropolis'),(9656,27,'Paraiso do Tocantins'),(9657,27,'Parana'),(9658,27,'Pau D\'arco'),(9659,27,'Pe da Serra'),(9660,27,'Pedro Afonso'),(9661,27,'Pedro Ludovico'),(9662,27,'Peixe'),(9663,27,'Pequizeiro'),(9664,27,'Piloes'),(9665,27,'Pindorama do Tocantins'),(9666,27,'Piraque'),(9667,27,'Pium'),(9668,27,'Ponte Alta do Bom Jesus'),(9669,27,'Ponte Alta do Tocantins'),(9670,27,'Pontes'),(9671,27,'Poraozinho'),(9672,27,'Porto Alegre do Tocantins'),(9673,27,'Porto Lemos'),(9674,27,'Porto Nacional'),(9675,27,'Praia Norte'),(9676,27,'Presidente Kennedy'),(9677,27,'Principe'),(9678,27,'Pugmil'),(9679,27,'Recursolandia'),(9680,27,'Riachinho'),(9681,27,'Rio da Conceicao'),(9682,27,'Rio dos Bois'),(9683,27,'Rio Sono'),(9684,27,'Sampaio'),(9685,27,'Sandolandia'),(9686,27,'Santa Fe do Araguaia'),(9687,27,'Santa Maria do Tocantins'),(9688,27,'Santa Rita do Tocantins'),(9689,27,'Santa Rosa do Tocantins'),(9690,27,'Santa Tereza do Tocantins'),(9691,27,'Santa Terezinha do Tocantins'),(9692,27,'Sao Bento do Tocantins'),(9693,27,'Sao Felix do Tocantins'),(9694,27,'Sao Miguel do Tocantins'),(9695,27,'Sao Salvador do Tocantins'),(9696,27,'Sao Sebastiao do Tocantins'),(9697,27,'Sao Valerio da Natividade'),(9698,27,'Silvanopolis'),(9699,27,'Sitio Novo do Tocantins'),(9700,27,'Sucupira'),(9701,27,'Taguatinga'),(9702,27,'Taipas do Tocantins'),(9703,27,'Talisma'),(9704,27,'Tamboril'),(9705,27,'Taquaralto'),(9706,27,'Taquarussu do Tocantins'),(9707,27,'Tocantinia'),(9708,27,'Tocantinopolis'),(9709,27,'Tupirama'),(9710,27,'Tupirata'),(9711,27,'Tupiratins'),(9712,27,'Venus'),(9713,27,'Wanderlandia'),(9714,27,'Xambioa');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller`
--

DROP TABLE IF EXISTS `controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller` (
  `id_controller` int(11) NOT NULL AUTO_INCREMENT,
  `nm_controller` varchar(400) DEFAULT NULL COMMENT '{"label":"Controller"}',
  `nm_modulo` varchar(50) DEFAULT NULL,
  `cs_exibir_combo` char(1) DEFAULT 'N',
  PRIMARY KEY (`id_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller`
--

LOCK TABLES `controller` WRITE;
/*!40000 ALTER TABLE `controller` DISABLE KEYS */;
INSERT INTO `controller` VALUES (1,'arte_marcial-artemarcial','Arte Marcial','S'),(2,'estilo-estilo','Estilo da Arte','S'),(3,'usuario-usuario','Usuario','S'),(4,'application-index','Aplicação','S'),(5,'cidade-cidade','Cidade','S'),(6,'estado-estado','Estado','S'),(7,'graduacao-graduacao','Graduação','S'),(8,'pagamento-pagamento','Pagamento','S'),(9,'PhpBoletoZf2\\Controller\\Itau','Boleto do Itau','S'),(10,'banco-banco','Banco','S'),(11,'principal-principal','Principal','S'),(12,'perfil-perfil','Perfil','S'),(13,'tipo_evento-tipoevento','Tipo de Evento','S'),(14,'evento-evento','Evento','S'),(15,'graduacao','Teste de Action ','S'),(16,'academia-academia','Academia','S'),(17,'atleta-atleta','Atleta','S'),(18,'categoria_peso-categoriapeso','Categoria de Peso','S'),(19,'categoria_idade-categoriaidade','Categoria de Idade','S'),(20,'regras_lutas-regraslutas','Regras de Luta','S'),(21,'detalhes_regras_luta-detalhesregrasluta','Definição das Regras de Luta','S'),(22,'inscricoes_evento-inscricoesevento','Inscrições nos Eventos','S'),(23,'cliente-cliente','Cliente','S'),(24,'permissao-permissao','Gerenciador de Permissao','S'),(25,'controller-controller','Controller','S'),(26,'action-action','Action','S'),(27,'xxx','xxx','S'),(28,'periodo_letivo-periodoletivo','Periodo Letivo','S'),(29,'sacramento-sacramento','Sacramento','S'),(30,'movimento_pastoral-movimentopastoral','Movimento Pastoral','S'),(31,'detalhe_periodo_letivo-detalheperiodoletivo1','Detalhe do Periodo Letivo','N'),(32,'detalhe_periodo_letivo','Nome da Controller Periodo Letivo','S'),(33,'paroquia-paroquia','Paroquias','S'),(34,'catequista-catequista','Catequista','S'),(35,'infra-infra','Infraestrutura','S'),(36,'formacao-formacao','Formaçao Academica','S'),(37,'detalhe_formacao-detalheformacao','Detalhe Formaçao Academica','S'),(38,'turma-turma','Turmas','S'),(39,'etapa-etapa','Etapas','S'),(40,'turma_catequisando-turmacatequisando','Enturmar Aluno','S'),(41,'responsavel_catequisando-responsavelcatequisando','Responsaveis dos Alunos','S'),(42,'grau_parentesco-grauparentesco','Grau de Parentesco','S');
/*!40000 ALTER TABLE `controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhe_formacao`
--

DROP TABLE IF EXISTS `detalhe_formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhe_formacao` (
  `id_detalhe_formacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_formacao` int(11) DEFAULT NULL,
  `ds_detalhe_formacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_detalhe_formacao`),
  KEY `FK_Reference_88` (`id_formacao`),
  CONSTRAINT `FK_Reference_88` FOREIGN KEY (`id_formacao`) REFERENCES `formacao` (`id_formacao`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Armazena os detalhes da formação, como o nome do curso de gr';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhe_formacao`
--

LOCK TABLES `detalhe_formacao` WRITE;
/*!40000 ALTER TABLE `detalhe_formacao` DISABLE KEYS */;
INSERT INTO `detalhe_formacao` VALUES (6,3,'teste1'),(7,3,'teste2'),(8,3,'teste3'),(9,1,'Ciencia da Computaçao');
/*!40000 ALTER TABLE `detalhe_formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhe_periodo_letivo`
--

DROP TABLE IF EXISTS `detalhe_periodo_letivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhe_periodo_letivo` (
  `id_detalhe_periodo_letivo` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_periodo_letivo` int(11) DEFAULT NULL,
  `dt_encontro` date DEFAULT NULL,
  PRIMARY KEY (`id_detalhe_periodo_letivo`),
  KEY `FK_Reference_124` (`id_periodo_letivo`),
  CONSTRAINT `FK_Reference_124` FOREIGN KEY (`id_periodo_letivo`) REFERENCES `periodo_letivo` (`id_periodo_letivo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='Data que qirão compor o periodo letivo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhe_periodo_letivo`
--

LOCK TABLES `detalhe_periodo_letivo` WRITE;
/*!40000 ALTER TABLE `detalhe_periodo_letivo` DISABLE KEYS */;
INSERT INTO `detalhe_periodo_letivo` VALUES (1,14,'2016-06-13'),(2,15,'0000-00-00'),(3,15,'0000-00-00'),(4,15,'0000-00-00'),(5,15,'0000-00-00'),(6,15,'0000-00-00'),(7,15,'0000-00-00'),(8,15,'0000-00-00'),(12,16,'0000-00-00'),(13,16,'0000-00-00'),(14,14,'2016-06-08'),(15,14,'2016-06-23'),(16,14,'2016-06-23'),(18,12,'2016-06-20'),(20,12,'2016-06-17'),(22,20,'2016-06-17'),(24,20,'2016-06-15'),(25,20,'2016-06-25'),(26,21,'2016-03-01'),(27,21,'2016-03-05'),(28,NULL,'1969-12-31');
/*!40000 ALTER TABLE `detalhe_periodo_letivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalhes_regras_luta`
--

DROP TABLE IF EXISTS `detalhes_regras_luta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalhes_regras_luta` (
  `id_detalhe_regra_luta` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_detalhe_regra_luta',
  `id_regra_luta` smallint(6) DEFAULT NULL COMMENT 'id_regra_luta',
  `id_categoria_idade` int(11) DEFAULT NULL COMMENT 'id_categoria_idade',
  `id_categoria_peso` int(11) DEFAULT NULL COMMENT 'id_categoria_peso',
  `id_usuario_cadastro` int(11) DEFAULT NULL COMMENT 'id_usuario_cadastro',
  `id_graduacao_inicial` smallint(6) DEFAULT NULL COMMENT 'id_graduacao_inicial',
  `id_graduacao_final` smallint(6) DEFAULT NULL COMMENT 'id_graduacao_final',
  `nr_idade_inicial` smallint(6) DEFAULT NULL COMMENT 'nr_idade_inicial',
  `nr_idade_final` smallint(6) DEFAULT NULL COMMENT 'nr_idade_final',
  `nr_peso_inicial` float DEFAULT NULL COMMENT 'nr_peso_inicial',
  `nr_peso_final` float DEFAULT NULL COMMENT 'nr_peso_final',
  `id_sexo` int(11) DEFAULT NULL COMMENT 'id_sexo',
  PRIMARY KEY (`id_detalhe_regra_luta`),
  KEY `index_det_regras_luta_sexo` (`id_sexo`),
  KEY `fk_tb_detal_reference_tb_gradu` (`id_graduacao_final`),
  KEY `fk_tb_detal_reference_tb_gradu2` (`id_graduacao_inicial`),
  KEY `fk_tb_detal_reference_tb_regra` (`id_regra_luta`),
  KEY `fk_tb_detal_reference_tb_usuar` (`id_usuario_cadastro`),
  KEY `fk_tb_detal_reference_tb_categ` (`id_categoria_idade`),
  KEY `fk_tb_detal_reference_tb_categ2` (`id_categoria_peso`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`id_regra_luta`) REFERENCES `regras_lutas` (`id_regra_luta`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`id_graduacao_inicial`) REFERENCES `graduacoes` (`id_graduacao`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`id_graduacao_final`) REFERENCES `graduacoes` (`id_graduacao`),
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  CONSTRAINT `FK_Reference_44` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_det_regras_luta_references_sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_detal_reference_tb_categ` FOREIGN KEY (`id_categoria_idade`) REFERENCES `categoria_idade` (`id_categoria_idade`),
  CONSTRAINT `fk_tb_detal_reference_tb_categ2` FOREIGN KEY (`id_categoria_peso`) REFERENCES `categoria_peso` (`id_categoria_peso`),
  CONSTRAINT `fk_tb_detal_reference_tb_gradu` FOREIGN KEY (`id_graduacao_final`) REFERENCES `graduacoes` (`id_graduacao`),
  CONSTRAINT `fk_tb_detal_reference_tb_gradu2` FOREIGN KEY (`id_graduacao_inicial`) REFERENCES `graduacoes` (`id_graduacao`),
  CONSTRAINT `fk_tb_detal_reference_tb_regra` FOREIGN KEY (`id_regra_luta`) REFERENCES `regras_lutas` (`id_regra_luta`),
  CONSTRAINT `fk_tb_detal_reference_tb_usuar` FOREIGN KEY (`id_usuario_cadastro`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='tb_detalhes_regras_luta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalhes_regras_luta`
--

LOCK TABLES `detalhes_regras_luta` WRITE;
/*!40000 ALTER TABLE `detalhes_regras_luta` DISABLE KEYS */;
INSERT INTO `detalhes_regras_luta` VALUES (1,3,1,1,1,1,2,7,8,0,22,1),(2,3,1,2,1,1,2,7,8,22.1,24,1),(3,3,1,3,1,1,2,7,8,24.1,26,1),(4,3,1,4,1,1,2,7,8,26.1,28,1),(5,3,1,5,1,1,2,7,8,28.1,30,1),(6,3,1,6,1,1,2,7,8,30.1,32,1),(7,3,1,7,1,1,2,7,8,32.1,34,1),(8,3,1,8,1,1,2,7,8,34.1,36,1),(9,3,1,9,1,1,2,7,8,36.1,39,1),(10,3,1,10,1,1,2,7,8,39.1,80,1),(11,3,1,1,1,1,2,7,8,0,22,2),(12,3,1,2,1,1,2,7,8,22.1,24,2),(13,3,1,3,1,1,2,7,8,24.1,26,2),(14,3,1,4,1,1,2,7,8,26.1,28,2),(15,3,1,5,1,1,2,7,8,28.1,30,2),(16,3,1,6,1,1,2,7,8,30.1,32,2),(17,3,1,7,1,1,2,7,8,32.1,34,2),(18,3,1,8,1,1,2,7,8,34.1,36,2),(19,3,1,9,1,1,2,7,8,36.1,39,2),(20,3,1,10,1,1,2,7,8,39.1,80,2),(21,3,2,1,1,1,2,9,11,0,30,1),(22,3,2,2,1,1,2,9,11,30.1,32,1),(23,3,2,3,1,1,2,9,11,32.1,34,1),(24,3,2,4,1,1,2,9,11,34.1,36,1),(25,3,2,5,1,1,2,9,11,36.1,39,1),(26,3,2,6,1,1,2,9,11,39.1,42,1),(27,3,2,7,1,1,2,9,11,42.1,45,1),(28,3,2,8,1,1,2,9,11,45.1,48,1),(29,3,2,9,1,1,2,9,11,48.1,52,1),(30,3,2,10,1,1,2,9,11,52.1,100,1),(31,3,2,1,1,1,2,9,11,0,30,2),(32,3,2,2,1,1,2,9,11,30.1,32,2),(33,3,2,3,1,1,2,9,11,32.1,34,2),(34,3,2,4,1,1,2,9,11,34.1,36,2),(35,3,2,5,1,1,2,9,11,36.1,39,2),(36,3,2,6,1,1,2,9,11,39.1,42,2),(37,3,2,7,1,1,2,9,11,42.1,45,2),(38,3,2,8,1,1,2,9,11,45.1,48,2),(39,3,2,9,1,1,2,9,11,48.1,52,2),(40,3,2,10,1,1,2,9,11,52.1,100,2),(41,3,3,1,1,1,2,12,14,0,33,1),(42,3,3,2,1,1,2,12,14,33.1,37,1),(43,3,3,3,1,1,2,12,14,37.1,41,1),(44,3,3,4,1,1,2,12,14,41.1,45,1),(45,3,3,5,1,1,2,12,14,45.1,49,1),(46,3,3,6,1,1,2,12,14,49.1,53,1),(47,3,3,7,1,1,2,12,14,53.1,57,1),(48,3,3,8,1,1,2,12,14,57.1,61,1),(49,3,3,9,1,1,2,12,14,61.1,65,1),(50,3,3,10,1,1,2,12,14,65.1,120,1),(51,3,3,1,1,1,2,12,14,0,29,2),(52,3,3,2,1,1,2,12,14,29.1,33,2),(53,3,3,3,1,1,2,12,14,33.1,37,2),(54,3,3,4,1,1,2,12,14,37.1,41,2),(55,3,3,5,1,1,2,12,14,41.1,44,2),(56,3,3,6,1,1,2,12,14,44.1,47,2),(57,3,3,7,1,1,2,12,14,47.1,51,2),(58,3,3,8,1,1,2,12,14,51.1,55,2),(59,3,3,9,1,1,2,12,14,55.1,59,2),(60,3,3,10,1,1,2,12,14,59.1,120,2),(61,3,5,1,1,1,2,15,17,0,45,1),(62,3,5,2,1,1,2,15,17,45.1,48,1),(63,3,5,3,1,1,2,15,17,48.1,51,1),(64,3,5,4,1,1,2,15,17,51.1,55,1),(65,3,5,5,1,1,2,15,17,55.1,59,1),(66,3,5,6,1,1,2,15,17,59.1,63,1),(67,3,5,7,1,1,2,15,17,63.1,68,1),(68,3,5,8,1,1,2,15,17,68.1,73,1),(69,3,5,9,1,1,2,15,17,73.1,78,1),(70,3,5,10,1,1,2,15,17,78.1,150,1),(71,3,5,1,1,1,2,15,17,0,42,2),(72,3,5,2,1,1,2,15,17,42.1,44,2),(73,3,5,3,1,1,2,15,17,44.1,46,2),(74,3,5,4,1,1,2,15,17,46.1,49,2),(75,3,5,5,1,1,2,15,17,49.1,52,2),(76,3,5,6,1,1,2,15,17,52.1,55,2),(77,3,5,7,1,1,2,15,17,55.1,59,2),(78,3,5,8,1,1,2,15,17,59.1,63,2),(79,3,5,9,1,1,2,15,17,63.1,68,2),(80,3,5,10,1,1,2,15,17,68.1,120,2),(81,3,4,1,1,1,2,16,21,0,54,1),(82,3,4,3,1,1,2,16,21,54.1,58,1),(83,3,4,5,1,1,2,16,21,58.1,63,1),(84,3,4,6,1,1,2,16,21,63.1,68,1),(85,3,4,7,1,1,2,16,21,68.1,74,1),(86,3,4,8,1,1,2,16,21,74.1,73,1),(87,3,4,9,1,1,2,16,21,80.1,87,1),(88,3,4,10,1,1,2,16,21,87.1,200,1),(89,3,4,1,1,1,2,16,21,0,46,2),(90,3,4,3,1,1,2,16,21,46.1,49,2),(91,3,4,5,1,1,2,16,21,49.1,53,2),(92,3,4,6,1,1,2,16,21,53.1,57,2),(93,3,4,7,1,1,2,16,21,57.1,62,2),(94,3,4,8,1,1,2,16,21,62.1,67,2),(95,3,4,9,1,1,2,16,21,67.1,73,2),(96,3,4,10,1,1,2,16,21,73.1,200,2),(97,3,6,1,1,1,2,16,100,0,54,1),(98,3,6,3,1,1,2,16,100,54.1,58,1),(99,3,6,5,1,1,2,16,100,58.1,63,1),(100,3,6,6,1,1,2,16,100,63.1,68,1),(101,3,6,7,1,1,2,16,100,68.1,74,1),(102,3,6,8,1,1,2,16,100,74.1,73,1),(103,3,6,9,1,1,2,16,100,80.1,87,1),(104,3,6,10,1,1,2,16,100,87.1,200,1),(105,3,6,1,1,1,2,16,100,0,46,2),(106,3,6,3,1,1,2,16,100,46.1,49,2),(107,3,6,5,1,1,2,16,100,49.1,53,2),(108,3,6,6,1,1,2,16,100,53.1,57,2),(109,3,6,7,1,1,2,16,100,57.1,62,2),(110,3,6,8,1,1,2,16,100,62.1,67,2),(111,3,6,9,1,1,2,16,100,67.1,73,2),(112,3,6,10,1,1,2,16,100,73.1,200,2),(113,3,7,3,1,1,2,31,34,0,58,1),(114,3,7,6,1,1,2,31,34,58.1,68,1),(115,3,7,8,1,1,2,31,34,68.1,80,1),(116,3,7,10,1,1,2,31,34,80.1,200,1),(117,3,7,3,1,1,2,31,34,0,49,2),(118,3,7,6,1,1,2,31,34,49.1,57,2),(119,3,7,8,1,1,2,31,34,57.1,67,2),(120,3,7,10,1,1,2,31,34,67.1,200,2),(121,3,8,3,1,1,2,35,44,0,58,1),(122,3,8,6,1,1,2,35,44,58.1,68,1),(123,3,8,8,1,1,2,35,44,68.1,80,1),(124,3,8,10,1,1,2,35,44,80.1,200,1),(125,3,8,3,1,1,2,35,44,0,49,2),(126,3,8,6,1,1,2,35,44,49.1,57,2),(127,3,8,8,1,1,2,35,44,57.1,67,2),(128,3,8,10,1,1,2,35,44,67.1,200,2),(129,3,9,3,1,1,2,45,55,0,58,1),(130,3,9,6,1,1,2,45,55,58.1,68,1),(131,3,9,8,1,1,2,45,55,68.1,80,1),(132,3,9,10,1,1,2,45,55,80.1,200,1),(133,3,9,3,1,1,2,45,55,0,49,2),(134,3,9,6,1,1,2,45,55,49.1,57,2),(135,3,9,8,1,1,2,45,55,57.1,67,2),(136,3,9,10,1,1,2,45,55,67.1,200,2),(137,7,1,1,1,1,2,7,8,0,22,1),(138,7,1,2,1,1,2,7,8,22.1,24,1),(139,7,1,3,1,1,2,7,8,24.1,26,1),(140,7,1,4,1,1,2,7,8,26.1,28,1),(141,7,1,5,1,1,2,7,8,28.1,30,1),(142,7,1,6,1,1,2,7,8,30.1,32,1),(143,7,1,7,1,1,2,7,8,32.1,34,1),(144,7,1,8,1,1,2,7,8,34.1,36,1),(145,7,1,9,1,1,2,7,8,36.1,39,1),(146,7,1,10,1,1,2,7,8,39.1,80,1),(147,7,1,1,1,1,2,7,8,0,22,2),(148,7,1,2,1,1,2,7,8,22.1,24,2),(149,7,1,3,1,1,2,7,8,24.1,26,2),(150,7,1,4,1,1,2,7,8,26.1,28,2),(151,7,1,5,1,1,2,7,8,28.1,30,2),(152,7,1,6,1,1,2,7,8,30.1,32,2),(153,7,1,7,1,1,2,7,8,32.1,34,2),(154,7,1,8,1,1,2,7,8,34.1,36,2),(155,7,1,9,1,1,2,7,8,36.1,39,2),(156,7,1,10,1,1,2,7,8,39.1,80,2),(157,7,2,1,1,1,2,9,11,0,30,1),(158,7,2,2,1,1,2,9,11,30.1,32,1),(159,7,2,3,1,1,2,9,11,32.1,34,1),(160,7,2,4,1,1,2,9,11,34.1,36,1),(161,7,2,5,1,1,2,9,11,36.1,39,1),(162,7,2,6,1,1,2,9,11,39.1,42,1),(163,7,2,7,1,1,2,9,11,42.1,45,1),(164,7,2,8,1,1,2,9,11,45.1,48,1),(165,7,2,9,1,1,2,9,11,48.1,52,1),(166,7,2,10,1,1,2,9,11,52.1,100,1),(167,7,2,1,1,1,2,9,11,0,30,2),(168,7,2,2,1,1,2,9,11,30.1,32,2),(169,7,2,3,1,1,2,9,11,32.1,34,2),(170,7,2,4,1,1,2,9,11,34.1,36,2),(171,7,2,5,1,1,2,9,11,36.1,39,2),(172,7,2,6,1,1,2,9,11,39.1,42,2),(173,7,2,7,1,1,2,9,11,42.1,45,2),(174,7,2,8,1,1,2,9,11,45.1,48,2),(175,7,2,9,1,1,2,9,11,48.1,52,2),(176,7,2,10,1,1,2,9,11,52.1,100,2),(177,7,3,1,1,1,2,12,14,0,33,1),(178,7,3,2,1,1,2,12,14,33.1,37,1),(179,7,3,3,1,1,2,12,14,37.1,41,1),(180,7,3,4,1,1,2,12,14,41.1,45,1),(181,7,3,5,1,1,2,12,14,45.1,49,1),(182,7,3,6,1,1,2,12,14,49.1,53,1),(183,7,3,7,1,1,2,12,14,53.1,57,1),(184,7,3,8,1,1,2,12,14,57.1,61,1),(185,7,3,9,1,1,2,12,14,61.1,65,1),(186,7,3,10,1,1,2,12,14,65.1,120,1),(187,7,3,1,1,1,2,12,14,0,29,2),(188,7,3,2,1,1,2,12,14,29.1,33,2),(189,7,3,3,1,1,2,12,14,33.1,37,2),(190,7,3,4,1,1,2,12,14,37.1,41,2),(191,7,3,5,1,1,2,12,14,41.1,44,2),(192,7,3,6,1,1,2,12,14,44.1,47,2),(193,7,3,7,1,1,2,12,14,47.1,51,2),(194,7,3,8,1,1,2,12,14,51.1,55,2),(195,7,3,9,1,1,2,12,14,55.1,59,2),(196,7,3,10,1,1,2,12,14,59.1,120,2),(197,7,5,1,1,1,2,15,17,0,45,1),(198,7,5,2,1,1,2,15,17,45.1,48,1),(199,7,5,3,1,1,2,15,17,48.1,51,1),(200,7,5,4,1,1,2,15,17,51.1,55,1),(201,7,5,5,1,1,2,15,17,55.1,59,1),(202,7,5,6,1,1,2,15,17,59.1,63,1),(203,7,5,7,1,1,2,15,17,63.1,68,1),(204,7,5,8,1,1,2,15,17,68.1,73,1),(205,7,5,9,1,1,2,15,17,73.1,78,1),(206,7,5,10,1,1,2,15,17,78.1,150,1),(207,7,5,1,1,1,2,15,17,0,42,2),(208,7,5,2,1,1,2,15,17,42.1,44,2),(209,7,5,3,1,1,2,15,17,44.1,46,2),(210,7,5,4,1,1,2,15,17,46.1,49,2),(211,7,5,5,1,1,2,15,17,49.1,52,2),(212,7,5,6,1,1,2,15,17,52.1,55,2),(213,7,5,7,1,1,2,15,17,55.1,59,2),(214,7,5,8,1,1,2,15,17,59.1,63,2),(215,7,5,9,1,1,2,15,17,63.1,68,2),(216,7,5,10,1,1,2,15,17,68.1,120,2),(217,7,4,1,1,1,2,16,21,0,54,1),(218,7,4,3,1,1,2,16,21,54.1,58,1),(219,7,4,5,1,1,2,16,21,58.1,63,1),(220,7,4,6,1,1,2,16,21,63.1,68,1),(221,7,4,7,1,1,2,16,21,68.1,74,1),(222,7,4,8,1,1,2,16,21,74.1,73,1),(223,7,4,9,1,1,2,16,21,80.1,87,1),(224,7,4,10,1,1,2,16,21,87.1,200,1),(225,7,4,1,1,1,2,16,21,0,46,2),(226,7,4,3,1,1,2,16,21,46.1,49,2),(227,7,4,5,1,1,2,16,21,49.1,53,2),(228,7,4,6,1,1,2,16,21,53.1,57,2),(229,7,4,7,1,1,2,16,21,57.1,62,2),(230,7,4,8,1,1,2,16,21,62.1,67,2),(231,7,4,9,1,1,2,16,21,67.1,73,2),(232,7,4,10,1,1,2,16,21,73.1,200,2),(233,7,6,1,1,1,2,16,100,0,54,1),(234,7,6,3,1,1,2,16,100,54.1,58,1),(235,7,6,5,1,1,2,16,100,58.1,63,1),(236,7,6,6,1,1,2,16,100,63.1,68,1),(237,7,6,7,1,1,2,16,100,68.1,74,1),(238,7,6,8,1,1,2,16,100,74.1,73,1),(239,7,6,9,1,1,2,16,100,80.1,87,1),(240,7,6,10,1,1,2,16,100,87.1,200,1),(241,7,6,1,1,1,2,16,100,0,46,2),(242,7,6,3,1,1,2,16,100,46.1,49,2),(243,7,6,5,1,1,2,16,100,49.1,53,2),(244,7,6,6,1,1,2,16,100,53.1,57,2),(245,7,6,7,1,1,2,16,100,57.1,62,2),(246,7,6,8,1,1,2,16,100,62.1,67,2),(247,7,6,9,1,1,2,16,100,67.1,73,2),(248,7,6,10,1,1,2,16,100,73.1,200,2),(249,7,7,3,1,1,2,31,34,0,58,1),(250,7,7,6,1,1,2,31,34,58.1,68,1),(251,7,7,8,1,1,2,31,34,68.1,80,1),(252,7,7,10,1,1,2,31,34,80.1,200,1),(253,7,7,3,1,1,2,31,34,0,49,2),(254,7,7,6,1,1,2,31,34,49.1,57,2),(255,7,7,8,1,1,2,31,34,57.1,67,2),(256,7,7,10,1,1,2,31,34,67.1,200,2),(257,7,8,3,1,1,2,35,44,0,58,1),(258,7,8,6,1,1,2,35,44,58.1,68,1),(259,7,8,8,1,1,2,35,44,68.1,80,1),(260,7,8,10,1,1,2,35,44,80.1,200,1),(261,7,8,3,1,1,2,35,44,0,49,2),(262,7,8,6,1,1,2,35,44,49.1,57,2),(263,7,8,8,1,1,2,35,44,57.1,67,2),(264,7,8,10,1,1,2,35,44,67.1,200,2),(265,7,9,3,1,1,2,45,55,0,58,1),(266,7,9,6,1,1,2,45,55,58.1,68,1),(267,7,9,8,1,1,2,45,55,68.1,80,1),(268,7,9,10,1,1,2,45,55,80.1,200,1),(269,7,9,3,1,1,2,45,55,0,49,2),(270,7,9,6,1,1,2,45,55,49.1,57,2),(271,7,9,8,1,1,2,45,55,57.1,67,2),(272,7,9,10,1,1,2,45,55,67.1,200,2),(273,7,1,1,1,3,5,7,8,0,22,1),(274,7,1,1,1,6,9,7,8,0,22,1),(275,7,1,1,1,10,11,7,8,0,22,1),(276,7,6,1,1,3,6,16,100,0,54,1),(277,7,6,1,1,7,9,16,100,0,54,1),(278,7,6,1,1,10,11,16,100,0,54,1);
/*!40000 ALTER TABLE `detalhes_regras_luta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id_email` int(11) NOT NULL AUTO_INCREMENT,
  `em_email` varchar(200) DEFAULT NULL COMMENT '{"label":"E-mail"}',
  `id_situacao` int(11) NOT NULL,
  PRIMARY KEY (`id_email`),
  KEY `ix_emails_situacao` (`id_situacao`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`),
  CONSTRAINT `fk_emails_situacao` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'alyssontkd@gmail.com',1),(2,'ronaldo.r.melo@gmail.com',1),(3,'teste001@gmail.com',1),(4,'teste002@gmail.com',1),(5,'teste003@gmail.com',1),(6,'teste004@gmail.com',1),(7,'1central.millenium@gmail.com',1),(8,'alysson.vicuna@gmail.com',1);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `nm_logradouro` varchar(200) DEFAULT NULL COMMENT '{"label":"Logradouro"}',
  `nr_numero` varchar(45) DEFAULT NULL COMMENT '{"label":"Número"}',
  `nm_complemento` varchar(200) DEFAULT NULL COMMENT '{"label":"Complemento"}',
  `nm_bairro` varchar(200) DEFAULT NULL COMMENT '{"label":"Bairro"}',
  `nr_cep` varchar(8) DEFAULT NULL COMMENT '{"label":"Cep"}',
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `ix_endereco_cidades` (`id_cidade`),
  CONSTRAINT `fk_endereco_cidades1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua sem nome casa S/N','08','Perto do Terminal','Estrutural','00788978',4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esqueci_senha`
--

DROP TABLE IF EXISTS `esqueci_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esqueci_senha` (
  `id_esqueci_senha` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `tx_identificacao` varchar(60) DEFAULT NULL,
  `id_situacao` int(11) DEFAULT NULL,
  `dt_solicitacao` datetime DEFAULT NULL,
  `dt_alteracao` datetime NOT NULL,
  PRIMARY KEY (`id_esqueci_senha`),
  KEY `ix_esqueci_senha_usuarios` (`id_usuario`),
  KEY `ix_esqueci_senha_situacoes` (`id_situacao`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`),
  CONSTRAINT `fk_esqueci_senha_situacoes1` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_esqueci_senha_usuarios1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esqueci_senha`
--

LOCK TABLES `esqueci_senha` WRITE;
/*!40000 ALTER TABLE `esqueci_senha` DISABLE KEYS */;
INSERT INTO `esqueci_senha` VALUES (1,8,'9cbf6bab3c6b428fafd6ebd7965df386',1,'2015-07-25 09:35:13','0000-00-00 00:00:00'),(2,7,'1e4bf63079dd38bff6fd2bcc65bcca4f',1,'2015-07-25 09:57:15','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `esqueci_senha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nm_estado` varchar(150) DEFAULT NULL COMMENT '{"label":"Estado"}',
  `sg_estado` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Acre','AC'),(2,'Alagoas','AL'),(3,'Amazonas','AM'),(4,'Amapá','AP'),(5,'Bahia','BA'),(6,'Ceará','CE'),(7,'Distrito Federal','DF'),(8,'Espírito Santo','ES'),(9,'Goiás','GO'),(10,'Maranhão','MA'),(11,'Minas Gerais','MG'),(12,'Mato Grosso do Sul','MS'),(13,'Mato Grosso','MT'),(14,'Pará','PA'),(15,'Paraíba','PB'),(16,'Pernambuco','PE'),(17,'Piauí','PI'),(18,'Paraná','PN'),(19,'Rio de Janeiro','RJ'),(20,'Rio Grande do Norte','RN'),(21,'Rondônia','RO'),(22,'Roraima','RR'),(23,'Rio Grande do Sul','RS'),(24,'Santa Catarina','SC'),(25,'Sergipe','SE'),(26,'São Paulo','SP'),(27,'Tocantins','TO');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT,
  `nm_estado_civil` varchar(45) DEFAULT NULL COMMENT '{"label":"Estado civil"}',
  PRIMARY KEY (`id_estado_civil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (1,'Casado'),(2,'Solteiro'),(3,'Viúvo'),(4,'Divorciado');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilos`
--

DROP TABLE IF EXISTS `estilos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estilos` (
  `id_estilo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id_estilo',
  `nm_estilo` varchar(20) NOT NULL COMMENT 'nm_estilo',
  `ds_estilo` varchar(250) DEFAULT NULL COMMENT 'ds_estilo',
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilos`
--

LOCK TABLES `estilos` WRITE;
/*!40000 ALTER TABLE `estilos` DISABLE KEYS */;
INSERT INTO `estilos` VALUES (1,'WTF','World Taekwondo Federation'),(2,'ITF','International Taekwondo Federation');
/*!40000 ALTER TABLE `estilos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etapa` (
  `id_etapa` int(11) NOT NULL AUTO_INCREMENT,
  `nm_etapa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_etapa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Nesta tabela serão armazenadas todas as etapas que um aluno ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (1,'Sementinha'),(2,'Eucaristia I'),(3,'Eucaristia II'),(4,'Perseverança'),(5,'Pre-Crisma'),(6,'Crisma I'),(7,'Crisma II'),(8,'Adultos I'),(9,'Adultos II');
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_evento',
  `id_tipo_evento` smallint(6) DEFAULT NULL COMMENT 'id_tipo_evento',
  `nm_evento` varchar(100) NOT NULL COMMENT 'nm_evento',
  `dt_evento` datetime NOT NULL COMMENT 'dt_evento',
  `vl_inscricao_colorida` decimal(10,2) DEFAULT '0.00' COMMENT 'vl_inscricao_colorida',
  `vl_inscricao_preta` decimal(10,2) DEFAULT '0.00' COMMENT 'vl_inscricao_preta',
  `id_regra_luta` smallint(6) NOT NULL,
  `bo_inativo` bit(1) DEFAULT b'0',
  `id_cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `FK_TB_EVENT_REFERENCE_TB_TIPOS` (`id_tipo_evento`),
  KEY `IX_REGRA_LUTA` (`id_regra_luta`),
  KEY `IX_CIDADE` (`id_cidade`),
  CONSTRAINT `FK_EVENTO_REFERENCES_CIDADE` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EVENTO_REFERENCES_REGRAS_LUTA` FOREIGN KEY (`id_regra_luta`) REFERENCES `regras_lutas` (`id_regra_luta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`id_tipo_evento`) REFERENCES `tipos_eventos` (`id_tipo_evento`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`id_regra_luta`) REFERENCES `regras_lutas` (`id_regra_luta`),
  CONSTRAINT `FK_TB_EVENT_REFERENCE_TB_TIPOS` FOREIGN KEY (`id_tipo_evento`) REFERENCES `tipos_eventos` (`id_tipo_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='tb_eventos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,1,'1ª Copa Brasil','2015-09-08 21:47:08',41.69,60.36,3,'\0',568),(2,1,'Brazil Open 2015 - LNT','2016-10-20 21:47:08',35.00,54.00,7,'\0',4298),(3,1,'Brazil Open 2015 - CBTKD','2015-11-16 21:47:08',32.00,36.00,3,'',547),(4,1,'Rio Verde Open','2015-12-20 21:47:08',28.00,45.00,3,'\0',4),(5,1,'Copa Pantanal','2015-11-16 00:00:00',45.00,55.00,7,'\0',968),(6,1,'3º GranPrix Vicuña','2015-10-18 01:00:00',41.58,60.00,7,'\0',5185),(7,1,'Wilmar Open de Taekwondo','2015-08-29 00:00:00',41.50,55.00,3,'\0',5064),(8,1,'Evento Teste','2016-06-24 00:00:00',222.00,222.00,1,'',37);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacao`
--

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formacao` (
  `id_formacao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_formacao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_formacao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Armazena as opções de Formação Academica de um Catequista';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacao`
--

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
INSERT INTO `formacao` VALUES (1,'Nivel Superior - Bacharel'),(2,'Nivel Superior - Licenciatura'),(3,'Nivel Superior - Tecnologo'),(4,'Ensino Fundamental'),(5,'Ensino Médio'),(6,'Pos-Graduaçao - Especializaçao'),(7,'Pos-Graduaçao - Mestrado'),(8,'Pos-Graduaçao - Doutorado'),(9,'Pos-Graduaçao - Pos Doutorado');
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequencia_turma`
--

DROP TABLE IF EXISTS `frequencia_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequencia_turma` (
  `id_frequencia_turma` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_turma_catequisando` bigint(20) DEFAULT NULL,
  `id_detalhe_periodo_letivo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_frequencia_turma`),
  KEY `FK_Reference_130` (`id_turma_catequisando`),
  KEY `FK_Reference_131` (`id_detalhe_periodo_letivo`),
  CONSTRAINT `FK_Reference_130` FOREIGN KEY (`id_turma_catequisando`) REFERENCES `turma_catequisando` (`id_turma_catequisando`),
  CONSTRAINT `FK_Reference_131` FOREIGN KEY (`id_detalhe_periodo_letivo`) REFERENCES `detalhe_periodo_letivo` (`id_detalhe_periodo_letivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequencia_turma`
--

LOCK TABLES `frequencia_turma` WRITE;
/*!40000 ALTER TABLE `frequencia_turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `frequencia_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduacoes`
--

DROP TABLE IF EXISTS `graduacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graduacoes` (
  `id_graduacao` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id_graduacao',
  `id_estilo` smallint(6) NOT NULL COMMENT 'id_estilo',
  `id_arte_marcial` smallint(6) NOT NULL COMMENT 'id_arte_marcial',
  `nm_graduacao` varchar(40) NOT NULL COMMENT 'nm_graduacao',
  `sg_graduacao` char(15) DEFAULT NULL COMMENT 'sg_graduacao',
  PRIMARY KEY (`id_graduacao`),
  KEY `FK_GRADU_REFERENCE_ARTE` (`id_arte_marcial`),
  KEY `FK_GRADU_REFERENCE_ESTIL` (`id_estilo`),
  CONSTRAINT `FK_GRADU_REFERENCE_ARTE` FOREIGN KEY (`id_arte_marcial`) REFERENCES `arte_marcial` (`id_arte_marcial`),
  CONSTRAINT `FK_GRADU_REFERENCE_ESTIL` FOREIGN KEY (`id_estilo`) REFERENCES `estilos` (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='tb_graduacoes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduacoes`
--

LOCK TABLES `graduacoes` WRITE;
/*!40000 ALTER TABLE `graduacoes` DISABLE KEYS */;
INSERT INTO `graduacoes` VALUES (1,1,1,'Faixa Branca','10ª GUB'),(2,1,1,'Ponta Amarela','09ª GUB'),(3,1,1,'Faixa Amarela','08ª GUB'),(4,1,1,'Ponta Verde','07ª GUB'),(5,1,1,'Faixa Verde','06ª GUB'),(6,1,1,'Ponta Azul','05ª GUB'),(7,1,1,'Faixa Azul','04ª GUB'),(8,1,1,'Ponta Vermelha','03ª GUB'),(9,1,1,'Faixa Vermelha','02ª GUB'),(10,1,1,'Ponta Preta','01ª GUB'),(11,1,1,'Faixa Preta','01ª a 10ª DAN');
/*!40000 ALTER TABLE `graduacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grau_parentesco`
--

DROP TABLE IF EXISTS `grau_parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grau_parentesco` (
  `id_grau_parentesco` int(11) NOT NULL AUTO_INCREMENT,
  `nm_grau_parentesco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_grau_parentesco`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Armazena o Grau de parentesco entre o catequisando e o respo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grau_parentesco`
--

LOCK TABLES `grau_parentesco` WRITE;
/*!40000 ALTER TABLE `grau_parentesco` DISABLE KEYS */;
INSERT INTO `grau_parentesco` VALUES (1,'Pai'),(2,'Mae'),(3,'Tio'),(4,'Tia'),(5,'Irmao'),(6,'Irma'),(7,'Avo'),(8,'Avoh'),(9,'Padrasto'),(10,'Madrasta');
/*!40000 ALTER TABLE `grau_parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscricoes_evento`
--

DROP TABLE IF EXISTS `inscricoes_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscricoes_evento` (
  `id_inscricao_evento` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id_inscricao_evento',
  `id_evento` int(11) DEFAULT NULL COMMENT 'id_evento',
  `id_atleta` int(11) DEFAULT NULL COMMENT 'id_atleta',
  `dt_inscricao` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'dt_inscricao',
  PRIMARY KEY (`id_inscricao_evento`),
  KEY `fk_tb_inscr_reference_tb_atlet` (`id_atleta`),
  KEY `fk_tb_inscr_reference_tb_event` (`id_evento`),
  CONSTRAINT `fk_tb_inscr_reference_tb_atlet` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`id_atleta`),
  CONSTRAINT `fk_tb_inscr_reference_tb_event` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='tb_inscricoes_evento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscricoes_evento`
--

LOCK TABLES `inscricoes_evento` WRITE;
/*!40000 ALTER TABLE `inscricoes_evento` DISABLE KEYS */;
INSERT INTO `inscricoes_evento` VALUES (1,1,18,'2015-08-20 03:00:00'),(2,1,1,'2015-08-28 03:00:00'),(3,2,38,'2015-08-19 04:13:25');
/*!40000 ALTER TABLE `inscricoes_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id_Login` int(11) NOT NULL AUTO_INCREMENT,
  `pw_senha` varchar(40) DEFAULT NULL COMMENT '{"label":"Senha"}',
  `nr_tentativas` int(11) DEFAULT NULL COMMENT '{"label":"Tentativas"}',
  `dt_visita` datetime DEFAULT NULL COMMENT '{"label":"Data da última visita"}',
  `dt_registro` datetime DEFAULT NULL COMMENT '{"label":"Data de Registro"}',
  `id_usuario` int(11) NOT NULL,
  `id_email` int(11) NOT NULL,
  `id_situacao` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_Login`),
  KEY `ix_Login_usuarios` (`id_usuario`),
  KEY `ix_Login_emails` (`id_email`),
  KEY `ix_Login_situacao` (`id_situacao`),
  KEY `ix_Login_perfil` (`id_perfil`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`),
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `fk_Login_emails` FOREIGN KEY (`id_email`) REFERENCES `email` (`id_email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Login_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Login_situacao` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Login_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'e10adc3949ba59abbe56e057f20f883e',1,'2014-08-27 21:53:33','2014-08-27 21:53:37',1,1,1,1),(2,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-01-30 15:01:11',2,2,1,2),(3,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:55',3,3,1,2),(4,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:57',4,4,1,2),(5,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:53',5,5,1,2),(6,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:20',6,6,1,2),(7,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:34',7,7,1,2),(8,'d04cbb637213179e1f8269f75d5d7cfc',NULL,NULL,'2015-02-20 17:02:44',8,8,1,2);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimento_pastoral`
--

DROP TABLE IF EXISTS `movimento_pastoral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimento_pastoral` (
  `id_movimento_pastoral` int(11) NOT NULL AUTO_INCREMENT,
  `nm_movimento_pastoral` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_movimento_pastoral`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabela responsável por armazenar todos os movimentos que a c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimento_pastoral`
--

LOCK TABLES `movimento_pastoral` WRITE;
/*!40000 ALTER TABLE `movimento_pastoral` DISABLE KEYS */;
INSERT INTO `movimento_pastoral` VALUES (1,'Campanha da Fraternidade'),(2,'Amor nas Familias'),(3,'Lares Felizes');
/*!40000 ALTER TABLE `movimento_pastoral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais_catequisando`
--

DROP TABLE IF EXISTS `pais_catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais_catequisando` (
  `id_pais_catequisando` int(11) NOT NULL AUTO_INCREMENT,
  `id_pai` int(11) DEFAULT NULL,
  `id_mae` int(11) DEFAULT NULL,
  `id_catequisando` int(11) DEFAULT NULL,
  `id_situacao_conjugal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pais_catequisando`),
  KEY `FK_Reference_117` (`id_pai`),
  KEY `FK_Reference_118` (`id_mae`),
  KEY `FK_Reference_119` (`id_catequisando`),
  KEY `FK_Reference_120` (`id_situacao_conjugal`),
  CONSTRAINT `FK_Reference_117` FOREIGN KEY (`id_pai`) REFERENCES `responsavel` (`id_responsavel`),
  CONSTRAINT `FK_Reference_118` FOREIGN KEY (`id_mae`) REFERENCES `responsavel` (`id_responsavel`),
  CONSTRAINT `FK_Reference_119` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`),
  CONSTRAINT `FK_Reference_120` FOREIGN KEY (`id_situacao_conjugal`) REFERENCES `situacao_conjugal` (`id_situacao_conjugal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais_catequisando`
--

LOCK TABLES `pais_catequisando` WRITE;
/*!40000 ALTER TABLE `pais_catequisando` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais_catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paroquia`
--

DROP TABLE IF EXISTS `paroquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paroquia` (
  `id_paroquia` int(11) NOT NULL AUTO_INCREMENT,
  `id_cidade` int(11) DEFAULT NULL,
  `nm_paroquia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_paroquia`),
  KEY `FK_Reference_102` (`id_cidade`),
  CONSTRAINT `FK_Reference_102` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Armazena os dados da paróquia onde o catequisando realizou o';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paroquia`
--

LOCK TABLES `paroquia` WRITE;
/*!40000 ALTER TABLE `paroquia` DISABLE KEYS */;
INSERT INTO `paroquia` VALUES (2,38,'Teste');
/*!40000 ALTER TABLE `paroquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT COMMENT '{"label":"Id Perfil"}',
  `nm_perfil` varchar(100) NOT NULL COMMENT '{''label'':"Perfil"}',
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Administrador'),(2,'Aluno'),(3,'Professor'),(4,'xxxxxxxxxxxxx');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_controller_action`
--

DROP TABLE IF EXISTS `perfil_controller_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_controller_action` (
  `id_perfil_controller_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_controller` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_perfil_controller_action`),
  KEY `ix_perfil_controller_action_controller` (`id_controller`),
  KEY `ix_perfil_controller_action_action` (`id_action`),
  KEY `ix_perfil_controller_action_perfil` (`id_perfil`),
  CONSTRAINT `fk_perfil_controller_action_action` FOREIGN KEY (`id_action`) REFERENCES `action` (`id_action`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_controller_action_controller` FOREIGN KEY (`id_controller`) REFERENCES `controller` (`id_controller`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_perfil_controller_action_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_controller_action`
--

LOCK TABLES `perfil_controller_action` WRITE;
/*!40000 ALTER TABLE `perfil_controller_action` DISABLE KEYS */;
INSERT INTO `perfil_controller_action` VALUES (1,1,1,1),(2,2,1,1),(4,4,1,1),(5,5,1,1),(6,6,1,1),(7,1,5,1),(8,6,6,1),(9,5,6,1),(10,5,7,1),(11,6,7,1),(12,6,8,1),(13,1,2,1),(14,1,3,1),(15,1,9,1),(16,7,1,1),(17,1,4,1),(18,1,10,1),(19,1,11,1),(21,2,5,1),(22,2,12,1),(23,2,13,1),(25,8,18,1),(26,5,16,1),(29,8,19,1),(30,1,1,2),(31,2,1,2),(32,3,1,2),(33,4,1,2),(34,5,1,2),(35,6,1,2),(36,1,5,2),(37,6,6,2),(38,5,6,2),(39,5,7,2),(40,6,7,2),(41,6,8,2),(42,1,2,2),(43,1,3,2),(44,1,9,2),(45,7,1,2),(46,1,4,2),(47,1,10,2),(48,1,11,2),(49,3,7,2),(50,2,5,2),(51,2,12,2),(52,2,13,2),(53,3,14,2),(54,8,18,2),(55,8,20,1),(56,8,21,1),(57,8,22,1),(58,8,23,1),(59,3,15,2),(60,1,24,1),(61,1,24,2),(63,2,25,1),(64,2,25,2),(65,2,26,1),(66,2,26,2),(67,2,27,1),(68,2,27,2),(69,2,28,1),(70,2,28,2),(71,2,29,1),(72,2,30,1),(73,8,9,1),(74,8,9,2),(75,8,31,1),(76,8,31,2),(77,8,32,1),(78,8,33,1),(79,8,34,1),(80,2,35,1),(82,3,36,2),(84,3,37,2),(85,5,16,2),(86,3,17,2),(87,9,1,1),(88,9,1,2),(90,10,1,1),(91,10,6,1),(92,10,7,1),(93,11,1,1),(94,10,8,1),(95,12,1,1),(96,12,6,1),(97,12,7,1),(98,1,7,1),(99,1,6,1),(100,1,8,1),(101,2,6,1),(102,2,8,1),(103,2,7,1),(104,7,6,1),(105,7,7,1),(106,7,8,1),(107,13,1,1),(108,13,6,1),(109,13,7,1),(110,13,8,1),(111,14,1,1),(112,14,6,1),(113,14,7,1),(114,14,8,1),(115,7,39,1),(116,15,39,1),(117,15,1,1),(118,16,1,1),(119,16,6,1),(120,16,7,1),(121,16,8,1),(122,16,40,1),(123,16,41,1),(124,17,1,1),(125,17,6,1),(126,17,7,1),(127,17,8,1),(128,17,42,1),(129,17,43,1),(130,17,44,1),(131,17,45,1),(132,17,46,1),(133,17,47,1),(134,17,40,1),(139,19,1,1),(140,19,6,1),(141,19,7,1),(142,19,8,1),(143,20,1,1),(144,20,6,1),(145,20,7,1),(146,20,8,1),(147,21,1,1),(148,21,6,1),(149,21,7,1),(150,21,8,1),(151,19,48,1),(152,22,1,1),(153,22,6,1),(154,22,7,1),(155,22,8,1),(156,14,49,1),(157,5,40,1),(158,16,42,1),(159,16,47,1),(160,17,50,1),(161,17,51,1),(162,17,1,1),(163,25,1,1),(164,25,6,1),(165,25,7,1),(166,25,8,1),(167,25,51,1),(168,26,1,1),(169,26,6,1),(170,26,7,1),(171,26,8,1),(172,26,51,1),(173,24,1,1),(174,24,6,1),(175,24,7,1),(176,24,8,1),(177,24,51,1),(178,28,1,1),(179,28,6,1),(180,28,7,1),(181,28,8,1),(182,28,51,1),(183,29,1,1),(184,29,6,1),(185,29,7,1),(186,29,8,1),(187,29,51,1),(188,30,1,1),(189,30,6,1),(190,30,7,1),(191,30,8,1),(192,30,51,1),(193,28,52,1),(194,28,53,1),(195,28,54,1),(196,31,55,1),(197,32,55,1),(198,33,1,1),(199,33,6,1),(200,33,7,1),(201,33,8,1),(202,33,51,1),(203,5,51,1),(204,24,57,1),(205,34,1,1),(206,34,6,1),(207,34,7,1),(208,34,8,1),(209,34,51,1),(215,35,1,1),(216,18,1,1),(217,18,6,1),(218,18,7,1),(219,18,8,1),(220,18,51,1),(247,36,1,1),(248,36,6,1),(249,36,7,1),(250,36,8,1),(251,36,51,1),(252,36,53,1),(253,36,58,1),(254,36,59,1),(255,36,60,1),(256,37,1,1),(257,37,6,1),(258,37,7,1),(259,37,8,1),(260,37,60,1),(261,38,1,1),(262,38,6,1),(263,38,7,1),(264,38,8,1),(265,38,51,1),(266,39,1,1),(267,39,6,1),(268,39,7,1),(269,39,8,1),(270,39,51,1),(289,40,1,1),(290,40,6,1),(291,40,7,1),(292,40,8,1),(293,40,51,1),(294,40,53,1),(295,40,61,1),(296,40,62,1),(297,41,1,1),(298,41,6,1),(299,41,7,1),(300,41,8,1),(301,41,51,1),(302,42,1,1),(303,42,6,1),(304,42,7,1),(305,42,8,1),(306,42,51,1),(317,3,1,1),(318,3,6,1),(319,3,7,1),(320,3,8,1),(321,3,14,1),(322,3,15,1),(323,3,17,1),(324,3,18,1),(325,3,36,1),(326,3,37,1),(327,3,51,1);
/*!40000 ALTER TABLE `perfil_controller_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo_letivo`
--

DROP TABLE IF EXISTS `periodo_letivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo_letivo` (
  `id_periodo_letivo` int(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `dt_ano_letivo` char(40) DEFAULT NULL,
  PRIMARY KEY (`id_periodo_letivo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Armazena informações sobre inicio e término do periodo letiv';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo_letivo`
--

LOCK TABLES `periodo_letivo` WRITE;
/*!40000 ALTER TABLE `periodo_letivo` DISABLE KEYS */;
INSERT INTO `periodo_letivo` VALUES (12,'0000-00-00 00:00:00','0000-00-00 00:00:00','ANO1'),(13,'0000-00-00 00:00:00','0000-00-00 00:00:00','ANO2'),(14,'0000-00-00 00:00:00','0000-00-00 00:00:00','ANO3'),(15,'1969-12-10 00:00:00','1969-12-08 00:00:00','ANO4'),(16,'2016-06-22 00:00:00','2016-06-13 00:00:00','ANO5'),(17,'2016-06-15 00:00:00','2016-06-30 00:00:00','ANO6'),(18,'2016-06-23 00:00:00','2016-06-17 00:00:00','ANO7'),(19,'2016-06-01 00:00:00','2016-06-15 00:00:00','ANO8'),(20,'2016-06-08 00:00:00','2016-06-30 00:00:00','ANO9'),(21,'2016-03-01 00:00:00','2016-11-30 00:00:00','2016');
/*!40000 ALTER TABLE `periodo_letivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profissao`
--

DROP TABLE IF EXISTS `profissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profissao` (
  `id_profissao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_profissao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_profissao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena a profissão do responsavel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissao`
--

LOCK TABLES `profissao` WRITE;
/*!40000 ALTER TABLE `profissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `profissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regras_lutas`
--

DROP TABLE IF EXISTS `regras_lutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regras_lutas` (
  `id_regra_luta` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id_regra_luta',
  `nm_regra_luta` varchar(100) NOT NULL COMMENT 'nm_regra_luta',
  PRIMARY KEY (`id_regra_luta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='tb_regras_lutas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regras_lutas`
--

LOCK TABLES `regras_lutas` WRITE;
/*!40000 ALTER TABLE `regras_lutas` DISABLE KEYS */;
INSERT INTO `regras_lutas` VALUES (1,'Olimpica'),(2,'Interno'),(3,'Oficial WTF'),(4,'Oficial CBTKD'),(5,'Oficial ITF'),(6,'Oficial LNT'),(7,'Interno com Peso Olimpico');
/*!40000 ALTER TABLE `regras_lutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsavel` (
  `id_responsavel` int(11) NOT NULL AUTO_INCREMENT,
  `id_sexo` int(11) DEFAULT NULL,
  `id_telefone_celular` int(11) DEFAULT NULL,
  `id_telefone_residencial` int(11) DEFAULT NULL,
  `id_email` int(11) DEFAULT NULL,
  `id_profissao` int(11) DEFAULT NULL,
  `id_movimento_pastoral` int(11) DEFAULT NULL,
  `nm_responsavel` varchar(50) DEFAULT NULL,
  `tx_observacao` text,
  `cs_participa_movimento_pastoral` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_responsavel`),
  KEY `FK_Reference_106` (`id_sexo`),
  KEY `FK_Reference_107` (`id_telefone_celular`),
  KEY `FK_Reference_108` (`id_telefone_residencial`),
  KEY `FK_Reference_109` (`id_email`),
  KEY `FK_Reference_110` (`id_profissao`),
  KEY `FK_Reference_111` (`id_movimento_pastoral`),
  CONSTRAINT `FK_Reference_106` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id_sexo`),
  CONSTRAINT `FK_Reference_107` FOREIGN KEY (`id_telefone_celular`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_108` FOREIGN KEY (`id_telefone_residencial`) REFERENCES `telefone` (`id_telefone`),
  CONSTRAINT `FK_Reference_109` FOREIGN KEY (`id_email`) REFERENCES `email` (`id_email`),
  CONSTRAINT `FK_Reference_110` FOREIGN KEY (`id_profissao`) REFERENCES `profissao` (`id_profissao`),
  CONSTRAINT `FK_Reference_111` FOREIGN KEY (`id_movimento_pastoral`) REFERENCES `movimento_pastoral` (`id_movimento_pastoral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Analogo a tabela pessoa e armazena todos os dados de uma pes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel`
--

LOCK TABLES `responsavel` WRITE;
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel_catequisando`
--

DROP TABLE IF EXISTS `responsavel_catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsavel_catequisando` (
  `id_responsavel_catequisando` int(11) NOT NULL AUTO_INCREMENT,
  `id_responsavel` int(11) DEFAULT NULL,
  `id_catequisando` int(11) DEFAULT NULL,
  `id_grau_parentesco` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_responsavel_catequisando`),
  KEY `FK_Reference_114` (`id_responsavel`),
  KEY `FK_Reference_115` (`id_catequisando`),
  KEY `FK_Reference_116` (`id_grau_parentesco`),
  CONSTRAINT `FK_Reference_114` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id_responsavel`),
  CONSTRAINT `FK_Reference_115` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`),
  CONSTRAINT `FK_Reference_116` FOREIGN KEY (`id_grau_parentesco`) REFERENCES `grau_parentesco` (`id_grau_parentesco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel_catequisando`
--

LOCK TABLES `responsavel_catequisando` WRITE;
/*!40000 ALTER TABLE `responsavel_catequisando` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsavel_catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacramento`
--

DROP TABLE IF EXISTS `sacramento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sacramento` (
  `id_sacramento` int(11) NOT NULL AUTO_INCREMENT,
  `nm_sacramento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_sacramento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabela Resposável por Armazenar os sacramentos possiveis par';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacramento`
--

LOCK TABLES `sacramento` WRITE;
/*!40000 ALTER TABLE `sacramento` DISABLE KEYS */;
INSERT INTO `sacramento` VALUES (1,'Crisma'),(2,'Catequese'),(3,'Iniciaçao');
/*!40000 ALTER TABLE `sacramento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacramento_catequisando`
--

DROP TABLE IF EXISTS `sacramento_catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sacramento_catequisando` (
  `id_sacramento_catequisando` int(11) NOT NULL AUTO_INCREMENT,
  `id_catequisando` int(11) DEFAULT NULL,
  `id_sacramento` int(11) DEFAULT NULL,
  `id_paroquia` int(11) DEFAULT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cs_comprovante_batismo` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_sacramento_catequisando`),
  KEY `FK_Reference_100` (`id_sacramento`),
  KEY `FK_Reference_101` (`id_paroquia`),
  KEY `FK_Reference_99` (`id_catequisando`),
  CONSTRAINT `FK_Reference_100` FOREIGN KEY (`id_sacramento`) REFERENCES `sacramento` (`id_sacramento`),
  CONSTRAINT `FK_Reference_101` FOREIGN KEY (`id_paroquia`) REFERENCES `paroquia` (`id_paroquia`),
  CONSTRAINT `FK_Reference_99` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacramento_catequisando`
--

LOCK TABLES `sacramento_catequisando` WRITE;
/*!40000 ALTER TABLE `sacramento_catequisando` DISABLE KEYS */;
/*!40000 ALTER TABLE `sacramento_catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacramento_responsavel`
--

DROP TABLE IF EXISTS `sacramento_responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sacramento_responsavel` (
  `id_sacramento_responsavel` int(11) NOT NULL AUTO_INCREMENT,
  `id_sacramento` int(11) DEFAULT NULL,
  `id_responsavel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sacramento_responsavel`),
  KEY `FK_Reference_112` (`id_sacramento`),
  KEY `FK_Reference_113` (`id_responsavel`),
  CONSTRAINT `FK_Reference_112` FOREIGN KEY (`id_sacramento`) REFERENCES `sacramento` (`id_sacramento`),
  CONSTRAINT `FK_Reference_113` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacramento_responsavel`
--

LOCK TABLES `sacramento_responsavel` WRITE;
/*!40000 ALTER TABLE `sacramento_responsavel` DISABLE KEYS */;
/*!40000 ALTER TABLE `sacramento_responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `nm_sexo` varchar(45) NOT NULL COMMENT '{"label":"Sexo"}',
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino'),(2,'Feminino');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao`
--

DROP TABLE IF EXISTS `situacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao` (
  `id_situacao` int(11) NOT NULL AUTO_INCREMENT,
  `nm_situacao` varchar(100) DEFAULT NULL COMMENT '{"label":"Situação"}',
  PRIMARY KEY (`id_situacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao`
--

LOCK TABLES `situacao` WRITE;
/*!40000 ALTER TABLE `situacao` DISABLE KEYS */;
INSERT INTO `situacao` VALUES (1,'Ativo'),(2,'Inativo');
/*!40000 ALTER TABLE `situacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_conjugal`
--

DROP TABLE IF EXISTS `situacao_conjugal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao_conjugal` (
  `id_situacao_conjugal` int(11) NOT NULL AUTO_INCREMENT,
  `ds_situacao_conjugal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_situacao_conjugal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena a situacao conjugal dos pais do catequisando. Ex: S';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_conjugal`
--

LOCK TABLES `situacao_conjugal` WRITE;
/*!40000 ALTER TABLE `situacao_conjugal` DISABLE KEYS */;
/*!40000 ALTER TABLE `situacao_conjugal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_responsavel`
--

DROP TABLE IF EXISTS `situacao_responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao_responsavel` (
  `id_situacao_responsavel` int(11) NOT NULL AUTO_INCREMENT,
  `ds_situacao_responsavel` varchar(50) DEFAULT NULL,
  `cs_pai_mae` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_situacao_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Armazena a situação do responsavel. Ex. Mora com pai, pai fa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_responsavel`
--

LOCK TABLES `situacao_responsavel` WRITE;
/*!40000 ALTER TABLE `situacao_responsavel` DISABLE KEYS */;
/*!40000 ALTER TABLE `situacao_responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_responsavel_catequisando`
--

DROP TABLE IF EXISTS `situacao_responsavel_catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao_responsavel_catequisando` (
  `id_situacao_responsavel_catequisando` int(11) NOT NULL AUTO_INCREMENT,
  `id_catequisando` int(11) DEFAULT NULL,
  `id_situacao_responsavel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_situacao_responsavel_catequisando`),
  KEY `FK_Reference_121` (`id_catequisando`),
  KEY `FK_Reference_122` (`id_situacao_responsavel`),
  CONSTRAINT `FK_Reference_121` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`),
  CONSTRAINT `FK_Reference_122` FOREIGN KEY (`id_situacao_responsavel`) REFERENCES `situacao_responsavel` (`id_situacao_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_responsavel_catequisando`
--

LOCK TABLES `situacao_responsavel_catequisando` WRITE;
/*!40000 ALTER TABLE `situacao_responsavel_catequisando` DISABLE KEYS */;
/*!40000 ALTER TABLE `situacao_responsavel_catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacao_usuario`
--

DROP TABLE IF EXISTS `situacao_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao_usuario` (
  `id_situacao_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_situacao_usuario` varchar(100) DEFAULT NULL COMMENT '{"label":"Situação usuário"}',
  PRIMARY KEY (`id_situacao_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao_usuario`
--

LOCK TABLES `situacao_usuario` WRITE;
/*!40000 ALTER TABLE `situacao_usuario` DISABLE KEYS */;
INSERT INTO `situacao_usuario` VALUES (1,'Ativo'),(2,'Inativo'),(3,'Congelado'),(4,'Atrasado');
/*!40000 ALTER TABLE `situacao_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `nr_ddd_telefone` varchar(3) DEFAULT NULL COMMENT '{"label":"ddd"}',
  `nr_telefone` varchar(20) DEFAULT NULL COMMENT '{"label":"Telefone"}',
  `id_tipo_telefone` int(11) NOT NULL,
  `id_situacao` int(11) NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `ix_telefones_tipo_telefone` (`id_tipo_telefone`),
  KEY `ix_telefones_situacao` (`id_situacao`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tipo_telefone` (`id_tipo_telefone`),
  CONSTRAINT `fk_telefones_situacao` FOREIGN KEY (`id_situacao`) REFERENCES `situacao` (`id_situacao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_telefones_tipo_telefone1` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tipo_telefone` (`id_tipo_telefone`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'12','34567890',1,1),(2,'61','91613193',1,1),(3,'61','91613193',1,1),(4,'61','989898989',1,1),(5,'56','576756756',1,1),(6,'87','878778787',1,1),(7,'78','787878787',1,1),(8,'87','878787878',1,1);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_telefone` (
  `id_tipo_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipo_telefone` varchar(100) DEFAULT NULL COMMENT '{"label":"Tipo telefone"}',
  PRIMARY KEY (`id_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'Residencial'),(2,'Comercial'),(3,'Celular');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_tipo_usuario` varchar(100) DEFAULT NULL COMMENT '{"label":"Tipo usuário"}',
  PRIMARY KEY (`id_tipo_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Aluno');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_eventos`
--

DROP TABLE IF EXISTS `tipos_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_eventos` (
  `id_tipo_evento` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'id_tipo_evento',
  `nm_tipo_evento` varchar(25) NOT NULL COMMENT 'nm_tipo_evento',
  `ds_tipo_evento` varchar(255) DEFAULT NULL COMMENT 'ds_tipo_evento',
  PRIMARY KEY (`id_tipo_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_eventos`
--

LOCK TABLES `tipos_eventos` WRITE;
/*!40000 ALTER TABLE `tipos_eventos` DISABLE KEYS */;
INSERT INTO `tipos_eventos` VALUES (1,'Competição','Competição de Luta');
/*!40000 ALTER TABLE `tipos_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `id_etapa` int(11) DEFAULT NULL,
  `cd_turma` varchar(8) DEFAULT NULL,
  `nm_turma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `FK_Reference_123` (`id_etapa`),
  CONSTRAINT `FK_Reference_123` FOREIGN KEY (`id_etapa`) REFERENCES `etapa` (`id_etapa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabela que definirá os dados de uma turma de catequizandos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (2,1,'SEM','TURMA AN1'),(3,2,'EUCA','Turma Eucaristia 01');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma_catequisando`
--

DROP TABLE IF EXISTS `turma_catequisando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma_catequisando` (
  `id_turma_catequisando` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_turma` int(11) DEFAULT NULL,
  `id_catequisando` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_periodo_letivo` int(11) DEFAULT NULL,
  `dt_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cs_aprovado` char(1) DEFAULT NULL,
  `ds_motivo_reprovacao` varchar(1000) DEFAULT NULL,
  `tx_observacoes` text,
  PRIMARY KEY (`id_turma_catequisando`),
  KEY `FK_Reference_127` (`id_turma`),
  KEY `FK_Reference_128` (`id_catequisando`),
  KEY `FK_Reference_129` (`id_usuario`),
  KEY `FK_Reference_132` (`id_periodo_letivo`),
  CONSTRAINT `FK_Reference_127` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  CONSTRAINT `FK_Reference_128` FOREIGN KEY (`id_catequisando`) REFERENCES `catequisando` (`id_catequisando`),
  CONSTRAINT `FK_Reference_129` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `FK_Reference_132` FOREIGN KEY (`id_periodo_letivo`) REFERENCES `periodo_letivo` (`id_periodo_letivo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Tabela que Armazena todos os Catequizandos por Turma';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma_catequisando`
--

LOCK TABLES `turma_catequisando` WRITE;
/*!40000 ALTER TABLE `turma_catequisando` DISABLE KEYS */;
INSERT INTO `turma_catequisando` VALUES (1,2,2,1,12,'2016-07-10 19:40:46',NULL,NULL,'ewdwwd'),(2,2,2,1,12,'2016-07-10 19:40:46',NULL,NULL,'efer'),(10,2,2,1,12,'2016-07-10 19:40:06',NULL,NULL,'w2w2w2'),(11,2,2,1,12,'2016-07-10 19:42:57',NULL,NULL,'swsw'),(12,2,2,1,13,'2016-07-10 20:00:44',NULL,NULL,'aqaq'),(13,2,2,1,13,'2016-07-10 20:00:58',NULL,NULL,'dededede'),(14,2,2,1,14,'2016-07-10 20:27:30',NULL,NULL,'rfrfrfrfrfrfr'),(15,2,2,1,14,'2016-07-10 20:29:20',NULL,NULL,'wswswswsws'),(16,2,2,1,14,'2016-07-10 20:30:34',NULL,NULL,'swswswsw'),(17,2,2,1,14,'2016-07-10 20:30:41',NULL,NULL,'swswswswsw'),(18,2,2,1,14,'2016-07-10 20:30:45',NULL,NULL,'wswswswsw'),(19,2,2,1,12,'2016-07-10 20:58:56',NULL,NULL,'trhthty'),(20,2,2,1,12,'2016-07-10 21:23:41',NULL,NULL,'wss'),(21,2,2,1,15,'2016-07-10 21:33:00',NULL,NULL,'rgtgrg'),(22,2,2,1,15,'2016-07-10 21:33:05',NULL,NULL,'rgrgrgrgr');
/*!40000 ALTER TABLE `turma_catequisando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `nm_turno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Armazenas os Turnos de estudo. Ex: manha, Tarde, Noite ou Di';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'Matutino');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_usuario` varchar(250) NOT NULL COMMENT '{"label":"Usuário"}',
  `dt_nascimento` datetime NOT NULL COMMENT '{"label":"Data de nascimento"}',
  `id_tipo_usuario` int(11) NOT NULL,
  `id_situacao_usuario` int(11) NOT NULL,
  `id_email` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `ix_usuarios_tipo_usuario` (`id_tipo_usuario`),
  KEY `ix_usuarios_situacao_usuario` (`id_situacao_usuario`),
  KEY `ix_usuarios_emails` (`id_email`),
  CONSTRAINT `fk_usuarios_emails` FOREIGN KEY (`id_email`) REFERENCES `email` (`id_email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_situacao_usuario` FOREIGN KEY (`id_situacao_usuario`) REFERENCES `situacao_usuario` (`id_situacao_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Alysson Vicuña de Oliveira','1983-12-20 21:47:08',1,1,1),(2,'Ronaldo Rodrigues de Melo','1983-12-20 00:00:00',2,1,2),(3,'teste001','1980-03-05 00:00:00',2,1,3),(4,'teste002','1988-02-20 00:00:00',2,1,4),(5,'teste003','1990-12-12 00:00:00',2,1,5),(6,'teste004','1990-02-20 00:00:00',2,1,6),(7,'teste005','1990-02-20 00:00:00',2,1,7),(8,'teste006','1990-02-20 00:00:00',2,1,8);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_regras_lutas`
--

DROP TABLE IF EXISTS `vw_regras_lutas`;
/*!50001 DROP VIEW IF EXISTS `vw_regras_lutas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_regras_lutas` (
  `id_regra_luta` tinyint NOT NULL,
  `nm_regra_luta` tinyint NOT NULL,
  `nm_graduacao_inicial` tinyint NOT NULL,
  `nm_graduacao_final` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `bdcatequese`
--

USE `bdcatequese`;

--
-- Final view structure for view `acl`
--

/*!50001 DROP TABLE IF EXISTS `acl`*/;
/*!50001 DROP VIEW IF EXISTS `acl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `acl` AS (select `perfil_controller_action`.`id_perfil` AS `id_perfil`,concat(`controller`.`nm_controller`,'/',`action`.`nm_action`) AS `nm_resource` from ((`perfil_controller_action` join `controller` on((`controller`.`id_controller` = `perfil_controller_action`.`id_controller`))) join `action` on((`action`.`id_action` = `perfil_controller_action`.`id_action`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `auth`
--

/*!50001 DROP TABLE IF EXISTS `auth`*/;
/*!50001 DROP VIEW IF EXISTS `auth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `auth` AS (select `login`.`id_usuario` AS `id_usuario`,`perfil`.`id_perfil` AS `id_perfil`,`email`.`em_email` AS `em_email`,`login`.`pw_senha` AS `pw_senha`,`usuario`.`nm_usuario` AS `nm_usuario`,1 AS `id_contrato` from (((`usuario` join `login` on((`login`.`id_usuario` = `usuario`.`id_usuario`))) join `email` on((`email`.`id_email` = `login`.`id_email`))) join `perfil` on((`perfil`.`id_perfil` = `login`.`id_perfil`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_regras_lutas`
--

/*!50001 DROP TABLE IF EXISTS `vw_regras_lutas`*/;
/*!50001 DROP VIEW IF EXISTS `vw_regras_lutas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_regras_lutas` AS select `rls`.`id_regra_luta` AS `id_regra_luta`,`rls`.`nm_regra_luta` AS `nm_regra_luta`,`grd`.`nm_graduacao` AS `nm_graduacao_inicial`,`grd2`.`nm_graduacao` AS `nm_graduacao_final` from (((`detalhes_regras_luta` `drl` join `regras_lutas` `rls` on((`rls`.`id_regra_luta` = `drl`.`id_regra_luta`))) join `graduacoes` `grd` on((`grd`.`id_graduacao` = `drl`.`id_graduacao_inicial`))) join `graduacoes` `grd2` on((`grd2`.`id_graduacao` = `drl`.`id_graduacao_final`))) where ((`drl`.`id_categoria_peso` = 1) and (`drl`.`id_categoria_idade` = 6) and (`drl`.`id_sexo` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-10 20:31:11
