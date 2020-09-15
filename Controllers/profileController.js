let paqueteFrutas = require("../frutas")
let profileController =  {

    profile: function (req,res) {



        res.render("perfilManzanita")

  
    
    },
    
    agregarPost: function (req,res) {

    
        res.render("agregarPost")
    
    },
    
  
    

    
    
    
    
    }
    
    module.exports = profileController;