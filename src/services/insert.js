import db from '../models';
import bcrypt from 'bcryptjs';
import { v4 } from 'uuid';
import data from '../../data/books.json';
import datap from '../../data/podcast.json';
require('dotenv').config();
export const insertservice = () => new Promise((resolve, reject) => {
    try {
        datap.podsource.forEach(async (book) => {
            let bookId = v4();
            const parts = book?.duration.match(/(\d+)\s*giờ\s*(\d+)\s*phút/);

            let totalMinutes = 0;
            if (parts) {
                const hours = parseInt(parts[1], 10);
                const minutes = parseInt(parts[2], 10);
                totalMinutes = (hours * 60) + minutes;
            } else {

                console.warn(`Duration format for book "${book.title}" is invalid.`);
            }
            await db.Podcast.create({
                id: bookId,
                name: book?.title,
                description: book?.description,
                host: book?.host,
                durating: totalMinutes,
                rating: book?.rating,
                imgsrc: book?.imgSrc,
                audiosrc: book?.AudioPath,
                genre: book?.genre,
                createdAt: new Date(),
                updatedAt: new Date()
            });
        });
        resolve('Data inserted successfully');
    } catch (error) {
        reject(error);



    }
});