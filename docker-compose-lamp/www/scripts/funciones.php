<?php
  require_once 'bd.php';

  addComentarios($_POST['id'],$_POST['nombre'],$_POST['texto']);
  $evento = getEvento($_POST['id']);

  echo $twig->render('evento.html', ['evento' => $evento, 'comentario1' => $comentario1, 'comentario2' => $comentario2, 'palabras' => $palabras, 'id_evento' => $idEvento]);

?>