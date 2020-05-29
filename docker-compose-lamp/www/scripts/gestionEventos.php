<?php

require_once 'bd.php';
session_start();

if(isset($_SESSION['email'])){
    $usuario = getUsuario($_SESSION['email']);
}

if($_GET['añadir'] == true){
    $añadir = true;
}

if($_GET['modificar'] == true){
    $modificar = true;
}

if($_GET['borrar'] == true){
    $borrar = true;
}

if($_GET['todos'] == true){
    $todos = true;
}

if(isset($_GET['idEvento'])){
    $idEvento = $_GET['idEvento'];
}

//al poner esto a true y que se realice el post la ventana de opcción sería de modificación
if($añadir == true){
    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        if(isset($_POST['modelo']) && isset($_POST['conclusiones']) && isset($_POST['analisis'])){
        $modelo = $_POST['modelo'];
        $conclusiones = $_POST['conclusiones'];
        $analisis = $_POST['analisis'];

            if(isset($_FILES['imagenes'])){
                $size = count($_FILES['imagenes']['name']);
                if($size < 2)
                {
                    echo "<script type='text/javascript'>alert('tienes que subir dos fotos como mínimo');</script>";
                    /* header("refresh:0.5;url=evento/$idEvento"); */
                }
                else{

                    $idEvento = añadirEvento($modelo,$conclusiones,$analisis);

                    for($i=0;$i<$size;$i++){
                        $imagenes[$i] = "../imagenes/eventos/evento".$idEvento . "/".$_FILES['imagenes']['name'][$i];
                        $file_tmp[$i] = $_FILES['imagenes']['tmp_name'][$i];
                    } 

                    añadirImagenes($imagenes,$idEvento);

                    $carpeta = "imagenes/eventos/evento".$idEvento;
                     if(!is_dir($carpeta)){
                        mkdir($carpeta);
                        for($i=0;$i<$size;$i++){
                            move_uploaded_file($file_tmp[$i], $carpeta. "/".$_FILES['imagenes']['name'][$i]);
                        }
                    }
                    else{
                        for($i=0;$i<$size;$i++){
                            move_uploaded_file($file_tmp[$i], $carpeta."/".$_FILES['imagenes']['name'][$i]);
                        }
                    }  

                }
            }



        //esto hacerlo de ultimas tras crear el evento y que lo devuelve la función 
        //crear evento de la BD

        }
        $añadir = false; 
        $modificar = true;
        $evento = getEventoSinPublicar($idEvento);

        echo $twig->render('gestionEventos.html', ['evento' => $evento,'añadir' => $añadir, 'modificar' => $modificar]);
        exit;
    }
}
 
//aqui el evento si lo hemos creado le ponemos ese evente creado con un get
//pero si lo estamos modificando pues lo que tenemos que hacer es pasarle uno

if($modificar == true){
    if($_SERVER['REQUEST_METHOD'] === 'POST'){

        $idEvento = $_GET['idEvento'];

        if(!empty($_POST['modelo']) && !empty($_POST['conclusiones']) && !empty($_POST['analisis'])){

            $modelo = $_POST['modelo'];
            $conclusiones = $_POST['conclusiones'];
            $analisis = $_POST['analisis'];
            modificarEvento($idEvento,$modelo,$conclusiones,$analisis);
        }

            if($_FILES['imagenes']['name'][0] != ""){
                $size = count($_FILES['imagenes']['name']);
                if($size > 0){

                    for($i=0;$i<$size;$i++){
                        $imagenes[$i] = "../imagenes/eventos/evento".$idEvento . "/".$_FILES['imagenes']['name'][$i];
                        $file_tmp[$i] = $_FILES['imagenes']['tmp_name'][$i];
                    } 

                    añadirImagenes($imagenes,$idEvento);

                    $carpeta = "imagenes/eventos/evento".$idEvento;
                     if(!is_dir($carpeta)){
                        mkdir($carpeta);
                        for($i=0;$i<$size;$i++){
                            move_uploaded_file($file_tmp[$i], $carpeta. "/".$_FILES['imagenes']['name'][$i]);
                        }
                    }
                    else{
                        for($i=0;$i<$size;$i++){
                            move_uploaded_file($file_tmp[$i], $carpeta."/".$_FILES['imagenes']['name'][$i]);
                        }
                    }  

                }
            }

            if(!empty($_POST['etiqueta'])){
    
                $etiqueta = $_POST['etiqueta'];
                añadirEtiqueta($etiqueta,$idEvento);
            }

            if(!empty($_POST['pubicado'])){
                $publicado = $_POST['pubicado'];
                if($publicado == 1)
                    publicarEvento($idEvento);
            }

        
    }
}

if($borrar == true){

    $idEvento = $_GET['idEvento'];
    $ruta = "imagenes/eventos/evento".$idEvento;
    eliminarEvento($idEvento,$ruta);

    header("Location: index.php");
    echo "<script type='text/javascript'>alert('evento borrado');</script>";


}

if($todos == true){
    if(isset($_SESSION['email']) && $_SESSION['logueado']){
        $usuario = getUsuario($_SESSION['email']);
    
        if($usuario['tipo'] >= 2){
            $eventos = getAllEventos();
        }
    
        echo $twig->render('gestionEventos.html',['usuario' => $usuario, 'eventos' => $eventos, 'todos' => $todos]);
        exit; 
    }
    
}


$evento = getEventoSinPublicar($idEvento);



echo $twig->render('gestionEventos.html', ['evento' => $evento,'añadir' => $añadir, 'modificar' => $modificar]);

?>