import insertRouter from './insert';
import bookRouter from './books';
import poscastRouter from './podcast';
import authRouter from './auth';
import AiassitanceRouter from '../services/Aiassitance';
import AuthfbRoutes from '../services/authfb';
import sendOTP from './sendOTP';
import userbookRouter from './userbook';
import userpodcastRouter from './userpodcast';
const initRouters = (app) => {
    app.use('/api/v1/insert', insertRouter);
    app.use('/api/v1/book', bookRouter);
    app.use('/api/v1/podcast', poscastRouter);
    app.use('/api/v1/auth', authRouter);
    app.use('/api/v1/sendOTP', sendOTP);
    app.use('/api/v1/userbook', userbookRouter);
    app.use('/api/v1/userpodcast', userpodcastRouter);
    // app.use('/api/v1/aiassitance', AiassitanceRouter);
    app.use('/api/v1/authfb', AuthfbRoutes);
    return app.use('/', (req, res) => {
        res.send('server on');
    });
}

module.exports = initRouters;