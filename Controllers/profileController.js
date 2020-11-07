let db = require("../database/models/index")
let op = db.Sequelize.Op;

let profileController =  {

    profile: function (req,res) {

        console.log(res.locals)
 
        db.Posts.findAll({
           
            include:[

                {all:true,nested:true}

            ], 
        })
        .then(function(perfil){
           res.render("miPerfil",{perfil:perfil})
        })
  
    
    },
    
    agregarPost: function (req,res) {

       
        res.render("agregarPost")
    
    },
    
    post: function (req,res) {


        let posteo = {
           
            idusuario:req.session.usuarioLogueado,
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

        db.Usuario.findByPk(req.params.id)
        .then(function(user){
           res.render("detalleUsuario",{user:user})
        })
    
    },

    editarPerfil: function (req,res) {
       

        db.Usuario.findByPk(req.params.id)
        .then(function(editarPerfil){
           res.render("editarPerfil",{editarPerfil:editarPerfil})
        })


    }


    
    }
    
    module.exports = profileController;