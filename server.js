const express = require('express');
const PORT = process.env.PORT || 3001;

const app = express();

app.get('/test', (req,res) => {
    res.send({
        message: 'This is a test endpoint, if you see this, then it is working'
    });
});

app.listen(PORT, () => {
    console.log('The server is running at localhost' + PORT);
});