<?php

  $mysqli;
  $conexionAbierta=False;

  function getConexion(){

    global $conexionAbierta;
    global $mysqli;

    if($conexionAbierta == False){
      $mysqli = new mysqli("mysql", "jose", "1234", "SIBW");
      if ($mysqli->connect_errno) {
        echo ("Fallo al conectar: " . $mysqli->connect_error);
      }
    }
  }

  function getEvento($idEvento) {

    getConexion();
    global $mysqli;
    //asi consigo que no se abran multiples veces la conexión,la primera que llama es la que lo abre
    //el resto acceden a la variable global para hacer las consultas

    $idEvento = (int)$idEvento;
    //asi me aseguro de que no me puedan meter instrucciones sql

    //obtengo el evento
    $res = $mysqli->query("SELECT * FROM eventos WHERE id=" . $idEvento);
    if($res->num_rows > 0){

      $row = $res->fetch_assoc();
      $modelo = $row['modelo'];
      $analisis = $row['analisis'];
      $conclusiones = $row['conclusiones'];

    }
    else{
      $res = $mysqli->query("SELECT * FROM eventos WHERE id=1");
      $row = $res->fetch_assoc();
      $modelo = $row['modelo'];
      $analisis = $row['analisis'];
      $conclusiones = $row['conclusiones'];

    }

    //obtengo las imagenes
    $imagenes = $mysqli->query("SELECT * FROM imagenes WHERE id_evento=" . $idEvento);
    if($imagenes->num_rows > 0){

      $row = $imagenes->fetch_assoc();
      $imagen1['ruta_imagen'] = $row['ruta_imagen'];
      $imagen1['pie_foto'] = $row['pie_foto'];
      $row = $imagenes->fetch_assoc();
      $imagen2['ruta_imagen'] = $row['ruta_imagen'];
      $imagen2['pie_foto'] = $row['pie_foto'];

    }
    else{
      $imagenes = $mysqli->query("SELECT * FROM imagenes WHERE id_evento=1");
      $row = $imagenes->fetch_assoc();
      $imagen1['ruta_imagen'] = $row['ruta_imagen'];
      $imagen1['pie_foto'] = $row['pie_foto'];
      $row = $imagenes->fetch_assoc();
      $imagen2['ruta_imagen'] = $row['ruta_imagen'];
      $imagen2['pie_foto'] = $row['pie_foto'];
      //se podria hacer con un while como con los comentarios
    }


    //obtengo los comentarios
    $res = $mysqli->query("SELECT * FROM comentarios WHERE id_evento=" .$idEvento);
    if($res->num_rows > 0){

      $contador = 0;

      while($row = $res->fetch_assoc()){
        $comentarios [$contador] = [$row['nombre'], $row['comentario'], $row['fecha'], $row['hora'],$row['id_comentario']];
        $contador = $contador + 1;
      }
    }
    else{
      $res = $mysqli->query("SELECT * FROM comentarios WHERE id_evento= 1");
      $contador = 0;

      while($row = $res->fetch_assoc()){
        $comentarios [$contador] = [$row['nombre'], $row['comentario'], $row['fecha'], $row['hora'],$row['id_comentario']];
        $contador = $contador + 1;
      }
    }



    $evento = array('id_evento' => $idEvento ,'modelo' => $modelo,'comentarios' =>$comentarios, 'analisis' => $analisis,'conclusiones' => $conclusiones, 'primeraFoto' => $imagen1['ruta_imagen'], 'piePrimeraFoto' => $imagen1['pie_foto'],'segundaFoto' => $imagen2['ruta_imagen'],'pieSegundaFoto' => $imagen2['pie_foto']);

    

    return $evento;
  }


  function cambiarNick($email,$nick){
    getConexion();
    global $mysqli;

    $nick = mysqli_real_escape_string($mysqli, $nick);

    $res =  $mysqli->query("UPDATE usuarios SET nick='$nick' WHERE email='" . $email . "'");
  }

  function cambiarApellido($email,$apellido){
    getConexion();
    global $mysqli;

    $apellido = mysqli_real_escape_string($mysqli, $apellido);

    $res =  $mysqli->query("UPDATE usuarios SET apellido1='$apellido' WHERE email='" . $email . "'");
  }

  function cambiarEmail($email,$nuevoEmail){
    getConexion();
    global $mysqli;

    $nuevoEmail = mysqli_real_escape_string($mysqli, $nuevoEmail);

    $res =  $mysqli->query("UPDATE usuarios SET email='$nuevoEmail' WHERE email='" . $email . "'");
  }

  function cambiarContraseña($email,$pass,$pass2){
    getConexion();
    global $mysqli;

    $nuevaPass = password_hash($pass2,PASSWORD_DEFAULT);
    if(checkLogin($email,$pass))
    {
      $res = $mysqli->query("UPDATE usuarios SET pass='$nuevaPass' WHERE email='" . $email . "'");
      return true;
    }
    else
      return false;
  }


  function getPalabrasBaneadas(){
    getConexion();
    global $mysqli;

    $res = $mysqli->query("SELECT * FROM palabrasBaneadas");

    return $res;
  }

  function addComentarios($idEvento, $autor, $texto){
    getConexion();
    global $mysqli;
    $idEvento = (int)$idEvento;
    $autor = mysqli_real_escape_string($mysqli, $autor);
    $texto = mysqli_real_escape_string($mysqli, $texto);

    $fecha = date_create()->format('Y-m-d');
    $hora = date_create()->format('h:i:s');
    /* $hora = date("d-m-Y h:i:s"); */

    if($idEvento == 0)
      $idEvento = 1;

    $consulta = "INSERT INTO comentarios(nombre, comentario, fecha, hora, id_evento) VALUES ('$autor', '$texto', '$fecha', '$hora', '$idEvento')"
    or die("Error"); 

    /* esto no permitiria que metieses comnentarios con un id distinto a los evento que tengo verdasd? */

    if (mysqli_query($mysqli,$consulta)){}
      else{
        echo "Error: " . $consulta . "<br" . mysqli_error($mysqli);
      }
    
    
      //echo('../evento.php?ev='.$idEvento);
    //header('evento/'.$idEvento);

  }

  function registrarUsuario($datos){

    //aqui iriamos cogiendo las cosas del post que nos han pasado
    //mirar que no estaba registrado antes
    getConexion();
    global $mysqli;

    $email = mysqli_real_escape_string($mysqli,$datos['email']);

    $res =  $mysqli->query("SELECT * FROM usuarios WHERE email='$email'");
    if($res->num_rows > 0)
      return false;

    $nick = mysqli_real_escape_string($mysqli, $datos['nick']);
    $contraseña = mysqli_real_escape_string($mysqli, $datos['pass']);
    $contraseña = password_hash($contraseña, PASSWORD_DEFAULT);
    $tipo = 0;
    $path = mysqli_real_escape_string($mysqli,$datos['ruta']);
    $apellido = mysqli_real_escape_string($mysqli,$datos['apellido']);


    $res = "INSERT INTO usuarios(nick,pass,avatar,email,apellido1,tipo) VALUES ('$nick','$contraseña','$path','$email','$apellido','$tipo')"
    or die("Error"); 

    if (mysqli_query($mysqli,$res)){
      return true;
    }
      else{
        echo "Error: " . $consulta . "<br" . mysqli_error($mysqli);
        return false;
      }
  }


  function checkLogin($email, $pass){
    getConexion();
    global $mysqli;

    try{
      $email = mysqli_real_escape_string($mysqli, $email);
      $contraseña = mysqli_real_escape_string($mysqli, $pass);
      $usuario = $mysqli->query("SELECT * FROM usuarios WHERE email='$email'");
  
      if($usuario->num_rows > 0){
  
        $row = $usuario->fetch_assoc();
        if(!password_verify($contraseña, $row['pass']))
            $usuario = null;
      }

    }catch (Exception $e){
      echo "Excepcion al hacer login: " .$e->getMessage()."\n";
    }

    return $usuario;



    // $res = $mysqli->query("SELECT email FROM usuarios WHERE nick=`$nick` and pass=`$pass`");
    // if($res->num_rows > 0){
    //   return true;
    // }
    // else
    //   return false;

  }

  function getUsuario($email){
    getConexion();
    global $mysqli;

    try{
      $user = mysqli_real_escape_string($mysqli, $email);
      $usuario = $mysqli->query("SELECT * FROM usuarios WHERE email='$user'");

      if($usuario->num_rows > 0){
        $row = $usuario->fetch_assoc();
        $datosUsuario = ['nick' => $row['nick'], 'apellido' => $row['apellido1'], 'email' => $row['email'], 'pass' => $row['pass'], 'avatar' => $row['avatar'], 'tipo' => $row['tipo']];
      }
      else{
        $datosUsuario = null;
      }

    }catch (Exception $e){
      echo "Excepcion al hacer login: " .$e->getMessage()."\n";
    }

    return $datosUsuario;

  }

  function borrarComentario($id_comentario, $idEvento){
    getConexion();
    global $mysqli;

    $idEvento = (int)$idEvento;
    $id_comentario = (int)$id_comentario;

    $res = $mysqli->query("DELETE FROM comentarios WHERE id_comentario='" . $id_comentario . "' and id_evento='" . $idEvento . "'" );
  }

?>