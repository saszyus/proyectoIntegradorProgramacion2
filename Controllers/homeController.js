let db = require("../database/models/index")
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");
const { editarPerfil } = require("./profileController");

let homeController =  {

    home: function (req,res) {
        console.log(res.locals)
        db.Posts.findAll({
            order: [["created_at","DESC"]],
            include:[
                {all:true,nested:true}
            ], 
        })
        .then(function(posts){
         //res.send(posts)
           res.render("home",{posts:posts})
        })
    },
    
    
    registracion: function(req,res) {

        res.render("registracion")
    
    },

    procesarRegistracion: function(req, res) {

        db.Usuario.findOne({

            where:{ 
                [op.or]:[
                    { 
                        email: req.body.email
                    },
                    { 
                        nombre_usuario: req.body.usuario
                    }
                ]
            }
        })

        .then(function(usuario){
            if (usuario != undefined) {
                res.render("registracion",{mensajeError: "Mensaje error"})
                
            } else {


        let nombre_usuario = req.body.usuario;
        //let contraseña = req.body.contraseña;
        let contraseña = bcrypt.hashSync(req.body.contraseña, 10);
        let email = req.body.email;
        let foto_perfil = req.body.foto_perfil
        let fecha_nacimiento = req.body.fecha_nacimiento;
        let pregunta = req.body.pregunta;
        let respuesta = req.body.respuesta;

        let usuario = {
            nombre_usuario: nombre_usuario,
            contraseña: contraseña,
            email: email,
            fecha_nacimiento: fecha_nacimiento,
            pregunta: pregunta,
            respuesta: respuesta,
            foto_perfil: foto_perfil,
        }

        db.Usuario.create(usuario)
        .then(function() {
            res.redirect("/home/login")
        })

        }
        })

    },


    login: function (req,res) {

        let error = req.query.error;


         // la opcion 1 error undefined 
         if (req.query.error == undefined) {
           res.render("login")

        // la opcion 2 error = usuario
         
         } else if (req.query.error == 'usuario') { 
            res.render('login', {mensajeErrorUsuario: 'mensajeErrorUsuario'})

         // la opcion 3 error = contra    
        } else {
            res.render("login", {mensajeErrorContraseña: 'mensajeErrorContraseña'})

        }

        res.render("login")


    },

    procesarLogin: function (req, res) {

    db.Usuario.findOne (
        {
            where: [
                {nombre_usuario: req.body.usuario}
            ]
        }
        )
        .then(function(usuario) {
            if (usuario == null) {
                res.redirect("/home/login?error=usuario")
            } else if (!bcrypt.compareSync(req.body.contraseña, usuario.contraseña)) {
            
                res.redirect("/home/login?error=contraseña")
            } else {
                req.session.usuarioLogueado = usuario;
               
                if (req.body.recordarme != undefined) {

                    res.cookie("idUsuarioLogueado", usuario.id, {maxAge : 1000 * 50});
                
                } 

                res.redirect("/home");
            }

            
        }) 
       

    },


    logout: function (req,res) {

        req.session.usuarioLogueado = undefined;
        res.redirect("/home")
    },


    validoUsuario: function (req,res) {
        res.render('validoUsuario')

    },

    validoUsuario_proceso: function (req,res) {

        db.Usuario.findOne (
            {
                where: [
                    {nombre_usuario: req.body.usuario}
                ]
            }
            )

            .then(function(usuario) {
                if (usuario == null) {
                    res.render("validoUsuario",{mensajeError: "Mensaje error"})
                } else {

                    if (usuario.pregunta == 1){
                        textoPregunta = "A que escuela primaria fuiste de chico?"
                    } else if(usuario.pregunta == 2) {
                        textoPregunta = "Cual es el nombre de tu mascota?"
                    } else {
                        textoPregunta = "Cual es tu serie favorita?"
                    }

                    // req.session.usuarioLogueado = usuario;
                    res.render("validoPregunta", {usuario:usuario, textoPregunta:textoPregunta})
                }

            })

        },

    validoPregunta_proceso: function (req,res) {

             db.Usuario.findOne (
                {
                    where: [
                        {
                            id: req.body.idUsuario,
                            respuesta: req.body.respuesta
                        
                        }
                    ]
                }
                )

            .then(function(respuesta) {
                    if (respuesta == null) {
                        req.session.usuarioLogueado = undefined;
                        res.render("login", {mensajeError: "Mensaje error"})
                    } else {
                        req.session.usuarioLogueado = respuesta;
                        res.redirect("/profile/editarPerfil/" + req.session.usuarioLogueado.id)
                    }
    
                })


        },

        editarPost: function(req, res){

            if(req.session.usuarioLogueado != undefined) {
    
    
              db.Posts.findByPk(req.params.id)
              .then(function(editarPost){
                res.render("editarPost",{editarPost:editarPost})
    
              })
    
            } else {
                res.redirect('/home/')
            }
    
          
    
        },
    
        editandoPost: function(req, res) {
            
    
            let datosNuevos ={}
    
           if (req.body.textoNuevo != "") {
               datosNuevos.texto_post = req.body.textoNuevo
            }
    
            if (req.body.urlNuevo != "") {
                datosNuevos.url_imagen = req.body.urlNuevo
            }
    
            db.Posts.update(datosNuevos, {
                where: {
                    id: req.body.idPost,
                }
     
            })
            .then(function() {
                    
            res.redirect("/search/detallePost/" + req.body.idPost);
            })
    
    
        },
    



    borrarPost: function(req,res){
    
        if (req.session.usuarioLogueado.id == req.body.idUsuario){
            let idborrarPost = req.body.idPost;
            db.Posts.destroy({
                where:{
                    id: idborrarPost,
                }
            }) 
            .then(function() {
                res.redirect("/home/")
            })    
        } else {
            res.redirect("/home/detallePost/" + req.body.idPost)
        }
    }
}

    
module.exports = homeController;