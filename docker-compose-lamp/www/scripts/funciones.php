<?php
  require_once 'bd.php';

  if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    if(isset($_GET['nombre']) && isset($_GET['email']))
      addComentarios($_POST['id'],$_GET['nombre'],$_POST['texto']);
      $id = $_POST['id'];
      header("refresh:0.5;url=evento/$id");
    }
  $evento = getEvento($_POST['id']);

  session_start();
  $logueado = false;

  if(isset($_SESSION['logueado']))
    $logueado = true;

  if(isset($_SESSION['email'])){
      $usuario = getUsuario($_SESSION['email']);
  }


  echo $twig->render('evento.html', ['evento' => $evento, 'palabras' => $palabras, 'logueado' => $logueado, 'usuario' => $usuario]);

?>