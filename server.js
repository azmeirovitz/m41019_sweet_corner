const express = require('express');
const PORT = process.env.PORT || 3001;
const db = require('./db');
const {buildUrl} = require('./helpers')
const routes = require('./routes');

const app = express();

app.use(routes);

// app.get('/api/products', );
        //message: 'This is to get all products',
        //products: products
    //});
//});

// app.get('/api/products/:product_id', async (req, res) => {

//     const {product_id} = req.params;

//     const [results] = await db.execute(`
//     SELECT p.pid AS id, caption, cost, description, p.name, i.pid AS thmId, altText, file, type 
//     FROM products AS p JOIN images AS i 
//     ON p.id=i.productId WHERE  p.pid=?
//     `, [product_id]); 

//     console.log("results[0]", results[0]);

//     let productImage = results[0];
//     let {thmId, altText, file, type, ...pImg} = productImage;
    
    
//     productImage = {
//                 ...pImg,
//                 image: {
//                     id: thmId,
//                     altText: altText,
//                     file: file,
//                     type: type,
//                     url: buildUrl(req, type, file)
//                 }

//             }

//     console.log("productImage: ", productImage);

//     let productThumbnail = results[1];
//         //{thmId, altText, file, type} = productThumbnail;

//     console.log("productThumbnail: ", productThumbnail);

//     thumbnail = {
//                  id: productThumbnail.thmId,
//                  altText: productThumbnail.altText,
//                  file: productThumbnail.file,
//                  type: productThumbnail.type,
//                  url: buildUrl(req, productThumbnail.type, file)
//             }

//     console.log("thumbnail: ", productThumbnail.thmId, productThumbnail.type);
//     console.log("thumbnail: ", thumbnail);

    

//     //Another way:   

//             ///results.forEach(result => {

//             //const{inId}
// //let keyName='image'

//             //})

//     //Query database to get all the data you need
//     //Then, format the data as needed
//     //Then, send data to client
 
//     res.send({
//         message: `Get a products details for product - ${product_id}`,
//         results: {
//             productImage,
//             thumbnail
//         }
//                      //Sending to postman what i get (can console.log for Comandor)
//     });

//});


app.listen(PORT, () => {
    console.log('The server is running at localhost' + PORT);
});