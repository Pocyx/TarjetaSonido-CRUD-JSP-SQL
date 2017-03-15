

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tarjetas`
--
CREATE DATABASE IF NOT EXISTS `tarjetas` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `tarjetas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_sonido`
--

CREATE TABLE IF NOT EXISTS `tarjeta_sonido` (
  `tarjeta_id` int(11) NOT NULL,
  `tipo` varchar(12) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `marca` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `modelo` varchar(40) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` DECIMAL(6,2) DEFAULT NULL,
  PRIMARY KEY (`tarjeta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tarjeta_sonido`
--

INSERT INTO `tarjeta_sonido` (`tarjeta_id`, `tipo`, `marca`, `modelo`, `precio`) VALUES

(1, 'Interna', 'Speedlink', '4CH', 7.50),
(2, 'Interna', 'Power Star', 'CS-OEM-51', 9.90),
(3, 'Interna', 'ISA', '3D', 10.95),
(4, 'Interna', 'Asus', 'DGX', 34.66),
(5, 'Interna', 'Creative Sound', 'BLASTER Z', 81.22),
(6, 'Interna', 'CLS', '6CHANEL 3D', 11.85),
(7, 'Interna', 'RADEON', 'R9 NANO 4GB HBM PCIE', 875.00),
(8, 'Interna', 'ASUS', 'XONAR DX PCIE', 398.12),
(9, 'Interna', 'Creative Sound', 'BLASTER ZXR PCIE', 301.84),
(10, 'Externa', 'SODIAL', '7120', 1.40),
(11, 'Externa', 'TOOGOO', '3D', 1.62),
(12, 'Externa', '5H', 'V2', 6.11),
(13, 'Externa', 'Playvision', 'j41s', 54.99),
(14, 'Externa', 'Ch Sound', 'AIRCRAFT', 11.67),
(15, 'Externa', 'Playvision', 'AOEYOO', 40.98),
(16, 'Externa', 'DAC', '80', 737.25),
(17, 'Externa', 'Creative Sound', 'LAB RECON3D', 675.00),
(18, 'Externa', 'DAC', 'AUDIOTRAK', 520.11),
(19, 'Controladora', 'Hello Kitty', '', 30.00),
(20, 'Controladora', 'Hercules', 'CONTROL COMPACT', 43.50),
(21, 'Controladora', 'Hercules', 'CONTROL GLOW', 67.01),
(22, 'Controladora', 'Hercules', '4780833', 79.47),
(23, 'Controladora', 'Hercules', 'AIR+', 149.00),
(24, 'Controladora', 'Hercules', '4780773', 183.95),
(25, 'Controladora', 'Pioneer', 'RZX', 3060.20),
(26, 'Controladora', 'Numark', 'NS7', 2005.00),
(27, 'Controladora', 'AVID','ARTIST CONTROL', 1279.45);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
