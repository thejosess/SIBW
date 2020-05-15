<?php

require_once 'bd.php';

session_start();

if(isset($_SESSION['email']) && $_SESSION['logueado']){
    $usuario = getUsuario($_SESSION['email']);

    if($usuario['tipo'] >= 1){
        $comentarios = getAllComentarios();
    }
}

echo $twig->render('todosComentarios.html',['usuario' => $usuario, 'comentarios' => $comentarios]); 

?>