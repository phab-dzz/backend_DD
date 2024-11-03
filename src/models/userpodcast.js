'use strict';
const {
    Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class UserPodcast extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            UserPodcast.belongsTo(models.User, {
                foreignKey: 'userId', targetKey: 'userId', as: 'user'
            });
            UserPodcast.belongsTo(models.Podcast, {
                foreignKey: 'podcastId', targetKey: 'podcastId', as: 'podcast'
            });

        }
    }
    UserPodcast.init({
        userId: DataTypes.STRING,
        podcastId: DataTypes.STRING,
        status: DataTypes.STRING,
        startAt: DataTypes.DATE,
        finishedAt: DataTypes.DATE,
        rating: DataTypes.INTEGER,

    }, {
        sequelize,
        modelName: 'UserPodcast',
    });
    return UserPodcast;
};