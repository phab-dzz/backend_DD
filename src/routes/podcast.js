import express from 'express';
import * as podcastController from '../controllers/podcast';
const router = express.Router();
router.get('/all', podcastController.getPodcastsController);
router.get('/name', podcastController.getPodcastbyNameController);
router.get('/genre', podcastController.getPodcastByGenreController);
export default router;