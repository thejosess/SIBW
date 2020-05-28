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

    $contador = 0;

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

      while($row = $imagenes->fetch_assoc()){
        $galeria [$contador] = $row['ruta_imagen'];
        $contador = $contador + 1;
        $var = $row['ruta_imagen'];
      }
    }
    else{
      $imagenes = $mysqli->query("SELECT * FROM imagenes WHERE id_evento=1");
      $row = $imagenes->fetch_assoc();
      $imagen1['ruta_imagen'] = $row['ruta_imagen'];
      $imagen1['pie_foto'] = $row['pie_foto'];
      $row = $imagenes->fetch_assoc();
      $imagen2['ruta_imagen'] = $row['ruta_imagen'];
      $imagen2['pie_foto'] = $row['pie_foto'];

      while($row = $imagenes->fetch_assoc()){
        $galeria [$contador] = $row['ruta_imagen'];
        $contador = $contador + 1;
      }
    }


    //obtengo los comentarios
    $res = $mysqli->query("SELECT * FROM comentarios WHERE id_evento=" .$idEvento);
    if($res->num_rows > 0){


      while($row = $res->fetch_assoc()){
        $comentarios [$contador] = [$row['nombre'], $row['comentario'], $row['fecha'], $row['hora'],$row['id_comentario']];
        $contador = $contador + 1;
      }
    }
    else{
      $res = $mysqli->query("SELECT * FROM comentarios WHERE id_evento= 1");

      while($row = $res->fetch_assoc()){
        $comentarios [$contador] = [$row['nombre'], $row['comentario'], $row['fecha'], $row['hora'],$row['id_comentario']];
        $contador = $contador + 1;
      }
    }

    //obtengo etiquetas
    $res = $mysqli->query("SELECT * FROM etiquetas WHERE id_evento=" . $idEvento);
    if($res->num_rows > 0){

      $row = $res->fetch_assoc();
      $id_etiqueta = $row['id_etiqueta'];
      $etiqueta = $row['etiqueta'];
      $etiquetas = array('id_etiqueta' => $idEtiqueta, 'etiqueta' => $etiqueta);

    }


    $evento = array('id_evento' => $idEvento ,'modelo' => $modelo,'comentarios' =>$comentarios, 'analisis' => $analisis,'conclusiones' => $conclusiones, 'primeraFoto' => $imagen1['ruta_imagen'], 'piePrimeraFoto' => $imagen1['pie_foto'],'segundaFoto' => $imagen2['ruta_imagen'],'pieSegundaFoto' => $imagen2['pie_foto'], 'galeria' => $galeria, 'etiquetas' => $etiquetas);

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

  function getComentario($id_comentario){
    getConexion();
    global $mysqli;

    $res = $mysqli->query("SELECT * FROM comentarios WHERE id_comentario='" . $id_comentario . "'");
    $row = $res->fetch_assoc();

    $comentario  = ['nombre' => $row['nombre'],'comentario' => $row['comentario'],'fecha' => $row['fecha'], 'hora' => $row['hora'],'id_evento' =>$row['id_evento'],'id_comentario' =>$row['id_comentario']];

    return $comentario;
  }

  function getAllComentarios(){
    getConexion();
    global $mysqli;

    //obtengo los comentarios
    $res = $mysqli->query("SELECT * FROM comentarios");
    if($res->num_rows > 0){

      $contador = 0;

      while($row = $res->fetch_assoc()){
        $comentarios [$contador] = [$row['nombre'], $row['comentario'], $row['fecha'], $row['hora'],$row['id_comentario'], $row['id_evento']];
        $contador = $contador + 1;
      }
    }
    return $comentarios;
  }

  function modificarComentario($id_comentario,$idEvento,$texto){
    getConexion();
    global $mysqli;
    $res = $mysqli->query("UPDATE comentarios SET comentario='$texto' WHERE id_comentario='" . $id_comentario . "'" );
    
  }


  function añadirEvento($modelo,$conclusiones,$analisis){
    getConexion();
    global $mysqli;

    $modelo = mysqli_real_escape_string($mysqli, $modelo);
    $conclusiones = mysqli_real_escape_string($mysqli, $conclusiones);
    $analisis = mysqli_real_escape_string($mysqli, $analisis);



    $res = $mysqli->query("INSERT INTO eventos(modelo,analisis,conclusiones) VALUES ('$modelo','$analisis','$conclusiones')"); 
    $idEvento = $mysqli->query("SELECT last_insert_id()");
    $idEvento = $idEvento->fetch_array();
    $idEvento = $idEvento['last_insert_id()'];
    //crear una nueva etquita o no???

    return $idEvento;
  }

  function añadirImagenes($imagenes, $idEvento){
    getConexion();
    global $mysqli;

    $idEvento = (int)$idEvento;


    for ($i = 0; $i < count($imagenes); $i++) {
      $res = $mysqli->query("INSERT INTO imagenes(ruta_imagen,id_evento) VALUES ('$imagenes[$i]','$idEvento')");
    }    
  }

  function modificarEvento($idEvento,$modelo,$conclusiones,$analisis){
    getConexion();
    global $mysqli;

    $modelo = mysqli_real_escape_string($mysqli, $modelo);
    $conclusiones = mysqli_real_escape_string($mysqli, $conclusiones);
    $analisis = mysqli_real_escape_string($mysqli, $analisis);

    $idEvento = (int)$idEvento;

    $res = $mysqli->query("UPDATE eventos SET modelo='$modelo',analisis='$analisis',conclusiones='$conclusiones' WHERE id='" . $idEvento . "'" );

    //crear una nueva etquita o no???
  }

  function eliminarEvento($idEvento,$ruta){
    getConexion();
    global $mysqli;

    $idEvento = (int)$idEvento;
    $ruta = mysqli_real_escape_string($mysqli, $ruta);

    $res = $mysqli->query("DELETE FROM imagenes WHERE id_evento='$idEvento'" );
    $res = $mysqli->query("DELETE FROM eventos WHERE id='$idEvento'" );


    //borrando directorio y fotos
    if (is_dir($ruta)) { 
      $objects = scandir($ruta); 
      foreach ($objects as $object) { 
        if ($object != "." && $object != "..") { 
            unlink($ruta."/".$object); 
        } 
      } 
      reset($objects); 
      rmdir($ruta); 
    }
  }

  function añadirEtiqueta($etiqueta, $idEvento){
    getConexion();
    global $mysqli;

    $idEvento = (int)$idEvento;
    $etiqueta = mysqli_real_escape_string($mysqli, $etiqueta);

    $res = $mysqli->query("INSERT INTO etiquetas(etiqueta,id_evento) VALUES ('$etiqueta','$idEvento')");
  
  }

  function getAllEventos(){
    getConexion();
    global $mysqli;

    //obtengo los comentarios
    $res = $mysqli->query("SELECT * FROM eventos");
    if($res->num_rows > 0){

      $contador = 0;

      while($row = $res->fetch_assoc()){
        $eventos [$contador] = [$row['id'], $row['modelo'], $row['analisis'], $row['conclusiones']];
        $contador = $contador + 1;
      }
    }
    return $eventos;
  }


  function getAllUsuarios(){
    getConexion();
    global $mysqli;

    //obtengo los comentarios
    $res = $mysqli->query("SELECT * FROM usuarios");
    if($res->num_rows > 0){

      $contador = 0;

      while($row = $res->fetch_assoc()){
        $usuarios [$contador] = [$row['tipo'],$row['nick']];
        $contador = $contador + 1;
      }
    }
    return $usuarios;
  }
  
  function modificarTipoUsuario($nick,$nuevoTipo){
    getConexion();
    global $mysqli;

    $nick = mysqli_real_escape_string($mysqli, $nick);
    $nuevoTipo = (int)$nuevoTipo;

    $res = $mysqli->query("UPDATE usuarios SET tipo='$nuevoTipo' WHERE nick='" . $nick . "'" );

  }

  function busquedaEvento($datos){
    getConexion();
    global $mysqli;

    $datos = mysqli_real_escape_string($mysqli, $datos);

    $res = $mysqli->query("SELECT modelo,id FROM eventos WHERE modelo LIKE '%$datos%'" );

    $eventos = array();

    if($res->num_rows > 0){

      while($row = $res->fetch_assoc()){
        array_push($eventos, ['id' => $row['id'], 'modelo'=>$row['modelo']]);
      }
    }

    return $eventos;
  }



?>
