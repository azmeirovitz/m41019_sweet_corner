const db = require('../../../db');
const {buildUrl, getCartTotals} = require('../../../helpers')


module.exports = async (req, res, next) => {

    // const {product_id} = req.params; //Will pull acctual info from url
    // const {quantity = 1} = req.body;
    // let {cart, token} = req;


    // if (isNaN(quantity) || quantity < 1) {
    //     res.status(422).send('Invalid quntity received');
    //     return;
    // }

    console.log('THIS SHOULD SHOW UP!!!!!!!!!!!!!!!');

try {
    const {cart} = req;

    let output = {
        cartId: null,
        message: "No active cart"
    }

    if (cart) {
    

    // Does item already exist in cart

    // //const [[cartItem = null]] = await db.query('SELECT id FROM cartItems WHERE cartId=? AND productId=?', [cart.id, product.id]);

    // //If product already in cart, then increase quantity 
    // if (cartItem) {
    //     //Increase the quantity of the existing cartItem
    //     await db.execute('UPDATE cartItems SET quantity=quantity + ? WHERE id=?', [quantity, cartItem.id]);
    // } else {
    //     // Else, create cart item for product
    //     const [itemResult] = await db.execute('INSERT INTO cartItems (pid, cartId, productId, quantity) VALUES (UUID(), ?, ?, ?)', [cart.id, product.id, quantity]);
    // }

// GET all the items (all the cupcake types)  from db for a cpecific cart

const [cartItems] = await db.execute(`SELECT c.pid AS cartId, ci.pid AS itemId, p.pid AS productId, p.cost AS itemCost, ci.quantity, (cost * quantity) AS total,  ci.createdAt AS added, p.name, i.altText, i.type, i.file
    FROM cartItems AS ci 
        JOIN cart AS c ON ci.cartId=c.id
        JOIN products AS p ON ci.productId=p.id
        JOIN images AS i ON i.productId=p.id AND i.type="thumbnail"
        WHERE cartId=? `, [cart.id]);

        ///// each is my itemCost !

        const formattedCartItems = cartItems.map(item => {
            const{cartId, altText, type, file, ...i} = item;

            output.cartId = cartId; //Will be set the same value every time it runs
        
        return {
            ...i,
            thumbnail: {
                altText: altText,
                url: buildUrl(req, type, file)
            }
            
        }
        });


        delete output.message;
        output.items = formattedCartItems;
        output.total = await getCartTotals(cart.id);
    

        }

        res.send(output);
    } catch (error){
    next(error); //express server default error

    
    }

};
 