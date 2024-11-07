const FacebookStrategy = require('passport-facebook').Strategy;

module.exports = (passport) => {
    passport.use(new FacebookStrategy({
        clientID: '473224521790737',
        clientSecret: 'b0bc70ca57c3fdcd4435dab1b159000b',
        callbackURL: 'http://localhost:3000/auth/facebook/callback',
        profileFields: ['id', 'displayName', 'photos', 'email'] // Các thông tin cần lấy
    }, (accessToken, refreshToken, profile, done) => {
        done(null, profile);
    }));
};
