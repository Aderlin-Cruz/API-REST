import Sequelize from 'sequelize';
// aqui hacemos la conexión con la base de datos
export const sequelize = new Sequelize(
    'API',
    'postgres',
    'nachito645',
    {
        host: 'localhost',
        dialect: 'postgres',
        pool:{
            max:5,
            min:0,
            require: 30000,
            idle: 10000
        },
        logging:false
    }



)