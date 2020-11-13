var express = require('express');
const { home } = require('../Controllers/homeController');
var router = express.Router();
let homeController = require("../Controllers/homeController")

router.get("/", homeController.home);

router.get("/registracion", homeController.registracion);

router.get("/login", homeController.login);

router.get("/validoUsuario", homeController.validoUsuario);

router.post("/login", homeController.procesarLogin);

router.post("/registracion", homeController.procesarRegistracion);

router.post("/logout", homeController.logout);

router.post("/validoUsuario_proceso", homeController.validoUsuario_proceso);

router.post("/validoPregunta_proceso", homeController.validoPregunta_proceso);


router.post("/borrarPost",homeController.borrarPost);

//router.get("/editarPost",homeController.editarPost);


//router.post("/editandoPost",homeController.editandoPost)

module.exports = router;