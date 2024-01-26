# Use an official Node.js LTS (Long Term Support) image with Alpine Linux
FROM node:20.11.0-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

RUN npm install -g typescript

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

RUN yarn install

# Copy the application code to the working directory
COPY . .

RUN yarn build

# Define the command to run your application
CMD ["node", "/usr/src/app/build/main.js"]