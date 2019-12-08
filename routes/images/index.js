const router = require('express').Router();
const fs = require('fs');
const path = require('path');

//Routes /images

//Get  /images/:type/:file

router.get('/:type/:file', (req, res) =>{
const {type, file} = req.params;

const imagePath = path.resolve(__dirname, type, file);

if (fs.existsSync(imagePath)) {

    res.sendFile(imagePath);  //This is how we send a file
    return;
}

console.log('path: ', imagePath);

console.log('type: ', type, 'file: ', file);

res.status(404).send('Not Found');

});


module.exports = router;