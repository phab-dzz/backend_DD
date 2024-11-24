import db from "../models";
export const getPodcasts = () => new Promise(async (resolve, reject) => {
    try {
        const response = await db.Podcast.findAll(
            {
                raw: true,
                attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc'],
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
            attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc'],
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
            attributes: ['name', 'host', 'rating', 'description', 'genre', 'imgsrc', 'audioSrc'],
        });
        resolve(podcasts);
    }
    catch (error) {
        reject(error);
    }
})
