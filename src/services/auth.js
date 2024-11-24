import { raw } from 'body-parser';
import db from '../models';
import bcrypt from 'bcryptjs';

import jwt from 'jsonwebtoken';
import { v4 } from 'uuid';
require('dotenv').config();
const hashPassword = (password) => bcrypt.hashSync(password, bcrypt.genSaltSync(10));
// export const registerService = ({ email, password, name }) => {
//     new Promise(async (resolve, reject) => {

//         try {
//             const response = await db.User.findOrCreate({
//                 where: { email },
//                 defaults: {
//                     email,
//                     password: hashPassword(password),
//                     name,
//                     id: v4(),

//                 },
//                 raw: true,
//                 attributes: ['id', 'email', 'name']
//             });
//             console.log(response);
//             const token = response[1] && jwt.sign({ id: response[0].id, email: response[0].email }, process.env.SECRET_KEY, { expiresIn: '2d' });
//             console.log("token", token);
//             resolve({
//                 // err: token ? 0 : 2,
//                 // message: token ? 'User registered successfully' : 'User registration failed',
//                 // token: token || null
//                 message: 'User registered successfully',
//                 Stt: 'success'
//             })

//         }
//         catch (err) {
//             reject(err)
//         }
//     })
// };
// export const loginService = ({ email, password }) => {
//     new Promise(async (resolve, reject) => {

//         try {
//             const response = await db.User.findOne({ where: { email }, raw: true, attributes: ['id', 'email', 'name', 'password'] });
//             const isCorrect = response && bcrypt.compareSync(password, response.password);
//             console.log(response)
//             const token = isCorrect && jwt.sign({ id: response.id, email: response.email }, process.env.SECRET_KEY, { expiresIn: '1d' });
//             resolve({
//                 err: token ? 0 : 2,
//                 message: token ? 'User logged in successfully' : 'User login failed',
//                 token: token || null
//                 // message: 'User registered successfully',
//                 // Stt: 'success'
//             })
//             // resolve('success')

//         } catch (err) {
//             reject(err)
//         }
//     })
// };

export const registerService = async ({ email, password, name }) => {
    try {
        const response = await db.User.findOrCreate({
            where: { email },
            defaults: {
                email,
                password: hashPassword(password),
                name,
                id: v4(),
            },
            raw: true,
            attributes: ['id', 'email', 'name'],
        });

        // In chi tiết của response để kiểm tra
        console.log("Response:", response);
        console.log("User created?", response[1]);
        console.log("User data:", response[0]);

        // Nếu người dùng mới được tạo
        if (response[1]) {
            const token = jwt.sign(
                { id: response[0].id, email: response[0].email },
                process.env.SECRET_KEY,
                { expiresIn: '2d' }
            );
            console.log("Token:", token); // In token để kiểm tra

            return {
                err: 0,
                message: 'User registered successfully',
                token: token,  // Trả về token
            };
        } else {
            return {
                err: 2,
                message: 'Email already exists',
            };
        }

    } catch (err) {
        console.error(err);
        return {
            err: 1,
            message: 'Internal server error',
        };
    }
};


export const loginService = async ({ email, password }) => {
    try {
        // Tìm người dùng theo email
        const response = await db.User.findOne({
            where: { email },
            raw: true,
            attributes: ['id', 'email', 'name', 'password'],
        });

        // Kiểm tra mật khẩu
        const isCorrect = response && bcrypt.compareSync(password, response.password);

        // Tạo token nếu mật khẩu đúng
        const token = isCorrect && jwt.sign(
            { id: response.id, email: response.email },
            process.env.SECRET_KEY,
            { expiresIn: '1d' }
        );


        // Trả về kết quả
        if (token) {
            return {
                err: 0,
                message: 'User logged in successfully',
                token: token
            };
        } else {
            return {
                err: 2,
                message: 'User login failed: Incorrect email or password'
            };
        }

    } catch (err) {
        console.error(err);
        return {
            err: 1,
            message: 'Internal server error'
        };
    }
};

// export const updatepasswordService = ({ email, password }) => {
//     new Promise(async (resolve, reject) => {
//         try {
//             const response = await db.User.update({ password: hashPassword(password) }, { where: { email }, raw: true });
//             resolve({
//                 // err: response[0] ? 0 : 2,
//                 // message: response[0] ? 'Password updated successfully' : 'Password update failed'
//                 message: 'User registered successfully',
//                 Stt: 'success'
//             })
//         }
//         catch (err) {
//             reject(err)
//         }
//     })
// }


export const updatePasswordService = async ({ email, password }) => {
    try {
        // Cập nhật mật khẩu
        const response = await db.User.update(
            { password: hashPassword(password) },
            { where: { email }, raw: true }
        );
        console.log(response)
        // Kiểm tra kết quả cập nhật
        if (response[0] > 0) {
            return {
                err: 0,
                message: 'Password updated successfully',
                Stt: 'success',
            };
        } else {
            return {
                err: 2,
                message: 'Password update failed: User not found',
            };
        }

    } catch (err) {
        console.error(err);
        return {
            err: 1,
            message: 'Internal server error',
        };
    }
};
