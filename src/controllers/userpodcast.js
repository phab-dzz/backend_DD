import * as UserPodcastService from '../services/userpodcast';
export const getUserPodcastsController = async (req, res) => {
    try {
        const userId = req.query.userId;
        const userPodcasts = await UserPodcastService.getUserPodcastsWithUser(userId);
        res.status(200).send(userPodcasts);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get userPodcasts',
            data: error
        });
    }
}
export const createUserPodcastController = async (req, res) => {
    try {
        const { userId, podcastId, status, rating } = req.body;
        const userPodcast = await UserPodcastService.createstatuspodcast({ userId, podcastId, status, rating });
        res.status(200).send(userPodcast);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to create userPodcast',
            data: error
        });
    }
}