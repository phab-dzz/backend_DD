const express = require('express');
const app = express();
const passport = require('passport');
import initRouters from './src/routes/index';
import authfb from './src/services/authfb';
require('dotenv').config();
import connectDatabase from './src/config/connectDatabase';
import cors from 'cors';
app.use(cors({
    origin: process.env.CLIENT_URL,
    methods: ['GET', 'POST', 'PUT', 'DELETE']
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// Định nghĩa một route đơn giản
// app.get('/', (req, res) => {
//     res.send('Hello, World!');
// });
authfb(passport);
initRouters(app);
connectDatabase();

const PORT = process.env.PORT || 8000;
// Khởi động máy chủ
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
