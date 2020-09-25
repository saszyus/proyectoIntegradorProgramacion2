let paqueteFrutas = require("../frutas")
let profileController =  {

    profile: function (req,res) {n



        res.render("miPerfil")

  
    
    },
    
    agregarPost: function (req,res) {

    
        res.render("agregarPost")
    
    },
    
  
    detalleUsuario: function (req,res) {

        let idUsuario = req.params.id;
        
        res.render("detalleUsuario")
    
    },

    
    
    
    
    }
    
    module.exports = profileController;