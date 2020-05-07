function Comenta(elemento){
    console.log('botón pulsado')
    document.getElementById("comentarios").style.display = 'block'
    document.getElementById("hueco").style.display = 'block'
    elemento.style.visibility = 'hidden'
    document.getElementById("boton2").style.display = 'block'

}

function Cerrar(){
    document.getElementById("comentarios").style.display = 'none'
    document.getElementById("hueco").style.display = 'none'
    document.getElementById("boton2").style.display = 'none'
    document.getElementById("boton").style.visibility = 'visible'


}


function Envia(){
    var nombre = document.getElementById("nombre")
    var mail = document.getElementById("mail")
    var txt = document.getElementById("texto")
    console.log(txt)

    if( !comprobarVacio(nombre, mail, txt) )
    {
        alert("tienes que rellenar los campos")
    }
    else
    {

        if( comprobarEmail( mail.value ) )
        {
            alert("El email es correcto");
            var fecha = new Date();
            document.getElementById("hueco").innerHTML += '<br> <div id = "comment3"> <p><strong><u>' + nombre.value + '</u></p></strong>' + '<p>' + txt.value + '</p>' + '<p>' + fecha.getFullYear()+ (fecha.getMonth()+1) + "-" + fecha.getDate()+ "-" +  + " a las "+ fecha.getHours() + ":" + fecha.getMinutes() + ":" + fecha.getSeconds() +  '</p>'+ '</div>'
        }
        else
        {
            alert("El email NO es correcto");
        }
    }
}

function banear(){

    var palabra1 = new RegExp(document.getElementById("palabra1").innerText, "gi");
    var palabra2 = new RegExp(document.getElementById("palabra2").innerText, "gi");
    var palabra3 = new RegExp(document.getElementById("palabra3").innerText, "gi");
    var palabra4 = new RegExp(document.getElementById("palabra4").innerText, "gi");
    var palabra5 = new RegExp(document.getElementById("palabra5").innerText, "gi");
    var palabra6 = new RegExp(document.getElementById("palabra6").innerText, "gi");
    var palabra7 = new RegExp(document.getElementById("palabra7").innerText, "gi");
    var palabra8 = new RegExp(document.getElementById("palabra8").innerText, "gi");
    var palabra9 = new RegExp(document.getElementById("palabra9").innerText, "gi");
    var palabra10 = new RegExp(document.getElementById("palabra10").innerText, "gi");

    //palabra1.style.backgroundColor="blue";
    
    //console.log(palabra1);

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra1,"******")
    document.getElementById("texto").value = nuevo;

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra2,"****")
    document.getElementById("texto").value = nuevo;

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra3,"******")
    document.getElementById("texto").value = nuevo;
    
    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra4,"****")
    document.getElementById("texto").value = nuevo;

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra5,"**********")
    document.getElementById("texto").value = nuevo;
    
    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra6,"*****")
    document.getElementById("texto").value = nuevo;
    
    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra7,"******")
    document.getElementById("texto").value = nuevo;

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra8,"*****")
    document.getElementById("texto").value = nuevo;

    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra9,"****")
    document.getElementById("texto").value = nuevo;
    
    var x = document.getElementById("texto").value
	var nuevo = x.replace(palabra10,"****")
    document.getElementById("texto").value = nuevo;
    
}

function comprobarEmail( mail ) 
{
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(mail) ? true : false;
}

function comprobarVacio(nombre, mail,texto){
    if(nombre.value == null || nombre.value == ""){
        alert("Tienes que rellenar campo nombre")
        return false
    }

    if(mail.value == null || mail.value == ""){
        alert("Tienes que rellenar campo email")
        return false
    }

    if(texto == null || texto == "" || texto == "                     "){
        alert("Tienes que rellenar campo texto")
        return false
    }
    return true
}