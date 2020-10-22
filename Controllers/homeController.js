let db = require("../database/models/index")

let homeController =  {

    home: function (req,res) {

    
        res.render("home")
    
    },
    
    
    registracion: function (req,res) {

    
        res.render("registracion")
    
    },


    login: function (req,res) {

    
        res.render("login")
    
    },
  
    all: function(req, res) { 
    
         db.Usuarios.findAll()
         .then(function(lista){
            console.log(lista);
            res.send(lista)
         });

      
    },

    
    
    
    
    }
    
    module.exports = homeController;