const db = require('../../../../db');
const cartJwt = require('../../../../config/cart_jwt.json');
const {buildUrl, getCartTotals} = require('../../../../helpers')
const jwt = require('jwt-simple');

module.exports = async (req, res) => {

    
    // Check for existing cart
    const {product_id} = req.params; //Will pull acctual info from url
    const {quantity = 1} = req.body;
    let {cart, token} = req;
    
    //mine:
    // let cartToken = token;

    if (isNaN(quantity) || quantity < 1) {
        res.status(422).send('Invalid quntity received');
        return;
    }

    //res.send(req.body);

    //Checking if product_id is valid
    const [[product = null]] = await db.execute('SELECT id, name FROM products WHERE pid=?', [product_id]);

    if (!product) {
        res.status(404).send('Product not found');
        return;
    }
    
    //If no cart, create a new cart
    if (!cart) {
        const [[cartStatus]] = await db.query('SELECT id FROM cartStatuses WHERE mid="active"');
        console.log('cartStatus: ', cartStatus);

        const [result] = await db.query('INSERT INTO cart (pid, statusId) VALUES (UUID(), ?)', [cartStatus.id]);

        cart = {
            id: result.insertId
        };

        const tokenData = {
            cartId: cart.id,
            ts: Date.now()   //ts is timestamp
        };

        token = jwt.encode(tokenData, cartJwt.secret);

    }

    // Does item already exist in cart

    const [[cartItem = null]] = await db.query('SELECT id FROM cartItems WHERE cartId=? AND productId=?', [cart.id, product.id]);

    //If product already in cart, then increase quantity 
    if (cartItem) {
        //Increase the quantity of the existing cartItem
        await db.execute('UPDATE cartItems SET quantity=quantity + ? WHERE id=?', [quantity, cartItem.id]);
    } else {
        // Else, create cart item for product
        const [itemResult] = await db.execute('INSERT INTO cartItems (pid, cartId, productId, quantity) VALUES (UUID(), ?, ?, ?)', [cart.id, product.id, quantity]);
    }

    const [[cartData]] = await db.query(`SELECT c.pid AS cartId, ci.pid AS itemId, p.pid AS productId, p.cost AS itemCost, ci.quantity, (cost * quantity) AS total,  ci.createdAt AS added, p.name, i.altText, i.type, i.file
    FROM cartItems AS ci 
        JOIN cart AS c ON ci.cartId=c.id
        JOIN products AS p ON ci.productId=p.id
        JOIN images AS i ON i.productId=p.id
        WHERE cartId=? AND ci.productId=? AND i.type="thumbnail"`, [cart.id, product.id]);

        ///// each is my itemCost !

    // [[]] gives the first item of the array ([cartData] is an array with 2 items, eveything we need is the first item)

    //let {cartId, itemId, productId, itemCost, cartToken, added, name, altText, total} = cartData;

    //let {total} = cartData;

const {cartId, ...rawItem} = cartData;
const {altText, file, type, ...item} = rawItem;
    item.thumbnail = {
    altText: altText,
    url: buildUrl(req, type, file)
}

    const message = `${quantity} ${product.name} added to cart` 
    
    const total = await getCartTotals(cart.id);

    console.log('cartData: ', cartData);
    console.log('message: ', message);

    
    // Create a message to send back to user of what was added

    res.send ( {
        cartId: cartId,
        cartToken: token,
        item: item,
        message: message,
        total: total
        //itemId: itemId,
        //productId: productId,
        //itemCost: itemCost,
        //quantity: quantity
    });
}

