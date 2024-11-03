import * as podcastService from '../services/podcast';
export const getPodcastsController = async (req, res) => {
    try {
        const podcasts = await podcastService.getPodcasts();
        res.status(200).send(podcasts);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get podcasts',
            data: error
        });
    }
};
export const getPodcastbyNameController = async (req, res) => {
    try {
        const name = req.query.name;
        const podcasts = await podcastService.getPodcastbyName(name);
        res.status(200).send(podcasts);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get podcastsName',
            data: error
        });
    }
};
export const getPodcastByGenreController = async (req, res) => {
    try {
        const genre = req.query.genre.trim();
        const podcasts = await podcastService.getPodcastByGenre(genre);
        res.status(200).send(podcasts);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get podcastsGenre',
            data: error
        });
    }
}
