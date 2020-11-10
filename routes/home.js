var express = require('express');
var router = express.Router();
let homeController = require("../controllers/homeController")

router.get("/", homeController.home);

router.get("/registracion", homeController.registracion);

router.get("/login", homeController.login);

router.post("/login", homeController.procesarLogin);

router.post("/registracion", homeController.procesarRegistracion);

router.post("/logout", homeController.logout);


router.get("/prueba", homeController.prueba);

//router.post("/borrarPost",homeController.borrarPost);

module.exports = router;