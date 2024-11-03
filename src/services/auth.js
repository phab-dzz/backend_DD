import { raw } from 'body-parser';
import db from '../models';
import bcrypt from 'bcryptjs';

import jwt from 'jsonwebtoken';
import { v4 } from 'uuid';
require('dotenv').config();
const hashPassword = (password) => bcrypt.hashSync(password, bcrypt.genSaltSync(10));
export const registerService = ({ phone, password, name }) => {
    new Promise(async (resolve, reject) => {

        try {
            const response = await db.User.findOrCreate({
                where: { phone },
                defaults: {
                    phone,
                    password: hashPassword(password),
                    name,
                    id: v4(),

                },
                raw: true,
                attributes: ['id', 'phone', 'name']
            });
            console.log(response);
            const token = response[1] && jwt.sign({ id: response[0].id, phone: response[0].phone }, process.env.SECRET_KEY, { expiresIn: '2d' });
            console.log("token", token);
            resolve({
                err: token ? 0 : 2,
                message: token ? 'User registered successfully' : 'User registration failed',
                token: token || null
            })

        }
        catch (err) {
            reject(err)
        }
    })
};
export const loginService = ({ phone, password }) => {
    new Promise(async (resolve, reject) => {

        try {
            const response = await db.User.findOne({ where: { phone }, raw: true, attributes: ['id', 'phone', 'name', 'password'] });
            const isCorrect = response && bcrypt.compareSync(password, response.password);
            console.log(response)
            const token = isCorrect && jwt.sign({ id: response.id, phone: response.phone }, process.env.SECRET_KEY, { expiresIn: '1d' });
            resolve({
                err: token ? 0 : 2,
                message: token ? 'User logged in successfully' : 'User login failed',
                token: token || null
            })

        } catch (err) {
            reject(err)
        }
    })
};