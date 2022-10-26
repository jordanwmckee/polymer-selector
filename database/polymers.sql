-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 26, 2022 at 11:06 PM
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
CREATE DATABASE IF NOT EXISTS `polymer_selectordb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `polymer_selectordb`;

-- --------------------------------------------------------
-- Table Overview
-- --------------
-- cas numbers
-- chemical resistance
-- co-crystalize
-- compression
-- creep
-- electrical
-- flexural
-- glass transition
-- heat
-- heats of solution
-- impact
-- master data table
-- melting points
-- miscibility dissimilar triads
-- more polymer miscibility
-- permeability coefficients
-- physical constants of solvents
-- physical properties monomers
-- physicochemical property
-- polymer miscibility dissimilar
-- polymer miscibility similar monomer
-- polymer names
-- refractive index
-- rheological
-- sheer
-- solubility parameters solvents
-- solvents and non solvents
-- tensile
-- thermal
-- --------------------------------------------------------

--
-- Table structure for table `cas numbers`
--

CREATE TABLE `cas numbers` (
  `common name` text DEFAULT NULL,
  `synonyms` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `CA name` text DEFAULT NULL,
  `mol. formula` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cas numbers`
--

INSERT INTO `cas numbers` (`common name`, `synonyms`, `CAS registry no.`, `CA name`, `mol. formula`) VALUES
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
  `Polymers` text DEFAULT NULL,
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

INSERT INTO `chemical resistance` (`Polymers`, `Acetic acid (10%)`, `Acetaldehyde (40%)`, `Acetone (100%)`, `Butanol (100%)`, `Carbon tetrachloride (100%)`, `Diesel oil (100%)`, `Ethanol (96%)`, `Formic acid (3%)`, `Formic acid(-10%)`, `Gasoline unleaded (100%)`, `Heptane (100%)`, `Hydrogen peroxide (2%)`, `Dichloromethane (100%)`, `Perchloroethylene (100%)`, `Phenol (75%)`, `Potassium hydroxide (10%)`, `Sulfuric acid (10%)`, `Toluene (100%)`, `Transformer oil (100%)`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyamide 12', 2, 1, 1, 1, 2, 1, 1, 1, 0, 1, 1, 2, 3, 2, 3, 1, 2, 1, 1),
('Polyamide 6', 3, 2, 1, 1, 1, 1, 1, 3, 4, 1, 1, 4, 2, 1, 3, 1, 4, 1, 1),
('Polyamide 610', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Polyamide 66/polycaprolactam', 3, 2, 1, 1, 1, 1, 1, 3, 3, 4, 1, 4, 2, 1, 3, 1, 4, 1, 1),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `co-crystalize`
--

CREATE TABLE `co-crystalize` (
  `polymer I of` text DEFAULT NULL,
  `polymer II of` text DEFAULT NULL,
  `method` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `co-crystalize`
--

INSERT INTO `co-crystalize` (`polymer I of`, `polymer II of`, `method`) VALUES
('Butylene terephthalate', 'Butylene glycol-b-butylene terephthalate', 'Tg and Tm by DSC, dielectric loss measurements'),
('Butylene terephthalate', 'Butylene glycol-b-butylene terephthalate', 'Tg and Tm by DSC, dielectric loss measurements, microscopy'),
('Butylene terephthalate', 'Ester-ether segmented polymer', 'Dielectric loss peak and Tm by DSC'),
('Ether ether ketone', 'Ether ether ether ketone', 'Tg and Tm by DSC'),
('Ether ether ketone', 'Ether ether ketone ketone', 'Tg and Tm by DSC'),
('Ether ether ketone', 'Ether ketone', 'Tg and Tm by DSC'),
('Ether ether ketone', 'Ether ketone', 'Tg and Tm by DSC; WAXD'),
('Ether ether ketone', 'Ether-co-ketone', 'Tg and Tm by DSC'),
('Ether ether ketone', 'Ether ketone (polymer II), etherimide (polymer III)', 'Tg and Tm by DSC'),
('Ethylene', 'Butadiene, hydrogenated', 'DSC, SALS and SEM'),
('Ethylene', 'Ethylene', 'DSC and SALS'),
('Ethylene', '', 'DSC, SAXS and X-ray diffraction'),
('Ethylene', '', ''),
('Ethylene', 'Ethylene, deuterated', 'Tm by DSC'),
('Ethylene', 'Ethylene-co-vinyl acetate', 'DSC, SALS and SEM'),
('Ethylene-co-vinyl acetate', 'Ethylene-co-vinyl acetate', 'DSC, SALS and SEM'),
('Glutamate', 'Glutamate', 'Dynamic mechanical measurements, X-ray diffraction'),
('Isopropyl vinyl ether, isotactic', 'sec-Butyl vinyl ether, isotactic', 'Unit cell dimension from X-ray diffraction'),
('4-Methyl-1-hexene, isotactic', '4-Methyl-1-pentene, isotactic', 'Unit cell dimensions from X-ray diffraction'),
('Tetrafluoroethylene', 'Tetrafluoroethylene-co- perfluoroalkyl vinyl ether', 'Dynamic mechanical measurements'),
('Trifluoroethylene-co- vinylidene fluoride', 'Trifluoroethylene-co-vinylidene fluoride', 'DSC, X-ray and phase-contrast microscopy'),
('Vinyl alcohol', 'Vinyl alcohol', 'DSC'),
('Vinylidene fluoride-co- tetrafluoroethylene', 'Vinylidene fluoride', ''),
('Vinylidene fluoride-co- tetrafluoroethylene', 'Hexafluoroacetone-co- vinylidene fluoride', 'DSC');

-- --------------------------------------------------------

--
-- Table structure for table `compression`
--

CREATE TABLE `compression` (
  `Polymer` text DEFAULT NULL,
  `compressive modulus lower` bigint(20) DEFAULT NULL,
  `compressive modulus upper` bigint(20) DEFAULT NULL,
  `compressive strength at break lower` bigint(20) DEFAULT NULL,
  `compressive strength at break upper` bigint(20) DEFAULT NULL,
  `compressive strength at yield` bigint(20) DEFAULT NULL,
  `storage modulus` bigint(20) DEFAULT NULL,
  `loss modulus` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compression`
--

INSERT INTO `compression` (`Polymer`, `compressive modulus lower`, `compressive modulus upper`, `compressive strength at break lower`, `compressive strength at break upper`, `compressive strength at yield`, `storage modulus`, `loss modulus`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 860, 860, 0, 50, 19, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 15, 15, 0, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 1000, 1400, 55, 100, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, 0),
('polyamide 12', 0, 0, 0, 0, 0, 0, 0),
('Polyamide 6', 2410, 2410, 0, 83, 83, 0, 0),
('Polyamide 610', 2070, 2070, 0, 73, 73, 0, 0),
('Polyamide 66/polycaprolactam', 2830, 2830, 0, 91, 91, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `creep`
--

CREATE TABLE `creep` (
  `polymer` text DEFAULT NULL,
  `tensile creep modulus` bigint(20) DEFAULT NULL,
  `flexural creep modulus Gpa` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creep`
--

INSERT INTO `creep` (`polymer`, `tensile creep modulus`, `flexural creep modulus Gpa`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0),
('poly(acrylonitrile)', 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0),
('POLY(CHLOROPRENE)', 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 6),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0),
('Poly(methyl methacrylate)', 0, 0),
('Poly(oxymethylene)', 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0),
('poly(styrene)', 0, 0),
('Poly(tetrafluoroethylene)', 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0),
('Poly(vinyl acetate)', 0, 0),
('Poly(vinyl chloride)', 0, 0),
('Poly(vinylidene fluoride)', 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 270, 0),
('polyamide 12', 300, 0),
('Polyamide 6', 230, 0),
('Polyamide 610', 400, 0),
('Polyamide 66/polycaprolactam', 400, 0),
('polybutadiene', 0, 0),
('polyethylene', 0, 0),
('polyethylene terephtalate', 0, 0),
('POLYISOPRENE', 0, 0),
('polypropylene', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `electrical`
--

CREATE TABLE `electrical` (
  `Polymer` text DEFAULT NULL,
  `Constant frequency Hz` bigint(20) DEFAULT NULL,
  `Dielectric const DC lower` bigint(20) DEFAULT NULL,
  `Dielectric const DC upper` bigint(20) DEFAULT NULL,
  `dielectric constant AC , e lower` bigint(20) DEFAULT NULL,
  `dielectric constant AC , e upper` bigint(20) DEFAULT NULL,
  `electric conductivity (S/cm)` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electrical`
--

INSERT INTO `electrical` (`Polymer`, `Constant frequency Hz`, `Dielectric const DC lower`, `Dielectric const DC upper`, `dielectric constant AC , e lower`, `dielectric constant AC , e upper`, `electric conductivity (S/cm)`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 4, 7, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 1, 3, 3, 3, 3, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 1, 8, 14, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 2, 2, 0),
('polyamide 12', 0, 0, 0, 0, 0, 65),
('Polyamide 6', 1, 7, 7, 0, 0, 125),
('Polyamide 610', 1, 6, 6, 0, 0, 0),
('Polyamide 66/polycaprolactam', 1, 5, 5, 0, 0, 125),
('polybutadiene', 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0),
('polypropylene', 10, 2, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `flexural`
--

CREATE TABLE `flexural` (
  `polymer` text DEFAULT NULL,
  `Flexural modulus Mpa lower` bigint(20) DEFAULT NULL,
  `Flexural modulus Mpa upper` bigint(20) DEFAULT NULL,
  `flex stress at break lower` bigint(20) DEFAULT NULL,
  `flex stress at break upper` bigint(20) DEFAULT NULL,
  `flex stress at yield` bigint(20) DEFAULT NULL,
  `storage modulus` bigint(20) DEFAULT NULL,
  `loss modulus` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flexural`
--

INSERT INTO `flexural` (`polymer`, `Flexural modulus Mpa lower`, `Flexural modulus Mpa upper`, `flex stress at break lower`, `flex stress at break upper`, `flex stress at yield`, `storage modulus`, `loss modulus`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 827, 1380, 0, 0, 0, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 655, 655, 0, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 1200, 1800, 59, 75, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 655, 690, 0, 0, 0, 0, 0),
('polyamide 12', 1410, 1410, 56, 56, 0, 0, 0),
('Polyamide 6', 2720, 2720, 0, 0, 0, 0, 0),
('Polyamide 610', 1970, 1970, 0, 0, 0, 0, 0),
('Polyamide 66/polycaprolactam', 2830, 2830, 117, 117, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 1172, 1172, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `glass transition`
--

CREATE TABLE `glass transition` (
  `polymer` text DEFAULT NULL,
  `form` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `Tg (Ã‚Â°C)` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `glass transition`
--

INSERT INTO `glass transition` (`polymer`, `form`, `CAS registry no.`, `Tg (Ã‚Â°C)`, `remarks`) VALUES
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
  `polymer` text DEFAULT NULL,
  `softening temp` bigint(20) DEFAULT NULL,
  `vicat sofening temp lower` bigint(20) DEFAULT NULL,
  `vicat sofening temp upper` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heat`
--

INSERT INTO `heat` (`polymer`, `softening temp`, `vicat sofening temp lower`, `vicat sofening temp upper`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0),
('poly(styrene)', 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0),
('Poly(vinylidene fluoride)', 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0),
('polyamide 12', 0, 0, 0),
('Polyamide 6', 0, 0, 0),
('Polyamide 610', 0, 0, 0),
('Polyamide 66/polycaprolactam', 0, 0, 0),
('polybutadiene', 0, 0, 0),
('polyethylene', 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0),
('POLYISOPRENE', 0, 0, 0),
('polypropylene', 0, 138, 155);

-- --------------------------------------------------------

--
-- Table structure for table `heats of solution`
--

CREATE TABLE `heats of solution` (
  `polymer` text DEFAULT NULL,
  `solvent` text DEFAULT NULL,
  `IH (J/g)` double DEFAULT NULL,
  `temp. (AÂ°C)` int(11) DEFAULT NULL,
  `state` text DEFAULT NULL,
  `mol. weight (x 10-4)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `heats of solution`
--

INSERT INTO `heats of solution` (`polymer`, `solvent`, `IH (J/g)`, `temp. (AÂ°C)`, `state`, `mol. weight (x 10-4)`) VALUES
('Poly(butadiene)', 'Benzene', 13, 27, 'L', '8'),
('Poly(butadiene)', 'Cyclohexane', 5.4, 25, 'L', ''),
('Poly(butadiene)', 'n-Hexadecane', 4.9, 25, 'L', ''),
('Poly(dimethyl siloxane)', 'Benzene', 14, 25, 'L', '10'),
('Poly(dimethyl siloxane)', 'Carbon tetrachloride', 2.4, 25, 'L', '10'),
('Poly(dimethyl siloxane)', 'Cyclohexane', 5.1, 25, 'L', '10'),
('Poly(dimethyl siloxane)', 'Cyclohexane', 5.2, 25, 'L', '2'),
('Poly(dimethyl siloxane)', 'n-Decane', 3.9, 25, 'L', '10'),
('Poly(dimethyl siloxane)', 'Ethyl ether', -1.3, 25, 'L', '8'),
('Poly(dimethyl siloxane)', 'n-Hexadecane', 5.5, 25, 'L', '10'),
('Poly(dimethyl siloxane)', 'n-Hexadecane', 5.5, 25, 'L', '2'),
('Poly(dimethyl siloxane)', 'n-Pentane', -0.9, 25, 'L', '10'),
('Poly(ethylene)', 'Cyclohexane', 205, 106, 'C', '90'),
('Poly(ethylene)', '1,2,3,4-Tetrahydronaphthalene', 39, 130, 'L', '67'),
('Poly(ethylene)', '1,2,3,4-Tetrahydronaphthalene', 560, 80, 'C', '67'),
('Poly(ethylene)', '1,2,3,4-Tetrahydronaphthalene', 88, 150, 'L', '14'),
('Poly(ethylene)', '1,2,3,4-Tetrahydronaphthalene', 1200, 110, 'C', '14'),
('Poly(ethylene)', 'Toluene', 262, 126, 'C', '90'),
('Poly(isobutylene)', 'Benzene', 19, 25, 'L', '3'),
('Poly(isobutylene)', 'Benzene', 19, 30, 'L', '4.8'),
('Poly(isobutylene)', 'Benzene', 23, 25, 'L', '0.13'),
('Poly(isobutylene)', 'Carbon tetrachloride', 5, 25, 'L', '0.13'),
('Poly(isobutylene)', 'Cyclohexane', -0.7, 25, 'L', '3'),
('Poly(isobutylene)', 'Cyclohexane', -0.6, 25, 'L', '4.5'),
('Poly(isobutylene)', 'Cyclohexane', 1.1, 25, 'L', '0.13'),
('Poly(isobutylene)', 'n-Decane', -0.5, 25, 'L', '3'),
('Poly(isobutylene)', 'Ethylbenzene', 3.5, 69, 'L', '4.8'),
('Poly(isobutylene)', 'Ethylbenzene', 9.3, 18, 'L', '4.8'),
('Poly(isobutylene)', 'Ethyl ether', 2.8, 25, 'L', '3'),
('Poly(isobutylene)', 'n-Hexadecane', 0.04, 25, 'L', '3'),
('Poly(isobutylene)', 'n-Hexadecane', 0.9, 25, 'L', '0.45'),
('Poly(isobutylene)', 'n-Hexadecane', 1, 25, 'L', '0.13'),
('Poly(isobutylene)', 'n-Pentane', -3.6, 25, 'L', '3'),
('Poly(isobutylene)', 'n-Pentane', -3.2, 25, 'L', '0.13'),
('Poly(isoprene)', 'Benzene', 12, 16, 'L', '0.4'),
('Poly(methyl methacrylate)', 'Chloroform', -84, 25, 'G', '10'),
('Poly(methyl methacrylate)', 'Chloroform', -37, 25, 'C', '-'),
('Poly(oxyethylene)', 'Benzene', 170, 30, 'C', '4.3'),
('Poly(oxyethylene)', 'Carbon tetrachloride', 16, 30, 'L', '0.06'),
('Poly(oxyethylene)', 'Carbon tetrachloride', -12, 30, 'L', '0.04'),
('Poly(oxyethylene)', 'Chloroform', 52, 30, 'C', '0.6'),
('Poly(oxyethylene)', 'Water', -120, 80, 'L', '0.5'),
('Poly(oxyethylene)', 'Water', -160, 25, 'L', '0.02'),
('Poly(oxyethylene)', 'Water', -200, 25, 'L', '0.02'),
('Poly(oxyethylene)', 'Water', 10, 25, 'C', '2'),
('Poly(oxyethylene)', 'Water', 24, 30, 'C', '0.6'),
('Poly(oxyethylene)', 'Water', 40, 30, 'C', '4.3'),
('Poly(oxypropylene)', 'Carbon tetrachloride', -20, 6, 'L', '0.2'),
('Poly(oxypropylene)', 'Carbon tetrachloride', -8, 30, 'L', '0.2');

-- --------------------------------------------------------

--
-- Table structure for table `impact`
--

CREATE TABLE `impact` (
  `polymer` text DEFAULT NULL,
  `izod notched lower` bigint(20) DEFAULT NULL,
  `izod notched upper` bigint(20) DEFAULT NULL,
  `charpy` bigint(20) DEFAULT NULL,
  `rockwell R scale lower` bigint(20) DEFAULT NULL,
  `rockwell R scale upper` bigint(20) DEFAULT NULL,
  `shore durometer lower` bigint(20) DEFAULT NULL,
  `shore durometer upper` bigint(20) DEFAULT NULL,
  `oxygen index` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `impact`
--

INSERT INTO `impact` (`polymer`, `izod notched lower`, `izod notched upper`, `charpy`, `rockwell R scale lower`, `rockwell R scale upper`, `shore durometer lower`, `shore durometer upper`, `oxygen index`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0, 20, 20, 0, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 25, 25, 0, 0, 95),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 160, 530, 0, 0, 0, 70, 80, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 60, 60, 0, 0, 0),
('polyamide 12', 60, 60, 0, 106, 110, 0, 0, 0),
('Polyamide 6', 53, 53, 0, 116, 119, 0, 0, 0),
('Polyamide 610', 53, 53, 0, 110, 111, 0, 0, 0),
('Polyamide 66/polycaprolactam', 53, 53, 0, 118, 121, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 6, 0, 0, 0, 70, 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `master data table`
--

CREATE TABLE `master data table` (
  `polymer` text DEFAULT NULL,
  `Density (lower)g/cm3` bigint(20) DEFAULT NULL,
  `Density (upper)g/cm3` bigint(20) DEFAULT NULL,
  `Specific Volume` bigint(20) DEFAULT NULL,
  `MW Lower` bigint(20) DEFAULT NULL,
  `MW Upper` bigint(20) DEFAULT NULL,
  `Crystal structures` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master data table`
--

INSERT INTO `master data table` (`polymer`, `Density (lower)g/cm3`, `Density (upper)g/cm3`, `Specific Volume`, `MW Lower`, `MW Upper`, `Crystal structures`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, ''),
('poly(acrylonitrile)', 1, 1, 0, 0, 0, ''),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, ''),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, ''),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, ''),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0, 0, 0, ''),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, ''),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, ''),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, ''),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, ''),
('poly(styrene)', 0, 0, 0, 0, 0, ''),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 2, 2, 0, 250000, 600000, ''),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, ''),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, ''),
('Poly(vinylidene fluoride)', 0, 0, 0, 0, 0, ''),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 2, 2, 0, 200000, 450000, ''),
('polyamide 12', 0, 0, 0, 0, 0, ''),
('Polyamide 6', 0, 0, 0, 0, 0, ''),
('Polyamide 610', 0, 0, 0, 0, 0, ''),
('Polyamide 66/polycaprolactam', 0, 0, 0, 0, 0, ''),
('polybutadiene', 0, 0, 0, 0, 0, ''),
('polyethylene', 0, 0, 0, 0, 0, ''),
('polyethylene terephtalate', 0, 0, 0, 0, 0, ''),
('POLYISOPRENE', 0, 0, 0, 0, 0, ''),
('polypropylene', 1, 1, 0, 220000, 700000, 'Monoclinic, hexagonal, triclinic, orthorhombic');

-- --------------------------------------------------------

--
-- Table structure for table `melting points`
--

CREATE TABLE `melting points` (
  `polymer` text DEFAULT NULL,
  `synonyms/comments` text DEFAULT NULL,
  `mol. weight` text DEFAULT NULL,
  `melting pt. (Ã‚Â°C)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `melting points`
--

INSERT INTO `melting points` (`polymer`, `synonyms/comments`, `mol. weight`, `melting pt. (Ã‚Â°C)`) VALUES
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
-- Table structure for table `miscibility dissimilar triads`
--

CREATE TABLE `miscibility dissimilar triads` (
  `polymer I of` text DEFAULT NULL,
  `polymer II of` text DEFAULT NULL,
  `polymer III of (and polymer IV of)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `miscibility dissimilar triads`
--

INSERT INTO `miscibility dissimilar triads` (`polymer I of`, `polymer II of`, `polymer III of (and polymer IV of)`) VALUES
('Acrylic acid-co-styrene', 'Ethylene glycol', 'Methyl methacrylate'),
('Acrylonitrile-co-butadiene', 'Vinyl chloride', 'Vinyl chloride-co-vinylidene chloride'),
('Acrylonitrile-co-butadiene- co-styrene', 'Carbonate of bisphenol-A', 'Propylene-co-vinyl chloride'),
('Acrylonitrile-co-methyl methacrylate', 'Acrylonitrile-co-styrene', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-methyl methacrylate', 'Acrylonitrile-co-styrene', 'Methyl methacrylate-co-N-phenyl- itaconimide'),
('Acrylonitrile-co-methyl methacrylate', 'Acrylonitrile-co-styrene', 'Methyl methacrylate-co-styrene'),
('Acrylonitrile-co- ÃŽÂ±-methylstyrene', 'Acrylonitrile-co-styrene', 'Vinyl chloride'),
('Acrylonitrile-co- ÃŽÂ±-methylstyrene', 'Ethyl methacrylate', 'Methyl methacrylate'),
('Acrylonitrile-co- N-phenylitaconimide', 'Acrylonitrile-co-styrene', 'N-phenylitaconimide-co-styrene'),
('Acrylonitrile-co-styrene', 'Butylene adipate', 'Carbonate of bisphenol-A'),
('Acrylonitrile-co-styrene', 'Caprolactone', 'Carbonate of bisphenol-A'),
('Acrylonitrile-co-styrene', 'Caprolactone', 'Hydroxyether of bisphenol-A (phenoxy resin)'),
('Acrylonitrile-co-styrene', 'Caprolactone', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-styrene', 'Caprolactone', 'Vinyl chloride'),
('Acrylonitrile-co-styrene', 'Carbonate of bisphenol-A', 'Cyclohexane dimethylene succinate'),
('Acrylonitrile-co-styrene', 'Ethyl methacrylate', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-styrene', 'Ethyl methacrylate', 'Methyl methacrylate'),
('Acrylonitrile-co-styrene', 'Methyl methacrylate', 'Vinyl chloride'),
('n-Amyl methacrylate', 'n-Butyl methacrylate', 'Vinyl chloride'),
('', 'n-Propyl methacrylate', 'Vinyl chloride'),
('Arylate', 'Butylene therphthalate', 'Hydroxyether of bisphenol-A (phenoxy)'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether-co- 2,6-dimethyl- 1,4-phenylene ether', 'p-Bromostyrene-co- styrene', '2,6-dimethyl-1,4-phenylene ether'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether-co- 2,6-dimethyl- 1,4-phenylene ether', 'p-Bromostyrene-co- styrene', 'Styrene'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether-co- 2,6-dimethyl- 1,4-phenylene ether', '2,6-Dimethyl-1,4- phenylene ether', 'Styrene'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether-co- 2,6-dimethyl- 1,4-phenylene ether', 'p-Bromostyrene-co- styrene', '2,6-Dimethyl-1,4-phenylene ether (polymer IV of styrene)'),
('p-Bromostyrene-co-styrene', '2,6-dimethyl-1,4- phenylene ether', 'Styrene'),
('Butylene terephthalate', 'Carbonate of bisphenol-A', 'Hydroxyether of bisphenol-A (phenoxy)'),
('', 'Hydroxyether of bisphenol-A (Phenoxy)', 'Methyl methacrylate'),
('Caprolactone', 'Carbonate of bisphenol-A', 'Carbonate of tetramethylbisphenol-A'),
('Caprolactone', 'Carbonate of bisphenol-A', 'Hydroxyether of bisphenol-A (phenoxy)'),
('Caprolactone', 'Hydroxyether of bisphenol-A (Phenoxy)', 'Vinyl methyl ether'),
('Caprolactone', 'Vinyl chloride', 'Vinyl chloride, chlorinated'),
('Carbonate of bisphenol-A', 'Carbonate of bisphenol chloral', 'Methyl methacrylate'),
('Carbonate of bisphenol-A', 'Carbonate of tetra- methylbisphenol-A', 'Acrylonitrile-co-styrene'),
('Carbonate of bisphenol-A', 'Carbonate of tetra- methylbisphenol-A', 'Methyl methacrylate-co-styrene'),
('Carbonate of bisphenol-A', 'Carbonate of tetra- methylbisphenol-A', 'Styrene'),
('Carbonate of tetra- methylbisphenol-A', 'Methyl methacrylate', 'Methyl methacrylate-co-styrene'),
('2-Chlorostyrene', 'Cyclohexyl acrylate', 'Styrene'),
('Copolyester', 'Epoxy', 'Hydroxyether of bisphenol-A (phenoxy)'),
('Epichlorohydrin', 'Ethylene glycol', 'Methyl methacrylate'),
('Epichlorohydrin', 'Methyl methacrylate', 'Vinyl acetate'),
('Etherimide', 'Amideimide', 'Ether ether ketone, sulfonated'),
('Etherimide', 'Ether ether ketone', 'Liquid crystalline polymer'),
('Ether urethane', 'Oxytetramethylene-co- oxyditetramethylene- co-terephthalic acid', 'Vinyl chloride'),
('Ethyl methacrylate', 'Methyl methacrylate', 'p-Vinylphenol'),
('Ethyl methacrylate', 'Methyl methacrylate', 'Vinylidene fluoride'),
('Ethylene, chlorinated', 'Natural rubber, epoxidized', 'Vinyl chloride'),
('Ethylene, chlorosulfonated', 'Natural rubber, epoxidized', 'Nitrile rubber, carboxylated'),
('Ethylene glycol', 'Vinyl acetate', 'p-Vinyl phenol'),
('Hexafluoroacetone- co-vinylidene fluoride', 'Methyl methacrylate', 'Vinyl acetate');

-- --------------------------------------------------------

--
-- Table structure for table `more polymer miscibility`
--

CREATE TABLE `more polymer miscibility` (
  `polymer I of` text DEFAULT NULL,
  `polymer II of` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `more polymer miscibility`
--

INSERT INTO `more polymer miscibility` (`polymer I of`, `polymer II of`) VALUES
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Carbonate of bisphenol-A'),
('Acrylonitrile-co-styrene', 'Carbonate of bisphenol-A'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether', 'Styrene'),
('n-Butyl methacrylate', 'Styrene'),
('Carbonate of bisphenol-A', 'Ester'),
('2,6-Dimethyl-1,4-phenylene ether', 'Alkylstyrene'),
('2,6-Dimethyl-1,4-phenylene ether', 'p-Bromostyrene'),
('2,6-Dimethyl-1,4-phenylene ether', 'p-tert-Butylstyrene'),
('2,6-Dimethyl-1,4-phenylene ether', '4-Ethylstyrene'),
('2,6-Dimethyl-1,4-phenylene ether', '4-Methoxystyrene'),
('2,6-Dimethyl-1,4-phenylene ether', '4-Methylstyrene'),
('2,6-Dimethyl-1,4-phenylene ether', '4-n-Propylstyrene'),
('2,6-Dimethyl-1,4-phenylene ether', 'Vinylbenzylchloride'),
('2,6-Dimethyl-1,4-phenylene ether', '4-Vinylbiphenyl'),
('2,6-Dimethyl-1,4-phenylene ether', 'Vinylnaphthalene'),
('2,6-Dimethyl-1,4-phenylene ether', 'Vinyltoluene'),
('Ethylene', 'Dimethylsiloxane'),
('Ethylene glycol', 'Propylene glycol'),
('Ethylene glycol', 'Vinyl acetate'),
('Ethylene glycol', 'Sulfone'),
('Hydroxybutyrate', 'Lactide'),
('cis-Isoprene', 'Styrene'),
('cis-Isoprene', 'Vinyl cyclohexane'),
('Methyl methacrylate', 'Carbonate of bisphenol-A'),
('Methyl methacrylate', 'Carbonate of hexafluorobisphenol- A-co-carbonate of tetramethyl- bisphenol-A'),
('Methyl methacrylate', 'Styrene'),
('Methyl methacrylate', 'ÃŽÂ±-Styrene'),
('Methyl methacrylate', 'Sulfone'),
('Methyl methacrylate-co-styrene', 'Styrene'),
('ÃŽÂ±-Methylstyrene', 'Styrene'),
('ÃŽÂ±-Methylstyrene', 'Styrene, deuterated'),
('ÃŽÂ±-Methylstyrene-co-styrene', 'Styrene'),
('Propylene', 'Ethylene-co-propylene'),
('Styrene', 'Carbonate of bisphenol-A'),
('Styrene', 'Carbonate of dimethylbisphenol-A'),
('Styrene', 'Carbonate of tetramethylbisphenol'),
('Styrene', 'o-Chlorostyrene-co-p-chlorostyrene'),
('Styrene', 'Vinyl methyl ether'),
('Styrene', '2-Vinyl naphthalene'),
('p-Vinylphenol', 'Diethyl itaconate');

-- --------------------------------------------------------

--
-- Table structure for table `permeability coefficients`
--

CREATE TABLE `permeability coefficients` (
  `polymer` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `permeant` text DEFAULT NULL,
  `T (Ã‚Â°C)` int(11) DEFAULT NULL,
  `P (x 1013) ((cm3 cm)/(cm2 s Pa))` double DEFAULT NULL,
  `D (x 106) (cm2/s)` double DEFAULT NULL,
  `S (x 106)` double DEFAULT NULL,
  `temp. range (Ã‚Â°C)` text DEFAULT NULL,
  `P0 (x 107) (10-5 m2/s)` text DEFAULT NULL,
  `EP (kJ/mol)` text DEFAULT NULL,
  `ED (kJ/mol)` text DEFAULT NULL,
  `ES (kJ/mol)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permeability coefficients`
--

INSERT INTO `permeability coefficients` (`polymer`, `comments`, `permeant`, `T (Ã‚Â°C)`, `P (x 1013) ((cm3 cm)/(cm2 s Pa))`, `D (x 106) (cm2/s)`, `S (x 106)`, `temp. range (Ã‚Â°C)`, `P0 (x 107) (10-5 m2/s)`, `EP (kJ/mol)`, `ED (kJ/mol)`, `ES (kJ/mol)`) VALUES
('Poly(ethylene)', 'LLDPE', 'C2H4O', 30, 68.9, 0.031, 225, '', '', '', '', ''),
('Poly(ethylene)', '', 'H2', 25, 7.4, 0.474, 1.58, '', '', '', '', ''),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'D2', 25, 6.6, 0.476, 1.38, '', '', '', '', ''),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'He', 25, 3.7, 6.8, 0.0544, '5/1/1960', '4.62', '34.8', '24.7', '10.1'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'O2', 25, 2.2, 0.46, 0.472, '5/1/1960', '66.5', '42.7', '40.2', '2.5'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'Ar', 25, 2.1, 0.36, 0.571, '5/1/1960', '174', '45.2', '42.3', '2.9'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'Ne', 25, 0.48, 2.42, 0.02, '', '', '', '', ''),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'Kr', 25, 2.15, 0.169, 1.28, '', '', '', '', ''),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'Xe', 25, 4.01, 0.069, 5.82, '', '', '', '', ''),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'CO2', 25, 9.5, 0.372, 2.54, '5/1/1960', '62', '38.9', '38.5', '0.4'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'CO', 25, 1.1, 0.332, 0.336, '5/1/1960', '154', '46.5', '39.8', '6.7'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'N2', 25, 0.73, 0.32, 0.228, '5/1/1960', '329', '49.4', '41.5', '7.9'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'CH4', 25, 2.2, 0.193, 1.13, '5/1/1960', '425', '47.3', '45.6', '1.7'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'C2H6', 25, 5.1, 0.068, 7.55, '5/1/1960', '985', '47.3', '53.6', '-6.3'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'C3H4', 25, 32, 0.105, 30.2, '5/1/1960', '209', '38.9', '49.8', '-10.9'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'C3H6', 25, 11, 0.058, 18.8, '5/1/1960', '459', '43.5', '52.3', '-8.8'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'C3H8', 25, 7.1, 0.0322, 21.3, '5/1/1960', '1170', '46.9', '55.7', '-8.8'),
('Poly(ethylene)', 'Density=0.914g/cm3, LDPE', 'SF6', 25, 0.13, 0.0135, 0.951, '5/1/1960', '4050', '59.9', '62', '-2.1'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'He', 25, 0.86, 3.07, 0.028, '5/1/1960', '0.137', '29.7', '23.4', '6.3'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'O2', 25, 0.3, 0.17, 0.18, '5/1/1960', '0.423', '35.1', '36.8', '-1.7'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'Ar', 25, 1.3, 0.12, 1.1, '5/1/1960', '5.23', '37.7', '38.9', '-1.2'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'CO2', 25, 0.27, 0.12, 0.22, '5/1/1960', '0.0506', '30.1', '35.6', '-5.5'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'CO', 25, 0.15, 0.096, 0.15, '5/1/1960', '1.15', '39.3', '36.8', '2.5'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'N2', 25, 0.11, 0.093, 0.15, '5/1/1960', '0.991', '39.7', '37.7', '2'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'CH4', 25, 0.29, 0.057, 0.51, '5/1/1960', '3.76', '40.6', '43.5', '-2.9'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'C2H6', 25, 0.44, 0.015, 3, '5/1/1960', '13.3', '42.7', '52.3', '-9.6'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'C3H4', 25, 3, 0.025, 12, '5/1/1960', '1.89', '33.1', '47.3', '-14.2'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'C3H6', 25, 0.87, 0.011, 8.2, '5/1/1960', '5.68', '38.9', '52.3', '-13.4'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'C3H8', 25, 0.404, 0.0049, 8.3, '5/1/1960', '28.5', '44.8', '56.9', '-12.1'),
('Poly(ethylene)', 'Density=0.964g/cm3, HDPE', 'SF6', 25, 0.0063, 0.0016, 0.39, '5/1/1960', '29.5', '55.2', '62.8', '-7.6'),
('Poly(ethylene)', 'HDPE', 'C2H4O', 30, 21.4, 0.021, 97.5, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, isotropic density=0.943g/cm3', 'He', 25, 1.33, 3.5, 0.0379, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=8, density=0.958g/cm3', 'He', 25, 1.46, 3.2, 0.0457, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=9, density=0.957g/cm3', 'He', 25, 1.44, 3.55, 0.0406, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=10, density=0.958g/cm3', 'He', 25, 0.885, 2.38, 0.0372, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=12, density=0.960g/cm3', 'He', 25, 0.407, 1.69, 0.0241, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=14.5, density=0.962g/cm3', 'He', 25, 0.278, 1.14, 0.0244, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=20.5, density=0.966g/cm3', 'He', 25, 0.129, 0.632, 0.0204, '', '', '', '', ''),
('Poly(ethylene)', 'Hizex 7000F, draw ratio=1.0, density=0.945g/cm3', 'N2', 25, 0.2, 0.094, 0.217, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `physical constants of solvents`
--

CREATE TABLE `physical constants of solvents` (
  `compound` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `mol. weight` double DEFAULT NULL,
  `melting pt. (Ã‚Â°C)` int(11) DEFAULT NULL,
  `boiling pt. (Ã‚Â°C)` int(11) DEFAULT NULL,
  `density (g/cm3)` double DEFAULT NULL,
  `viscosity (cP)` text DEFAULT NULL,
  `flash pt. (Ã‚Â°C)` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `physical constants of solvents`
--

INSERT INTO `physical constants of solvents` (`compound`, `CAS registry no.`, `mol. weight`, `melting pt. (Ã‚Â°C)`, `boiling pt. (Ã‚Â°C)`, `density (g/cm3)`, `viscosity (cP)`, `flash pt. (Ã‚Â°C)`) VALUES
('Acetic acid', '64-19-7', 60.05, 17, 118, 1.049, '1.21', 40),
('Acetic anhydride', '108-24-7', 102.09, -73, 140, 1.082, '', 54),
('Acetone', '67-64-1', 58.08, -94, 56, 0.79, '0.324', -17),
('Acetonitrile', '5/8/1975', 41.05, -48, 82, 0.786, '', 5),
('n-Amyl acetate', '628-63-7', 130.19, -71, 148, 0.876, '', 36),
('Aniline', '62-53-3', 93.13, -6, 184, 1.022, '', 70),
('Anisole', '100-66-3', 108.14, -37, 154, 0.995, '', 51),
('Benzene', '71-43-2', 78.11, 6, 80, 0.874, '0.52', -11),
('Benzonitrile', '100-47-0', 103.12, -13, 191, 1.01, '', 71),
('Benzyl acetate', '140-11-4', 150.18, -51, 206, 1.04, '', 102),
('Benzyl alcohol', '100-51-6', 108.14, -15, 205, 1.045, '5.8', 93),
('n-Butanol', '71-36-3', 74.12, -90, 118, 0.81, '2.948', 35),
('ÃŽÂ³-Butyrolactone', '96-48-0', 86.09, -45, 205, 1.12, '', 98),
('Carbon disulfide', '75-15-0', 76.14, -111, 46, 1.266, '', -33),
('Chlorobenzene', '108-90-7', 112.56, -45, 132, 1.107, '', 23),
('2-Chloroethanol', '107-07-3', 80.51, -89, 129, 1.201, '', 60),
('2-Chlorophenol', '95-57-8', 128.56, 8, 176, 1.241, '', 63),
('m-Cresol', '108-39-4', 108.14, 9, 203, 1.034, '20.8', 86),
('Cyclohexane', '110-82-7', 84.16, 7, 81, 0.779, '0.979', -18),
('Cyclohexanol', '108-93-0', 100.16, 22, 161, 0.948, '', 67),
('Cyclohexanone', '108-94-1', 98.15, -47, 155, 0.947, '2.543/15', 46),
('Cyclopentanol', '96-41-3', 86.13, -19, 140, 0.949, '', 51),
('cis-Decahydronaphthalene', '493-01-6', 138.25, -43, 193, 0.896, '', 57),
('Di-n-amyl ether', '693-65-2', 158.29, -69, 188, 0.785, '', 57),
('1,2-Dichlorobenzene', '95-50-1', 147, -17, 180, 1.306, '', 65),
('Diethyl ether', '60-29-7', 74.12, -116, 35, 0.708, '1.26', -40),
('Di(ethylene glycol)', '111-46-6', 106.12, -10, 245, 1.118, '', 143),
('Di(ethylene glycol mono-n-butyl ether', '112-34-5', 162.23, -68, 231, 0.967, '', 100),
('Diisobutyl ketone', '108-83-8', 142.24, -46, 169, 0.806, '', 49),
('Diisopropyl ketone', '565-80-0', 114.19, -80, 124, 0.806, '', 15),
('1,2-Dimethoxyethane/ethylene glycol dimethyl ether', '110-71-4', 90.12, -58, 85, 0.867, '', 0),
('N,N-Dimethylacetamide', '127-19-5', 87.12, -20, 166, 0.937, '', 70),
('N,N-Dimethylformamide', '12/2/1968', 73.1, -61, 153, 0.944, '', 57),
('Dimethylsulfoxide', '67-68-5', 78.13, 18, 189, 1.101, '', 95),
('1,4-Dioxane', '123-91-1', 88.11, 12, 102, 1.034, '1.26', 12);

-- --------------------------------------------------------

--
-- Table structure for table `physical properties monomers`
--

CREATE TABLE `physical properties monomers` (
  `material category` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `structural or line formula` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `mol. weight` double DEFAULT NULL,
  `boiling pt. (Ã‚Â°C)` text DEFAULT NULL,
  `melting pt. (Ã‚Â°C)` text DEFAULT NULL,
  `density (g/cm3)` text DEFAULT NULL,
  `flash pt. (Ã‚Â°C)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `physical properties monomers`
--

INSERT INTO `physical properties monomers` (`material category`, `name`, `structural or line formula`, `CAS registry no.`, `mol. weight`, `boiling pt. (Ã‚Â°C)`, `melting pt. (Ã‚Â°C)`, `density (g/cm3)`, `flash pt. (Ã‚Â°C)`) VALUES
('acetylene', 'acetylene', 'H2CÃ¢â€°Â¡CH2', '74-86-2', 26.04, '-82', '-84(s)', '1', ''),
('acetylene', 'chloroacetylene', 'ClCÃ¢â€°Â¡CH', '', 60.48, '-32', '-126', '', ''),
('acetylene', 'dichloroacetylene', 'ClCÃ¢â€°Â¡CCl', '', 94.93, '', '-66', '', ''),
('acetylene', 'diphenylacetylene', 'C6H5CÃ¢â€°Â¡CC6H5', '501-65-5', 178.23, '60', '8.9473684210526E+14/100000000000000', '0.99', ''),
('acetylene', 'phenylacetylene', 'HCÃ¢â€°Â¡CC6H5', '', 102.14, '143', '', '0.929', ''),
('acid dichloride', 'adipoyl chloride', 'ClC(O)(CH2)4C(O)Cl', '111-50-2', 183.03, '53', '', '1.259', '> 110'),
('acid dichloride', 'azelaoyl chloride', 'ClC(O)(CH2)7C(O)Cl', '123-98-8', 255.12, '4.6111111111111E+14/50000000000000', '', '1.143', '> 110'),
('acid dichloride', 'diethylmanoyl chloride', 'ClC(O)C(CH2CH3)2C(O)Cl', '54505-72-5', 197.06, '198', '', '1.145', '74'),
('acid dichloride', 'dodecanedioyl chloride', 'ClC(O)(CH2)10C(O)Cl', '4834-98-4', 267.2, '140/0.5', '', '1.069', '> 110'),
('acid dichloride', 'glutaryl chloride', 'ClC(O)(CH2)3C(O)Cl', '2873-74-7', 169.01, '217', '', '1.324', '107'),
('acid dichloride', 'isophthaloyl chloride', 'ClC(O)C6H4C(O)Cl', '99-63-8', 203.02, '276', '43', '', '180'),
('acid dichloride', 'malonyl chloride', 'ClC(O)CH2C(O)Cl', '1663-67-8', 140.95, '2.8421052631579E+14/100000000000000', '', '1.449', '47'),
('acid dichloride', 'methylpimeloyl chloride', 'ClC(O)(CH2)2CH(CH3)(CH2)2C(O)Cl', '44987-62-4', 197.06, '59/5', '', '1.217', '> 110'),
('acid dichloride', 'oxalyl chloride', 'ClC(O)CO-COC(O)Cl', '79-37-8', 126.93, '61', '-8', '1.455', 'None'),
('acid dichloride', 'phthaloyl chloride', 'ClC(O)C6H4C(O)Cl', '88-95-9', 203.02, '270', '12', '1.409', '> 110'),
('acid dichloride', 'pimeloyl chloride', 'ClC(O)(CH2)5C(O)Cl', '142-79-0', 197.06, '113/5', '', '1.205', '> 110'),
('acid dichloride', 'sebacoyl chloride', 'ClC(O)(CH2)8C(O)Cl', '111-19-3', 239.14, '14', '-2.5', '1.121', '> 110'),
('acid dichloride', 'suberoyl chloride', 'ClC(O)(CH2)6C(O)Cl', '10027-07-3', 211.09, '54/5', '', '1.172', '> 110'),
('acid dichloride', 'succinyl chloride', 'ClC(O)(CH2)2C(O)Cl', '543-20-4', 154.98, '190', '16', '1.407', '77'),
('acid dichloride', 'terephthaloyl chloride', 'ClC(O)C6H4C(O)Cl', '100-20-9', 203.02, '266', '80', '', '180'),
('acid dichloride', 'thionyl chloride', 'ClS(O)Cl', '9/7/7719', 118.97, '79', '-105', '1.631', 'None'),
('acrolein', 'acrolein', 'HC(O)CH=CH2', '107-02-8', 56.06, '53', '-87', '0.839', '-19'),
('acrolein', '2-chloroacrolein', 'HC(O)CCl=CH2', '', 90.51, '1.3333333333333E+14/100000000000000', '', '1.199', ''),
('acrolein', '2-chloro-3-methylacrolein', 'HC(O)CCl=CHCH3', '', 104.54, '148', '', '1.478', ''),
('acrolein', 'trans-3-methylacrolein', 'HC(O)CH=CHCH3', '123-73-9', 70.09, '', '104', '0.846', '9'),
('acrolein', '2-methylacrolein', 'HC(O)CCH3=CH2', '78-85-3', 70.09, '68', '-81', '0.847', '-16'),
('acrylamide', 'N-acetoxymethyl(methoxy)acrylamide', 'H2C=CHC(O)NRR\',  R=C(OCH3)C(O)OCH3, R\'=H', '77402-03-0', 173.17, '', '73', '', ''),
('acrylamide', 'N-acetylacrylamide', 'H2C=CHC(O)NRR\',  R=C(O)CH3, R\'=H', '1432-45-7', 113.12, '', '129', '', ''),
('acrylamide', 'acrylamide', 'H2C=CHC(O)NH2', '6/1/1979', 71.08, '5', '', '1.122', ''),
('acrylamide', 'acrylamidoglycolic acid', 'H2C=CHC(O)NRR\',  R=CH(OH)C(O)OH, R\'=H', '6737-24-2', 163.13, '95', '', '', ''),
('acrylamide', 'acrylamidoglycolic acid, methyl ester', 'H2C=CHC(O)NRR\',  R=CH(OH)C(O)OCH3, R\'=H', '77402-03-0', 173.17, '', '74', '', ''),
('acrylamide', 'N-adamantylacrylamide', 'H2C=CHC(O)NRR\',  R=C10H5, R\'=H', '19026-83-6', 205.3, '', '155', '', ''),
('acrylamide', 'N-allylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2CH=CH2, R\'=H', '2555-13-7', 111.14, '6.3157894736842E+14/100000000000000', '', '', ''),
('acrylamide', 'N-benzylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2C6H5, R\'=H', '13304-62-6', 161.2, '', '70', '', ''),
('acrylamide', 'N-butoxymethylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2O(CH2)3CH3, R\'=H', '1852-16-0', 157.21, '125/0.3', '-9', '0.979', '> 110'),
('acrylamide', 'N-tert-butylacrylamide', 'H2C=CHC(O)NRR\',  R=C(CH3)3, R\'=H', '107-58-4', 127.19, '', '128', '', ''),
('acrylamide', 'N-cyclohexylacrylamide', 'H2C=CHC(O)NRR\',  R=C6H11, R\'=H', '3066-72-6', 153.23, '', '113', '', ''),
('acrylamide', 'N,N\'-cystaminebisacrylamide', 'H2C=CHC(O)NRR\',  R=CH2CH2SSCH2CH2-, R\'=H', '60984-57-8', 260.38, '', '123', '', ''),
('acrylamide', 'N-diacetoneacrylamide', 'H2C=CHC(O)NRR\',  R=C(CH3)2CH2C(O)CH3, R\'=H', '2873-97-4', 169.23, '10/1/1993', '55', '', '> 110'),
('acrylamide', 'N,N-diallylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2CH=CH2, R\'=CH2CH=CH2', '3085-68-5', 151.21, '36', '', '', ''),
('acrylamide', 'N,N-di-n-butylacrylamide', 'H2C=CHC(O)NRR\',  R=(CH2)3CH3, R\'=(CH2)3CH3', '2274-13-7', 183.29, '97', '', '', ''),
('acrylamide', 'N,N-diethylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2CH3, R\'=CH2CH3', '2675-94-7', 127.19, '2.4473684210526E+14/50000000000000', '', '', ''),
('acrylamide', 'N,N\'-1,2-dihydroxyethylenebisacrylamide', 'H2C=CHC(O)NRR\',  R=(-CH(OH)CH(OH)-), R\'=H', '868-63-3', 200.19, '', '156(d)', '', ''),
('acrylamide', 'N,N-diisopropylacrylamide', 'H2C=CHC(O)NRR\',  R=CH(CH3)2, R\'=CH(CH3)2', '44975-46-4', 155.24, '10/4/1954', '', '', ''),
('acrylamide', '4,4-dimethoxybutylacrylamide', 'H2C=CHC(O)NRR\',  R=(CH2)3CH(OCH3)2, R\'=H', '38486-53-2', 187.24, '135/0.7', '18', '', ''),
('acrylamide', 'N,N-dimethylacrylamide', 'H2C=CHC(O)NRR\',  R=CH3, R\'=CH3', '3/7/2680', 99.13, '39047619047619/10000000000000', '', '0.962', '71'),
('acrylamide', 'N-diphenylmethylacrylamide', 'H2C=CHC(O)NRR\',  R=CH(C6H5)2, R\'=H', '10254-08-7', 237.3, '178', '', '', ''),
('acrylamide', 'N,N\'-ethylenebisacrylamide', 'H2C=CHC(O)NRR\',  R=(-CH2CH2-), R\'=H', '2956-58-3', 168.2, '', '140', '', ''),
('acrylamide', 'N-ethylhexylacrylamide', 'H2C=CHC(O)NRR\',  R=CH2CH(CH2CH3), R\'=H', '91625-16-0', 183.3, '123/0.5', '', '', ''),
('acrylamide', 'N,N\'-hexamethylenebisacrylamide', 'H2C=CHC(O)NRR\',  R=(-(CH2)6-), R\'=H', '7150-41-6', 224.28, '', '135', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `physicochemical property`
--

CREATE TABLE `physicochemical property` (
  `polymer` text DEFAULT NULL,
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

INSERT INTO `physicochemical property` (`polymer`, `solubility parameter J/cm3,1/2`, `hansen parameter (polar)`, `hansen parameter (dispersive)`, `hansen parameter (hydrogen bonding)`, `water absorption`, `Gas permeability coefficient`, `CO2 Permeability ngcm/m2-s`, `O2 Permeability`, `N2 Permeability`, `Gas diffusion coefficient (cm2/s)x10^8`, `critical surface tension`, `interfacial tension`, `contact angle`, `friction coefficient`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, '1.18E-14', '2.50E-15', '', '', '', '', '', ''),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 0, '113 m3 m/s/m2/Pa(x10^15)', '45', '14', '', '', '', '', '0.4'),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(styrene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0, '273', '637', '91', '', '', '', '', ''),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('Poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyamide 12', 0, 0, 0, 0, 0, 0, '', '', '', '0.3', '31', '', '', ''),
('Polyamide 6', 28, 0, 0, 0, 0, 0, '', '', '', '0.4', '43', '', '', ''),
('Polyamide 610', 26, 0, 0, 0, 0, 0, '', '', '', '0.1', '', '', '', ''),
('Polyamide 66/polycaprolactam', 28, 0, 0, 0, 0, 0, '', '', '', '0.2', '44', '', '', ''),
('polybutadiene', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyethylene', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', ''),
('polypropylene', 0, 0, 0, 0, 0, 0, '105-150', '300-500', '10.0-25', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `polymer miscibility dissimilar`
--

CREATE TABLE `polymer miscibility dissimilar` (
  `polymer I of` text DEFAULT NULL,
  `polymer II of` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `polymer miscibility dissimilar`
--

INSERT INTO `polymer miscibility dissimilar` (`polymer I of`, `polymer II of`) VALUES
('2-Acrylamido-2-methyl- propanesulfonic acid', 'Vinylpyridine'),
('Acrylic acid', 'Acrylamide'),
('Acrylic acid', 'Acrylamide-co-N,N-dimethyl-'),
('Acrylic acid', 'Caprolactam (nylon 6)'),
('Acrylic acid', 'N,N-dimethylacrylamide'),
('Acrylic acid', 'Ethylene glycol'),
('Acrylic acid', 'Vinyl alcohol'),
('Acrylic acid', 'Vinyl methyl ether'),
('Acrylic acid', 'N-vinylpyrrolidone'),
('Acrylic acid-co-ethylene', 'Caprolactam (nylon 6)'),
('Acrylic acid-co-styrene', 'Caprolactone'),
('Acrylic acid-co-styrene', 'Ester'),
('Acrylic acid-co-styrene', 'Ethyl methacrylate'),
('Acrylic acid-co-styrene', 'Ethyl methacrylate-co- 4-vinylpyridine'),
('Acrylic acid-co-styrene', 'Ethylene glycol'),
('Acrylic acid-co-styrene', 'Isobutyl methacrylate-co- 4-vinylpyridine'),
('Acrylic acid-co-styrene', 'Methyl methacrylate'),
('Acrylic acid-co-styrene', 'n-Propyl methacrylate'),
('Acrylic acid-co-styrene', 'Vinyl methyl ether'),
('Acrylonitrile-co-butadiene', 'Cellulose acetate-butyrate'),
('Acrylonitrile-co-butadiene', 'Chloroprene'),
('Acrylonitrile-co-butadiene', 'Epichlorohydrin'),
('Acrylonitrile-co-butadiene', 'Nitrocellulose'),
('Acrylonitrile-co-butadiene', 'Vinyl acetate-co-vinyl chloride'),
('Acrylonitrile-co-butadiene', 'Vinyl chloride'),
('Acrylonitrile-co-butadiene', 'Vinyl chloride'),
('Acrylonitrile-co-butadiene', 'Vinyl chloride, head-to-head'),
('Acrylonitrile-co-butadiene-co- methyl acrylate', 'Ethylene-alt-maleic anhydride'),
('Acrylonitrile-co-butadiene-co- styrene', 'Propylene-co-vinyl chloride'),
('Acrylonitrile-co-methyl methacrylate', 'N,N-dimethylacrylamide'),
('Acrylonitrile-co-methyl methacrylate', 'Maleic anhydride'),
('Acrylonitrile-co-methyl methacrylate', 'Vinyl chloride'),
('Acrylonitrile-co-methyl methacrylate', 'N-vinylpyrrolidone'),
('Acrylonitrile-co-methyl methacrylate-co-ÃŽÂ±- methylstyrene', 'Vinyl chloride'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Alkyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'n-Butyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'n-Butyl methacrylate-co-methyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Ethyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Ethyl methacrylate-co-methyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Ethylene, chlorinated'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Methyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Methyl methacrylate-co-2,2,6,6- tetramethyl-piperidinyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'n-Propyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Vinyl chloride'),
('Acrylonitrile-co-p- methylstyrene', 'Acetonyl methacrylate'),
('Acrylonitrile-co-p- methylstyrene', '2-Bromoethyl methacrylate'),
('Acrylonitrile-co-p- methylstyrene', 'n-Butyl methacrylate'),
('Acrylonitrile-co-p- methylstyrene', '2-Chloroethyl methacrylate'),
('Acrylonitrile-co-p- methylstyrene', 'Chloromethyl methacrylate');

-- --------------------------------------------------------

--
-- Table structure for table `polymer miscibility similar monomer`
--

CREATE TABLE `polymer miscibility similar monomer` (
  `polymer I of` text DEFAULT NULL,
  `polymer II of` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `polymer miscibility similar monomer`
--

INSERT INTO `polymer miscibility similar monomer` (`polymer I of`, `polymer II of`) VALUES
('Acrylic acid-co-styrene', 'Methyl methacrylate-co-styrene'),
('Acrylonitrile-co-butadiene', 'Acrylonitrile-co-butadiene'),
('Acrylonitrile-co-butadiene', 'Acrylonitrile-co-styrene'),
('Acrylonitrile-co-butadiene', 'Acrylonitrile-co-vinylidene chloride'),
('Styrene-co-maleic anhydride- -co-acrylonitrile', 'Acrylonitrile-co-styrene'),
('Styrene-co-maleic anhydride- -co-acrylonitrile', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-methyl methacrylate', 'Acrylonitrile-co-N-phenylitaconimide'),
('Acrylonitrile-co-methyl methacrylate', 'Itaconic anhydride-co-methyl methacrylate'),
('Acrylonitrile-co-methyl methacrylate', 'Methyl methacrylate-co- N-phenylitaconimide'),
('Acrylonitrile-co-methyl methacrylate-co- ÃŽÂ±-methylstyrene', 'Methyl methacrylate'),
('Acrylonitrile-co-methyl methacrylate-co-styrene', 'Acrylonitrile-co-styrene'),
('Acrylonitrile-co-methyl methacrylate-co-styrene', 'Methyl methacrylate'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Acrylonitrile-co-methyl methacrylate Acrylonitrile-co-styrene'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene', 'Acrylonitrile-co-methyl methacrylate Acrylonitrile-co-styrene'),
('Acrylonitrile-co-ÃŽÂ±-methylstyrene- co-styrene', 'Acrylonitrile-co-ÃŽÂ±-methyl styrene-co-styrene'),
('Acrylonitrile-co-styrene', 'Acrylic acid-co-styrene'),
('Acrylonitrile-co-styrene', 'Acrylonitrile-co-benzyl methacrylate'),
('Acrylonitrile-co-styrene', 'Acrylonitrile-co-fumaronitrile- co-styrene'),
('Acrylonitrile-co-styrene', 'Acrylonitrile-co-methyl methacrylate'),
('Acrylonitrile-co-styrene', 'Acrylonitrile-co-N-phenylitaconimide'),
('Acrylonitrile-co-styrene', 'Acrylonitrile-co-styrene'),
('Acrylonitrile-co-styrene', 'p-(2-Hydroxy-hexafluoroisopropyl)- styrene-co-styrene'),
('Acrylonitrile-co-styrene', 'Maleic anhydride-co-styrene'),
('Acrylonitrile-co-styrene', 'N-phenylitaconimide-co-styrene'),
('Acrylonitrile-co-styrene', 'N-phenylmaleimide-co-styrene'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether', '3-Bromo-2,6-dimethyl-1,4-phenylene ether-co-2,6-dimethyl- 1,4-phenylene ether'),
('3-Bromo-2,6-dimethyl- 1,4-phenylene ether-co- 2,6-dimethyl-1,4-phenylene ether', '2,6-dimethyl-1,4-phenylene ether'),
('p-Bromostyrene-co-styrene', 'Styrene'),
('Butadiene', 'Butadiene'),
('Butadiene', 'Butadiene-co-styrene'),
('Butadiene-co-styrene', 'Butadiene-co-styrene'),
('Butadiene-co-styrene', 'Styrene'),
('Butyl acrylate-co-butyl methacrylate', 'Butyl acrylate-co-butyl methacrylate'),
('Butyl acrylate-co- N-hydroxyethylcarbozolyl acrylate', 'Butyl acrylate-co-ÃŽÂ²-hydroxyethyl- 3,5-dinitrobenzoyl acrylate'),
('Butyl acrylate-co-ethyl acrylate', 'Butyl acrylate-co-ethyl acrylate'),
('Butyl acrylate-co-ethyl acrylate', 'Ethyl acrylate'),
('Butyl acrylate-co-methyl methacrylate', 'Butyl acrylate-co-methyl methacrylate'),
('n-Butyl methacrylate', 'n-Butyl methacrylate-co-styrene'),
('n-Butyl methacrylate-co-p- chlorostyrene', 'n-Butyl methacrylate-co- p-chlorostyrene'),
('n-Butyl methacrylate-co-N- hydroxyethylcarbazoyl acrylate', 'n-Butyl methacrylate-co- ÃŽÂ²-hydroxyethyl-3,5-dinitrobenzoyl acrylate'),
('Butyl methacrylate-co-methyl methacrylate', 'Butyl methacrylate-co-methyl methacrylate'),
('n-Butyl methacrylate-co-styrene', 'n-Butyl methacrylate-co-styrene'),
('n-Butyl methacrylate-co-styrene', 'Styrene'),
('Caprolactam-co-caprolactone', 'Caprolactone-co-laurolactam'),
('Caprolactam-co-caprolactone-co- laurolactam', 'Caprolactam-co-laurolactam'),
('2,6-Dimethyl-1,4-phenylene ether, sulfonylated', '2,6-Dimethyl-1,4-phenylene ether, sulfonylated'),
('Dimethylsiloxane, functionalized', 'Dimethylsiloxane, functionalized'),
('Epichlorohydrin', 'Epichlorohydrin-co-ethylene glycol'),
('Ethyl acrylate-co-ethyl methacrylate', 'Ethyl acrylate-co-ethyl methacrylate'),
('Ethyl acrylate-co-ethyl methacrylate', 'Ethyl methacrylate');

-- --------------------------------------------------------

--
-- Table structure for table `polymer names`
--

CREATE TABLE `polymer names` (
  `polymers` text DEFAULT NULL,
  `CAS numbers` varchar(10) NOT NULL,
  `Acronym` text DEFAULT NULL,
  `Alias` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `polymer names`
--

INSERT INTO `polymer names` (`polymers`, `CAS numbers`, `Acronym`, `Alias`) VALUES
('polyamide 12', '24937-16-4', 'nylon 12', ''),
('Poly(vinylidene fluoride)', '24937-79-9', 'PVDF', ''),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', '24968-12-5', '', ''),
('poly(acrylonitrile)', '25014-41-9', 'PAN', ''),
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', '25038-36-2', 'EPDM rubber', ''),
('Polyamide 6', '25038-54-4', 'Nylon 6', ''),
('polyethylene terephtalate', '25038-59-9', 'PET', ''),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', '25038-71-5', 'ETFE', ''),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', '25067-11-2', 'FEP', 'Fluorinated ehtylene propylene'),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', '26655-00-5', 'PFA', ''),
('Polyamide 66 ', '32131-17-2', 'Nylon 66', 'polycaprolactam'),
('polybutadiene', '40022-03-5', 'BR', ''),
('Poly(oxymethylene)', '9002-81-7', 'POM', ''),
('Poly(tetrafluoroethylene)', '9002-84-0', 'PTFE', ''),
('Poly(vinyl chloride)', '9002-86-2', 'PVC', ''),
('polyethylene', '9002-88-4', 'PE', ''),
('polypropylene', '9003-07-0', 'PP', ''),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', '9003-18-3', '', ''),
('Poly(vinyl acetate)', '9003-20-7', 'PVA', 'PVAc'),
('POLYISOPRENE', '9003-31-0', '', ''),
('poly(styrene)', '9003-53-6', 'PS', ''),
('POLY(BUTADIENE-co-STYRENE)', '9003-55-8', '', ''),
('POLY(ISOBUTENE-co-ISOPRENE)', '9010-85-9', '', ''),
('POLY(CHLOROPRENE)', '9010-98-4', 'neoprene', ''),
('Poly(methyl methacrylate)', '9011-14-7', 'PMMA', ''),
('Polyamide 610', '9011-51-3', 'nylon 610', '');

-- --------------------------------------------------------

--
-- Table structure for table `refractive index`
--

CREATE TABLE `refractive index` (
  `polymer` text DEFAULT NULL,
  `n` text DEFAULT NULL,
  `T (Ã‚Â°C)` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refractive index`
--

INSERT INTO `refractive index` (`polymer`, `n`, `T (Ã‚Â°C)`) VALUES
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
  `polymer` text DEFAULT NULL,
  `Melt flow temperature` bigint(20) DEFAULT NULL,
  `Melt flow rate dg/min lower` bigint(20) DEFAULT NULL,
  `Melt flow rate dg/min upper` bigint(20) DEFAULT NULL,
  `melt viscosity (capilary rheometer) kPa lower` bigint(20) DEFAULT NULL,
  `melt viscosity (capilary rheometer) kPa upper` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rheological`
--

INSERT INTO `rheological` (`polymer`, `Melt flow temperature`, `Melt flow rate dg/min lower`, `Melt flow rate dg/min upper`, `melt viscosity (capilary rheometer) kPa lower`, `melt viscosity (capilary rheometer) kPa upper`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 4, 16, 700, 10000),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 8, 50),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 265, 5, 180, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 1, 18, 4, 27),
('polyamide 12', 0, 0, 0, 0, 0),
('Polyamide 6', 0, 0, 0, 0, 0),
('Polyamide 610', 0, 0, 0, 0, 0),
('Polyamide 66/polycaprolactam', 0, 0, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0),
('polypropylene', 230, 23, 23, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shear`
--

CREATE TABLE `shear` (
  `polymer` text DEFAULT NULL,
  `shear modulus` bigint(20) DEFAULT NULL,
  `shear stress at break` bigint(20) DEFAULT NULL,
  `shear stress yield` bigint(20) DEFAULT NULL,
  `storage modulus` bigint(20) DEFAULT NULL,
  `loss modulus` bigint(20) DEFAULT NULL,
  `critical shear rate` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shear`
--

INSERT INTO `shear` (`polymer`, `shear modulus`, `shear stress at break`, `shear stress yield`, `storage modulus`, `loss modulus`, `critical shear rate`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 0, 0, 0, 200),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 0, 0, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 0, 0, 0, 0),
('polyamide 12', 500, 34, 0, 0, 0, 0),
('Polyamide 6', 1100, 59, 0, 0, 0, 0),
('Polyamide 610', 800, 58, 0, 0, 0, 0),
('Polyamide 66/polycaprolactam', 1300, 66, 0, 0, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0),
('polypropylene', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `solubility parameters solvents`
--

CREATE TABLE `solubility parameters solvents` (
  `solvent` text DEFAULT NULL,
  `CAS registry no.` text DEFAULT NULL,
  `solub. param., ÃŽÂ´ (MPa1/2)` double DEFAULT NULL,
  `solub. param., ÃŽÂ´ ((cal/cm3)1/2)` double DEFAULT NULL,
  `H-bonding group` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solubility parameters solvents`
--

INSERT INTO `solubility parameters solvents` (`solvent`, `CAS registry no.`, `solub. param., ÃŽÂ´ (MPa1/2)`, `solub. param., ÃŽÂ´ ((cal/cm3)1/2)`, `H-bonding group`) VALUES
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
  `polymer` text DEFAULT NULL,
  `solvents` text DEFAULT NULL,
  `nonsolvents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solvents and non solvents`
--

INSERT INTO `solvents and non solvents` (`polymer`, `solvents`, `nonsolvents`) VALUES
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
  `polymer` text DEFAULT NULL,
  `tensile modulus Mpa lower` bigint(20) DEFAULT NULL,
  `tensile modulus Mpa upper` bigint(20) DEFAULT NULL,
  `tensile strength break lower` bigint(20) DEFAULT NULL,
  `tensile strength break upper` bigint(20) DEFAULT NULL,
  `tensile strength yield lower` bigint(20) DEFAULT NULL,
  `tensile strength yield upper` bigint(20) DEFAULT NULL,
  `elongation at break lower` bigint(20) DEFAULT NULL,
  `elongation at break upper` bigint(20) DEFAULT NULL,
  `elongation at yield lower` bigint(20) DEFAULT NULL,
  `elongation at yield upper` bigint(20) DEFAULT NULL,
  `storage modulus` bigint(20) DEFAULT NULL,
  `loss modulus` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tensile`
--

INSERT INTO `tensile` (`polymer`, `tensile modulus Mpa lower`, `tensile modulus Mpa upper`, `tensile strength break lower`, `tensile strength break upper`, `tensile strength yield lower`, `tensile strength yield upper`, `elongation at break lower`, `elongation at break upper`, `elongation at yield lower`, `elongation at yield upper`, `storage modulus`, `loss modulus`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 830, 830, 38, 48, 22, 22, 100, 350, 0, 0, 0, 0),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 4, 4, 15, 21, 12, 12, 240, 300, 0, 0, 0, 0),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 1340, 2000, 36, 56, 36, 59, 25, 500, 0, 0, 0, 0),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 28, 31, 13, 15, 260, 300, 0, 0, 0, 0),
('polyamide 12', 1400, 1400, 55, 55, 52, 52, 250, 250, 10, 10, 0, 0),
('Polyamide 6', 3000, 3000, 81, 81, 81, 81, 150, 150, 9, 9, 0, 0),
('Polyamide 610', 2400, 2400, 59, 59, 59, 59, 100, 100, 10, 10, 0, 0),
('Polyamide 66/polycaprolactam', 3300, 3300, 83, 83, 83, 83, 60, 60, 5, 5, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', 1032, 1720, 29, 39, 0, 0, 500, 900, 11, 15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thermal`
--

CREATE TABLE `thermal` (
  `polymer` text DEFAULT NULL,
  `Tg (lower)` bigint(20) DEFAULT NULL,
  `Tg upper` bigint(20) DEFAULT NULL,
  `Tm lower` bigint(20) DEFAULT NULL,
  `Tm upper` bigint(20) DEFAULT NULL,
  `heat of fusion (kj/kg) lower` bigint(20) DEFAULT NULL,
  `heat of fusion (kj/kg) upper` bigint(20) DEFAULT NULL,
  `crystallization temp` bigint(20) DEFAULT NULL,
  `heat of crystallization` bigint(20) DEFAULT NULL,
  `linear expansion K-1 lower` bigint(20) DEFAULT NULL,
  `linear expansion K-1 upper` bigint(20) DEFAULT NULL,
  `volume expansion` bigint(20) DEFAULT NULL,
  `thermal conductivity W/m/K lower` bigint(20) DEFAULT NULL,
  `thermal conductivity W/m/K upper` bigint(20) DEFAULT NULL,
  `thermal diffusivity` bigint(20) DEFAULT NULL,
  `Cp kJ/kg/K lower` bigint(20) DEFAULT NULL,
  `Cp kJ/kg/K upper` bigint(20) DEFAULT NULL,
  `Processing temp lower` bigint(20) DEFAULT NULL,
  `Processing temp upper` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thermal`
--

INSERT INTO `thermal` (`polymer`, `Tg (lower)`, `Tg upper`, `Tm lower`, `Tm upper`, `heat of fusion (kj/kg) lower`, `heat of fusion (kj/kg) upper`, `crystallization temp`, `heat of crystallization`, `linear expansion K-1 lower`, `linear expansion K-1 upper`, `volume expansion`, `thermal conductivity W/m/K lower`, `thermal conductivity W/m/K upper`, `thermal diffusivity`, `Cp kJ/kg/K lower`, `Cp kJ/kg/K upper`, `Processing temp lower`, `Processing temp upper`) VALUES
('ETHYLENE-PROPYLENE-DIENE-TERPOLYMER', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(acrylonitrile)', 85, 104, 320, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0),
('POLY(BUTADIENE-CO-ACRYLONITRILE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(BUTADIENE-co-STYRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(CHLOROPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLY(ETHYLENE-CO-TETRAFLUOROETHYLENE)/Ethylene tetrafluoroethylene', 0, 0, 225, 270, 46, 46, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 325, 345),
('POLY(ISOBUTENE-co-ISOPRENE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(methyl methacrylate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxymethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(oxytetramethylene-oxyterephthaloyl )/Poly(butylene terephthalate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(styrene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(tetrafluoroethylene)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('poly(tetrafluoroethylene-co-hexafluoropropylene)', 0, 0, 253, 282, 24, 24, 0, 0, 0, NULL, 8, 0, 0, 0, 0, 1, 320, 380),
('Poly(vinyl acetate)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinyl chloride)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Poly(vinylidene fluoride)', 0, 0, 154, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 200, 300),
('poly[tetrafluoroethylene-co-perfluoro(alkoxy vinyl ether)]', 0, 0, 302, 306, 21, 26, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 370, 395),
('polyamide 12', 29, 29, 178, 178, 95, 95, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0),
('Polyamide 6', 56, 56, 220, 220, 190, 190, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0),
('Polyamide 610', 56, 56, 220, 220, 215, 215, 0, 0, 0, 9, 0, 0, 2, 0, 0, 2, 0, 0),
('Polyamide 66/polycaprolactam', 82, 82, 262, 262, 196, 196, 0, 0, 0, 8, 0, 0, 2, 0, 0, 2, 0, 0),
('polybutadiene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polyethylene terephtalate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('POLYISOPRENE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('polypropylene', -3, -3, 183, 220, 3, 11, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `polymer names`
--
ALTER TABLE `polymer names`
  ADD PRIMARY KEY (`CAS numbers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
