<?php

require_once 'obtener_evento.php';

echo $twig->render('imprimir.html', ['evento' => $evento, 'palabras' => $palabras]);

?>