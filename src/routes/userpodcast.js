import * as UserPodcastController from '../controllers/userpodcast';
import { Router } from 'express';
const router = Router();
router.get('/userId', UserPodcastController.getUserPodcastsController);
router.post('/adduserpodcast', UserPodcastController.createUserPodcastController);
export default router;