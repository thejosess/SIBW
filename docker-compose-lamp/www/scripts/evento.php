<?php

  require_once 'obtener_evento.php';

  //este codigo se pega en todos los sitios que haga falta, encapsular
/*   session_start();
  if(isset($_SESSION['nick'])){
    $datosLogin = getUsuario($_SESSION['nick']);
  }else{
    $password = password_hash($_POST['pass'],PASSWORD_DEFAULT);
    $usuario = checkLogin($_POST['nick'],$_POST['pass']);
  } */
  //eso hay que pasarselo a twig
  //cuando se añade un valor a $_SESSION['nick'] ??

  session_start();
  $logueado = false;

  if(isset($_SESSION['logueado']))
    $logueado = true;

  if(isset($_SESSION['email'])){
      $usuario = getUsuario($_SESSION['email']);
  }


  /* usuario normal tipo = 0
  usuario moderador = 1
  usuario gestor del sitios = 2
  superusuario = 3*/

  if($logueado && $usuario['tipo'] >= 1){
    if(isset($_GET['id_coment']) && $_GET['borrar'] == true){
      $id_comentario = $_GET['id_coment'];
      $idEvento = $_GET['idEvento'];
      borrarComentario($id_comentario, $idEvento);
      header("refresh:0.5;url=evento/$idEvento");
      /* arreglar esto */
    }
  }

  echo $twig->render('evento.html', ['evento' => $evento, 'palabras' => $palabras, 'logueado' => $logueado, 'usuario' => $usuario,  'coincidencias' => $coincidencias]);

?>