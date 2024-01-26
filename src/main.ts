const path = require('path');
const dotenv = require('dotenv');
// Specify the path to your .env file
const envPath = path.resolve(__dirname, '../', '.env');
dotenv.config({ path: envPath });

const cron = require('node-cron');

cron.schedule('* * * * *', () => {
  console.log(`${process.env.APP_NAME} : running a task every minute`);
});