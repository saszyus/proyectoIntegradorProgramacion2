var express = require('express');
var router = express.Router();
let agregarPostController = require("../controllers/agregarPostController")

router.get("/agregarPost", agregarPostController.agregarPost);

module.exports = router;