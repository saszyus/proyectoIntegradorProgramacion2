let db = require("../database/models/index")
let op = db.Sequelize.Op;

let searchController =  {

    resultadoBusqueda: function (req,res) {

        let resultadoBusqueda = req.query.busqueda
        
        db.Usuario.findAll({
           // order: [["nombre_usuario"]
        
       // ],
            where: {
                [op.or]:[
                {nombre_usuario: {[op.like]:"%" + resultadoBusqueda + "%" },  },
                {email: {[op.like]:"%" + resultadoBusqueda + "%" },  }
                
                ]  
        }
        })
        .then(function(busquedas){
           res.render("resultadoBusqueda",{busquedas:busquedas})
        })
    
    },

    detallePost: function (req,res) {

        db.Posts.findByPk(req.params.id,{
            include:[

                {all:true,nested:true}

            ],
        })
        .then(function(post){
        // res.send(post)
           res.render("detallePost",{post:post})
        })
    
    },
    
    agregarComentario: function (req,res) {

       
        let comentar = {
           
            idposts:req.params.id,
            idusuarios:req.session.usuarioLogueado.id,
            texto_comentario: req.body.comentario,

       }

       db.comentarios.create(comentar)
       .then(function() {
               
       res.redirect("/search/detallePost/"+req.params.id);
       })
    
    
    },
    
    
    }


    
    module.exports = searchController;