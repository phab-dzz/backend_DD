import db from "../models";
import { where } from "sequelize";
import { raw } from "body-parser";

export const getUserPodcastsWithUser = (userId) => new Promise(async (resolve, reject) => {
    try {
        const response = await db.UserPodcast.findAll({
            where: { userId },
            raw: true,
            attributes: ['podcastId', 'userId', 'rating', 'status', 'startAt', 'finishedAt'],
        });
        resolve(response);
    }
    catch (error) {
        reject(error);
    }
})
export const createstatuspodcast = ({ userId, podcastId, status, rating }) => new Promise(async (resolve, reject) => {
    try {
        const response = await db.UserPodcast.create({
            userId,
            podcastId,
            status,
            finishedAt: null,
            rating: rating || 5,
            startAt: new Date(),
        });
        resolve(response);
    }
    catch (error) {
        reject(error);
    }
})