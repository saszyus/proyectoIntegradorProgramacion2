let db = require("../database/models/index")

let profileController =  {

    profile: function (req,res) {



        res.render("miPerfil")

  
    
    },
    
    agregarPost: function (req,res) {

    
        res.render("agregarPost")
    
    },
    
  
    detalleUsuario: function (req,res) {

        
        res.render("detalleUsuario")
    
    },


    
    }
    
    module.exports = profileController;