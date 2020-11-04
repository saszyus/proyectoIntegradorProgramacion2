let db = require("../database/models/index")
let op = db.Sequelize.Op;
let bcrypt = require("bcryptjs");

let homeController =  {

    home: function (req,res) {

        console.log(res.locals)
 
        db.Posts.findAll({
            order: [["texto_creacion","DESC"]],
            include:[

                  {association:"relacionPostUser"},

            ], 
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
            //res.redirect("/home");
        }

       let error = req.query.error;


         // la opcion 1 error undefined 
         if (req.query.error == undefined) {
           res.render("login")

        // la opcion 2 error = usuario
         
         } else if (req.query.error == 'usuario') { 
            res.render('login', {mensajeError: 'El usuario no esta registrado'})

         // la opcion 3 error = contra    
        } else {
            res.render("login", {mensajeError: 'La contraseña no coincide'})

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
                res.locals.usuarioLogueado= usuario
                console.log(res.locals);
                res.redirect("/home");
            }
        }) 
       



    },

    logout: function (req,res) {

        req.session.usuarioLogueado = undefined;
        res.redirect("/home")
    }
  

    }
    
    module.exports = homeController;