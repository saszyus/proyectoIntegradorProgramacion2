module.exports = (sequelize, DataTypes) => {

    let cols = {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true

        },
        first_name: {
            type: DataTypes.STRING

        },
        last_name: {
            type: DataTypes.STRING

        },
        rating: {
            type: DataTypes.DOUBLE

        },
        favorite_movie_id: {
            type: DataTypes.INTEGER
        }
    }


    let config = {
        tableName: "actors",
        timestamps: false
    }

    let Actor = sequelize.define("Actor", cols, config);

    return Actor;
}