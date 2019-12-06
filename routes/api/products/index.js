
const router = require('express').Router();

//OR:
// const express = require('express');
// const router = express.Router();

//import all our controllers:

const getAllProduct = require('./get_all');

const getOneProduct = require('./get_details'); /// I wrote this

// Routes For /api/products

// GET /api/products/
router.get('/', getAllProduct);

router.get('/:product_id', getOneProduct); /// I wrote this

//GET /api/products/:product_id

//  This is: router.get('/:product_id', )

module.exports = router;
