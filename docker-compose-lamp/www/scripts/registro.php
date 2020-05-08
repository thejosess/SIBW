<?php

require_once 'bd.php';
require_once 'comprobarEmail.php';


$varsParaTwig = []; 

if ($_SERVER['REQUEST_METHOD'] === 'POST'){

    $nick = $_POST['nick'];
    $pass = $_POST['pass'];
    $apellido = $_POST['apellido'];
    $email =  $_POST['email'];

    if(!comprobarEmail($email)){
      /* echo $twig->render('registro.html',[]); */
      header("url=registro.php");

      echo "<script type='text/javascript'>alert('email incorrecto');</script>";

    }
    else{

/*       echo "<script type='text/javascript'>alert('email correcto');</script>";
 */
  
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
                header("Location: login.php");
                echo "Usuario registrado" ;
                  exit;
              }
              else{
/*                 echo $twig->render('registro.html',[]);
 */                //esto da error, cambiarlo
                header("url=registro.php");

                echo "<script type='text/javascript'>alert('email ya registrado o datos mal introducidos');</script>";

              }
            }
            else{
              header("url=registro.php");
              echo "<script type='text/javascript'>alert('avatar con formato incorrecto');</script>";
            }
            
          
  /*         if (sizeof($errors) > 0) {
            $varsParaTwig['errores'] = $errors;
          } */
      }
  }
/*     echo $twig->render('evento.html',[]);
 */    //entra aqui, cambiarlo LUEGO
/*     exit; */
/* header("refresh:1;url=registro.php");
 */}
    

  echo $twig->render('registro.html',[]);

?>