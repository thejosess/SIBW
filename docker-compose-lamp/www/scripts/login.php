<?php

require_once 'bd.php';


if($_SERVER['REQUEST_METHOD'] === 'POST'){
    $nick = $_POST['nick'];
    $pass = $_POST['pass'];

    if(checkLogin($nick,$pass) != null){
        //tener en cuenta que devuelve un user
        session_start();

        $_SESSION['nick'] = $nick;
        $_SESSION['logueado'] = true;
        header("refresh:2;url=index.php");
    }
    else{
        header("Location: login.php");
        //si no lo hace bien pues le vuelves a poner el formulario de login
    }
    //redirecciono a index o a evento o donde estuviese?
    //que esta es la que comprueba las cosas del usuer y las pasa por twig
    exit;

}

echo $twig->render('login.html',[]); 

?>