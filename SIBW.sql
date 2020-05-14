-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql:3306
-- Tiempo de generación: 14-05-2020 a las 22:39:03
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SIBW`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_evento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `nombre`, `comentario`, `fecha`, `hora`, `id_evento`) VALUES
(1, 'Juan', 'Es una buena página,creo ~ modificado por el moderador Pepe', '2020-10-03', '12:34:40', 1),
(2, 'Lucia', ' Me encanta vuestro analisis de la A6100 ', '2020-10-01', '20:45:05', 1),
(8, 'Pepe', '¿Viene con kit de fabrica?', '2020-05-09', '05:48:33', 2),
(9, 'Pepe', 'Creo que me la voy a comprar', '2020-05-09', '05:49:59', 3),
(10, 'Pepe', 'Creo que sois un poco fanboys', '2020-05-09', '05:54:52', 9),
(11, 'Pepe', 'Algun dia sere fotografo como vosotros', '2020-05-09', '05:55:45', 6),
(12, 'Pepe', 'cambiado x4modificado por Pepe', '2020-05-09', '06:01:16', 4),
(15, 'Pepe', 'Me la compraria sin duda', '2020-05-09', '06:23:00', 7),
(16, 'Pepe', 'habeis comprado leche?', '2020-05-09', '06:23:45', 7),
(17, 'Pepe', 'Le puede venir bien a gente con poca experiencia', '2020-05-09', '06:25:32', 8),
(18, 'Pepe', 'Util y conciso', '2020-05-09', '06:25:59', 8),
(19, 'Pepe', 'Sin duda la mejor del mercado', '2020-05-09', '06:27:05', 5),
(20, 'Pepe', 'Eres un poco tonto', '2020-05-09', '06:27:43', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios2`
--

CREATE TABLE `comentarios2` (
  `id_comentario` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `comentario` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_evento` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comentarios2`
--

INSERT INTO `comentarios2` (`id_comentario`, `nombre`, `comentario`, `fecha`, `hora`, `id_evento`) VALUES
(1, 'Juan', ' Es una muy buena pagina ', '2020-10-03', '12:34:40', 1),
(2, 'Lucia', ' Me encanta vuestro analisis de la A6100 ', '2020-10-01', '20:45:05', 1),
(3, 'Maria', 'Me estoy pensando en comprar esa camara, genial.', '2020-05-01', '10:45:25', 2),
(4, 'Julian', 'No estoy muy convencido de si sale rentable comprarsela, no tiene una gran distancia focal...', '2020-12-04', '17:44:05', 2),
(5, 'David', 'No me gusta nada como la habeis analizado, no habeis estado a la altura', '2020-09-01', '22:45:25', 3),
(6, 'Paquita', 'Podríais enseñar mas como rinde en ambientes oscuros?', '2020-02-04', '19:44:05', 3),
(7, 'Maria José', 'No sé como he llegado aquí pero saludos.', '2020-11-01', '23:45:25', 4),
(8, 'ElRubius', 'Pero no habeis comprado leche??', '2020-04-04', '14:44:05', 4),
(9, 'Samuel', 'Pues no es fiel a los libros, dislike', '2020-07-01', '20:15:25', 5),
(10, 'Antoñi', 'A mi me llegó ayer y estoy enamorado.', '2020-09-04', '12:14:05', 5),
(11, 'Unay', 'Creo que para eso me compro un movil con una mejor camara.', '2019-12-03', '10:05:25', 6),
(12, 'Kike', '¿Viene con algun objetivo distinto al de kit?', '2020-09-04', '09:14:05', 6),
(13, 'Federico', 'Buen analisis, saludos.', '2020-05-01', '20:15:25', 7),
(14, 'Lola', 'Sin palabras, emocionada', '2020-02-04', '12:14:05', 7),
(15, 'Julia', 'La fotografia es una forma de expresión que se acerca al alma', '2020-09-01', '20:45:25', 8),
(16, 'Roberta', 'La fotografia de paisaje me parece de lo mas aburrida', '2020-02-04', '17:44:05', 8),
(17, 'Celia', 'Estareis en el salon de la fotografia?', '2020-02-03', '22:45:25', 9),
(18, 'Andrea', 'Me habias convencido.', '2020-06-04', '19:14:05', 9),
(53, 'Juan', 'probando                        \r\n                    ', '2020-05-05', '06:26:23', 1),
(54, 'Juan', 'probando                        \r\n                    ', '2020-05-05', '06:46:34', 1),
(55, 'Juan', 'deberia de ir guay                        \r\n                    ', '2020-05-05', '06:49:09', 5),
(56, 'Prueba', 'probando, dos, tres                        \r\n                    ', '2020-05-06', '06:14:44', 1),
(57, 'Prueba', 'asdfasdf\r\n                    ', '2020-05-06', '06:15:01', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE `etiquetas` (
  `idEvento` int NOT NULL,
  `modelo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `etiquetas`
--

INSERT INTO `etiquetas` (`idEvento`, `modelo`) VALUES
(1, 'Sony A6100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int NOT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `analisis` text,
  `conclusiones` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `modelo`, `analisis`, `conclusiones`) VALUES
(1, 'Sony A6100', 'Uno de los pocos cambios de la A6100 con su antecesora está en la capacidad táctil de su pantalla trasera. Curiosamente porque, tras haber renunciado a ella (sí la tenía la Sony NEX-6 pero no la A6000), ahora vuelve a acoger esta característica. Esto permite que ahora se pueda mover el punto de enfoque con el dedo mientras se mira por el visor electrónico. Éste, por cierto, no es el mismo de la A6600 y resulta algo peor, aunque es correcto, comparable al de cámaras de su segmento.\n                        Respecto a la pantalla, también ha variado sobre la que llevaba la A6000 y ahora es articulada y se puede colocar en posición para hacerse selfies (aunque choque un poco con el ocular del visor, que se puede quitar, eso sí). Su capacidad táctil la hace ideal para pulsar directamente con el dedo en el lugar deseado y enfocar (incluso disparar, si así lo queremos).           \n                        Lo que no se puede hacer con los dedos es, como ocurre con todas las Sony, navegar por los menús. En cualquier caso, la capacidad táctil es algo que hace que el manejo cambie respecto a la A6000, en este caso mejorando ligeramente lo que ya estaba bastante bien.\n                        Por supuesto hay que hablar del enfoque, sin duda uno de los principales motivos para comprarse esta cámara que, como hemos dicho, tiene el mismo sistema AF que su hermana mayor, la A6600, comparable con el de las A7. Así las cosas, el enfoque es muy rápido y es capaz de reconocer las caras (incluso de animales) y de seguir objetos en movimiento con mucha eficacia.\n                        Por lo demás la cámara es bastante rápida, graba en 4K y tiene una ráfaga muy decente (once fotos por segundo). También cuenta con la posibilidad de disparar totalmente en silencio, lo que no siempre está al alcance de cámaras de categorías no profesionales (como es el caso). Su autonomía oficial es de unos 400 disparos, cifra que no está mal y que es más o menos lo que hemos obtenido en nuestras pruebas.\n                        El que sin duda suele ser el apartado más crucial(la calidad de imagen) en otras cámaras aquí pasa a un segundo plano al recordar que estamos hablando de un modelo que utiliza el mismo sensor CMOS de 24,2 MPíxeles de sus hermanas de gama. Un captor APS-C que lleva muchos años en el mercado (con la lógicas actualizaciones) pero que ha demostrado de sobra sus capacidades.\n                        Esto hace, incluso, que los resultados de las tomas puedan incluso equipararse a los de la A6600, con algunas diferencias porque (por ejemplo) este modelo no lleva estabilizador. Sin embargo, en general podemos hablar de imágenes de muy buena calidad general, con excelente contraste, amplio rango dinámico, buen nivel de detalle y muy buena reproducción del color.\n                        En cuanto al rendimiento en condiciones de baja luminosidad, en las que hay que tirar de ISO, podemos decir que el límite sigue estando alrededor de 3.200 si queremos una imagen bien limpia. Sin embargo, el ruido resultante (muy equilibrado en cuanto a ruido de luminancia y crominancia, por cierto) es bastante fácil de limpiar con un software apropiado.\n                        Todo eso teniendo en cuenta que el objetivo utilizado en la prueba no parece el más indicado para sacarle el máximo rendimiento a este sensor. Para comprobarlo hicimos una pequeña prueba que podéis ver abajo realizando una misma toma con el E PZ 16-50 mm F3,5-5,6 OSS y con un Sony Zeiss Vario-Tessar T* FE 24-70 mm F4 ZA OSS (que es de formato completo) y se aprecia la diferencia a nivel del detalle que es capaz de reproducir.\n                        A nivel de conexiones, el lateral izquierdo de la A6100 oculta el compartimento con un puerto MicroUSB para cargar la batería o enviar fotos a un PC por cable. A su lado hay un MicroHDMI (tipo D), y los fanáticos del vídeo se alegrarán de descubrir un puerto de 3,5mm para micrófono externo. La A6100 es una cámara inalámbrica muy completa. Tiene wifi, bluetooth 4.1 y NFC. Lamentablemente no hace el mejor uso de estas conexiones (ver más abajo). Por cierto, tienes las especificaciones completas de la cámara en la <a href=\"https://www.sony.com/electronics/interchangeable-lens-cameras/ilce-6100\"> web de Sony</a>.', '                    La Sony A6100 no es perfecta, pero ofrece tantas cosas buenas por tan poco que se convierte en una oferta difícil de rechazar. 839 euros son un desembolso considerable en términos absolutos, pero no en fotografía y si hablamos de una cámara que te va a durar años (yo llevo más de seis años con mi A7 y no tengo ninguna prisa por cambiarla).\n                    Ahora mismo no hay cámaras sin espejo APS-C que ofrezcan lo mismo por ese precio. Las referencias más inmediatas son la Fujifilm X-A7 o la Canon EOS M6 Mark II, que son muy similares a la A6100 pero no tienen visor electrónico (algo que yo encuentro inaceptable). Eso sí, estéticamente la Fujifilm es mucho más bonita. La Olympus OM-D EM10 III, por citar otro rival, viene con estabilización en el cuerpo, pero su sensor es más pequeño (micro cuatro tercios de 16mpx) y es más grande y pesada.\n                    Puede que su sensor no sea Full Frame, pero la A6100 ha demostrado manejarse más que bien en entornos oscuros gracias a su ISO ampliado y a su procesador de imagen. Por su parte, el enfoque rapidísimo y lleno de opciones inteligentes para no perder detalle hace de la A6100 una cámara especialmente disfrutable si eres de los que gusta disparar a lo loco en modo automático. Los controles manuales son completos y mejores de lo que parecen en frío una vez superas la curva de aprendizaje. Con todo probablemente es una cámara que se quede un poco pequeña si lo que quieres es darle un uso profesional o semiprofesional.\n                    Todo eso a un precio de 800 euros. Hay cámaras de la serie A6 mucho mejores (la A6600 es gloriosa) pero carísimas. Por el precio de esa tope de gama dentro del segmento APS-C puedes comprarte una A6100 y una lente 18-135 que te dará años de felicidad fotográfica. La A6000 ha durado seis años en el mercado y sigue siendo un modelo válido. No creo que te arrepientas de comprar la A6100, a menos que vayas mucho al monte o a la playa, o quieras grabar vídeo profesional en cuyo caso probablemente necesitas un modelo más robusto y sellado contra intemperie como la A6600.'),
(2, 'Canon EOS M200', 'Es una cámara para los que tienen un móvil y quieren conseguir más calidad. Con la Canon EOS M200 puede picarles el gusanillo de trabajar con una cámara con más opciones y cosas tan extrañas para ellos como un amplio abanico de diafragmas.Ganarán calidad pero perderán la comodidad del móvil. Durante la prueba le dejé la cámara a mi mujer, una convencida del mundo smartphone y me la devolvió en apenas una hora porque le resultaba grande, pesada y sin la versatilidad del teléfono.Y ese es el problema de esta cámara. Nace con la idea de sustituir a un dispositivo que es una extensión para muchos fotógrafos. Y salir de algo pequeño, plano y que permite editar y publicar directamente es muy difícil. La idea no debería ser encontrar algo similar, sino algo radicalmente distinto... una cámara más avanzada como las que podemos encontrar en el propio catálogo de la marca... Por ejemplo una Canon EOS M50. Y es una pena, porque es una cámara con un sensor fabuloso. Un cuerpo equivocado con un corazón y un cerebro perfectos. La calidad de los archivos RAW, la comodidad de la pantalla abatible para los que les gusta retratarse, la rapidez a la hora de pasar los archivos al smartphone por la aplicación Canon Camera Connect... Y en este nicho de mercado hay mucha competencia... Ahí está, aún con un sensor más pequeño la misma Canon Powershot G5x, o la Sony A5100...', 'La Canon EOS M200 es una cámara de entrada. Destaca más por su interior (Dual Pixel CMOS AF para el vídeo, enfoque al ojo...) que por las características exteriores. Y le falta un buen objetivo de entrada para ser realmente atractiva. Las cámaras sin espejo no tienen que parecer móviles... tienen que destacar por sus posibilidades infinitas de uso.a Canon EOS M200 nos ofrece muchísimos modos predefinidos para que podamos elegir el que más se acople al tipo de fotografía que vamos a realizar. Tenemos un modo Autorretrato (el elegido para realizar la foto que tenéis sobre estas líneas), un modo Paisaje, un modo Retrato, un interesante modo Primer Plano, modo Comida, modo Retrato Nocturno, modo Contraluz, modo Blanco y negro e incluso varios modos creativos (Acuarela, Cámara de juguete, Miniatura y muchos más).\nPuede que su sensor no sea Full Frame, pero la A6100 ha demostrado manejarse más que bien en entornos oscuros gracias a su ISO ampliado y a su procesador de imagen. Por su parte, el enfoque rapidísimo y lleno de opciones inteligentes para no perder detalle hace de la A6100 una cámara especialmente disfrutable si eres de los que gusta disparar a lo loco en modo automático. Los controles manuales son completos y mejores de lo que parecen en frío una vez superas la curva de aprendizaje. Con todo probablemente es una cámara que se quede un poco pequeña si lo que quieres es darle un uso profesional o semiprofesional.\n\nSon modos que seguro gustan a los que vengan de un móvil. Algunos son bastante curiosos y hacen que podamos darle un toque artístico a nuestras fotografías. Por supuesto también tenemos un modo totalmente manual, aunque al tener la cámara tan pocos controles físicos es un poco engorroso trabajar con él.\n\nPara que veáis algunas de las imágenes que se pueden conseguir con los modos predefinidos, os dejo por aquí una pequeña galería con algunas muestras. Son todos JPEG directos de cámara.'),
(3, 'Leica Q2', 'Dentro de su diseño sobrio nos encontramos con la batería que no posee una pestaña que la proteja, sino que al accionar la palanca se libera la misma que lleva incorporado el cierre sellado. No hemos notado ninguna dificultad con esto, pero habría que ver si con el uso frecuente de extraer e introducir la batería, esta \"junta\" pierde capacidad de sellado.\r\n\r\nLa batería rinde por encima de sus especificaciones de 350 disparos, pero sí echamos en falta alguna opción de carga a través de USB en el propio cuerpo, ya que nos obliga a usar siempre el cargador externo que se suministra.\r\n\r\nEchamos en falta alguna opción de carga a través de USB en el propio cuerpo\r\n\r\nEl visor electrónico es de tecnología OLED con 3.68 megapíxeles y la pantalla trasera LCD de tres pulgadas y capacidad táctil. Todo para ofrecer una buena experiencia, aunque sí hemos notado en algunas escenas que el visor no rendía tan luminoso y detallado como se esperaba. Como si mostrar \"señal de ruido\" que no se correspondía con el que captara la imagen.', 'La Leica Q2 es una cámara de casi cinco mil euros y eso ya es un factor condicionante para muchos usuarios. Pero cabe destacar que este puede ser su principal hándicap, porque en cuanto a rendimiento, calidad de imagen y construcción, resulta una compacta de primer nivel. Es el precio a pagar por una cámara que ofrece la experiencia de Leica en todos sus sentidos, sin tener que acudir a las míticas Leica M.\r\nNo podemos olvidar que estamos hablando de un sensor full frame de 47 megapíxeles, un objetivo Leica Summilux 28 mm f/1.7 ASPH y, todo ello, en un cuerpo compacto, sólido y resistente, con una batería correcta y un diseño único, algo que no lo podemos encontrar aún. Tendríamos que acudir a la RX1R II de Sony o la propia Leica Q para comparar, por lo que estamos ante una cámara realmente exclusiva.\r\n\r\nMinimalista, elegante y muy idónea para fotografía de calle, reportaje o viajes\r\n\r\nLa nitidez de las capturas con la sencillez del diseño hacen que la experiencia que ofrece la Q2 sea sobresaliente. Minimalista, elegante y muy idónea para fotografía de calle, reportaje o viajes. Se puede llevar a todas partes, resiste y además, cuenta con opciones de vídeo 4K por si alguna vez queremos aprovecharlo, aunque no es algo que consideremos tan relevante en una cámara como esta.\r\n\r\nSon modos que seguro gustan a los que vengan de un móvil. Algunos son bastante curiosos y hacen que podamos darle un toque artístico a nuestras fotografías. Por supuesto también tenemos un modo totalmente manual, aunque al tener la cámara tan pocos controles físicos es un poco engorroso trabajar con él.\r\n\r\nEn resumen, realmente creo que Leica ha cimentado la posición de la Q como la opción principal para los fotógrafos que desean una cámara fotográfica multifunción de fotograma completo que pueda realizar una doble función como una función de apuntar y disparar extremadamente fácil de usar. Dispositivo de viaje / familiar, y también como cámara para uso profesional con controles manuales completos. ¡Que conserva y mejora el diseño sobrio y ergonómico original, la elegancia es solo la guinda del pastel!\r\n\r\nEl Q2 ​​ahora acompañará al M10-P en mi bolsa regular (ayer vendí mi respaldo M10-P). De hecho, para eventos sociales y vacaciones familiares, ¡puede que sea la única cámara que necesito llevar!\r\n'),
(4, 'Canon EOS 1Dx Mark III', 'Es verdad que es una cámara muy grande, muy pesada (para los tiempos que corren) y voluminosa pero a la hora de colocar los objetivos citados agradeces tener entre las manos un cuerpo tan grande y sobre todo, tan ergonómico, heredero directo de la Canon T90.\r\n\r\nAquí es donde empieza a entenderse y justificarse el diseño de la Canon EOS 1Dx Mark III. Para objetivos más pequeños puede que no tenga sentido. Pero está pensada sobre todo para profesionales que trabajan con semejantes cañones blancos, esos que vemos en los estadios.\r\n\r\nPara objetivos más pequeños puede que no tenga sentido. Pero está pensada sobre todo para profesionales que trabajan con semejantes cañones blancos, esos que vemos en los estadios.\r\n\r\nLa naturaleza no es un estudio impoluto. Está lleno de tierra, agua y su suma, el barro. Tienes que dejar la cámara muchas veces en el suelo, o en los asientos de un 4x4 de campo. A los fotógrafos nos gusta cuidar nuestro equipo al máximo pero hay veces que es inevitable dejar la cámara en el suelo. Y con este modelo estás seguro de que no va a pasar nada demasiado grave si tienes más de un descuido.\r\n\r\nNo tiene una pantalla abatible pero en este tipo de cámara es una ventaja. Perdemos mucha comodidad a la hora de grabar vídeo pero evitamos las partes móviles a la mínima expresión. Y todos los botones, las pantallas y las trampillas para las tarjetas y la batería, están protegidas. El símil que mejor la describe sería hablar de un tanque.', 'No es una cámara de estudio. Es una cámara de campo para profesionales que no necesitan grandes tamaños de ampliación, sino la mejor calidad posible en el menor espacio para enviar rápidamente los archivos. Además este tamaño permite, junto con la impresionante respuesta de las tarjetas CFxpress, obtener un disparo ilimitado de fotogramas... hasta 16 fps en modo réflex o 20 fps en modo Live view...\r\nAsí los profesionales de la naturaleza o los deportivos pueden hacer una ráfaga ilimitada como veis en el GIF. Tuve la suerte de enfocar la llegada del águila real desde lejos y pude disparar sin miedo con la seguridad de no perder ni una fotografía. Todas enfocadas. No está la secuencia completa por problemas de espacio pero os puedo asegurar que duró bastante más...\r\nMuchos hablan del color de Canon. Esto puede ser una ventaja si trabajamos en formato jpeg pero no tiene sentido si lo hacemos en RAW, donde nosotros podemos cambiar todo. Pero es verdad que muchos fotógrafos solo envían el formato comprimido a las agencias. Y ahí es donde sale ese color tan comentado. Con una buena exposición muchas de las fotografías están terminadas en todos los sentidos. El fotógrafo profesional de deporte ahorra tiempo con ella.\r\nLa opinión de Xataka Foto\r\n\r\nLa Canon EOS 1Dx Mark III no te hace mejor fotógrafo. Es absurdo pensar eso. Pero si tienes una carrera detrás esta cámara te ayuda a conseguir una mayor tasa de aciertos. Muchos de los disparos que hicimos son malos. Les falta foco. Pero es por nuestra culpa.\r\n\r\nPara hacer buenas fotografías de naturaleza o deportes hace falta anticiparse, conocer muy bien el comportamiento de lo que capturas y pasarse muchas horas hasta conseguir el disparo perfecto\r\n\r\nPara hacer buenas fotografías de naturaleza o deportes hace falta anticiparse, conocer muy bien el comportamiento de lo que capturas y pasarse muchas horas hasta conseguir el disparo perfecto. Con esta Canon EOS 1Dx Mark III simplemente tienes más oportunidades.\r\nCanon Eos 1d X Mark Iii Iso1600 F 2 81 500 Canon Eos 1d X Mark III Iso1600 f2,8 1/500\r\n\r\nEl sistema de enfoque es impresionante. Si tienes la habilidad de cazar en el momento justo a la presa y conoces las artes del oficio tienes la foto asegurada. Puedes activar todos los puntos de enfoque pero en la mayoría de las fotografías que ilustran este artículo solo utilizamos Ampliación del punto AF alrededor de 8 puntos. Nos bastó con situarlo en el centro y listo. Luego con el Smart Controller teníamos el máximo control.\r\n\r\nPodría ser más barata. Ahora mismo se puede reservar por 7.419,99€ con una tarjeta de 64GB. No tiene IBIS para evitar aumentar más su peso (es 100 g más ligera que su antecesora, eso sí). Muchos fotógrafos echarán de menos la pantalla abatible... Y hay quien se lamenta porque no es una sin espejo. nunca se puede contentar a todo el mundo.\r\nVer galería completa »'),
(5, 'Hasselblad X1D II 50c', 'La Hasselblad X1D II 50c cambia la forma de trabajar. No tanto como para escribir un libro específico (algo que no merece ningún tipo de cámara salvo las de banco). Solo tenemos que recordar que cambian nuestra relación con las velocidades y el uso del diafragma para jugar con la profundidad de campo.\r\n\r\nLas cámaras de formato medio se caracterizan por el mayor tamaño del sensor y todo lo que conlleva: cuerpos más grandes, más peso y volumen... todo parece indicar que es necesario el trípode para evitar fotos trepidadas. Esto es algo que, en teoría, se ha superado con la Hasselblad X1D II 50c.\r\nEstamos ante una cámara que intenta olvidar la aparente falta de ergonomía del formato medio y apuesta por la ergonomía de las sin espejo. Recuerda más a una Pentax 67 -sin aquel brutal pentaprisma- que a las espartanas Hasselblad cuadradas. Y se mire por donde se mire, es un acierto. \r\nEl diseño de esta Hasselblad es uno de los más bonitos que podemos ver en el mundo del formato medio. Esta cámara tiene los mandos justos para poder hacer una foto. No hay concesiones al mundo digital. Frente a las cámaras que cuentan con mil y un botones por el cuerpo, la Hasselblad X1D II 50c es austera, minimalista, mínima, dentro de un cuerpo rotundo.\r\n\r\nEsta cámara tiene los mandos justos para poder hacer una foto. No hay concesiones al mundo digital.\r\n\r\nLos botones son los imprescindibles y están perfectamente integrados al lado de la gran pantalla táctil. Son grandes y visibles, con un relieve pintado de blanco que estará ahí a pesar de un uso continuado.\r\n', 'Y aquí llega el talón de Aquiles de esta cámara. El modelo anterior era muy lenta. Extremadamente lenta, además de bastante más cara. Seguramente el objetivo de esta nueva versión era solucionar ese problema. ¿Lo han conseguido? ¿El enfoque automático es más rápido?\r\n\r\nEsta cámara no destaca por el sistema de enfoque automático. No es rápida en absoluto. No tiene un sistema avanzado similar a otros modelos más económicos del mercado. Pero no lo necesita. La Hasselblad juega en otra liga. Y de nuevo depende del que se la lleve al ojo.\r\nLa opinión de Xataka Foto\r\n\r\nLa Hasselblad X1D II 50c es una cámara para aquellos fotógrafos que quieren y pueden permitirse lo mejor. En los tiempos que corren poca gente apreciará la calidad que puede llegar a ofrecer. Lo importante es el gusto que supone disparar con ella.\r\nX1d Ii 50c 63 Mm Iso 100 10 0 Seg En F 63 Mm Iso 100 10 sg f16\r\n\r\nDurante las pruebas he salido siempre con un trípode. No es necesario por su ergonomía, pero el gran tamaño del sensor obliga para conseguir disparos nítidos y perfectos. En la mano trasmite seguridad pero con tal número de píxeles la seguridad en el disparo es fundamental.\r\nX1d Ii 50c 63 Mm Iso 100 1 20 Seg En F 63 Mm Iso 100 1/20 f11\r\n\r\nLo único que le falta es ofrecer la posibilidad de ver el histograma en directo. Es verdad que sería una licencia a su espíritu pero alguna que otra licencia viene bien. A lo mejor el complemento perfecto sería salir con el fotómetro en el bolsillo pero sería exagerado ¿o no?.\r\n\r\nRespecto al modelo anterior tiene bastantes mejoras como la resolución de la pantalla y el visor electrónico. Pero sobre todo destaca ese aumento de velocidad en el funcionamiento y el autoenfoque. Puede que no parezca suficiente para los estándares actuales pero es más que suficiente para los que sepan lo que quieren.\r\nX1d Ii 50c 63 Mm Iso 100 1 100 Seg En F 63 Mm Iso 100 1/100 f16\r\n\r\nEste nuevo modelo tiene la misma base, por lo que la calidad de imagen es idéntica. No han buscado llamar la atención con un sensor espectacular, sino atraer al público por la bajada de precio. Solo cuesta un poco más que una Sony A7R IV, por ejemplo.\r\n\r\nUn equipo completo de formato medio cambia tu concepción de la fotografía, además del halo que te rodea cuando te ven con una.\r\n\r\n¿Merece la pena entonces? Creo que es una cuestión personal. Si tienes el modelo anterior ganas velocidad. Si quieres adentrarte en el mundo del formato medio sería una entrada espectacular. Un equipo completo de formato medio cambia tu concepción de la fotografía, además del halo que te rodea cuando te ven con una. Pero esto debería darnos igual ¿no?\r\n\r\nPuedes notar el salto de calidad pero es más evidente cuando puedes compararla con una fotografía idéntica realizada con sensor FF. Trabajar con formato medio exige pensar de otra forma a la hora de jugar con los diafragmas, con los pasos de rango dinámico con los que puedes contar a la hora de revelar.\r\n\r\n'),
(6, 'Sony A6600', 'cambia la forma de trabajar. No tanto como para escribir un libro específico (algo que no merece ningún tipo de cámara salvo las de banco). Solo tenemos que recordar que cambian nuestra relación con las velocidades y el uso del diafragma para jugar con la profundidad de campo.\r\n\r\nLas cámaras de formato medio se caracterizan por el mayor tamaño del sensor y todo lo que conlleva: cuerpos más grandes, más peso y volumen... todo parece indicar que es necesario el trípode para evitar fotos trepidadas. Esto es algo que, en teoría, se ha superado con la Hasselblad X1D II 50c.\r\nEstamos ante una cámara que intenta olvidar la aparente falta de ergonomía del formato medio y apuesta por la ergonomía de las sin espejo. Recuerda más a una Pentax 67 -sin aquel brutal pentaprisma- que a las espartanas Hasselblad cuadradas. Y se mire por donde se mire, es un acierto. \r\nEl diseño de esta Hasselblad es uno de los más bonitos que podemos ver en el mundo del formato medio. Esta cámara tiene los mandos justos para poder hacer una foto. No hay concesiones al mundo digital. Frente a las cámaras que cuentan con mil y un botones por el cuerpo, la Hasselblad X1D II 50c es austera, minimalista, mínima, dentro de un cuerpo rotundo.\r\n\r\nEsta cámara tiene los mandos justos para poder hacer una foto. No hay concesiones al mundo digital.\r\n\r\nLos botones son los imprescindibles y están perfectamente integrados al lado de la gran pantalla táctil. Son grandes y visibles, con un relieve pintado de blanco que estará ahí a pesar de un uso continuado.\r\n', 'Y aquí llega el talón de Aquiles de esta cámara. El modelo anterior era muy lenta. Extremadamente lenta, además de bastante más cara. Seguramente el objetivo de esta nueva versión era solucionar ese problema. ¿Lo han conseguido? ¿El enfoque automático es más rápido?\r\n\r\nEsta cámara no destaca por el sistema de enfoque automático. No es rápida en absoluto. No tiene un sistema avanzado similar a otros modelos más económicos del mercado. Pero no lo necesita. La Hasselblad juega en otra liga. Y de nuevo depende del que se la lleve al ojo.\r\nLa opinión de Xataka Foto\r\n\r\nLa Hasselblad X1D II 50c es una cámara para aquellos fotógrafos que quieren y pueden permitirse lo mejor. En los tiempos que corren poca gente apreciará la calidad que puede llegar a ofrecer. Lo importante es el gusto que supone disparar con ella.\r\nX1d Ii 50c 63 Mm Iso 100 10 0 Seg En F 63 Mm Iso 100 10 sg f16\r\n\r\nDurante las pruebas he salido siempre con un trípode. No es necesario por su ergonomía, pero el gran tamaño del sensor obliga para conseguir disparos nítidos y perfectos. En la mano trasmite seguridad pero con tal número de píxeles la seguridad en el disparo es fundamental.\r\nX1d Ii 50c 63 Mm Iso 100 1 20 Seg En F 63 Mm Iso 100 1/20 f11\r\n\r\nLo único que le falta es ofrecer la posibilidad de ver el histograma en directo. Es verdad que sería una licencia a su espíritu pero alguna que otra licencia viene bien. A lo mejor el complemento perfecto sería salir con el fotómetro en el bolsillo pero sería exagerado ¿o no?.\r\n\r\nRespecto al modelo anterior tiene bastantes mejoras como la resolución de la pantalla y el visor electrónico. Pero sobre todo destaca ese aumento de velocidad en el funcionamiento y el autoenfoque. Puede que no parezca suficiente para los estándares actuales pero es más que suficiente para los que sepan lo que quieren.\r\nX1d Ii 50c 63 Mm Iso 100 1 100 Seg En F 63 Mm Iso 100 1/100 f16\r\n\r\nEste nuevo modelo tiene la misma base, por lo que la calidad de imagen es idéntica. No han buscado llamar la atención con un sensor espectacular, sino atraer al público por la bajada de precio. Solo cuesta un poco más que una Sony A7R IV, por ejemplo.\r\n\r\nUn equipo completo de formato medio cambia tu concepción de la fotografía, además del halo que te rodea cuando te ven con una.\r\n\r\n¿Merece la pena entonces? Creo que es una cuestión personal. Si tienes el modelo anterior ganas velocidad. Si quieres adentrarte en el mundo del formato medio sería una entrada espectacular. Un equipo completo de formato medio cambia tu concepción de la fotografía, además del halo que te rodea cuando te ven con una. Pero esto debería darnos igual ¿no?\r\n\r\nPuedes notar el salto de calidad pero es más evidente cuando puedes compararla con una fotografía idéntica realizada con sensor FF. Trabajar con formato medio exige pensar de otra forma a la hora de jugar con los diafragmas, con los pasos de rango dinámico con los que puedes contar a la hora de revelar.\r\n\r\n'),
(7, 'Canon Powershot G5 X Mark II', 'En la toma de contacto ya hablamos largo y tendido sobre el cambio de look de la cámara respecto a su antecesora. Un cambio bastante profundo que ha supuesto perder ese diseño a lo “réflex en miniatura” que ahora se reserva para la Canon PowerShot G1 X Mark III. Un modelo que, eso sí, tiene sensor APS-C y que, curiosamente, en su anterior versión también lucía un cuerpo compacto. Así, con este cambio la marca parece dejar clara la diferencia entre el modelo superior (G1 X) y los inferiores (G3 X y G5 X).\r\n\r\nSea como fuere, el cambio en el diseño de la G5 X Mark II es bastante importante e incluye la incorporación de un flash retráctil y, por primera vez en Canon, de un visor escamoteable que la hace, ahora sí, una cámara realmente de bolsillo (aunque no es especialmente pequeña) sin renunciar al EVF. Un cambio que puede parecer más o menos lógico, pero que permite a Canon competir con el que sería su rival más directo en el sector de las compactas premium para viajeros, la Sony RX100 VII.\r\nEso sí, mientras que el visor de la Sony sólo necesita un paso para estar operativo, el de la Canon precisa de dos pasos, tal y como ocurría en las primeras versiones de la Sony que lucían esta característica (hasta la RX100 III). Por lo demás, aunque ambas cámaras tienen un diseño que se asemeja bastante, la Canon que tenemos entre manos es algo más grande y también se diferencia por sus “protuberancias”.\r\nLas otras protuberancias serían la del disparador (bastante alto) y el de la “doble” rueda de control principal (que agrupa las dos —rueda de modos y de compensación de exposición— del modelo anterior), que también sobresale por arriba. Por lo demás, el anillo multifunción que circunda al objetivo es un elemento “compartido” con su rival, la Sony. Por cierto que en este caso tiene un tacto quizá demasiado blando al ser accionado.\r\n\r\nPor otro lado, las láminas que protegen el objetivo cuando está cerrado emiten un sonido metálico al “agitar” la cámara, algo que resulta poco agradable (puede dar la impresión de que algo está roto por dentro), aunque es cierto que podría ser un problema exclusivo de la unidad probada. A pesar de todo, el cuerpo es bastante compacto aunque, como ya decimos, no es pequeño, y está muy bien acabado y es agradable de sujetar. ', 'De todos modos, sin duda es uno de los apartados que Canon debe mejorar en posteriores modelos, porque siguen siendo una cifras modestas para unas cámaras diseñadas para viajar y que, por tanto, te ponen en un aprieto si no llevas repuesto y te quedas tirado en mitad de una jornada. Eso sí, la opción de carga directa vía USB es una novedad interesante, ya que permite que se pueda recurrir a las baterías portátiles.\r\n\r\nPor lo que toca a la conectividad, como ya contamos la marca está abandonando el NFC y ofrece WiFi y Bluetooth de bajo consumo con la opción de volcado automático de imágenes. Una opción que no fuimos capaces de utilizar ya que la conexión “se nos resistió”.\r\n\r\nSeguramente quien se haya comprado la cámara tendrá más paciencia para lograrlo, pero es algo que debería ser sencillo de realizar y, de momento, sigue sin ser así. Menos mal que la conexión por WiFi sí fue bastante sencilla, y además nos permitió no sólo traspasar fotos sino también manejar la cámara desde el móvil, manejo del zoom incluido.\r\nPor último, en el terreno del vídeo hay que recordar que, cuando se presentó junto a la G7 X Mark III, la marca dejó claro que ese modelo estaba muy orientado a la imagen en movimiento, con lo que ofrecía opciones que aquí no están presentes como el minijack para micrófono o la posibilidad de hacer streaming en vivo y de forma directa en YouTube.\r\n\r\nCosas que, evidentemente son bastante específicas para cierto tipo de usuario pero que no hubiera estado de más ofrecer aquí también (siendo un modelo más caro). Por cierto que, como su hermana, la Powershot G5 X se presentó sin opción de grabación de vídeo en 24p, característica que la marca ya se anunció que se ofrecería vía actualización. En cualquier caso, y aunque no es algo que hayamos probado a fondo (como siempre), la calidad de vídeo nos ha parecido bastante buena y se agradece que por fin Canon ofrezca grabación 4K a 30p sin recorte de píxeles. \r\nLlegamos por fin al apartado más crucial de todo análisis, y por supuesto de éste, y hablar del resultado de las tomas realizadas con la cámara. Y para ello, cómo no, hay que recordar que, aunque se haya renovado, el sensor sigue siendo básicamente el mismo que la generación anterior por lo que los resultados no han variado mucho. También que estamos hablando de un sensor de una pulgada, un tamaño bastante grande para una compacta pero lejos de los sensores de cámaras superiores.\r\n\r\nAsí las cosas, tal y como nos ocurrió con la G7 X Mark III, las fotos resultantes (directamente en JPEG) nos han parecido bastante logradas en general, con una buena calidad de imagen, buen contraste y aceptable rango dinámico (uno de los puntos flojos de ese tipo de sensores), y una reproducción bastante realista del color, tal y como nos tiene acostumbrados la casa. \r\nSiguiendo con la comparación, seguramente también queda por debajo en cuanto al tamaño, la capacidad de enfoque en movimiento y la velocidad de disparo, donde la Sony sigue siendo referencia a pesar de que el modo ráfaga RAW de la G5 X Mark II resulta muy interesante para ciertas situaciones. Por contra, la Canon vence claramente en cuanto al agarre, ya que su cuerpo es mucho más seguro y agradable de sujetar, y también tiene un precio de salida menor que la Sony (990 frente a 1.300 euros).\r\n\r\nA pesar de todo ello, mirando el modelo analizado de la forma más objetiva que somos capaces, y abstrayéndonos de la comparación, estamos ante una cámara realmente atractiva para los fines que ya hemos comentado; a saber, llevar de viaje una cámara que nos permita opciones avanzadas y nos ofrezca calidad de imagen sin que ocupe mucho, algo que la Canon PowerShot G5 X Mark II cumple sin duda. '),
(8, 'Sony A9 II', 'En la toma de contacto ya hablamos largo y tendido sobre el cambio de look de la cámara respecto a su antecesora. Un cambio bastante profundo que ha supuesto perder ese diseño a lo “réflex en miniatura” que ahora se reserva para la Canon PowerShot G1 X Mark III. Un modelo que, eso sí, tiene sensor APS-C y que, curiosamente, en su anterior versión también lucía un cuerpo compacto. Así, con este cambio la marca parece dejar clara la diferencia entre el modelo superior (G1 X) y los inferiores (G3 X y G5 X).\r\n\r\nSea como fuere, el cambio en el diseño de la G5 X Mark II es bastante importante e incluye la incorporación de un flash retráctil y, por primera vez en Canon, de un visor escamoteable que la hace, ahora sí, una cámara realmente de bolsillo (aunque no es especialmente pequeña) sin renunciar al EVF. Un cambio que puede parecer más o menos lógico, pero que permite a Canon competir con el que sería su rival más directo en el sector de las compactas premium para viajeros, la Sony RX100 VII.\r\nEso sí, mientras que el visor de la Sony sólo necesita un paso para estar operativo, el de la Canon precisa de dos pasos, tal y como ocurría en las primeras versiones de la Sony que lucían esta característica (hasta la RX100 III). Por lo demás, aunque ambas cámaras tienen un diseño que se asemeja bastante, la Canon que tenemos entre manos es algo más grande y también se diferencia por sus “protuberancias”.\r\nLas otras protuberancias serían la del disparador (bastante alto) y el de la “doble” rueda de control principal (que agrupa las dos —rueda de modos y de compensación de exposición— del modelo anterior), que también sobresale por arriba. Por lo demás, el anillo multifunción que circunda al objetivo es un elemento “compartido” con su rival, la Sony. Por cierto que en este caso tiene un tacto quizá demasiado blando al ser accionado.\r\n\r\nPor otro lado, las láminas que protegen el objetivo cuando está cerrado emiten un sonido metálico al “agitar” la cámara, algo que resulta poco agradable (puede dar la impresión de que algo está roto por dentro), aunque es cierto que podría ser un problema exclusivo de la unidad probada. A pesar de todo, el cuerpo es bastante compacto aunque, como ya decimos, no es pequeño, y está muy bien acabado y es agradable de sujetar. ', 'De todos modos, sin duda es uno de los apartados que Canon debe mejorar en posteriores modelos, porque siguen siendo una cifras modestas para unas cámaras diseñadas para viajar y que, por tanto, te ponen en un aprieto si no llevas repuesto y te quedas tirado en mitad de una jornada. Eso sí, la opción de carga directa vía USB es una novedad interesante, ya que permite que se pueda recurrir a las baterías portátiles.\r\n\r\nPor lo que toca a la conectividad, como ya contamos la marca está abandonando el NFC y ofrece WiFi y Bluetooth de bajo consumo con la opción de volcado automático de imágenes. Una opción que no fuimos capaces de utilizar ya que la conexión “se nos resistió”.\r\n\r\nSeguramente quien se haya comprado la cámara tendrá más paciencia para lograrlo, pero es algo que debería ser sencillo de realizar y, de momento, sigue sin ser así. Menos mal que la conexión por WiFi sí fue bastante sencilla, y además nos permitió no sólo traspasar fotos sino también manejar la cámara desde el móvil, manejo del zoom incluido.\r\nPor último, en el terreno del vídeo hay que recordar que, cuando se presentó junto a la G7 X Mark III, la marca dejó claro que ese modelo estaba muy orientado a la imagen en movimiento, con lo que ofrecía opciones que aquí no están presentes como el minijack para micrófono o la posibilidad de hacer streaming en vivo y de forma directa en YouTube.\r\n\r\nCosas que, evidentemente son bastante específicas para cierto tipo de usuario pero que no hubiera estado de más ofrecer aquí también (siendo un modelo más caro). Por cierto que, como su hermana, la Powershot G5 X se presentó sin opción de grabación de vídeo en 24p, característica que la marca ya se anunció que se ofrecería vía actualización. En cualquier caso, y aunque no es algo que hayamos probado a fondo (como siempre), la calidad de vídeo nos ha parecido bastante buena y se agradece que por fin Canon ofrezca grabación 4K a 30p sin recorte de píxeles. \r\nLlegamos por fin al apartado más crucial de todo análisis, y por supuesto de éste, y hablar del resultado de las tomas realizadas con la cámara. Y para ello, cómo no, hay que recordar que, aunque se haya renovado, el sensor sigue siendo básicamente el mismo que la generación anterior por lo que los resultados no han variado mucho. También que estamos hablando de un sensor de una pulgada, un tamaño bastante grande para una compacta pero lejos de los sensores de cámaras superiores.\r\n\r\nAsí las cosas, tal y como nos ocurrió con la G7 X Mark III, las fotos resultantes (directamente en JPEG) nos han parecido bastante logradas en general, con una buena calidad de imagen, buen contraste y aceptable rango dinámico (uno de los puntos flojos de ese tipo de sensores), y una reproducción bastante realista del color, tal y como nos tiene acostumbrados la casa. \r\nSiguiendo con la comparación, seguramente también queda por debajo en cuanto al tamaño, la capacidad de enfoque en movimiento y la velocidad de disparo, donde la Sony sigue siendo referencia a pesar de que el modo ráfaga RAW de la G5 X Mark II resulta muy interesante para ciertas situaciones. Por contra, la Canon vence claramente en cuanto al agarre, ya que su cuerpo es mucho más seguro y agradable de sujetar, y también tiene un precio de salida menor que la Sony (990 frente a 1.300 euros).\r\n\r\nA pesar de todo ello, mirando el modelo analizado de la forma más objetiva que somos capaces, y abstrayéndonos de la comparación, estamos ante una cámara realmente atractiva para los fines que ya hemos comentado; a saber, llevar de viaje una cámara que nos permita opciones avanzadas y nos ofrezca calidad de imagen sin que ocupe mucho, algo que la Canon PowerShot G5 X Mark II cumple sin duda. '),
(9, 'Canon EOS M6 Mark II', 'La Canon EOS M6 Mark II es la nueva cámara sin espejo de Canon que tiene una hermana gemela réflex, la Canon EOS 90D. Es más pequeña y tiene exactamente el mismo sensor CMOS de formato APS-C de 32,5 megapíxeles, pero no tiene visor y su batería aguanta muchos menos disparos. Vamos a analizarla en Xataka Foto para explicar todas sus virtudes y ver si tiene algún defecto.\r\n\r\nEl mercado fotográfico está patas arriba. Ahora todo el mundo apuesta por una cámara sin espejo o por un teléfono móvil. Las réflex están condenadas a desaparecer, salvo si miramos el mundo profesional, donde aún resisten fuertes (en los próximos JJOO descubriremos si la Sony A9II tiene algo que contar).\r\n\r\nPor este motivo llama la atención la apuesta de presentar la misma cámara en dos formatos diferentes. Es verdad que son opciones distintas, que una tiene visor óptico y otra necesita un adaptador de visor electrónico, por poner solo un ejemplo. Pero ambas comparten el mismo procesador e idéntico sensor; el Digic 8 y un CMOS de 32,5 megapíxeles que llega hasta los 25600 ISO. Y eso es lo más importante.\r\nAsí cada usuario puede elegir el cuerpo que más le interese. El clásico de una réflex con sus ventajas o el más novedoso de la EOS M6 Mark II, mucho más ligero y compacto. Con sus virtudes y sus problemas.\r\n\r\nPorque no existe un equipo perfecto. No hay un tipo de cámara mejor que otro. No tiene sentido decir si es mejor una réflex, una sin espejo o un teléfono. Cada fotógrafo necesitará, según las circunstancias, una u otra. Y los buenos se arreglarán con todo.\r\n\r\nApostar por la Canon EOS M6 MarkII es una buena idea. Es una cámara pequeña, con un sensor de tamaño APS-C y con las mismas opciones de control que una profesional. Parece que tenemos más ventajas que desventajas. Vamos a ver a continuación si esta es la realidad.\r\nEstamos ante una cámara sin espejo con un sensor APS-C de 32,5 MP. Es un cuerpo compacto con la nueva montura EOS EF-M de Canon y sin visor electrónico ni óptico. Vamos a ver cuáles son sus especificaciones:', 'No es una cámara profesional. Y eso se nota en ciertos acabados, como insistir en poner en la misma trampilla la batería y la tarjeta de memoria, con todos los problemas que supone y la falta de seguridad que trasmite.\r\n\r\n... es una cámara que aguanta perfectamente el trasiego del día a día siempre que la tratemos como se merece.\r\n\r\nSin embargo es una cámara que aguanta perfectamente el trasiego del día a día siempre que la tratemos como se merece. Es decir, no podemos llevarla a un circuito de mountain bike lleno de barro y pretender que sobreviva bajo una lluvia incesante, pero es perfecta para cualquier viaje o para llevarla en la mochila todo el día.\r\nEso sí, es pequeña. Y los que tenemos las manos grandes nos cuesta encontrar los botones. Están bien dimensionados pero se puede perder entre nuestras manos. Es la paradoja de las cámaras sin espejo. No queremos peso ni volumen pero no podemos evitar quejarnos cuando lo tenemos. Personalmente prefiero algo más grande para trabajar.\r\n\r\nEl acceso a todas las funciones es rápido y ágil. Y los menús son tan buenos como de costumbre en Canon. Son muchos años diseñando una buena interfaz y no son tan complicados como los de Sony u Olympus, por poner dos ejemplos.\r\nY como podemos ver, este nuevo sensor responde sin problemas hasta ISO 3200. Incluso un paso más si no necesitamos un gran detalle o pasamos el archivo por algún filtro de reducción de ruido. ¿De verdad necesitamos más? ¿Nos vamos a llevar las manos a la cabeza por no poder utilizar 12800 ISO?\r\n\r\nNo estamos con un sensor de formato completo en una cámara profesional. La mayoría de nuestros trabajos podemos hacerlos con un rango 100-3200 ISO. Y pocas veces necesitamos más. Y si realmente nos hace falta este tipo de sensor no es para nosotros.\r\nEs una de las mejores cámaras de gama media que podemos encontrar en el mercado. Es pequeña, tiene un precio atractivo (989.99€ el cuerpo o 1269.99€ con el visor electrónico y objetivo 15-45 mm). que se terminará ajustando con el tiempo y ofrece una calidad de imagen soberbia con los objetivos adecuados.\r\n\r\nTeniendo en cuenta la gama en la que se sitúa podemos perdonar ciertas cosas. Es una cámara que hace bien todo pero que no mejora a ninguna de sus competidoras, como la Sony A6400 o la Fuji X-T30, dos modelos semejantes. Y es que no todo el mundo necesita lo mejor, simplemente que funcione bien y le facilite el trabajo.\r\n\r\nEs una cámara que hace bien todo pero que no mejora a ninguna de sus competidoras, como la Sony A6400 o la Fuji X-T30, dos modelos semejantes\r\n\r\nTiene enfoque al ojo, graba en 4K, puede disparar hasta 14 fps con seguimiento de enfoque, es pequeña, puede aprovechar todos nuestros objetivos Canon EF... Es una cámara para entrar con garantías en el mundo de las sin espejo.\r\nCanon Eos M6 Mark Ii Iso 100 1 80 Seg En F 5 Iso 100 1/80 f5.6\r\n\r\nEs perfecta para los que quieren buena calidad sin complicaciones. Para los que saben que solo necesitan una cámara perfecta para viajar y fotografiar las maravillas naturales o los monumentos que les rodean. O para retratar a nuestros acompañantes. Y por supuesto para empezar a hacer nuestros pinitos en el mundo vloggers.\r\n\r\nY si tienes una cámara más grande y necesitas algo para el día a día, para llevarla en el bolsillo, la Canon EOS M6 Mark II deberías tenerla en cuenta. Equipada con un buen objetivo tus fotografías serán dignas de mención.'),
(10, 'prueba', 'hfdgh', 'dfghdfgh'),
(11, 'PRUEBA2', 'Probanod tres cuatro', 'buenas'),
(12, 'sony x234', 'es una buena camara', 'Yo me la compraría'),
(13, 'Canon COVID19', 'Aenean in egestas ante. Praesent rhoncus vehicula nunc vel consectetur. Vivamus fringilla commodo enim, eget feugiat mauris dignissim eget. Sed venenatis arcu neque. Cras egestas viverra tellus non volutpat. Proin ipsum libero, venenatis quis nisi sed, molestie euismod odio. Suspendisse potenti. Nam sed enim viverra, fermentum diam ac, interdum dui. Phasellus vitae felis ullamcorper dui faucibus efficitur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec tellus elit, pharetra ac ipsum non, ultrices molestie libero. Morbi id massa in ex maximus lacinia vitae vitae sapien. Fusce ultrices magna ut mauris lacinia scelerisque. Sed a purus eu sem scelerisque vestibulum. Nam aliquet ac nunc et aliquet. ', 'Aenean in egestas ante. Praesent rhoncus vehicula nunc vel consectetur. Vivamus fringilla commodo enim, eget feugiat mauris dignissim eget. Sed venenatis arcu neque. Cras egestas viverra tellus non volutpat. Proin ipsum libero, venenatis quis nisi sed, molestie euismod odio. Suspendisse potenti. Nam sed enim viverra, fermentum diam ac, interdum dui. Phasellus vitae felis ullamcorper dui faucibus efficitur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec tellus elit, pharetra ac ipsum non, ultrices molestie libero. Morbi id massa in ex maximus lacinia vitae vitae sapien. Fusce ultrices magna ut mauris lacinia scelerisque. Sed a purus eu sem scelerisque vestibulum. Nam aliquet ac nunc et aliquet. '),
(15, 'sony Ultra mega X', 'Ut congue purus magna, sit amet iaculis dui vulputate vel. Duis fermentum turpis auctor bibendum tincidunt. Sed dapibus turpis eget dolor porta finibus. Vestibulum at tristique erat, nec porta diam. Nunc tristique eleifend finibus. Suspendisse maximus purus tellus, ac efficitur lectus tincidunt eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas arcu mauris, fringilla quis rutrum nec, dictum vitae arcu. In hac habitasse platea dictumst. Mauris est sem, pulvinar at sagittis in, commodo ut neque. ', 'Ut congue purus magna, sit amet iaculis dui vulputate vel. Duis fermentum turpis auctor bibendum tincidunt. Sed dapibus turpis eget dolor porta finibus. Vestibulum at tristique erat, nec porta diam. Nunc tristique eleifend finibus. Suspendisse maximus purus tellus, ac efficitur lectus tincidunt eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas arcu mauris, fringilla quis rutrum nec, dictum vitae arcu. In hac habitasse platea dictumst. Mauris est sem, pulvinar at sagittis in, commodo ut neque. '),
(34, 'sony Ultra Mega 500', ' Aenean a pharetra mi. Morbi dapibus congue vehicula. Sed sapien nibh, pulvinar quis augue et, volutpat euismod dolor. Maecenas lacinia nec nulla eu condimentum. Vivamus porttitor ullamcorper convallis. Vestibulum efficitur diam vel purus dapibus mollis. Pellentesque tortor turpis, eleifend non ullamcorper quis, fringilla ac nulla. Curabitur tincidunt mattis imperdiet. Phasellus vitae odio vitae justo pulvinar elementum vel et nunc. Donec nec justo est. ', ' Integer mi velit, porttitor sit amet massa sed, vestibulum commodo velit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam eu consequat mi, at pellentesque arcu. Mauris tincidunt, urna eget blandit convallis, quam arcu accumsan lectus, sit amet sollicitudin justo enim eu erat. Cras faucibus feugiat libero congue tristique. Quisque laoreet, quam vel ullamcorper maximus, nulla augue egestas massa, egestas condimentum lorem lacus sit amet sem. Integer ipsum metus, fermentum vel purus nec, molestie vulputate lectus. Nullam aliquet luctus metus, non semper velit. Pellentesque lacinia maximus orci, non pretium nulla rhoncus mattis. Aenean sagittis orci posuere odio mattis ullamcorper. '),
(35, 'Canon Sony Pro 32', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pretium ipsum a metus imperdiet consequat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam ultricies consectetur risus ut fringilla. Donec aliquet congue mauris. Etiam pellentesque ex ut erat semper placerat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc iaculis quis tortor eu finibus. Morbi quis velit aliquet, tincidunt justo sed, commodo turpis. Nunc a tempor leo. Morbi maximus, purus at congue eleifend, turpis mauris commodo mauris, ut molestie sem felis vel ipsum. Aliquam rhoncus augue at luctus tincidunt. Proin quis eros mauris. ', ' Pellentesque quis tortor ac turpis finibus tincidunt. Suspendisse ultrices diam in suscipit commodo. Integer turpis mi, malesuada at diam eu, pretium aliquam magna. Phasellus hendrerit bibendum leo, sed porta mi tincidunt vel. Sed congue lectus nec turpis faucibus, vitae pretium magna facilisis. Donec consequat sodales varius. Nunc arcu nisl, aliquam quis efficitur ac, scelerisque eget risus. Nulla non sem vehicula, condimentum nibh ut, volutpat massa. Sed aliquam, urna vitae mattis congue, diam lectus ultrices purus, ut facilisis leo mi et tellus. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int NOT NULL,
  `ruta_imagen` varchar(200) NOT NULL,
  `id_evento` int NOT NULL,
  `pie_foto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `ruta_imagen`, `id_evento`, `pie_foto`) VALUES
(1, '../imagenes/1.jpg', 1, 'Camara vista de frente, derechos reservados a Xatakafotos'),
(2, '../imagenes/2.jpg', 1, 'Sony A6100 con el objetivo E PZ 16-50 mm, derechos reservados a Xatakafotos'),
(3, '../imagenes/3.jpg', 2, ' Vista de la cámara '),
(4, '../imagenes/4.jpg', 2, 'Canon Eos M200 Iso 100 1/800 f7,1 , derechos reservados a Xatakafotos'),
(5, '../imagenes/5.jpg', 3, 'Vista de la cámara desde arriba'),
(6, '../imagenes/6.jpg', 3, 'Leica Q2 @ f/8; 1/250 s; ISO 800 , derechos reservados a Xatakafotos'),
(7, '../imagenes/7.jpg', 4, 'Con un 400 mm '),
(8, '../imagenes/8.jpg', 4, 'Canon Eos 1d X Mark III Iso1600 f2,8 1/500 '),
(9, '../imagenes/9.jpg', 5, 'La camara posando'),
(10, '../imagenes/10.jpg', 5, '63 Mm Iso 100 1/80 f16 '),
(11, '../imagenes/11.jpg', 6, 'La camara desde frente'),
(12, '../imagenes/12.jpg', 6, 'Sony A6600 a 1/250 seg, ƒ5.6, ISO 200'),
(13, '../imagenes/13.jpg', 7, 'Vista de la camara'),
(14, '../imagenes/14.jpg', 7, ' Canon Powershot G5 X Mark II a 1/250 seg, ƒ6.3, ISO 125 con el objetivo en 44 mm '),
(15, '../imagenes/15.jpg', 8, 'Vista de la camara'),
(16, '../imagenes/16.jpg', 8, 'Sony A9 II a 1/500 seg, ƒ3.5 ISO 3.200 '),
(17, '../imagenes/17.jpg', 9, 'Un buen conjunto '),
(18, '../imagenes/18.jpg', 9, 'Iso 100 1/320 f8 '),
(54, '../imagenes/eventos/evento34/1.jpg', 34, NULL),
(55, '../imagenes/eventos/evento34/3.jpg', 34, NULL),
(56, '../imagenes/eventos/evento34/4.jpg', 34, NULL),
(57, '../imagenes/eventos/evento34/5.jpg', 34, NULL),
(58, '../imagenes/eventos/evento35/5.jpg', 35, NULL),
(59, '../imagenes/eventos/evento35/6.svg', 35, NULL),
(60, '../imagenes/eventos/evento35/7.jpg', 35, NULL),
(61, '../imagenes/eventos/evento35/8.jpg', 35, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabrasBaneadas`
--

CREATE TABLE `palabrasBaneadas` (
  `palabra` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `palabrasBaneadas`
--

INSERT INTO `palabrasBaneadas` (`palabra`) VALUES
('chocho'),
('culo'),
('franco'),
('fuck'),
('gilipollas'),
('gordo'),
('hitler'),
('joder'),
('pene'),
('teta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nick` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido1` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tipo` int NOT NULL,
  `pass` varchar(200) NOT NULL,
  `avatar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nick`, `apellido1`, `email`, `tipo`, `pass`, `avatar`) VALUES
('Antonio', 'Garcia', 'prueba3@gmail.com', 0, '$2y$10$6rkaVC8fdfcdvhhfloE2m.ZA4n0Xny18OZy54DRiFeCZzszw7Dm6a', 'imagenes/avatares/8.jpg'),
('David', 'Sanchez', 'realmadrid23@hotmail.es', 0, '$2y$10$Vcz4DK8I47s7e3l1xoQy6.qAXXtkZPArPkG/K7YOyvhHp8ZftT5Zy', 'imagenes/avatares/15.jpg'),
('Jose', 'Santos', 'josess09@hotmail.es', 0, '$2y$10$l5qTB6sG10PfLTK2LSEBGu9T5w7h7UdXK7r2/06acuVt6DQ/ZsG46', 'imagenes/avatares/1.jpg'),
('Juan', 'Garcia', 'garci@gmail.com', 0, '$2y$10$l5qTB6sG10PfLTK2LSEBGu9T5w7h7UdXK7r2/06acuVt6DQ/ZsG46', ''),
('Lucia', 'Lopez', 'luci3@gmail.com', 0, '12$2y$10$l5qTB6sG10PfLTK2LSEBGu9T5w7h7UdXK7r2/06acuVt6DQ/ZsG4634', ''),
('Manolo', 'Perez', 'perez22@gmail.com', 2, '$2y$10$l5qTB6sG10PfLTK2LSEBGu9T5w7h7UdXK7r2/06acuVt6DQ/ZsG46', 'imagenes/avatares/1.jpg'),
('Pepe', 'Salvador', 'santossalvador99@gmail.com', 1, '$2y$10$l5qTB6sG10PfLTK2LSEBGu9T5w7h7UdXK7r2/06acuVt6DQ/ZsG46', 'imagenes/avatares/1.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `nombre` (`nombre`);

--
-- Indices de la tabla `comentarios2`
--
ALTER TABLE `comentarios2`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`modelo`),
  ADD KEY `idEvento` (`idEvento`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `fk_id_evento` (`id_evento`);

--
-- Indices de la tabla `palabrasBaneadas`
--
ALTER TABLE `palabrasBaneadas`
  ADD PRIMARY KEY (`palabra`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `comentarios2`
--
ALTER TABLE `comentarios2`
  MODIFY `id_comentario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`nombre`) REFERENCES `usuarios` (`nick`);

--
-- Filtros para la tabla `comentarios2`
--
ALTER TABLE `comentarios2`
  ADD CONSTRAINT `id_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id`);

--
-- Filtros para la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD CONSTRAINT `etiquetas_ibfk_1` FOREIGN KEY (`idEvento`) REFERENCES `eventos` (`id`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_id_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
