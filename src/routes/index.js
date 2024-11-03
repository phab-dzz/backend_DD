import insertRouter from './insert';
import bookRouter from './books';
import poscastRouter from './podcast';
import authRouter from './auth';
const initRouters = (app) => {
    app.use('/api/v1/insert', insertRouter);
    app.use('/api/v1/book', bookRouter);
    app.use('/api/v1/poscast', poscastRouter);
    app.use('/api/v1/auth', authRouter);
    return app.use('/', (req, res) => {
        res.send('server on');
    });
}

module.exports = initRouters;