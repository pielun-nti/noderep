var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('users.pug', {'users': ['Hans', 'Moa', 'Bengt', 'Frans', 'Lisa'] });
});

module.exports = router;
