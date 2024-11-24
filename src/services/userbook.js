import db from "../models";
import { where } from "sequelize";
import { raw } from "body-parser";

export const getUserBooksWithUser = (userId) => new Promise(async (resolve, reject) => {
    try {
        const response = await db.UserBook.findAll({
            where: { userId },
            raw: true,
            attributes: ['bookId', 'userId', 'rating', 'status', 'startAt', 'finishedAt'],
        });
        resolve(response);
    }
    catch (error) {
        reject(error);
    }
})
export const createstatusbook = ({ userId, bookId, status, rating }) => new Promise(async (resolve, reject) => {
    try {
        const response = await db.UserBook.create({
            userId,
            bookId,
            status,
            finishedAt: null,
            rating: rating || 5,
            startAt: new Date(),
        });
        resolve(response);
    }
    catch (error) {
        reject(error);
    }
})

