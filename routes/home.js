var express = require('express');
var router = express.Router();
let homeController = require("../controllers/homeController")

router.get("/", homeController.home);

router.get("/registracion", homeController.registracion);

router.get("/login", homeController.login);

router.post("/login", homeController.procesarLogin);

router.post("/registracion", homeController.procesarRegistracion);

router.post("/logout", homeController.logout);

router.get("/validoUsuario", homeController.validoUsuario);

router.post("/validoUsuario_proceso", homeController.validoUsuario_proceso)

router.post("/validoPregunta_proceso", homeController.validoPregunta_proceso)


//router.post("/borrarPost",homeController.borrarPost);

module.exports = router;