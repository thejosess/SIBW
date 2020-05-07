<?php

require_once 'bd.php';

$varsParaTwig = []; 

if ($_SERVER['REQUEST_METHOD'] === 'POST'){

    $nick = $_POST['nick'];
    $pass = $_POST['pass'];
    $apellido = $_POST['apellido'];
    $email =  $_POST['email'];

    if(isset($_FILES['imagen'])){
        $errors= array();
        $file_name = $_FILES['imagen']['name'];
        $file_size = $_FILES['imagen']['size'];
        $file_tmp = $_FILES['imagen']['tmp_name'];
        $file_type = $_FILES['imagen']['type'];
        $file_ext = strtolower(end(explode('.',$_FILES['imagen']['name'])));
        
        $extensions= array("jpeg","jpg","png");
        
        if (in_array($file_ext,$extensions) === false){
          $errors[] = "Extensión no permitida, elige una imagen JPEG o PNG.";
        }
        
        if ($file_size > 2097152){
          $errors[] = 'Tamaño del fichero demasiado grande';
        }
        
        if (empty($errors)==true) {
          move_uploaded_file($file_tmp, "imagenes/avatares/" . $file_name);
          
          $ruta = "imagenes/avatares/" . $file_name; //ruta

          $datos = ['nick' => $nick, 'pass' => $pass, 'ruta' => $ruta, 'apellido' => $apellido, 'email' => $email];
          if(registrarUsuario($datos)){
              header("refresh:2;url=login.php");
          }
          else{
              header("Location: registro.php"); //volver a ponerle ventana registro
              //esto da error, cambiarlo
          }
        }
        else{
            echo $erros;
        }
        
/*         if (sizeof($errors) > 0) {
          $varsParaTwig['errores'] = $errors;
        } */
        exit;

    }
    echo $twig->render('evento.html',[]);
    //entra aqui, cambiarlo LUEGO


  }
    

  echo $twig->render('registro.html',[]);

?>