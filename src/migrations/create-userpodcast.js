'use strict';

module.exports = {
    up: async (queryInterface, Sequelize) => {
        await queryInterface.createTable('UserPodcasts', {
            id: {
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
                type: Sequelize.INTEGER
            },
            userId: {
                type: Sequelize.STRING,
                // allowNull: false,
                // references: {
                //     model: 'Users', // Tên của bảng Users
                //     key: 'userId'   // Khóa chính của bảng Users
                // },
                // onUpdate: 'CASCADE',
                // onDelete: 'CASCADE'
            },
            podcastId: {
                type: Sequelize.STRING,
                // allowNull: false,
                // references: {
                //     model: 'Podcasts', // Tên của bảng Podcasts
                //     key: 'podcastId'   // Khóa chính của bảng Podcasts
                // },
                // onUpdate: 'CASCADE',
                // onDelete: 'CASCADE'
            },
            status: {
                type: Sequelize.STRING
            },
            startAt: {
                type: Sequelize.DATE
            },
            finishedAt: {
                type: Sequelize.DATE
            },
            rating: {
                type: Sequelize.INTEGER
            },
            createdAt: {
                allowNull: false,
                type: Sequelize.DATE
            },
            updatedAt: {
                allowNull: false,
                type: Sequelize.DATE
            }
        });
    },

    down: async (queryInterface, Sequelize) => {
        await queryInterface.dropTable('UserPodcasts');
    }
};
