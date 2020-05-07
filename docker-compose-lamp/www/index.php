<?php
  require_once "/usr/local/lib/php/vendor/autoload.php";
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
  }  else if(startsWith($uri, "/imprimir"))
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
  else
  {
    if($_SESSION['logueado'] == true){
      $logueado = true;
    }
    echo $twig->render('index.html',['logueado' => $logueado]); 
  }
  
//poner en index el resto de paginas php nuevas que no tengo para renderiizar y revisar
  
  
  
?>