<?php

  require_once 'bd.php';

  $fechaEvento = "Fecha por defecto";

  $resto = substr($uri, 8);
  
  $idEvento = intval($resto);

  $evento = getEvento($idEvento);

  if(isset($_GET['busqueda']))
  {
    $coincidencias = $_GET['busqueda'];

    $res = "<strong>".$coincidencias."</strong>";
    $evento['analisis'] = str_ireplace($coincidencias,$res,$evento['analisis']);
    $evento['conclusiones'] = str_ireplace($coincidencias,$res,$evento['conclusiones']);
    $evento['modelo'] = str_ireplace($coincidencias,$res,$evento['modelo']);
 
  }

  /* son los controladores */


  // $comentarios = getComentarios($idEvento);
  // $comentario1 = array('nombre' => 'prueba');
  // $comentario2 = array('nombre' => 'prueba');
  
  // $row = $comentarios->fetch_assoc();
  // $comentario1 = array('nombre' => $row['nombre'], 'comentario' => $row['comentario'],'fecha' => $row['fecha'], 'hora' => $row['hora']);
  // $row = $comentarios->fetch_assoc();
  // $comentario2 = array('nombre' => $row['nombre'], 'comentario' => $row['comentario'],'fecha' => $row['fecha'], 'hora' => $row['hora']);
  // #no lo he hecho en en la funcion getEvento lo de los comnetarios por si hubiera muchisimos comentarios.
  
  $words = getPalabrasBaneadas();

  $palabras = array();

  while($row = $words->fetch_assoc()){
    $palabras[] = $row['palabra'];
  }
?>