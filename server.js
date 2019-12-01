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

    res.send({ products: products});
        //message: 'This is to get all products',
        //products: products
    });
//});

app.listen(PORT, () => {
    console.log('The server is running at localhost' + PORT);
});