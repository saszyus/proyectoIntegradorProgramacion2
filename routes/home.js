var express = require('express');
var router = express.Router();
let homeController = require("../Controllers/homeController")

router.get("/", homeController.home);

router.get("/registracion", homeController.registracion);

router.get("/login", homeController.login);

router.get("/validoUsuario", homeController.validoUsuario);

router.post("/login", homeController.procesarLogin);

router.post("/registracion", homeController.procesarRegistracion);

router.post("/logout", homeController.logout);

router.post("/validoUsuario_proceso", homeController.validoUsuario_proceso)

router.post("/validoPregunta_proceso", homeController.validoPregunta_proceso)

<<<<<<< Updated upstream
//router.post("/borrarPost",homeController.borrarPost);
=======

router.post("/borrarPost",homeController.borrarPost);
>>>>>>> Stashed changes

module.exports = router;