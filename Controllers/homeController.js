let db = require("../database/models/index")
let op = db.Sequelize.Op;

let homeController =  {

    home: function (req,res) {
 
        db.Posts.findAll({
            order: [["texto_creacion","DESC"]],
        })
        .then(function(posts){
           res.render("home",{posts:posts})
        })

    
    },
    
    
    registracion: function (req,res) {

    
        res.render("registracion")
    
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