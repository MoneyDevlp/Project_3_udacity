import {Sequelize} from 'sequelize-typescript';
import {config} from './config/config';


export const sequelize = new Sequelize({
  'username': config.username,
  'password': config.password,
  'database': config.database,
  'host': config.host,

  'dialect': config.dialect,
  'dialectOptions': {
    ssl: {
      require: true, // This will ensure SSL is required
      rejectUnauthorized: false, // Set to true if you want to validate the certificate
    }
  },
  'storage': ':memory:',
});
