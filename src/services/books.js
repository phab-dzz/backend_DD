import { where } from "sequelize";
import db from "../models";
import { raw } from "body-parser";

export const getBooks = () => new Promise(async (resolve, reject) => {
    try {
        const response = await db.Book.findAll(
            {
                raw: true,
                attributes: ['name', 'author', 'rating', 'description', 'genre', 'durating', 'imgsrc', 'audioSrc'],
            }

        );

        resolve(response);
    }
    catch (error) {
        reject(error);
    }


})
export const getBookbyName = (name) => new Promise(async (resolve, reject) => {
    try {
        const books = await db.Book.findAll({
            where: {
                name: name
            },
            raw: true,
            attributes: ['name', 'author', 'rating', 'description', 'genre', 'durating', 'imgsrc', 'audioSrc'],
        });
        resolve(books);
    }
    catch (error) {
        reject(error);
    }
}
)
export const getBookByGenre = (genre) => new Promise(async (resolve, reject) => {
    try {
        const books = await db.Book.findAll({
            where: {
                genre: genre
            },
            raw: true,
            attributes: ['name', 'author', 'rating', 'description', 'genre', 'durating', 'imgsrc', 'audioSrc'],
        });
        resolve(books);
    }
    catch (error) {
        reject(error);
    }
})
export const getBooksByranking = () => new Promise(async (resolve, reject) => {
    try {
        const books = await db.Book.findAll({
            raw: true,
            attributes: ['name', 'author', 'rating', 'description', 'genre', 'durating', 'imgsrc', 'audioSrc'],
            order: [['rating', 'DESC']], // Sắp xếp theo rating giảm dần
            limit: 5, // Giới hạn 5 kết quả đầu tiên

        });

        // Chuyển đổi `rating` thành số và sắp xếp
        const sortedBooks = books
            .map(book => ({
                ...book,
                numericRating: parseInt(book.rating.split(' ')[0], 10) // Lấy phần số từ `rating`
            }))
            .sort((a, b) => b.numericRating - a.numericRating) // Sắp xếp giảm dần
            .slice(0, 5); // Lấy 5 sách đầu tiên

        resolve(sortedBooks);
    } catch (error) {
        reject(error);
    }
});

