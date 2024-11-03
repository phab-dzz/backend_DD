import * as insertService from '../services/insert';
export const insertController = async (req, res) => {
    try {
        const result = await insertService.insertservice();
        res.status(200).send(result);
    }
    catch (error) {
        res.status(500).json({
            err: -1,
            message: 'Internal Server Error'
        });
    }
};