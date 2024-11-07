import insertRouter from './insert';
import bookRouter from './books';
import poscastRouter from './podcast';
import authRouter from './auth';
import AiassitanceRouter from '../services/Aiassitance';
import AuthfbRoutes from '../services/authfb';

const initRouters = (app) => {
    app.use('/api/v1/insert', insertRouter);
    app.use('/api/v1/book', bookRouter);
    app.use('/api/v1/podcast', poscastRouter);
    app.use('/api/v1/auth', authRouter);
    // app.use('/api/v1/aiassitance', AiassitanceRouter);
    app.use('/api/v1/authfb', AuthfbRoutes);
    return app.use('/', (req, res) => {
        res.send('server on');
    });
}

module.exports = initRouters;