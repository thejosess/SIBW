<?php

require_once 'bd.php';
require_once 'comprobarEmail.php';

session_start();
 
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    if(!empty($_POST['nick']))
    {
       cambiarNick($_SESSION['email'],$_POST['nick']);
       header("Location: perfil.php");
    }
    if(!empty($_POST['apellido']))
    {
       cambiarApellido($_SESSION['email'],$_POST['apellido']);
       header("Location: perfil.php");
    }

    if(!empty($_POST['apellido']))
    {
       cambiarApellido($_SESSION['email'],$_POST['apellido']);
       header("Location: perfil.php");
    }

    if(!empty($_POST['email']))
    {
        if(comprobarEmail($_POST['email']))
        {
            cambiarEmail($_SESSION['email'],$_POST['email']);
            $_SESSION['email'] = $_POST['email'];
            header("Location: perfil.php");
        }
        else
            echo "<script type='text/javascript'>alert('email mal introducido');</script>";
    }


    if(!empty($_POST['pass']))
    {

/*        if(cambiarContraseña($_POST['email'], $_POST['pass'], $_POST['pass2']))
            echo "<script type='text/javascript'>alert('contraseña cambiada correctamente');</script>";
       header("Location: perfil.php");  */
       if(cambiarContraseña($_SESSION['email'],$_POST['pass'], $_POST['pass2'])){
        session_destroy();
        header("refresh:0.5;url=login.php");
        echo "<script type='text/javascript'>alert('contraseña cambiada, inicie sesión');</script>";
       }
       else
        echo "<script type='text/javascript'>alert('contraseña erronea, no cambiada');</script>";
    }

}




if(isset($_SESSION['email'])){
    $usuario = getUsuario($_SESSION['email']);
}


echo $twig->render('perfil.html',['usuario' => $usuario]); 

?>