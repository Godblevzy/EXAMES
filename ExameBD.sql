-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Mar-2019 às 18:54
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ie_exemplo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `CodDisciplina` int(11) NOT NULL,
  `NomeDisc` varchar(100) NOT NULL,
  `Ementa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`CodDisciplina`, `NomeDisc`, `Ementa`) VALUES
(1, 'Banco de Dados', 'Evolução histórica dos sistemas de informação. Conceitos básicos de um Sistema Gerenciador de\r\nBanco de Dados (SGBD). Estrutura de um SGBD: níveis conceitual, externo e físico. Modelos\r\nconceituais e modelos externos. Normalização e dependências funcionais. O modelo relacional:\r\nconceitos. Álgebra relacional, cálculo relacional. Linguagem de definição de dados de um SGBD –\r\nDDL (Data Definition Language). Linguagem de manipulação de dados de um SGBD – DML (Data\r\nManipulation Language) . Exemplos e aplicações de SGBDs.\r\n'),
(2, 'Ensino de Língua Portuguesa', 'Linguagem, língua e prática social. Concepções de linguagem e língua. O\r\nensino da língua materna: objetivos conteúdos e aspectos metodológicos; texto como unidade básica de ensino; oralidade, escrita, leitura e análise linguística; sistemática de avaliação; planejamento e práticas de aula em língua materna. Competências e habilidades necessárias ao professor.'),
(3, 'Cálculo I ', 'Problemas e questões cujo tratamento requer passagem ao limite. Derivadas, integrais, séries. As idéias fundamentais do Cálculo devem ser apresentadas imediatamente, sem formalismo nem formalidades. Os limites envolvidos devem ser tratados sem mistério e os cálculos levados até o fim. Deve-se, pelo menos, discutir a convergência das séries geométricas, harmônica e 1/n^2, tratar um problema de máximo/mínimo e calcular uma área (mas se pode fazer bem mais: apresentar o método de Newton, o logaritmo como área, o teorema fundamental do Cálculo¿). Trata-se de sacudir as idéias dos estudantes e abrir-lhes um novo mundo, sem fazer da passagem ao limite um bicho de sete cabeças.'),
(4, 'Redes de Computadores', 'Histórico da evolução das redes de computadores; Arquitetura e classificação; Modelo de referência OSI e arquitetura TCP/IP; Protocolos de comunicação; Interconexão; Endereçamento; Algoritmos e protocolos de roteamento; Noções de administração, gerenciamento, segurança e monitoração de redes.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `CodProfessor` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Celular` varchar(20) NOT NULL,
  `DataNasc` date DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`CodProfessor`, `Nome`, `Celular`, `DataNasc`, `Login`, `Senha`) VALUES
(3, 'José da  Silva XYZABC', '(41)99777-1234', '1998-06-20', 'jose.silva', '70b4269b412a8af42b1f7b0d26eceff2'),
(5, 'Eduarda Laranjeiras', '(41)82233-1111', '1999-12-28', 'eduarda.laran', '2fbb45fe0ec24b6900b9f2c4800351bf'),
(6, 'Carlos Ataide', '(41)91234-1234', '1985-11-10', 'carlos.ata', 'e267cfcd18461ce938067eca67c59f41'),
(7, 'Olivia Oliveira', '(41)98889-9999', '1988-12-14', 'oli.oli', '6c71dffdab29ca4d91d0cf293dc82c61'),
(9, 'Lorival Percial Arial', '(41)87654-1234', '1987-11-28', 'lori.per', '6c71dffdab29ca4d91d0cf293dc82c61');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `CodTurma` int(11) NOT NULL,
  `CodProfessor` int(11) NOT NULL,
  `CodDisc` int(11) NOT NULL,
  `Ano` int(11) NOT NULL,
  `Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`CodTurma`, `CodProfessor`, `CodDisc`, `Ano`, `Semestre`) VALUES
(1, 3, 2, 2017, 2),
(3, 5, 1, 2018, 2),
(2, 6, 3, 2018, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`CodDisciplina`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`CodProfessor`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`CodTurma`),
  ADD UNIQUE KEY `CodProfessor` (`CodProfessor`,`CodDisc`,`Ano`,`Semestre`),
  ADD KEY `FK_Disc` (`CodDisc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `CodDisciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `CodProfessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `CodTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `FK_Disc` FOREIGN KEY (`CodDisc`) REFERENCES `disciplina` (`CodDisciplina`),
  ADD CONSTRAINT `FK_Prof` FOREIGN KEY (`CodProfessor`) REFERENCES `professor` (`CodProfessor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
