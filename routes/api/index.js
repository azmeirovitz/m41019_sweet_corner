const router = require('express').Router(); 
const cartRouter = require('./cart');

const productsRouter = require('./products');

// Routes For /api

//defining ALL methods /api/products
router.use('/products', productsRouter);

router.use('/products/:product_id', productsRouter) /// I wrote this

// All methods /api/cart
router.use('/cart', cartRouter);

module.exports = router;



