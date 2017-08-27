var express =  require('express');
var router  = express.Router();
var crawler = require('../helper/crawler/crawler');

router.get('/craw/', function (req, res, next) {
  crawler.crawlerData();
  res.render('admin');
});

module.exports = router;