const axios = require('axios');

exports.facebookAuth = (req, res) => {
    const { accessToken } = req.body;

    const url = `https://graph.facebook.com/me?access_token=${accessToken}&fields=id,name,email,picture`;

    axios.get(url)
        .then(response => {
            const userData = response.data;
            res.json(userData);
        })
        .catch(error => {
            console.error('Error verifying access token:', error);
            res.status(500).send('Error verifying access token');
        });
};
