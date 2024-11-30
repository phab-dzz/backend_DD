import express from 'express';
import * as booksController from '../controllers/books';
const router = express.Router();
router.get('/all', booksController.getBooksController);
router.get('/name', booksController.getBookbyNameController);
router.get('/genre', booksController.getBookByGenreController);
router.get('/ranking', booksController.getBooksByrankingController);
router.get('/search', booksController.getBookByAdvancesearchController);
export default router;