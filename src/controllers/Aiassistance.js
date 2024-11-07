import * as AiassistanceService from '../services/AiassistanceService';
export const getAiassistanceController = async (req, res) => {
    try {
        const prompt = req.query.prompt;
        const response = await AiassistanceService.Aiassitance(prompt);
        res.status(200).send(response);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'fail to get Aiassistance',
            data: error
        });
    }
}