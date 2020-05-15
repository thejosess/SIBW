<?php

require_once 'bd.php';

session_start();
$logueado = false;
$todos = false;

if(isset($_SESSION['logueado']))
$logueado = true;

if(isset($_SESSION['email'])){
  $usuario = getUsuario($_SESSION['email']);
}


if(isset($_GET['idEvento'])){
    $idEvento = $_GET['idEvento'];
}

if(isset($_GET['id_coment'])){
    $id_comentario = $_GET['id_coment'];
    $comentario = getComentario($id_comentario);
}

  /* usuario normal tipo = 0
  usuario moderador = 1
  usuario gestor del sitios = 2
  superusuario = 3*/


/* if($_GET['todos'])
{
    $_SESSION
} */



if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    if($usuario['tipo']>=1 && $logueado){
        if(isset($_POST['nuevoComentario'])){
            $modificado = " ~ modificado por el moderador ";
            $nuevoComentario = $_POST['nuevoComentario'].$modificado.$usuario['nick'];
            modificarComentario($id_comentario,$idEvento,$nuevoComentario);
            $comentario = getComentario($id_comentario);
/*             if($todos == true){
                header("refresh:0.5;url=todosComentarios.php");
                echo "hola primo x2";
            }
            else */
                header("refresh:0.5;url=evento/$idEvento");

            echo "<script type='text/javascript'>alert('comentario modificado');</script>";
        }
    }
}


echo $twig->render('modificarComentario.html',['logueado'=>$logueado,'usuario'=>$usuario,'idEvento'=>$idEvento,'comentario'=>$comentario]);

?>