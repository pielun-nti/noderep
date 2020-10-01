const express = require('express');
const router = express.Router();
const pool = require('../config/db');

router.get('/', function (req, res, next) {
  

  
    //res.send('connected as id ' + connection.threadId);
  
    const sql = 'SELECT * FROM meeps';
  
    pool.query(sql, function (err, result, fields) {
      if (err) throw err;
      console.log(result)
      res.render('test.pug', { result: result });
    });

  
});


module.exports = router;