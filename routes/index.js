const router = require('express').Router();

const apiRouter = require('./api');

// Routes For /

// defining ALL methods /api

router.use('/api', apiRouter);
module.exports = router;
