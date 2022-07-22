CREATE DATABASE  IF NOT EXISTS `resilia`;
USE `resilia`;

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_curso` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_turmas` (`id_turma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


LOCK TABLES `alunos` WRITE;
INSERT INTO `alunos` VALUES ('06734218711','Leonardo','leoipy16@gmail.com',1,1),('63514948026','Ana Beatriz','anana@gmail.com',2,2),('63723935163','Vitor','vita1@gmail.com',1,1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `tipo` varchar(70) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `cursos` WRITE;
INSERT INTO `cursos` VALUES (1,'WebDev FullStack'),(2,'Data Analytics');
UNLOCK TABLES;


DROP TABLE IF EXISTS `entregas`;
CREATE TABLE `entregas` (
  `cpf` varchar(11) NOT NULL,
  `link` varchar(300) NOT NULL,
  `modulo_projeto` int(1) NOT NULL,
  `conceito` varchar(30) DEFAULT NULL,
  KEY `fk_alunos` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `entregas` WRITE;

INSERT INTO `entregas` VALUES ('06734218711','projetoleo.com.br',4,'Chegando lá'),('63514948026','projetoana.com.br',5,'Pronto'),('06734218711','projetoleom1.com.br',1,'Chegando lá'),('63514948026','projetoanam1.com.br',1,'Pronto'),('06734218711','projetoleom2.com.br',2,'Mais que pronto'),('63514948026','projetoanam2.com.br',2,'Mais que pronto'),('06734218711','projetoleom3.com.br',3,'Ainda não está pronto'),('63514948026','projetoanam3.com.br',3,'Mais que pronto');
UNLOCK TABLES;

DROP TABLE IF EXISTS `turmas`;
CREATE TABLE `turmas` (
  `id_turma` int(11) NOT NULL,
  `nome_turma` varchar(30) NOT NULL,
  `id_curso` int(11) NOT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `fk_cursos` (`id_curso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
LOCK TABLES `turmas` WRITE;

INSERT INTO `turmas` VALUES (1,'Geração Futuro',1),(2,'Love Statistics',2);
UNLOCK TABLES;

