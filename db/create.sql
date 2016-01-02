-- Database: `balancelasos`
--

-- --------------------------------------------------------
-- DROP DATABASE IF EXISTS balancelasos ; -- Pas de droits de create database avec free
-- CREATE DATABASE IF NOT EXISTS `balancelasos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- USE `balancelasos`;
--
-- Table structure for table `difficulte`
--

CREATE TABLE IF NOT EXISTS `difficulte` (
  `idDifficulte` int(1) NOT NULL,
  `libelleDifficulte` varchar(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trick`
--

CREATE TABLE IF NOT EXISTS `trick` (
  `idTrick` int(4) NOT NULL,
  `nomTrick` varchar(30),
  `difTrick` int(1),
  `typTrick` int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `idType` int(2) NOT NULL,
  `nomType` varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typeTrick`
--

CREATE TABLE IF NOT EXISTS `typeTrick` (
  `idTrick` int(2) NOT NULL,
  `idType` int(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for table `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`idTrick`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- Indexes for table `typeTrick`
--
ALTER TABLE `typeTrick`
  ADD PRIMARY KEY (`idTrick`);
--
-- AUTO_INCREMENT for table `difficulte`
--
ALTER TABLE `difficulte`
  ADD PRIMARY KEY (`idDifficulte`);

--
-- Constraints for table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `trick_ibfk_1` FOREIGN KEY (`difTrick`) REFERENCES `difficulte` (`idDifficulte`),
  ADD CONSTRAINT `trick_ibfk_2` FOREIGN KEY (`idTrick`) REFERENCES `typeTrick` (`idTrick`);

--
-- Constraints for table `typeTrick`
--
ALTER TABLE `typeTrick`
  ADD CONSTRAINT `typetrick_ibfk_1` FOREIGN KEY (`idTrick`) REFERENCES `trick` (`idTrick`),
  ADD CONSTRAINT `typetrick_ibfk_2` FOREIGN KEY (`idType`) REFERENCES `type` (`idType`);
