const express = require('express');
const PORT = process.env.PORT || 3001;
const db = require('./db');
const {buildUrl} = require('./helpers')

const app = express();

app.get('/api/products', async (req,res) => {

    //buildUrl(req);

    const [results] = await db.query(`
    SELECT p.pid AS id, caption, cost, p.name, i.pid AS thId, altText, file, type
    FROM products AS p JOIN images AS i ON i.productID=p.id WHERE i.type='thumbnail'
    `);

    const products = results.map(product => {
        const { thId, altText, file, type, ...p } = product;

        return {
            ...p,
            thumbnail: {
                id: thId,
                altText: altText,
                file: file,
                type: type,
                url: buildUrl(req, type, file)
            }
        }
    });

    res.send({ 
        products: products
    });
        //message: 'This is to get all products',
        //products: products
    });
//});

app.get('/api/products/:product_id', async (req, res) => {

    console.log('req.params 1 : ', req.params);

    const {product_id} = req.params;

    console.log('req.params 2 : ', req.params);

    const [results] = await db.execute(`
    SELECT p.pid AS id, caption, cost, description, p.name, i.pid AS thmbnail, altText, file, type,  file, type 
    FROM products AS p JOIN images AS i 
    ON p.id=i.productID WHERE  p.pid=?
    `, [product_id]); //Add  i.type='full_image' ??  type should be a variable here, right? ///p.pid=? Doesn't work

    

    

    //Query database to get all the data you need
    //Then, format the data as needed
    //Then, send data to client

    res.send({
        message: `Get a products details for product - ${product_id}`,
        results //Sending to postman what i get (in addition to Comandor)
    });
});


app.listen(PORT, () => {
    console.log('The server is running at localhost' + PORT);
});