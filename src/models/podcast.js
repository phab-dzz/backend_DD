'use strict';
const {
    Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class Podcast extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            Podcast.hasMany(models.UserPodcast, { foreignKey: 'podcastId', as: 'userpodcast' })
        }
    }
    Podcast.init({
        podcastId: DataTypes.STRING,
        name: DataTypes.STRING,
        host: DataTypes.STRING,
        rating: DataTypes.STRING,
        durating: DataTypes.INTEGER,
        imgsrc: DataTypes.STRING,
        description: DataTypes.STRING,
        audiosrc: DataTypes.STRING,
        genre: DataTypes.STRING,

    }, {
        sequelize,
        modelName: 'Podcast',
    });
    return Podcast;
};