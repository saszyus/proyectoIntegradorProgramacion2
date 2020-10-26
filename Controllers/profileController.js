let db = require("../database/models/index")
let op = db.Sequelize.Op;

let profileController =  {

    profile: function (req,res) {



        res.render("miPerfil")

  
    
    },
    
    agregarPost: function (req,res) {

    
        res.render("agregarPost")
    
    },
    
  
    detalleUsuario: function (req,res) {

        
        db.Usuario.findAll()
        .then(function(user){
           res.render("detalleUsuario",{user:user})
        })
    
    },


    
    }
    
    module.exports = profileController;