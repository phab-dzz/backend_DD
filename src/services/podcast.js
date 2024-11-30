import db from "../models";
const { Op } = require('sequelize');
export const getPodcasts = () => new Promise(async (resolve, reject) => {
    try {
        const response = await db.Podcast.findAll(
            {
                raw: true,
                attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc', 'episode'],
            }

        );

        resolve(response);
    }
    catch (error) {
        reject(error);
    }
})
export const getPodcastbyName = (name) => new Promise(async (resolve, reject) => {
    try {
        const podcasts = await db.Podcast.findAll({
            where: {
                name: name
            },
            raw: true,
            attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc', 'episode'],
        });
        resolve(podcasts);
    }
    catch (error) {
        reject(error);
    }
}
)
export const getPodcastByGenre = (genre) => new Promise(async (resolve, reject) => {
    try {
        const podcasts = await db.Podcast.findAll({
            where: {
                genre: genre
            },
            raw: true,
            attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc', 'episode'],
        });
        resolve(podcasts);
    }
    catch (error) {
        reject(error);
    }
})
export const findPodcastAdvances = (key) => new Promise(async (resolve, reject) => {
    const columns = ['name', 'host', 'description', 'genre', 'imgsrc',];
    if (!key) {
        return resolve([]);
    }
    const conditions = columns.map(column => ({
        [column]: { [Op.like]: `%${key}%` }
    }));
    try {
        const podcasts = await db.Podcast.findAll({
            where: {
                [Op.or]: conditions
            },
            raw: true,
            attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc', 'episode'],
        });
        resolve(podcasts);
    }
    catch (error) {
        reject(error);
    }
})
