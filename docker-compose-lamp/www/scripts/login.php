<?php

require_once 'bd.php';

$carga = new \Twig\Loader\ArrayLoader([
    'index' => 'Usuario logueado',
]);
$mensaje = new \Twig\Environment($carga);

if($_SERVER['REQUEST_METHOD'] === 'POST'){
    $email = $_POST['email'];
    $pass = $_POST['pass'];

    if(checkLogin($email,$pass) != null){
        //tener en cuenta que devuelve un user
        session_start();

        $_SESSION['email'] = $email;
        $_SESSION['logueado'] = true;
        header("refresh:2;url=index.php");

        echo $mensaje->render('index', []);
        //he realizado este mensaje con twig render pero 
        //me gusta mas como queda con la alerta de javascript, aunque
        //no sé si es mejor hacerlo de esta forma

        
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