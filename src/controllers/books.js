import { query } from 'express';
import * as booksService from '../services/books';
import { getBooks } from '../services/books';
export const getBooksController = async (req, res) => {
    try {
        const books = await getBooks();

        res.status(200).send(books);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get books',
            data: error
        });
    }
};
export const getBookbyNameController = async (req, res) => {
    try {
        const name = req.query.name;
        const books = await booksService.getBookbyName(name);
        res.status(200).send(books);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'imfail to get booksName',
            data: error
        });
    }
};
export const getBookByGenreController = async (req, res) => {
    try {
        const genre = req.query.genre.trim();
        const books = await booksService.getBookByGenre(genre);
        res.status(200).send(books);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get booksGenre',
            data: error
        });
    }
}

