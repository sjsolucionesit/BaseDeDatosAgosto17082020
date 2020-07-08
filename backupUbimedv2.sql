-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: UbimedV2
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `consentimiento`
--

DROP TABLE IF EXISTS `consentimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consentimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `tipoDocPaciente` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nombrePaciente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoPaciente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cedulaPaciente` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `emailPaciente` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `profesionDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidadDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tarjetaProfesional` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `emailDoctor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ruta` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_consulta` (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consentimiento`
--

LOCK TABLES `consentimiento` WRITE;
/*!40000 ALTER TABLE `consentimiento` DISABLE KEYS */;
INSERT INTO `consentimiento` VALUES (1,1,'CC','nombre paciente prueba','apellido paciente prueba','1015468973','email paciente prueba','nombre doctor prueba','apellido doctor prueba','medicina','oftalmologia','0000000000','email doctor prueba','/Users/mateus/Desktop/FilesMedicalServices/src/docs/consentimiento/consentimiento-1015468973-1.pdf','2020-05-21 04:46:20');
/*!40000 ALTER TABLE `consentimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctores`
--

DROP TABLE IF EXISTS `doctores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `profesion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidad` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoDoc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `genero` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tarjetaProfesional` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `tarjetaProfesional` (`tarjetaProfesional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctores`
--

LOCK TABLES `doctores` WRITE;
/*!40000 ALTER TABLE `doctores` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formula`
--

DROP TABLE IF EXISTS `formula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoDoc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `lugarNacimiento` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ocupacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreTutor` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cedulaTutor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `empresaSalud` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `autorizacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoUsuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoAfiliacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidadDoctor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `profesionDoctor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tarjetaProfesional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `medicamentos` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `farmaceutica` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidades` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `presentaciones` varchar(1000) COLLATE utf8_spanish2_ci NOT NULL,
  `descripciones` varchar(5000) COLLATE utf8_spanish2_ci NOT NULL,
  `ruta` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_consulta` (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formula`
--

LOCK TABLES `formula` WRITE;
/*!40000 ALTER TABLE `formula` DISABLE KEYS */;
INSERT INTO `formula` VALUES (1,1,'prueba','prueba','prueba','prueba','1997-05-12','prueba',' ','prueba','prueba','prueba','prueba','prueba',' ',' ','prueba',' ',' ',' ','prueba','prueba','prueba','prueba','prueba','medicamento1-*-*-medicamento2','farmaceutico1-*-*-farmaceutico2','cantidades1-*-*-cantidades2','presentacion1-*-*-presentacion2','descripcion1-*-*-descripcion2','/Users/mateus/Desktop/FilesMedicalServices/src/docs/formula/formula-prueba-1.pdf','2020-05-21 03:07:38');
/*!40000 ALTER TABLE `formula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hcFile`
--

DROP TABLE IF EXISTS `hcFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hcFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoDoc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `lugarNacimiento` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ocupacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreTutor` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `cedulaTutor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `empresaSalud` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `autorizacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoUsuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoAfiliacion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `motivoConsulta` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `enfermedadActual` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `antecedentesAlergicos` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `otrosAntecedentes` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `hallazgos` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `paraclinicos` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `cie10` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `diagnostico` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `plan` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoDoctor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `especialidadDoctor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `profesionDoctor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `tarjetaProfesional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ruta` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_consulta` (`id_consulta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hcFile`
--

LOCK TABLES `hcFile` WRITE;
/*!40000 ALTER TABLE `hcFile` DISABLE KEYS */;
INSERT INTO `hcFile` VALUES (1,1,'Daniel','Mateus','CC','1015468973','1997-05-12','Bogotá',' ','Masculino','Colombia','Bogotá','Carrera 70a # 65a 18','3166989045',' ',' ','Eps - Allianz',' ',' ',' ','Control','Rinitis',' ',' ','Presente alergia al polvo','Espirometría','E66 Obesidad','Presenta obesidad por falta de actividad fisica','Mejorar dieta y actividad fisica, con 1 hora de ejercicio diario','Juan Esteban','Unigarro','Oftalmologia','Medicina','00000000','/Users/mateus/Desktop/FilesMedicalServices/src/docs/hc/hc-1015468973-1.pdf','2020-05-21 02:57:39');
/*!40000 ALTER TABLE `hcFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `tipoDoc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `lugarNacimiento` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estadoCivil` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `genero` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `rh` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombreTutor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `parentesco` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `numeroId` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cedula` (`cedula`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(400) COLLATE utf8_spanish2_ci NOT NULL,
  `complete` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-02 18:31:33
