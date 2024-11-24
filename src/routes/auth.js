import express from 'express';
import * as authController from '../controllers/auth';
const router = express.Router();
router.post('/register', authController.register);
router.post('/login', authController.login);
router.post('/updatepassword', authController.updatepassword);
export default router;