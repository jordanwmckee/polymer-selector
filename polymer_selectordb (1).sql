-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 17, 2022 at 12:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polymer_selectordb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADVprocedure1` (IN `low_prop` VARCHAR(50), IN `low_input` INT)   BEGIN
Select ï»¿Polymer from `tensile` Where `tensile modulus Mpa lower` >= low_input;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cas numbers`
--

CREATE TABLE `cas numbers` (
  `Polymer` varchar(100) NOT NULL,
  `synonyms` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `CA name` text DEFAULT NULL,
  `mol. formula` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cas numbers`
--

INSERT INTO `cas numbers` (`Polymer`, `synonyms`, `CAS registry no.`, `CA name`, `mol. formula`) VALUES
('Alginic acid', '', '9005-32-7', 'Alginic acid', 'Unk*'),
('Alginic acid, sodium salt', '', '9005-38-3', 'Alginic acid, sodium salt', 'Unk'),
('Bayberry wax', 'Myrtle wax', '8038-77-5', 'Fats and Glyceridic oils, bayberry', 'Unk'),
('Beeswax, refined, yellow', '', '8012-89-3', 'Beeswax', 'Unk'),
('Boron nitride', '', '10043-11-5', 'Boron nitride', 'BN'),
('Candelilla wax, natural', '', '8006-44-8', 'Beeswax', 'Unk'),
('Carboxymethyl cellulose', 'Carboxymethylated cellulose sodium salt; cellulose glycolate', '9004-32-4', 'Cellulose, carboxymethyl ether, sodium salt', '(C2H4O3) Na; Unk'),
('Carboxymethyl cellulose,sodium salt', 'Ambergum, carboxymethyl- cellulose; sodium carboxyl- methyl cellulose', '9004-32-4', 'Cellulose, carboxymethyl ether, sodium salt', '(C2H4O3) Na; Unk'),
('Carnauba wax, refined, No. 1, yellow', '', '8015-86-9', '', 'Unk'),
('Carrageenan, type I (ÃŽÂº-carrageenan)', '', '7/1/9000', 'Carrageenan', 'Unk'),
('Carrageenan, type II (ÃŽÂ¹-carrageenan)', '', '7/1/9062', 'i-Carrageenan', 'Unk'),
('Cellulose', '', '9004-34-6', 'Cellulose', 'Unk'),
('Cellulose acetate', 'Acetic acid, cellulose ester', '9004-35-7', 'Cellulose, acetate', '(C2H4O2); Unk'),
('Cellulose acetate butyrate', 'Acetobutyrate cellulose; cellulose acetobutyrate', '9004-36-8', 'Cellulose, acetate butanoate', '(C4H8O2) (C2H4O2); Unk'),
('Cellulose acetate butyrate, acrylamidomethyl', '', '91313-01-8', 'Cellulose, acetate butanoate, ((1-oxo-2-propenyl)amino)- methyl ether', '(C4H8O2) (C4H7NO2) (C2H4O2); Unk'),
('Cellulose acetate hydrogen phthalate', 'Acetyl phthalyl cellulose; cellulose acetate phthalate', '9004-38-0', 'Cellulose, acetate hydrogen 1,2-benzene dicarboxylate', '(C8H6O4) (C2H4O2); Unk'),
('Cellulose acetate propionate', 'Acetylpropionyl cellulose', '9004-39-1', 'Cellulose, acetate propanoate', '(C3H6O2) (C2H4O2); Unk'),
('Cellulose acetate propionate, acrylamidomethyl', '', '97635-64-8', 'Cellulose, acetate propanoate, ((1-oxo-2-propenyl)amino)- methyl ether', '(C4H7NO2) (C3H6O2) (C2H4O2); Unk'),
('Cellulose acetate trimellitate', '', '52907-01-4', 'Cellulose, acetate 1,2,4-benzene- tricarboxylate', '(C9H6O6) (C2H4O2); Unk'),
('Cellulose diacetate', 'Diacetyl cellulose', '9035-69-2', 'Cellulose, diacetate', '(C2H4O2)1/2; Unk'),
('Cellulose nitrate', 'Collodion; soluble gun cotton', '9004-70-0', 'Cellulose, nitrate', '(HNO3); Unk'),
('Cellulose propionate', '', '9004-48-2', 'Cellulose, propanoate', '(C3H6O2); Unk'),
('Cellulose sulfate', 'Sodium cellulose sulfate', '9005-22-5', 'Cellulose, hydrogen sulfate,', '(H2O4S) Na; Unk'),
('Cellulose triacetate', 'Poroplastic; triacetylcellulose', '9/3/9012', 'Cellulose, triacetate', '(C2H4O2)1/3; Unk'),
('Cellulose tributyrate', '', '39320-16-6', 'Cellulose, tributanoate', '(C4H8O2)1/3; Unk'),
('Cellulose tricarbanilate', '', '7/8/9047', 'Cellulose, tris (phenylcarbamate)', '(C7H7NO2)1/3; Unk'),
('Cellulose xanthate', 'Cellulose carbonodithioate; cellulose hydrogen dithio- carbonate', '9032-37-5', 'Cellulose, hydrogen carbonodithioate', '(CH2OS2)x; Unk'),
('Cellulose, cyanoethylated', 'Cellulose cyanoethyl ether; cellulose ethylcyanide', '9004-41-5', 'Cellulose, 2-cyanoethyl ether', '(C3H5NO); Unk'),
('Cellulose, microcrystalline, colloidal', '', '51395-75-6', 'Cellulose, mixt. with cellulose carboxymethyl ether sodium salt', '(C2H4O3) Na; Unk'),
('Chitin, crab shells', '', '1398-61-4', 'Chitin', 'Unk'),
('Chitosan', '', '9012-76-4', 'Chitosan', 'Unk'),
('Chlorinated poly(vinyl chloride)', '', '68648-82-8', 'Ethene, chloro-, homopolymer, chlorinated', 'Unk'),
('Chlorinated polyethylene', '', '63231-66-3', 'Rubber, synthetic, chlorinated polyethylene', 'Unk'),
('Coconut oil', 'Fats and glyceridic oils', '8001-31-8', 'Coconut oil', 'Unk'),
('Ethyl cellulose', 'Cellulose ethyl ether; cellulose ethylate; ethocel, ethyl cellulose ether', '9004-57-3', 'Cellulose, ethyl ether', '(C2H6O); Unk'),
('Graphite, fluorinated, polymer', '', '51311-17-2', 'Carbon fluoride', 'Unk'),
('Guar gum carboxymethyl 2-hydroxypropyl ether, sodium salt', 'Sodium carboxymethyl hydroxypropyl guar', '68130-15-4', 'Guar gum, carboxymethyl 2-hydroxypropyl ether, sodium salt', 'Unk'),
('Hydroxybutyl methyl cellulose', '', '9041-56-9', 'Cellulose, hydroxybutyl methyl ether', '(C4H10O2) (CH4O); Unk'),
('Hydroxyethyl cellulose (2-hydroxyethyl cellulose)', 'Cellosize; cellulose hydroxyethyl ether; cellulose hydroxyethylate; glycol cellulose', '9004-62-0', 'Cellulose, 2-hydroxyethyl ether', '(C2H6O2); Unk'),
('Hydroxypropyl cellulose', 'Cellulose hydroxypropyl ether; hydropropyl cellulose; hydroxypropyl cellulose', '9004-64-2', 'Cellulose, 2-hydroxypropyl ether', '(C3H8O2); Unk'),
('Hydroxypropyl methyl cellulose', 'Cellulose hydroxypropyl methyl ether', '9004-65-3', 'Cellulose, 2-hydroxypropyl methyl ether', '(C3H8O2) (CH4O); Unk'),
('Hydroxypropyl methyl cellulose phthalate', 'Cellulose phthalate hydroxypropyl methyl ether', '9050-31-1', 'Cellulose, hydrogen 1,2-benzene- dicarboxylate, 2-hydroxypropyl methyl ether', '(C8H6O4) (C3H8O2) (CH4O); Unk'),
('Lignin, alkali', 'Indulin A', '5/1/8068', 'Lignin, alkali', 'Unk'),
('Lignin, alkali, 2-hydroxypropyl ether', '', '88402-77-1', 'Lignin, alkali, 2-hydroxypropyl ether', '(C3H8O2); Unk'),
('Lignin, alkali, carboxymethyl ether', 'Kraft lignin carboxymethyl ether', '102962-28-7', 'Lignin, alkali, carboxymethyl ether', '(C2H4O3); Unk'),
('Lignin, hydrolytic', '', '8072-93-3', 'Lignin, hydrolytic', 'Unk'),
('Lignin, organosolv', 'Dioxane lignin', '3/9/8068', 'Lignin, organosolv', 'Unk'),
('Lignin, organosolv, 2-hydroxyethyl ether', '', '90881-34-8', 'Lignin, organosolv, 2-hydroxyethyl ether', '(C2H6O2); Unk'),
('Lignosulfonic acid, sodium salt', '', '8061-51-6', 'Lignosulfonic acid, sodium salt', 'Unk'),
('Linseed oil', 'Fats and glyceridic oils', '8001-26-1', 'Linseed oil', 'Unk');

-- --------------------------------------------------------

--
-- Table structure for table `chemical resistance`
--

CREATE TABLE `chemical resistance` (
  `Polymer` varchar(100) DEFAULT NULL,
  `Acetic acid (10%)` bigint(20) DEFAULT NULL,
  `Acetaldehyde (40%)` bigint(20) DEFAULT NULL,
  `Acetone (100%)` bigint(20) DEFAULT NULL,
  `Butanol (100%)` bigint(20) DEFAULT NULL,
  `Carbon tetrachloride (100%)` bigint(20) DEFAULT NULL,
  `Diesel oil (100%)` bigint(20) DEFAULT NULL,
  `Ethanol (96%)` bigint(20) DEFAULT NULL,
  `Formic acid (3%)` bigint(20) DEFAULT NULL,
  `Formic acid(-10%)` bigint(20) DEFAULT NULL,
  `Gasoline unleaded (100%)` int(11) DEFAULT NULL,
  `Heptane (100%)` int(11) DEFAULT NULL,
  `Hydrogen peroxide (2%)` int(11) DEFAULT NULL,
  `Dichloromethane (100%)` int(11) DEFAULT NULL,
  `Perchloroethylene (100%)` int(11) DEFAULT NULL,
  `Phenol (75%)` int(11) DEFAULT NULL,
  `Potassium hydroxide (10%)` int(11) DEFAULT NULL,
  `Sulfuric acid (10%)` int(11) DEFAULT NULL,
  `Toluene (100%)` int(11) DEFAULT NULL,
  `Transformer oil (100%)` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chemical resistance`
--

INSERT INTO `chemical resistance` (`Polymer`, `Acetic acid (10%)`, `Acetaldehyde (40%)`, `Acetone (100%)`, `Butanol (100%)`, `Carbon tetrachloride (100%)`, `Diesel oil (100%)`, `Ethanol (96%)`, `Formic acid (3%)`, `Formic acid(-10%)`, `Gasoline unleaded (100%)`, `Heptane (100%)`, `Hydrogen peroxide (2%)`, `Dichloromethane (100%)`, `Perchloroethylene (100%)`, `Phenol (75%)`, `Potassium hydroxide (10%)`, `Sulfuric acid (10%)`, `Toluene (100%)`, `Transformer oil (100%)`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(chloroprene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyamide 12', 2, 1, 1, 1, 2, 1, 1, 1, 0, 1, 1, 2, 3, 2, 3, 1, 2, 1, 1),
('polyamide 6', 3, 2, 1, 1, 1, 1, 1, 3, 4, 1, 1, 4, 2, 1, 3, 1, 4, 1, 1),
('polyamide 610', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyamide 66', 3, 2, 1, 1, 1, 1, 1, 3, 3, 4, 1, 4, 2, 1, 3, 1, 4, 1, 1),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyisoprene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `compression`
--

CREATE TABLE `compression` (
  `Polymer` varchar(100) NOT NULL,
  `compressive modulus lower` float DEFAULT NULL,
  `compressive modulus upper` float DEFAULT NULL,
  `compressive strength at break lower` float DEFAULT NULL,
  `compressive strength at break upper` float DEFAULT NULL,
  `compressive strength at yield` float DEFAULT NULL,
  `storage modulus` float DEFAULT NULL,
  `loss modulus` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compression`
--

INSERT INTO `compression` (`Polymer`, `compressive modulus lower`, `compressive modulus upper`, `compressive strength at break lower`, `compressive strength at break upper`, `compressive strength at yield`, `storage modulus`, `loss modulus`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0),
('poly(chloroprene)', 0, 0, 0, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0, 0, 0),
('poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0),
('poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 3000, 3000, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 15, 15, 0, 0, 0, 0, 0),
('poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 1000, 1400, 55, 100, 0, 0, 0),
('polyamide 12', 0, 0, 0, 0, 0, 0, 0),
('polyamide 6', 2410, 2410, 0, 83, 83, 0, 0),
('polyamide 610', 2070, 2070, 0, 73, 73, 0, 0),
('polyamide 66', 2830, 2830, 0, 91, 91, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 860, 860, 0, 50, 19, 0, 0),
('polyisoprene', 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 0, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `creep`
--

CREATE TABLE `creep` (
  `Polymer` varchar(100) NOT NULL,
  `tensile creep modulus` float DEFAULT NULL,
  `flexural creep modulus Gpa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creep`
--

INSERT INTO `creep` (`Polymer`, `tensile creep modulus`, `flexural creep modulus Gpa`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0),
('poly(acrylonitrile)', 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0),
('poly(butadiene-co-styrene)', 0, 0),
('poly(butylene terephthalate)', 0, 0),
('poly(chloroprene)', 0, 0),
('poly(isobutene-co-isoprene)', 0, 0),
('poly(methyl methacrylate)', 0, 0),
('poly(oxymethylene)', 2800, 0),
('poly(styrene)', 0, 0),
('poly(tetrafluoroethylene)', 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0),
('poly(vinyl acetate)', 0, 0),
('poly(vinyl chloride)', 0, 0),
('poly(vinylidene fluoride)', 0, 0),
('polyamide 12', 300, 0),
('polyamide 6', 230, 0),
('polyamide 610', 400, 0),
('polyamide 66', 400, 0),
('polybutadiene', 0, 0),
('polyethylene', 0, 0),
('polyethylene terephtalate', 0, 0),
('polyethylene tetrafluoroethylene', 0, 5.5),
('polyisoprene', 0, 0),
('polypropylene', 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 270, 0);

-- --------------------------------------------------------

--
-- Table structure for table `electrical`
--

CREATE TABLE `electrical` (
  `Polymer` varchar(100) NOT NULL,
  `Constant frequency Hz` float DEFAULT NULL,
  `Dielectric const DC lower` float DEFAULT NULL,
  `Dielectric const DC upper` float DEFAULT NULL,
  `dielectric constant AC , e lower` float DEFAULT NULL,
  `dielectric constant AC , e upper` float DEFAULT NULL,
  `electric conductivity (S/cm)` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electrical`
--

INSERT INTO `electrical` (`Polymer`, `Constant frequency Hz`, `Dielectric const DC lower`, `Dielectric const DC upper`, `dielectric constant AC , e lower`, `dielectric constant AC , e upper`, `electric conductivity (S/cm)`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 4.2, 6.5, 0.000000000000048),
('poly(butadiene-co-acrylonitrile)', 1000000, 4.8, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 1000, 2.66, 2.66, 0, 0, 0),
('poly(butylene terephthalate)', 1000, 3, 4.5, 0, 0, 0),
('poly(chloroprene)', 0, 6.5, 8.1, 0, 0, 0),
('poly(isobutene-co-isoprene)', 1000, 2.42, 2.42, 0, 0, 0),
('poly(methyl methacrylate)', 1000, 3, 3, 0, 0, 0),
('poly(oxymethylene)', 1000, 3.6, 4, 0, 0, 0),
('poly(styrene)', 1000, 2.49, 2.61, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0),
('poly(vinyl acetate)', 2000, 3.5, 8.3, 0, 0, 0),
('poly(vinyl chloride)', 1000, 3.39, 3.39, 0, 0, 0),
('poly(vinylidene fluoride)', 1, 8.4, 13.5, 0, 0, 0),
('polyamide 12', 0, 0, 0, 0, 0, 65),
('polyamide 6', 1, 7.3, 7.3, 0, 0, 125),
('polyamide 610', 1, 5.9, 5.9, 0, 0, 0),
('polyamide 66', 1, 5.4, 5.4, 0, 0, 125),
('polybutadiene', 50, 2.3, 2.3, 0, 0, 0),
('polyethylene', 100000, 2.3, 2.3, 0, 0, 0),
('polyethylene terephtalate', 1000, 3.25, 3.25, 0, 0, 0),
('polyethylene tetrafluoroethylene', 1, 2.6, 2.6, 2.5, 2.5, 0),
('polyisoprene', 1000, 2.68, 2.68, 0, 0, 0),
('polypropylene', 10, 2.2, 2.3, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 2.06, 2.06, 0);

-- --------------------------------------------------------

--
-- Table structure for table `flexural`
--

CREATE TABLE `flexural` (
  `Polymer` varchar(100) NOT NULL,
  `Flexural modulus Mpa lower` float DEFAULT NULL,
  `Flexural modulus Mpa upper` float DEFAULT NULL,
  `flex stress at break lower` float DEFAULT NULL,
  `flex stress at break upper` float DEFAULT NULL,
  `flex stress at yield` float DEFAULT NULL,
  `storage modulus` float DEFAULT NULL,
  `loss modulus` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flexural`
--

INSERT INTO `flexural` (`Polymer`, `Flexural modulus Mpa lower`, `Flexural modulus Mpa upper`, `flex stress at break lower`, `flex stress at break upper`, `flex stress at yield`, `storage modulus`, `loss modulus`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0),
('poly(chloroprene)', 0, 0, 0, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0, 0, 0),
('poly(methyl methacrylate)', 0, 0, 145, 145, 0, 0, 0),
('poly(oxymethylene)', 2830, 2830, 0, 0, 97, 97, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 655, 655, 0, 0, 0, 0, 0),
('poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 1200, 1800, 59, 75, 0, 0, 0),
('polyamide 12', 1410, 1410, 56, 56, 0, 0, 0),
('polyamide 6', 2720, 2720, 0, 0, 0, 0, 0),
('polyamide 610', 1970, 1970, 0, 0, 0, 0, 0),
('polyamide 66', 2830, 2830, 117, 117, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 827, 1380, 0, 0, 0, 0, 0),
('polyisoprene', 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 1172, 1172, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 655, 690, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glass transition`
--

CREATE TABLE `glass transition` (
  `Polymer` varchar(100) DEFAULT NULL,
  `form` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `Tg (Ã‚Â°C)` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `glass transition`
--

INSERT INTO `glass transition` (`Polymer`, `form`, `CAS registry no.`, `Tg (Ã‚Â°C)`, `remarks`) VALUES
('Poly(acrylic acid)', '', '1/4/9003', 106, ''),
('Poly(acrylic acid)', '', '1/4/9003', 75, ''),
('Poly(1-adamantyl acrylate)', '', '', 153, ''),
('Poly(adamantyl crotonate)', '', '', 234, ''),
('Poly(adamantyl sorbate)', '', '', 115, ''),
('Poly(benzyl acrylate)', '', '', 6, ''),
('Poly(4-butoxycarbonylphenyl acrylate)', '', '', 13, ''),
('Poly(butyl acrylate)', '', '9003-49-0', -54, 'Mechanical method'),
('Poly(butyl acrylate)', '', '9003-49-0', -49, ''),
('Poly(sec-butyl acrylate)', 'conventional', '', -22, ''),
('Poly(sec-butyl acrylate)', 'conventional', '', -20, ''),
('Poly(sec-butyl acrylate)', 'syndiotactic', '', -20, ''),
('Poly(sec-butyl acrylate)', 'isotactic', '', -23, ''),
('Poly(tert-butyl acrylate)', '', '', 73, ''),
('Poly(tert-butyl acrylate)', '', '', 31, ''),
('Poly(2-tert-butylphenyl acrylate)', '', '', 72, ''),
('Poly(4-tert-butylphenyl acrylate)', '', '', 71, ''),
('Poly(cesium acrylate)', '', '', 174, 'Extrapolated from DSC data on water plasticized samples'),
('Poly[3-chloro-2,2-bis(chloromethyl)propyl acrylate]', '', '', 46, ''),
('Poly(2-chlorophenyl acrylate)', '', '', 53, ''),
('Poly(4-chlorophenyl acrylate)', '', '', 58, ''),
('Poly(2,4-dichlorophenyl acrylate)', '', '', 60, ''),
('Poly(4-cyanobenzyl acrylate)', '', '', 44, ''),
('Poly(2-cyanoisobutyl acrylate)', '', '26809-38-1', 51, 'Dilatomer, 10deg/min HR'),
('Poly(2-cyanoethyl acrylate)', '', '25067-30-5', 4, ''),
('Poly(2-cyanoethyl acrylate)', '', '25067-30-5', 115, 'Dilatomer, 10deg/min HR'),
('Poly(2-cyanoheptyl acrylate)', '', '26936-29-8', 116, 'DTA'),
('Poly(2-cyanohexyl acrylate)', '', '26877-39-4', 85, 'Dilatomer, 10deg/min HR'),
('Poly(cyanomethyl acrylate)', '', '', 160, 'Dilatomer, 10deg/min HR, DTA, f(polymerization)'),
('Poly(2-cyanomethyl acrylate)', '', '', 23, 'No experimental details'),
('Poly(5-cyano-3-oxapentyl acrylate)', '', '', -23, 'No experimental details'),
('Poly(4-cyanophenyl acrylate)', '', '', 90, ''),
('Poly(2-cyanoisopropyl acrylate)', '', '25931-02-6', 66, 'Dilatomer, 10deg/min HR'),
('Poly(4-cyano-3-thiabutyl acrylate)', '', '', -24, ''),
('Poly(6-cyano-3-thiahexyl acrylate)', '', '', -58, ''),
('Poly(6-cyano-4-thiahexyl acrylate)', '', '', -58, ''),
('Poly(8-cyano-7-thiaoctyl acrylate)', '', '', -59, ''),
('Poly(5-cyano-3-thiapentyl acrylate)', '', '', -50, ''),
('Poly(cyclododecyl acrylate)', '', '56710-66-8', 37, 'DSC, onset, HR, 32deg/min, quenched'),
('Poly(cyclohexyl acrylate) conventional', 'conventional', '', 19, ''),
('Poly(cyclohexyl acrylate) conventional', 'syndiotactic', '', 16, ''),
('Poly(cyclohexyl acrylate) conventional', 'isotactic', '', 12, ''),
('Poly(1,2:3,4-di-O-isopropylidene-ÃŽÂ±-D-galactopyranos- 6-O-yl acrylate)', '', '', 98, ''),
('Poly(3,5-dimethyladamantyl acrylate)', '', '', 106, 'DSC heating rate; data corrected (sci)'),
('Poly(3,5-dimethyladamantyl acrylate)', '', '', 105, ''),
('Poly(3,5-dimethyladamantyl crotonate)', '', '', 159, '');

-- --------------------------------------------------------

--
-- Table structure for table `heat`
--

CREATE TABLE `heat` (
  `Polymer` varchar(100) NOT NULL,
  `softening temp` float DEFAULT NULL,
  `vicat sofening temp lower` float DEFAULT NULL,
  `vicat sofening temp upper` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heat`
--

INSERT INTO `heat` (`Polymer`, `softening temp`, `vicat sofening temp lower`, `vicat sofening temp upper`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0),
('poly(chloroprene)', 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0),
('poly(methyl methacrylate)', 0, 12, 20),
('poly(oxymethylene)', 0, 160, 170),
('poly(styrene)', 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0),
('poly(vinyl acetate)', 40, 0, 0),
('poly(vinyl chloride)', 0, 0, 0),
('poly(vinylidene fluoride)', 0, 0, 0),
('polyamide 12', 0, 0, 0),
('polyamide 6', 0, 0, 0),
('polyamide 610', 0, 0, 0),
('polyamide 66', 0, 0, 0),
('polybutadiene', 0, 0, 0),
('polyethylene', 0, 88, 132),
('polyethylene terephtalate', 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 0, 0),
('polyisoprene', 0, 0, 0),
('polypropylene', 0, 138, 155),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `impact`
--

CREATE TABLE `impact` (
  `Polymer` varchar(100) NOT NULL,
  `izod notched lower` float DEFAULT NULL,
  `izod notched upper` float DEFAULT NULL,
  `charpy` float DEFAULT NULL,
  `rockwell R scale lower` float DEFAULT NULL,
  `rockwell R scale upper` float DEFAULT NULL,
  `shore durometer lower` float DEFAULT NULL,
  `shore durometer upper` float DEFAULT NULL,
  `oxygen index` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `impact`
--

INSERT INTO `impact` (`Polymer`, `izod notched lower`, `izod notched upper`, `charpy`, `rockwell R scale lower`, `rockwell R scale upper`, `shore durometer lower`, `shore durometer upper`, `oxygen index`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 38, 80, 0),
('poly(chloroprene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(methyl methacrylate)', 0, 0, 20, 0, 0, 0, 0, 0),
('poly(oxymethylene)', 0, 0, 9, 120, 120, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 25, 25, 0, 0, 95),
('poly(vinyl acetate)', 0, 0, 0, 0, 0, 80, 85, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 160, 530, 0, 0, 0, 70, 80, 0),
('polyamide 12', 60, 60, 0, 106, 110, 0, 0, 0),
('polyamide 6', 53, 53, 0, 116, 119, 0, 0, 0),
('polyamide 610', 53, 53, 0, 110, 111, 0, 0, 0),
('polyamide 66', 53, 53, 0, 118, 121, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0.8, 16, 0, 0, 0, 44, 70, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 0, 0, 20, 20, 0, 0, 0),
('polyisoprene', 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0.4, 6, 0, 0, 0, 70, 80, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 60, 60, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `melting points`
--

CREATE TABLE `melting points` (
  `Polymer` varchar(100) DEFAULT NULL,
  `synonyms/comments` text DEFAULT NULL,
  `mol. weight` text DEFAULT NULL,
  `melting pt. (Ã‚Â°C)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melting points`
--

INSERT INTO `melting points` (`Polymer`, `synonyms/comments`, `mol. weight`, `melting pt. (Ã‚Â°C)`) VALUES
('Poly(acetaldehyde)', '', '', ''),
('Poly(2,2,2-trichloroacetaldehyde)', '', '', ''),
('Poly(acrylamide)', '', '71.08', ''),
('Poly(N-docosylacrylamide)', '', '379.67', '68'),
('Poly(N-dodecylacrylamide)', '', '239.4', '-8'),
('Poly(N-hexadecylacrylamide)', '', '295.51', '45'),
('Poly(N-isopropylacrylamide)', '', '', ''),
('Poly(N-octadecylacrylamide)', '', '323.56', '68'),
('Poly(N-tetradecylacrylamide)', '', '267.46', '18'),
('Poly(acrylic acid)', '', '72.06', ''),
('Poly(acrylic acid) allyl ester', '', '', ''),
('Poly(acrylic acid) butyl ester', '', '128.17', '47'),
('Poly(acrylic acid) sec-butyl ester', '', '', ''),
('Poly(acrylic acid) tert-butyl ester', '', '', ''),
('Poly(acrylic acid) decyl ester', '', '212.33', ''),
('Poly(acrylic acid) 1,1-dihydroperfluorodecyl ester', '', '554.15', '100'),
('Poly(acrylic acid) docosyl ester', '', '380.66', '72'),
('Poly(acrylic acid) dodecyl ester', '', '240.39', '12'),
('Poly(acrylic acid) hexadecyl ester', '', '296.5', '43'),
('Poly(acrylic acid) isobutyl ester', '', '', ''),
('Poly(acrylic acid) isopropyl ester', '', '', ''),
('Poly(acrylic acid) octadecyl ester', '', '324.55', '56'),
('Poly(acrylic acid) octyl ester', '', '184.28', ''),
('Poly(acrylic acid) 1,1-dihydroperfluorooctyl ester', '', '454.14', '35'),
('Poly(acrylic acid) tetradecyl ester', '', '268.44', '32'),
('Poly(acrylonitrile)', '', '', ''),
('Poly(ÃŽÂ±-ethylacrylonitrile)', '', '81.12', '200'),
('Poly(ÃŽÂ±-isopropylacrylonitrile)', '', '95.14', '310'),
('Poly(ÃŽÂ±-propylacrylonitrile)', '', '95.14', '210'),
('Poly(2,2\'-adipamidodibenzoic isophthalic anhydride)', '', '514.49', '225'),
('Poly(4,4\'-adipamidodibenzoic isophthalic anhydride)', '', '514.49', '273'),
('Poly(2,2\'-adipamidodibenzoic terephthalic anhydride)', '', '514.49', '235'),
('Poly(4,4\'-adipamidodibenzoic terephthalic anhydride)', '', '514.49', '285'),
('Poly(adipic anhydride)', '', '128.13', '85'),
('Poly(adipic anhydride)', '', '128.13', '98'),
('Poly(adipic anhydride)', '', '128.13', '77'),
('Poly(adipoyl dithionisophthaloyldihydrazide)', '', '336.43', '280'),
('Poly(adipoyl ethylenediurea)', '', '256.26', '241'),
('Poly(adipoyl octamethylenediurea)', '', '340.42', '290'),
('Poly(adipoyl pentamethylenediurea)', '', '298.34', '222'),
('Poly(ÃŽÂ²-alanine)', 'see Poly(3-aminopropionic acid)', '', ''),
('Poly(allene)', '', '', ''),
('Poly(tetrafluoroallene)', '', '', ''),
('Poly(allylbenzene)', 'see Poly(3-phenylpropene)', '', ''),
('Poly(2-aminoacetic acid)', 'see Poly(glycine)', '', ''),
('Poly(m-aminobenzoic acid)', '', '119.12', '425'),
('Poly(p-aminobenzoic acid)', '', '', ''),
('Poly(3-aminobutyric acid)', '', '', ''),
('Poly(4-aminobutyric acid)', '', '', ''),
('Poly(10-aminocapric acid)', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `other_properties`
--

CREATE TABLE `other_properties` (
  `Polymer` varchar(100) NOT NULL,
  `Density (lower)g/cm3` float DEFAULT NULL,
  `Density (upper)g/cm3` float DEFAULT NULL,
  `Specific Volume` float DEFAULT NULL,
  `MW Lower` float DEFAULT NULL,
  `MW Upper` float DEFAULT NULL,
  `Crystal structures` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_properties`
--

INSERT INTO `other_properties` (`Polymer`, `Density (lower)g/cm3`, `Density (upper)g/cm3`, `Specific Volume`, `MW Lower`, `MW Upper`, `Crystal structures`) VALUES
('ethylene-propylene-diene-terpolymer', 0.85, 0.85, 0, 0, 0, ''),
('poly(acrylonitrile)', 1.15, 1.18, 0, 0, 0, ''),
('poly(butadiene-co-acrylonitrile)', 1.02, 1.02, 0, 0, 0, ''),
('poly(butadiene-co-styrene)', 0.94, 1, 0, 0, 0, ''),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, ''),
('poly(chloroprene)', 1.32, 1.32, 0, 0, 0, ''),
('poly(isobutene-co-isoprene)', 0.933, 0.933, 0, 0, 0, ''),
('poly(methyl methacrylate)', 1.188, 1.188, 0, 0, 0, ''),
('poly(oxymethylene)', 1.42, 1.435, 0.7008, 0, 0, ''),
('poly(styrene)', 1.04, 1.065, 0, 0, 0, ''),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 2.12, 2.17, 0, 250000, 600000, ''),
('poly(vinyl acetate)', 1.19, 1.19, 0.841, 0, 0, ''),
('poly(vinyl chloride)', 1.39, 1.39, 0, 0, 0, ''),
('poly(vinylidene fluoride)', 0, 0, 0, 0, 0, ''),
('polyamide 12', 0, 0, 0, 0, 0, ''),
('polyamide 6', 0, 0, 0, 0, 0, ''),
('polyamide 610', 0, 0, 0, 0, 0, ''),
('polyamide 66', 0, 0, 0, 0, 0, ''),
('polybutadiene', 1.01, 1.01, 0, 0, 0, ''),
('polyethylene', 0.855, 0.97, 0, 0, 0, ''),
('polyethylene terephtalate', 1.33, 1.45, 0, 0, 0, ''),
('polyethylene tetrafluoroethylene', 0, 0, 0, 0, 0, ''),
('polyisoprene', 970, 970, 0, 0, 0, ''),
('polypropylene', 0.9, 0.91, 0, 220000, 700000, 'Monoclinic, hexagonal, triclinic, orthorhombic'),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 2.12, 2.17, 0, 200000, 450000, '');

-- --------------------------------------------------------

--
-- Table structure for table `physicochemical property`
--

CREATE TABLE `physicochemical property` (
  `Polymer` varchar(100) DEFAULT NULL,
  `solubility parameter J/cm3,1/2` bigint(20) DEFAULT NULL,
  `hansen parameter (polar)` bigint(20) DEFAULT NULL,
  `hansen parameter (dispersive)` bigint(20) DEFAULT NULL,
  `hansen parameter (hydrogen bonding)` bigint(20) DEFAULT NULL,
  `water absorption` bigint(20) DEFAULT NULL,
  `Gas permeability coefficient` bigint(20) DEFAULT NULL,
  `CO2 Permeability ngcm/m2-s` text DEFAULT NULL,
  `O2 Permeability` text DEFAULT NULL,
  `N2 Permeability` text DEFAULT NULL,
  `Gas diffusion coefficient (cm2/s)x10^8` text DEFAULT NULL,
  `critical surface tension` text DEFAULT NULL,
  `interfacial tension` text DEFAULT NULL,
  `contact angle` text DEFAULT NULL,
  `friction coefficient` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physicochemical property`
--

INSERT INTO `physicochemical property` (`Polymer`, `solubility parameter J/cm3,1/2`, `hansen parameter (polar)`, `hansen parameter (dispersive)`, `hansen parameter (hydrogen bonding)`, `water absorption`, `Gas permeability coefficient`, `CO2 Permeability ngcm/m2-s`, `O2 Permeability`, `N2 Permeability`, `Gas diffusion coefficient (cm2/s)x10^8`, `critical surface tension`, `interfacial tension`, `contact angle`, `friction coefficient`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, '1.18E-14', '2.50E-15', '', '', '', '', '', ''),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(chloroprene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 0, '113 m3 m/s/m2/Pa(x10^15)', '45', '14', '', '', '', '', '0.4'),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(oxymethylene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(styrene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0, '273', '637', '91', '', '', '', '', ''),
('poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyamide 12', 0, 0, 0, 0, 0, 0, '', '', '', '0.3', '31', '', '', ''),
('polyamide 6', 28, 0, 0, 0, 0, 0, '', '', '', '0.4', '43', '', '', ''),
('polyamide 610', 26, 0, 0, 0, 0, 0, '', '', '', '0.1', '', '', '', ''),
('polyamide 66', 28, 0, 0, 0, 0, 0, '', '', '', '0.2', '44', '', '', ''),
('polybutadiene', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyethylene', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyisoprene', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polypropylene', 0, 0, 0, 0, 0, 0, '105-150', '300-500', '10.0-25', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `polymer names`
--

CREATE TABLE `polymer names` (
  `Polymer` varchar(100) DEFAULT NULL,
  `CAS numbers` varchar(10) NOT NULL,
  `Acronym` text DEFAULT NULL,
  `Alias` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `polymer names`
--

INSERT INTO `polymer names` (`Polymer`, `CAS numbers`, `Acronym`, `Alias`) VALUES
('polyamide 12', '24937-16-4', 'nylon 12', ''),
('poly(vinylidene fluoride)', '24937-79-9', 'PVDF', ''),
('poly(butylene terephthalate)', '24968-12-5', '', ''),
('poly(acrylonitrile)', '25014-41-9', 'PAN', ''),
('ethylene-propylene-diene-terpolymer', '25038-36-2', 'EPDM rubber', ''),
('polyamide 6', '25038-54-4', 'Nylon 6', ''),
('polyethylene terephtalate', '25038-59-9', 'PET', ''),
('polyethylene tetrafluoroethylene', '25038-71-5', 'ETFE', ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', '25067-11-2', 'FEP', 'Fluorinated ehtylene propylene'),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', '26655-00-5', 'PFA', ''),
('polyamide 66 ', '32131-17-2', 'Nylon 66', 'polycaprolactam'),
('polybutadiene', '40022-03-5', 'BR', ''),
('poly(oxymethylene)', '9002-81-7', 'POM', ''),
('poly(tetrafluoroethylene)', '9002-84-0', 'PTFE', ''),
('poly(vinyl chloride)', '9002-86-2', 'PVC', ''),
('polyethylene', '9002-88-4', 'PE', ''),
('polypropylene', '9003-07-0', 'PP', ''),
('poly(butadiene-co-acrylonitrile)', '9003-18-3', '', ''),
('poly(vinyl acetate)', '9003-20-7', 'PVA', 'PVAc'),
('polyisoprene', '9003-31-0', '', ''),
('poly(styrene)', '9003-53-6', 'PS', ''),
('poly(butadiene-co-styrene)', '9003-55-8', '', ''),
('poly(isobutene-co-isoprene)', '9010-85-9', '', ''),
('poly(chloroprene)', '9010-98-4', 'neoprene', ''),
('poly(methyl methacrylate)', '9011-14-7', 'PMMA', ''),
('polyamide 610', '9011-51-3', 'nylon 610', '');

-- --------------------------------------------------------

--
-- Table structure for table `refractive index`
--

CREATE TABLE `refractive index` (
  `Polymer` varchar(100) DEFAULT NULL,
  `n` text DEFAULT NULL,
  `T (Ã‚Â°C)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refractive index`
--

INSERT INTO `refractive index` (`Polymer`, `n`, `T (Ã‚Â°C)`) VALUES
('Benzyl cellulose', '1.47-1.58', ''),
('Butylphenol formaldehyde resin', '1.66', ''),
('Butyl rubber', '1.508', ''),
('Cellulose', '1.54', ''),
('Cellulose acetate', '1.48-1.50', ''),
('Cellulose acetate', '1.47', '25'),
('Cellulose acetate butyrate', '1.46-1.49', ''),
('Cellulose acetate propionate', '1.47-1.48', ''),
('Cellulose nitrate', '1.5-1.514', ''),
('Cellulose propionate', '1.47-1.49', ''),
('Cellulose triacetate', '1.47-1.48', ''),
('Cellulose tripropionate', '1.48-1.49', ''),
('Epoxy resins', '1.55-1.60', ''),
('Ethyl cellulose', '1.479', '21'),
('Gutta percha (ÃŽÂ±)', '1.514', '50'),
('Gutta percha (ÃŽÂ²)', '1.509', ''),
('Hard rubber', '1.6', ''),
('Hydrochlorinated rubber', '1.53-1.55', ''),
('Methyl cellulose (low viscosity)', '1.497', '25'),
('Naphthalene-formaldehyde resin', '1.696', ''),
('Natural rubber', '1.519-1.52', ''),
('Phenol-formaldehyde resin', '1.7', ''),
('Phenol-formaldehyde resins', '1.47-1.70', ''),
('Poly(abietic acid)', '1.546', '25'),
('Poly(acrolein)', '1.529', ''),
('Poly(acrylic acid)', '1.527', '25'),
('Poly(acrylonitrile)', '1.52', ''),
('Poly(acrylonitrile)', '1.5187', '25'),
('Poly(allyl methacrylate)', '1.5196', '20'),
('Poly(2-aminoethyl methacrylate)', '1.537', '20'),
('Poly(N-allyl methacrylamide)', '1.5476', '20'),
('Poly(N-benzyl methacrylamide)', '1.5965', '20'),
('Poly(n-butyl methacrylate)', '1.483', '20-25'),
('Poly(benzyl methacrylate)', '1.568', '20'),
('Poly(bornyl methacrylate)', '1.5059', '20'),
('Poly(2-bromoethyl methacrylate)', '1.5426', '20'),
('Poly(p-bromophenyl methacrylate)', '1.5964', '20'),
('Poly(2-bromo-4-trifluoromethylstyrene)', '1.5', '25'),
('Poly(1,2-butadiene)', '1.5', '20'),
('Poly(1,3-butadiene)', '1.5154', '25'),
('Poly(1,3-butadiene)', '1.52', ''),
('Poly(1,3-butadiene)', '1.518', ''),
('Poly(butadiene-co-acrylonitrile)', '1.52', ''),
('Poly(butadiene-co-styrene)', '1.535', ''),
('Poly(butadiene-co-styrene)', '1.53', ''),
('Poly(butene)', '1.5125', ''),
('Poly(butyl acrylate)', '1.4631', '30'),
('Poly(butyl acrylate)', '1.466', '20'),
('Poly(sec-butyl ÃŽÂ±-bromoacrylate)', '1.542', '25'),
('Poly(sec-butyl ÃŽÂ±-chloroacrylate)', '1.5', '25');

-- --------------------------------------------------------

--
-- Table structure for table `rheological`
--

CREATE TABLE `rheological` (
  `Polymer` varchar(100) NOT NULL,
  `Melt flow temperature` float DEFAULT NULL,
  `Melt flow rate dg/min lower` float DEFAULT NULL,
  `Melt flow rate dg/min upper` float DEFAULT NULL,
  `melt viscosity (capilary rheometer) kPa lower` float DEFAULT NULL,
  `melt viscosity (capilary rheometer) kPa upper` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rheological`
--

INSERT INTO `rheological` (`Polymer`, `Melt flow temperature`, `Melt flow rate dg/min lower`, `Melt flow rate dg/min upper`, `melt viscosity (capilary rheometer) kPa lower`, `melt viscosity (capilary rheometer) kPa upper`) VALUES
('ethylene-propylene-diene-terpolymer', 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0, 0, 0, 0, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0),
('poly(chloroprene)', 0, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 0, 0, 0, 0, 0),
('poly(methyl methacrylate)', 0, 0, 0, 0, 0),
('poly(oxymethylene)', 190, 69300, 69300, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 8, 50),
('poly(vinyl acetate)', 0, 0, 0, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 265, 5, 180, 0, 0),
('polyamide 12', 0, 0, 0, 0, 0),
('polyamide 6', 0, 0, 0, 0, 0),
('polyamide 610', 0, 0, 0, 0, 0),
('polyamide 66', 0, 0, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 3.7, 16, 700, 10000),
('polyisoprene', 0, 0, 0, 0, 0),
('polypropylene', 230, 22.8, 22.8, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 1, 18, 4, 27);

-- --------------------------------------------------------

--
-- Table structure for table `shear`
--

CREATE TABLE `shear` (
  `Polymer` varchar(100) NOT NULL,
  `shear modulus` float DEFAULT NULL,
  `shear stress at break` float DEFAULT NULL,
  `shear stress yield` float DEFAULT NULL,
  `storage modulus` float DEFAULT NULL,
  `loss modulus` float DEFAULT NULL,
  `critical shear rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shear`
--

INSERT INTO `shear` (`Polymer`, `shear modulus`, `shear stress at break`, `shear stress yield`, `storage modulus`, `loss modulus`, `critical shear rate`) VALUES
('ethylene-propylene-diene-terpolymer', 1.59, 0, 0, 1.59, 0.12, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 0.53, 0, 0, 5.88, 4.92, 0),
('poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0),
('poly(chloroprene)', 0.52, 0, 0, 5.81, 5.04, 0),
('poly(isobutene-co-isoprene)', 0.33, 0, 0, 5.64, 5.48, 0),
('poly(methyl methacrylate)', 1700, 0, 0, 0, 0, 0),
('poly(oxymethylene)', 1500, 66, 66, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0),
('poly(vinyl acetate)', 13, 0, 0, 0, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0),
('polyamide 12', 500, 34, 0, 0, 0, 0),
('polyamide 6', 1100, 59, 0, 0, 0, 0),
('polyamide 610', 800, 58, 0, 0, 0, 0),
('polyamide 66', 1300, 66, 0, 0, 0, 0),
('polybutadiene', 0.96, 0, 0, 5.98, 4.79, 0),
('polyethylene', 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 200),
('polyisoprene', 0.43, 0, 0, 5.61, 3.8, 0),
('polypropylene', 0, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `solubility parameters solvents`
--

CREATE TABLE `solubility parameters solvents` (
  `ï»¿solvent` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `solub. param., ÃŽÂ´ (MPa1/2)` double DEFAULT NULL,
  `solub. param., ÃŽÂ´ ((cal/cm3)1/2)` double DEFAULT NULL,
  `H-bonding group` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solubility parameters solvents`
--

INSERT INTO `solubility parameters solvents` (`ï»¿solvent`, `CAS registry no.`, `solub. param., ÃŽÂ´ (MPa1/2)`, `solub. param., ÃŽÂ´ ((cal/cm3)1/2)`, `H-bonding group`) VALUES
('Acetaldehyde', '7/6/1975', 21.1, 10.3, 'm'),
('Acetic acid', '64-19-7', 20.7, 10.2, 's'),
('Acetic anhydride', '108-24-7', 21.1, 10.3, 's'),
('Acetone', '67-64-1', 20.3, 9.9, 'm'),
('Acetonitrile', '7/8/1975', 24.3, 11.9, 'p'),
('Acetophenone', '98-86-2', 21.7, 10.6, 'm'),
('Acetyl chloride', '75-36-5', 19.4, 9.5, 'm'),
('Acetylmorpholine (N)', '1696-20-4', 23.7, 11.6, 'm'),
('Acetylpiperidine (N)', '618-42-8', 22.9, 11.2, 's'),
('Acetylpyrrolidine (N)', '1072-83-9', 23.3, 11.4, 's'),
('Acrolein', '107-02-8', 20.1, 9.8, 's'),
('Acrylic acid', '10/7/1979', 24.6, 12, 's'),
('Acrylonitrile', '107-13-1', 21.5, 10.5, 'p'),
('Allyl acetate', '591-87-7', 18.8, 9.2, 'm'),
('Allyl alcohol', '107-18-6', 24.1, 11.8, 's'),
('Allyl chloride', '107-05-1', 18, 8.8, 'm'),
('Ammonia', '7664-41-7', 33.4, 16.3, 's'),
('Amyl acetate (iso)', '625-16-1', 16, 7.8, 'm'),
('Amyl acetate (normal)', '628-63-7', 17.4, 8.5, 'm'),
('Amyl acetate (secondary)', '626-38-0', 17, 8.3, 'm'),
('Amyl alcohol', '75-85-4', 20.5, 10, 's'),
('Amyl alcohol (normal)', '71-41-0', 22.3, 10.9, 's'),
('Amylamine (normal)', '110-58-7', 17.8, 8.7, 's'),
('Amyl bromide (1-bromopentane)', '110-53-2', 15.6, 7.6, 'm'),
('Amyl chloride (1-chloropentane)', '543-59-9', 17, 8.3, 'm'),
('Amylene (2-methyl-2-butene)', '513-35-9', 14.1, 6.9, 'p'),
('Amyl ether (pentyl ether)', '693-65-2', 14.9, 7.3, 'm'),
('Amyl formate (iso)', '110-45-2', 16.4, 8, 'm'),
('Amyl formate (normal)', '638-49-3', 17.2, 8.5, 'm'),
('Amyl iodide (1-iodopentane)', '628-17-1', 17.2, 8.4, 'm'),
('Anethole (para)', '4180-23-8', 17.2, 8.4, 'm'),
('Aniline', '65-53-3', 21.1, 10.3, 's'),
('Anthracene', '120-12-7', 20.3, 9.9, 'p'),
('Apco #18 solvent', '', 15.3, 7.5, 'p'),
('Apco #140 solvent', '', 14.9, 7.3, 'p'),
('Apco thinner', '', 16, 7.8, 'p'),
('Aroclor 1248', '12672-29-6', 18, 8.8, 'p'),
('Benzaldehyde', '100-52-7', 19.2, 9.4, 'm'),
('Benzene', '71-43-2', 18.8, 9.2, 'p'),
('Benzonitrile', '100-47-0', 17.2, 8.4, 'p'),
('Benzyl alcohol', '100-51-6', 24.8, 12.1, 's'),
('Bicyclohexyl', '92-51-3', 17.4, 8.5, 'p'),
('Bromobenzene', '108-86-1', 20.3, 9.9, 'p'),
('1-Bromonaphthalene', '11/9/1990', 21.7, 10.6, 'p'),
('Bromostyrene (ortho)', '2039-88-5', 20.1, 9.8, 'p'),
('1,3-Butadiene', '106-99-0', 14.5, 7.1, 'p'),
('n-Butane', '106-97-8', 13.9, 6.8, 'p'),
('1,3-Butanediol', '107-88-0', 23.7, 11.6, 's'),
('1,4-Butanediol', '110-63-4', 24.8, 12.1, 's'),
('2,3-Butanediol', '513-85-9', 22.7, 11.1, 's');

-- --------------------------------------------------------

--
-- Table structure for table `solvents and non solvents`
--

CREATE TABLE `solvents and non solvents` (
  `Polymer` varchar(100) DEFAULT NULL,
  `solvents` text DEFAULT NULL,
  `nonsolvents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solvents and non solvents`
--

INSERT INTO `solvents and non solvents` (`Polymer`, `solvents`, `nonsolvents`) VALUES
('1.1. POLY(DIENES), POLY(ACETYLENES) (see also 6.1, 6.2)', '', ''),
('Poly(dienes)', '', ''),
('Poly(allene)', 'Bzn., halogenated hydrocarbons', 'Hexane, methanol'),
('Poly(1,2-butadiene)', 'Toluene', ''),
('Poly(1,2-butadiene)', 'Chloroform', ''),
('Poly(1,3-butadiene)', 'Higher aliphatic ethers, hydrocarbons, higher ketones, THF', 'Alcohol, dil. acids, dil. alkalies, hypochlorite solutions, lower ketones and esters, nitromethane, propionitrile, W'),
('Poly(1,3-butadiene)', 'Bzn., toluene', ''),
('Poly(1,3-butadiene)', 'Cyclohexane', ''),
('Poly(1,3-butadiene)', 'Bzn., heptane/hexane (1/1)', ''),
('Poly(1,3-butadiene)', 'Cyclohexane, toluene', ''),
('Poly(isoprene)', 'See Poly(1,3-butadiene)', ''),
('Poly(isoprene)', 'Toluene', 'Diethyl ether, hexane'),
('Poly(dienes)', '', ''),
('Poly(2-tert-butyl-1,3-butadiene)', 'Bzn., carbon disulfide, carbon tetrachloride, chloroform, diethyl ether, heptane', 'Acetone, alcohol'),
('Poly(dicyclopentadiene)', 'Toluene', 'Methanol'),
('Poly(5,7-dimethyl-1,6-octadiene)', 'See Poly(2-tert-butyl-1,3-butadiene)', ''),
('Poly(1-methoxybutadiene)', '', 'Acetone, bzn., dioxane, heptane, methanol'),
('Poly(2-chlorobutadiene), chloroprene', 'Bzn., carbon tetrachloride, chlorinated hydrocarbons, cyclohexane/toluene, cyclohexanone, dioxane, ethyl acetate, pyridine', 'Alcohols, aliphatic hydrocarbons, hydrogen fluoride, ketones, mineral oils, nonoxidizing conc. acids incl. hydrogen fluoride, toluene (sw), W'),
('Poly(2-chlorobutadiene), chloroprene 1,4-', 'Bzn., chloroform, ether, hexane, THF', 'Acetone, ethanol, methanol'),
('Poly[2-(chloromethyl)butadiene]', 'Dichloromethane, THF, toluene', 'Ethanol, methanol'),
('Poly(perfluoro-1,4-pentadiene)', 'Hexafluorobenzene', ''),
('Poly(2,5-diheptyl-1,4-phenylenehexa-1,3,5-triene-1,6-diyl)', 'Acetone, bzn., chloroform', ''),
('Poly(1,5-pentamethyl-2-enediyl)', 'Methylene chloride', 'Methanol'),
('Poly(butadiene-co-styrene)', 'Bzn., cyclohexane, toluene', ''),
('Buna-S', '', ''),
('GR-S', '', ''),
('SBR rubber', '', ''),
('Poly(acetylenes)', '', ''),
('Poly(acetylene)', 'Aniline, DMF, isopropylamine', 'Acetone, bzn., carbon tetrachloride, cyclohexane, methanol, methylene chloride, pyridine'),
('Poly(phenylacetylene)', 'Acetone, carbon tetrachloride, methanol', ''),
('Poly(phenylacetylene)', 'Bzn., cyclohexane (hot), toluene', 'Methanol'),
('Poly(diphenyldiacetylene), poly- (1,4-diphenyl-1,3-butadiene), ', 'Chloroform, cyclohexane, dioxane', 'Methanol'),
('Poly[bis(alkylthio)acetylene]', 'Aromatic hydrocarbons, halogenated hydrocarbons', ''),
('Poly[3-(tert-butoxycarbonylmethyleneiminocarbonyloxy)- 8-(5-pyrimidyl)-oct-5-yn-7-ene-1,8-diyl]', 'Chloroform, hexane, THF', ''),
('Poly[2-(dodecyloxycarbonyl)-1,4-phenyleneethynylene]', 'THF (hot)', 'Methanol'),
('Poly(9,9-dipropargylfluorene), ', 'Dichlorobenzene', ''),
('Poly(1-propynyleneoxy-1,4-phenyleneisopropylidene- 1,4-phenyleneoxy-2-propynylene)', 'DMF/pyridine', 'W'),
('Poly(ethynylene-1,4-phenyleneoxy- 1,4-phenyleneethynylene)', 'Dioxane, pyridine', 'Methanol'),
('Poly(butadiene-co-acrylonitrile)', 'Acetone, bzn., chloroform', ''),
('1.2. POLY(ALKENES)', '', ''),
('Poly(methylene)', 'See Polyethylene', ''),
('Polyethylene', 'Above 80C: 1,2,4-trichlorobenzene, decalin, di-n-amyl ether, halogenated hydrocarbons, higher aliphatic esters and ketones, hydrocarbons, xylene', 'All common organic solvents at room temperature, more polar organic solvents even at elevated temperatures, inorganic solvents'),
('Polyethylene', 'As above, but temperature 20-30C lower, depending on degree of branching', 'As above'),
('Polyethylene', 'At elevated temperature: chlorobenzene, cyclohexanone, tetrachloroethane, tetrahydro- naphthalene, toluene, xylene', 'Acetone, butanol, chloroform, dioxane, MEK, methanol, methyl acetate, THF'),
('Polyethylene', 'At elevated temperature: acetone/ carbon disulfide (1/1), aromatic hydrocarbons, chloroform, cyclohexane, THF', 'Acetone, aliphatic and cycloaliphatic hydrocarbons, ethanol, methanol, methyl acetate'),
('Polyethylene', 'Chlorinated hydrocarbons, MEK, THF, toluene', ''),
('Poly(ethylene g-maleic anhydride)', 'Toluene, xylene', 'W'),
('Poly(ethylene-co-propylene)', 'Bzn., xylene (hot)', ''),
('Poly(ethylene-co-acrylic acid)', 'Xylene', ''),
('Poly(vinyl chloride-co-ethylene)', 'Cyclohexanone (hot), nitrobenzene/chloroform (1/1)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tensile`
--

CREATE TABLE `tensile` (
  `Polymer` varchar(100) NOT NULL,
  `tensile modulus Mpa lower` float DEFAULT NULL,
  `tensile modulus Mpa upper` float DEFAULT NULL,
  `tensile strength break lower` float DEFAULT NULL,
  `tensile strength break upper` float DEFAULT NULL,
  `tensile strength yield lower` float DEFAULT NULL,
  `tensile strength yield upper` float DEFAULT NULL,
  `elongation at break lower` float DEFAULT NULL,
  `elongation at break upper` float DEFAULT NULL,
  `elongation at yield lower` float DEFAULT NULL,
  `elongation at yield upper` float DEFAULT NULL,
  `storage modulus` float DEFAULT NULL,
  `loss modulus` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tensile`
--

INSERT INTO `tensile` (`Polymer`, `tensile modulus Mpa lower`, `tensile modulus Mpa upper`, `tensile strength break lower`, `tensile strength break upper`, `tensile strength yield lower`, `tensile strength yield upper`, `elongation at break lower`, `elongation at break upper`, `elongation at yield lower`, `elongation at yield upper`, `storage modulus`, `loss modulus`) VALUES
('ethylene-propylene-diene-terpolymer', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(butadiene-co-styrene)', 1, 2, 1.4, 3, 0, 0, 400, 600, 0, 0, 0, 0),
('poly(butylene terephthalate)', 53, 2600, 17, 52, 0, 0, 200, 700, 0, 0, 2.74, 0.78),
('poly(chloroprene)', 1.6, 1.6, 25, 38, 0, 0, 800, 1000, 0, 0, 0, 0),
('poly(isobutene-co-isoprene)', 1, 1, 18, 21, 0, 0, 750, 950, 0, 0, 0, 0),
('poly(methyl methacrylate)', 3300, 3300, 0, 0, 0, 0, 4, 5.5, 0, 0, 0, 0),
('poly(oxymethylene)', 2600, 3400, 69, 69, 71, 71, 12, 12, 0, 0, 0, 0),
('poly(styrene)', 3200, 4200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 4, 4, 14.5, 21, 12, 12, 240, 300, 0, 0, 0, 0),
('poly(vinyl acetate)', 1274, 2255, 29.4, 49, 0, 0, 10, 20, 0, 0, 0, 0),
('poly(vinyl chloride)', 2964, 2964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 1340, 2000, 36, 56, 36, 59, 25, 500, 0, 0, 0, 0),
('polyamide 12', 1400, 1400, 55, 55, 52, 52, 250, 250, 10, 10, 0, 0),
('polyamide 6', 3000, 3000, 81, 81, 81, 81, 150, 150, 9, 9, 0, 0),
('polyamide 610', 2400, 2400, 59, 59, 59, 59, 100, 100, 10, 10, 0, 0),
('polyamide 66', 3300, 3300, 83, 83, 83, 83, 60, 60, 5, 5, 0, 0),
('polybutadiene', 1.3, 1.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 55.1, 1034, 12.4, 78.6, 0, 0, 12, 700, 0, 0, 0, 0),
('polyethylene terephtalate', 630, 14100, 172, 172, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 830, 830, 38, 48, 21.5, 21.5, 100, 350, 0, 0, 0, 0),
('polyisoprene', 1, 2, 17, 25, 0, 0, 750, 800, 0, 0, 0, 0),
('polypropylene', 1032, 1720, 29.3, 38.6, 0, 0, 500, 900, 11, 15, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 28, 31, 13, 15, 260, 300, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thermal`
--

CREATE TABLE `thermal` (
  `Polymer` varchar(100) NOT NULL,
  `Tg (lower)` float DEFAULT NULL,
  `Tg upper` float DEFAULT NULL,
  `Tm lower` float DEFAULT NULL,
  `Tm upper` float DEFAULT NULL,
  `heat of fusion (kj/kg) lower` float DEFAULT NULL,
  `heat of fusion (kj/kg) upper` float DEFAULT NULL,
  `crystallization temp` float DEFAULT NULL,
  `heat of crystallization` float DEFAULT NULL,
  `linear expansion K-1 lower` float DEFAULT NULL,
  `linear expansion K-1 upper` float DEFAULT NULL,
  `volume expansion` float DEFAULT NULL,
  `thermal conductivity W/m/K lower` float DEFAULT NULL,
  `thermal conductivity W/m/K upper` float DEFAULT NULL,
  `thermal diffusivity` float DEFAULT NULL,
  `Cp kJ/kg/K lower` float DEFAULT NULL,
  `Cp kJ/kg/K upper` float DEFAULT NULL,
  `Processing temp lower` float DEFAULT NULL,
  `Processing temp upper` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thermal`
--

INSERT INTO `thermal` (`Polymer`, `Tg (lower)`, `Tg upper`, `Tm lower`, `Tm upper`, `heat of fusion (kj/kg) lower`, `heat of fusion (kj/kg) upper`, `crystallization temp`, `heat of crystallization`, `linear expansion K-1 lower`, `linear expansion K-1 upper`, `volume expansion`, `thermal conductivity W/m/K lower`, `thermal conductivity W/m/K upper`, `thermal diffusivity`, `Cp kJ/kg/K lower`, `Cp kJ/kg/K upper`, `Processing temp lower`, `Processing temp upper`) VALUES
('ethylene-propylene-diene-terpolymer', -60, -69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2340, 2340, 0, 0),
('poly(acrylonitrile)', 85, 104, 320, 320, 0, 0, 0, 0, 0, 0.00016, 0.00028, 0, 0.00044, 0, 0, 13.77, 0, 0),
('poly(butadiene-co-acrylonitrile)', -85, -85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 250, 0, 1.97, 1.97, 0, 0),
('poly(butadiene-co-styrene)', -52, -52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 190, 250, 90, 1.83, 1.83, 0, 0),
('poly(butylene terephthalate)', -60, 55, 192, 223, 25, 60, 0, 0, 0, 0, 0.00021, 0, 0, 0, 1.35, 2.01, 0, 0),
('poly(chloroprene)', -45, -45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 192, 0, 2.1, 2.2, 0, 0),
('poly(isobutene-co-isoprene)', -63, -63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 130, 70, 1.85, 1.85, 0, 0),
('poly(methyl methacrylate)', 377, 378, 0, 0, 0, 0, 0, 0, 0.00007, 0.00007, 0.000225, 0.19, 0.19, 0, 1.42, 1.42, 0, 0),
('poly(oxymethylene)', 188, 199, 174, 187, 236, 390, 0, 0, 0.0001, 0.00014, 0, 0, 0.292, 0.292, 42.79, 42.79, 0, 0),
('poly(styrene)', 80, 90, 240, 250, 8.37, 9, 0, 0, 0.00006, 0.00008, 0.00017, 0.105, 0.128, 0, 1.185, 1.838, 0, 0),
('poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 253, 282, 24.3, 24.3, 0, 0, 0, NULL, 8, 0, 0.209, 0, 0, 1.09, 320, 380),
('poly(vinyl acetate)', 28, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.159, 0.159, 0, 1.183, 1.465, 0, 0),
('poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000066, 0.000073, 0.16, 0.16, 0.00119, 0, 0, 0, 0),
('poly(vinylidene fluoride)', 0, 0, 154, 184, 0, 0, 0, 0, 0.000079, 0.000141, 0, 0, 0.1, 0, 1.26, 1.42, 200, 300),
('polyamide 12', 29, 29, 178, 178, 95, 95, 0, 0, 0, 0, 0, 0, 2.03, 0.0014, 0, 1.26, 0, 0),
('polyamide 6', 56, 56, 220, 220, 190, 190, 0, 0, 0, 0, 0, 0, 1.89, 0, 0, 1.7, 0, 0),
('polyamide 610', 56, 56, 220, 220, 215, 215, 0, 0, 0, 9, 0, 0, 1.9, 0, 0, 1.7, 0, 0),
('polyamide 66', 82, 82, 262, 262, 196, 196, 0, 0, 0, 8.1, 0, 0, 1.83, 0.0018, 0, 1.7, 0, 0),
('polybutadiene', -110, -95, 0, 0, 0, 0, 0, 47, 0, 0, 0, 200, 200, 0, 1.96, 1.97, 0, 0),
('polyethylene', -128, -30, 0, 0, 0, 0, 0, 0, 2480000, 2480000, 74000000, 74000000, 0, 0, 21.7, 30.81, 0, 0),
('polyethylene terephtalate', 67, 125, 250, 280, 0, 0, 0, 0, 0.00017, 0.00017, 0.00017, 0.147, 0.147, 0.000929, 0, 0, 0, 0),
('polyethylene tetrafluoroethylene', 0, 0, 225, 270, 46.1, 46.1, 0, 0, 0, 0.00009, 0, 0, 0.238, 0, 1.9, 2, 325, 345),
('polyisoprene', -63, -63, 40, 40, 0, 0, 0, 0, 0, 0, 0, 153, 153, 70, 1.828, 1.828, 0, 0),
('polypropylene', -3.2, -3.2, 183, 220, 2.65, 10.94, 0, 0, 0, 0, 0, 0, 11.7, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 302, 306, 21, 26, 0, 0, 0, 0.00012, NULL, 0, NULL, 0, 0, 0, 370, 395);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cas numbers`
--
ALTER TABLE `cas numbers`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `compression`
--
ALTER TABLE `compression`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `creep`
--
ALTER TABLE `creep`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `electrical`
--
ALTER TABLE `electrical`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `flexural`
--
ALTER TABLE `flexural`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `heat`
--
ALTER TABLE `heat`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `impact`
--
ALTER TABLE `impact`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `other_properties`
--
ALTER TABLE `other_properties`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `polymer names`
--
ALTER TABLE `polymer names`
  ADD PRIMARY KEY (`CAS numbers`);

--
-- Indexes for table `rheological`
--
ALTER TABLE `rheological`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `shear`
--
ALTER TABLE `shear`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `tensile`
--
ALTER TABLE `tensile`
  ADD PRIMARY KEY (`Polymer`);

--
-- Indexes for table `thermal`
--
ALTER TABLE `thermal`
  ADD PRIMARY KEY (`Polymer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
