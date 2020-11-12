let db = require("../database/models/index")
let op = db.Sequelize.Op;

let profileController =  {

    profile: function (req,res) {

        // hay que hacer un if para verificar si hay un usuario logueado
 
        db.Usuario.findByPk(req.session.usuarioLogueado.id)
        .then(function(perfil){
           res.render("miPerfil",{perfil:perfil})
        })
    
    },
    
    agregarPost: function (req,res) {

       
        res.render("agregarPost")
    
    },
    
    post: function (req,res) {


        let posteo = {
           
            idusuario:req.session.usuarioLogueado.id,
            texto_post:req.body.comentario,
            texto_creacion:req.body.fecha,
            url_imagen: req.body.url,

       }

       db.Posts.create(posteo)
       .then(function() {
               
       res.redirect("/home/");
       })
    
    },
  
    detalleUsuario: function (req,res) {    

        db.Usuario.findByPk(req.params.id,{
            include:[

                {all:true,nested:true}

            ],
        })
        .then(function(user){
           // res.send(user)
           res.render("detalleUsuario",{user:user})
        })
    
    },

    editarPerfil: function (req,res) {

        db.Usuario.findByPk(req.params.id)
        .then(function(editarPerfil){
           res.render("editarPerfil",{editarPerfil:editarPerfil})
        })


    },

    perfilActualizado: function (req,res) {

       let datosNuevos ={}

       if (req.body.usuarioNuevo != undefined) {
           datosNuevos.nombre_usuario = req.body.usuarioNuevo
        }

        if (req.body.urlNuevo != undefined) {
            datosNuevos.url_imagen = req.body.urlNuevo
        }

        if (req.body.contraNueva != undefined) {
            datosNuevos.contraseña = req.body.contraseña
        }
            

       /* let datosNuevos = {
           
            nombre_usuario: req.body.usuarioNuevo,
            url_imagen: req.body.urlNuevo,
            contraseña: req.body.contraNueva,

       } */

       db.Usuario.update(datosNuevos, {
           where: {
               id: req.session.usuarioLogueado.id,
               //id: req.body.idUsuarioNuevo,
           }

       })
       .then(function() {
               
       res.redirect("/profile/miPerfil");
       })


    }


    
    }
    
    module.exports = profileController;