//move /api/products/:product_id Controller function to here
//use get_all.js as a reference

const db = require('../../../db');
const {buildUrl} = require('../../../helpers');

module.exports = async (req,res) => {

    const {product_id} = req.params;

    const [results] = await db.execute(`
    SELECT p.pid AS id, caption, cost, description, p.name, i.pid AS thmId, altText, file, type 
    FROM products AS p JOIN images AS i 
    ON p.id=i.productId WHERE  p.pid=?
    `, [product_id]); 

    console.log("results[0]", results[0]);

    let productImage = results[0];
    let {thmId, altText, file, type, ...pImg} = productImage;
    
    
    productImage = {
                ...pImg,
                image: {
                    id: thmId,
                    altText: altText,
                    file: file,
                    type: type,
                    url: buildUrl(req, type, file)
                }

            }

    console.log("productImage: ", productImage);

    let productThumbnail = results[1];
        //{thmId, altText, file, type} = productThumbnail;

    console.log("productThumbnail: ", productThumbnail);

    thumbnail = {
                 id: productThumbnail.thmId,
                 altText: productThumbnail.altText,
                 file: productThumbnail.file,
                 type: productThumbnail.type,
                 url: buildUrl(req, productThumbnail.type, file)
            }

    //console.log("thumbnail: ", productThumbnail.thmId, productThumbnail.type);
    //console.log("thumbnail: ", thumbnail);

    

    
 
    res.send({
        ...productImage,
        thumbnail
        //Sending to postman what i get (can console.log for Comandor)
    });
//});

}