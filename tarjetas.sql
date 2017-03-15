

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
(1, 'Controladora', 'Numark', 'sdrk45', 2005.00),
(2, 'Externa', 'ark', 'siugi565', 25.00),
(3, 'Interna', 'Numa', 'lgk87', 48.00),
(4, 'Controladora', 'Numark','oih7', 2005.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
