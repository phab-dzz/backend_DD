'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
    async up(queryInterface, Sequelize) {
        await queryInterface.createTable('Podcasts', {
            id: {
                allowNull: false,
                primaryKey: true,
                type: Sequelize.STRING
            },
            Name: {
                type: Sequelize.STRING
            },
            description: {
                type: Sequelize.STRING
            },
            host: {
                type: Sequelize.STRING
            },
            durating: {
                type: Sequelize.INTEGER
            },
            rating: {
                type: Sequelize.STRING
            },
            imgsrc: {
                type: Sequelize.STRING
            },
            audiosrc: {
                type: Sequelize.STRING
            },
            genre: {
                type: Sequelize.STRING
            },




            createdAt: {
                allowNull: false,
                type: 'TIMESTAMP',
                defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
            },
            updatedAt: {
                allowNull: false,
                type: 'TIMESTAMP',
                defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
            }
        });
    },
    async down(queryInterface, Sequelize) {
        await queryInterface.dropTable('Podcasts');
    }
};