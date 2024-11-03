import * as auth from '../services/auth';
export const register = async (req, res) => {
    try {
        const { phone, password, name } = req.body;
        if (!name || !phone || !password) {
            return res.status(400).json({ err: 1, message: 'Please provide all the fields' })
        }
        const response = auth.registerService({ phone, password, name });
        return res.status(200).json(response);
    }
    catch (err) {
        return res.status(500).json({ err: 2, message: 'Internal server error', data: err });
    }

}
export const login = async (req, res) => {
    try {
        const { phone, password } = req.body;
        if (!phone || !password) {
            return res.status(400).json({ err: 1, message: 'Please provide all the fields' })
        }
        const response = await auth.loginService(req.body);
        return res.status(200).json(response);

    }
    catch (err) {
        return res.status(500).json({ err: 2, message: 'Internal server error', data: err });

    }

}
