const router = require('express').Router(); 

const productsRouter = require('./products');

// Routes For /api

//defining ALL methods /api/products
router.use('/products', productsRouter);

router.use('/products/:product_id', productsRouter) /// I wrote this

module.exports = router;



