var express = require('express');
var router = express.Router();
let homeController = require("../controllers/homeController")

router.get("/", homeController.home);

router.get("/registracion", homeController.registracion);

router.get("/login", homeController.login);

router.get("/all", homeController.all);

module.exports = router;