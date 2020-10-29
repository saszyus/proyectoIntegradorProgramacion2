let db = require("../database/models/index")
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");

let homeController =  {

    home: function (req,res) {
 
        db.Posts.findAll({
            order: [["texto_creacion","DESC"]],
        })
        .then(function(posts){
           res.render("home",{posts:posts})
        })

    
    },
    
    
    registracion: function(req,res) {

    
        res.render("registracion")
    
    },

    procesarRegistracion: function(req, res) {
        let nombre_usuario = req.body.usuario;
        //let contraseña = req.body.contraseña;
        let contraseña = bcrypt.hashSync(req.body.contraseña, 10);
        let email = req.body.email;
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
        }

        db.Usuario.create(usuario)
        .then(function() {
            res.redirect("/home")
        })


    },


    login: function (req,res) {
        if (req.session.usuarioLogueado != undefined) {
            res.redirect("/home");
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
                res.send("El usuario no esta registrado")
           // } else if (bcrypt.compareSync(req.body.password, usuario.password) == false) {
               
            } else if (usuario.contraseña == req.body.contraseña){ 
        

            
                res.send("Mala contraseña")
            } else {
                req.session.usuarioLogueado = usuario;

                res.redirect("/home");
            }
        }) 



    },
  

    }
    
    module.exports = homeController;