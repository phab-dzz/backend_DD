import * as auth from '../services/auth';
export const register = async (req, res) => {
    try {
        const { email, password, name } = req.body;
        if (!name || !email || !password) {
            return res.status(400).json({ err: 1, message: 'Please provide all the fields' })
        }
        const response = await auth.registerService({ email, password, name });
        return res.status(200).json(response);
    }
    catch (err) {
        return res.status(500).json({ err: 2, message: 'Internal server error', data: err });
    }

}
export const login = async (req, res) => {
    try {
        const { email, password } = req.body;
        if (!email || !password) {
            return res.status(400).json({ err: 1, message: 'Please provide all the fields' })
        }
        const response = await auth.loginService(req.body);
        return res.status(200).json(response);

    }
    catch (err) {
        return res.status(500).json({ err: 2, message: 'Internal server error', data: err });

    }

}
export const updatepassword = async (req, res) => {
    try {
        const { email, password } = req.body;
        if (!email || !password) {
            return res.status(400).json({ err: 1, message: 'Please provide all the fields' })
        }
        const response = await auth.updatePasswordService(req.body);
        return res.status(200).json(response);

    }
    catch (err) {
        return res.status(500).json({ err: 2, message: 'Internal server error', data: err });

    }

}

