const jwt = require('jwt-simple');
const cartConfig = require('../config/cart_jwt.json');


module.exports = (req, res, next) => {

    console.log('WITH CART MIDDLEWARE');

    const token = req.headers["x-cart-token"];

    console.log('==================TOKEN===================:', token);

    req.cart = null;
    req.token = null;

    if (!token || token.indexOf('Object') > -1){
        next();
        return;
    }

    req.token = token;

    const tokenData = jwt.decode(token, cartConfig.secret);

    req.cart = {
        id: tokenData.cartId
    };

    next();

    //res.send('This is the with cart middleware');

};