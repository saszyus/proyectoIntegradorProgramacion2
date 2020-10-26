let db = require("../database/models/index")
let op = db.Sequelize.Op;

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
    
         db.Usuario.findAll()
         .then(function(lista){
            res.render("all",{lista:lista})
         });

      
    },

    
    
    
    
    }
    
    module.exports = homeController;