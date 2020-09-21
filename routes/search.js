var express = require('express');
var router = express.Router();
let searchController = require("../controllers/searchController")

router.get("/resultadoBusqueda/", searchController.resultadoBusqueda);

router.get("/detallePost/", searchController.detallePost);

module.exports = router;