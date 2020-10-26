let db = require("../database/models/index")
let op = db.Sequelize.Op;

let homeController =  {

    home: function (req,res) {
 
        db.Posts.findAll()
        .then(function(posts){
           res.render("home",{posts:posts})
        })

    
    },
    
    
    registracion: function (req,res) {

    
        res.render("registracion")
    
    },


    login: function (req,res) {

    
        res.render("login")
    
    },
  
    
    
    }
    
    module.exports = homeController;