let db = require("../database/models/index")
let op = db.Sequelize.Op;

let profileController =  {

    profile: function (req,res) {



        res.render("miPerfil")

  
    
    },
    
    agregarPost: function (req,res) {

       
        res.render("agregarPost")
    
    },
    
    post: function (req,res) {

        let posteo = {
            id: req.body.id,
            idusuario:req.body.idusuario,
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

        
        db.Usuario.findAll()
        .then(function(user){
           res.render("detalleUsuario",{user:user})
        })
    
    },


    
    }
    
    module.exports = profileController;