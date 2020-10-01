var express = require('express');
var router = express.Router();

/* GET home page. */
/* GET home page. */
router.get('/', function (req, res, next) {
  // render view med data
  res.render('index', { title: 'express',
   data: 'Data jag vill skicka till sidan' });
});
module.exports = router;
