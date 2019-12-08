const router = require('express').Router();

const apiRouter = require('./api');
const imagesRouter = require('./images');
// Routes For /

// defining ALL methods /api

router.use('/api', apiRouter);

//All methods /images

router.use('/images', imagesRouter);

module.exports = router;
