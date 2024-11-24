import * as userbookController from '../controllers/userbook';
import { Router } from 'express';
const router = Router();
router.get('/userId', userbookController.getUserBooksController);
router.post('/adduserbook', userbookController.createUserBookController);
export default router;