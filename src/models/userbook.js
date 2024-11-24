'use strict';
const {
    Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class UserBook extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            // define association here
            UserBook.belongsTo(models.User, {
                foreignKey: 'userId', targetKey: 'userId', as: 'user'
            });
            UserBook.belongsTo(models.Book, {
                foreignKey: 'bookId', targetKey: 'bookId', as: 'book'
            });

        }
    }
    UserBook.init({
        userId: DataTypes.STRING,
        bookId: DataTypes.STRING,
        status: DataTypes.STRING,
        startAt: DataTypes.DATE,
        finishedAt: DataTypes.DATE,
        rating: DataTypes.INTEGER,

    }, {
        sequelize,
        modelName: 'UserBook',
    });
    return UserBook;
};