
let form  = document.getElementById('registracion');

form.addEventListener('submit', (validacion) => {
    validacion.preventDefault();

    var nombreUsuario = getElementById('usuario').value;
    var email = getElementById('email').value;
    var contra = getElementById('pass').value;
    var fechaNacimiento = getElementById('fechaNacimiento').value;
    var url = getElementById('url').value;
    var pregunta = getElementById('pregunta').value;
    var respuesta = getElementById ('respuesta').value;


    if (nombreUsuario == "" || email == "" || contra == "" || fechaNacimiento == "" || url == "" || pregunta == "" || respuesta == "") {
        document.querySelector(".error").innerHTML= 
         "<div class='alert alert-danger' role='alert'> Todos los campos son obligatorios </div>"
      setTimeout(function (){
          document.querySelector(".alert").style.display = "none"
      },3000)
        
    }


})

