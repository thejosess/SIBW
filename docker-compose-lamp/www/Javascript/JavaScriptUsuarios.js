function mostrarContraseña() {
    var x = document.getElementById("pass");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }

    var y = document.getElementById("pass2");
    if (y.type === "password") {
      y.type = "text";
    } else {
      y.type = "password";
    }
  } 