import { query } from "express";
import * as userBooksService from "../services/userbook";
export const getUserBooksController = async (req, res) => {
    try {
        const userId = req.query.userId;
        const userBooks = await userBooksService.getUserBooksWithUser(userId);
        res.status(200).send(userBooks);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get userBooks',
            data: error
        });
    }
}
export const createUserBookController = async (req, res) => {
    try {
        const { userId, bookId, status, rating } = req.body;
        const userBook = await userBooksService.createstatusbook({ userId, bookId, status, rating });
        res.status(200).send(userBook);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to create userBook',
            data: error
        });
    }
}