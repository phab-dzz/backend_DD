import express from 'express';
import * as aiassitanceController from '../controllers/Aiassitance';
const router = express.Router();
router.get('/', aiassitanceController.getAiassistanceController);
export default router;