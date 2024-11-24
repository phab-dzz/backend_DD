const FacebookStrategy = require('passport-facebook').Strategy;
require('dotenv').config();
module.exports = (passport) => {
    passport.use(new FacebookStrategy({
        clientID: process.env.FACEBOOK_API_KEY,
        clientSecret: process.env.FACEBOOK_API_SECRET,
        callbackURL: process.env.CALLBACK_URL,
        profileFields: ['id', 'displayName', 'photos', 'email'] // Các thông tin cần lấy
    }, (accessToken, refreshToken, profile, done) => {
        done(null, profile);
    }));
};
