'use strict';
const {
    Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class Book extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            Book.hasMany(models.UserBook, { foreignKey: 'bookId', as: 'userbook' })
        }
    }
    Book.init({
        bookId: DataTypes.STRING,
        name: DataTypes.STRING,
        author: DataTypes.STRING,
        rating: DataTypes.STRING,
        imgsrc: DataTypes.STRING,
        description: DataTypes.STRING,
        durating: DataTypes.INTEGER,
        genre: DataTypes.STRING,
        audiosrc: DataTypes.STRING,

    }, {
        sequelize,
        modelName: 'Book',
        tableName: 'Books',
        timestamps: true,
    });
    return Book;
};