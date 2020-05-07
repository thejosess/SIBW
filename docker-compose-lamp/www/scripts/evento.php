<?php

  require_once 'obtener_evento.php';

  //este codigo se pega en todos los sitios que haga falta, encapsular
  session_start();
  if(isset($_SESSION['nick'])){
    $datosLogin = getUsuario($_SESSION['nick']);
  }else{
    $password = password_hash($_POST['pass'],PASSWORD_DEFAULT);
    $usuario = checkLogin($_POST['nick'],$_POST['pass']);
  }
  //eso hay que pasarselo a twig
  //cuando se añade un valor a $_SESSION['nick'] ??

  echo $twig->render('evento.html', ['evento' => $evento, 'palabras' => $palabras]);

?>