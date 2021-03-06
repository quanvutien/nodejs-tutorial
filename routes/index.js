var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
console.log("__dirname", __dirname);

router.get('/download', function(req, res, next) {
  const file = `${__dirname}/image.jpeg`;
  res.download(file); // Set disposition and send it.
});

module.exports = router;
