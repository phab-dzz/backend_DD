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
