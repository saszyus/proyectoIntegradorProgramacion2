var express = require('express');
var router = express.Router();
let detallePostController = require("../controllers/detallePostController")

router.get("/detallePost", detallePostController.detallePost);

module.exports = router;