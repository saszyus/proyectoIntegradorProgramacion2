 window.onload = function (){

var registracion = document.querySelector(".registracion");
registracion.onsubmit = function(validar) {

    var nombreUsuario = document.getElementById('usuario').value;
    var email = document.getElementById('email').value;
    var contra = document.getElementById('pass').value;
    var fechaNacimiento = document.getElementById('fechaNacimiento').value;
    var url = document.getElementById('url').value;
    var pregunta = document.getElementById('pregunta').value;
    var respuesta = document.getElementById ('respuesta').value;


    if (nombreUsuario == "" || email == "" || contra == "" || fechaNacimiento == "" || url == "" || pregunta == "" || respuesta == "") {
        validar.preventDefault();
        document.querySelector(".error").innerHTML= 
         "<div class='uk-alert-danger alert' uk-alert> <a class='uk-alert-close' uk-close></a><p> Todos los campos son obligatorios </p> </div>"
      setTimeout(function (){
          document.querySelector(".alert").style.display = "none"
      },3000)
        
    } else {
        registracion.submit()
    
    }

} }

