import express from 'express';
import * as booksController from '../controllers/books';
const router = express.Router();
router.get('/all', booksController.getBooksController);
router.get('/name', booksController.getBookbyNameController);
router.get('/genre', booksController.getBookByGenreController);
export default router;