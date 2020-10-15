const express = require('express');
const router = express.Router();
const { query } = require('../config/db');

router.get('/', function (req,res,next){
  res.redirect('/story/1')
})

router.get('/:id', async function (req, res, next) {
  try {
    const target_id_string = await query(
      'SELECT target_id FROM links WHERE story_id = ?',
      req.params.id
    );
    const target_id = target_id_string[0].target_id;
    console.log("param id: " + req.params.id)
    console.log("target id: " + target_id)

    const story = await query(
      'SELECT * FROM story WHERE id = ?',
      target_id
    );
    console.log(story)

    res.render('story', {
      id: req.params.id,
      story_id: req.params.id,
      story: story
    });
  } catch (e) {
    console.error(e);
    next(e);
  }
});



module.exports = router;