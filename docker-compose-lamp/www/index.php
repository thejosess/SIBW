<?php
  require_once "/usr/local/lib/php/vendor/autoload.php";
  require_once "scripts/bd.php";
  //carga las funciones de twig

  $loader = new \Twig\Loader\FilesystemLoader('templates');
  $twig = new \Twig\Environment($loader);

  session_start();
  //esto va bien aqui?

  function startsWith($string, $query){
    return substr($string, 0, strlen($query)) === $query;
  }

  $uri = $_SERVER['REQUEST_URI'];

  #redireccionas todas las página
  if (startsWith($uri, "/evento")){
    include("scripts/evento.php");
  }
  else if(startsWith($uri, "/imprimir"))
  {
    include("scripts/imprimir.php");
  }
  else if(startsWith($uri, "/funciones"))
  {
    include("scripts/funciones.php");
  }
  else if(startsWith($uri, "/login"))
  {
    include("scripts/login.php");
  }
  else if(startsWith($uri, "/logout"))
  {
    include("scripts/logout.php");
  }    
  else if(startsWith($uri, "/registro"))
  {
    include("scripts/registro.php");
  }
  else if(startsWith($uri, "/perfil"))
  {
    include("scripts/perfil.php");
  }
  else if(startsWith($uri, "/modificarComentario"))
  {
    include("scripts/modificarComentario.php");
  }
  else if(startsWith($uri, "/todosComentarios"))
  {
    include("scripts/todosComentarios.php");
  }
  else if(startsWith($uri, "/gestionEventos"))
  {
    include("scripts/gestionEventos.php");
  }
  else if(startsWith($uri, "/gestionUsuarios"))
  {
    include("scripts/gestionUsuarios.php");
  }
  else
  {
    if($_SESSION['logueado'] == true && isset($_SESSION['email'])){
      $logueado = true;
      $usuario = getUsuario($_SESSION['email']);
    }
    echo $twig->render('index.html',['logueado' => $logueado, 'usuario' => $usuario]); 
  }
  
//poner en index el resto de paginas php nuevas que no tengo para renderiizar y revisar
  
  
  
?>