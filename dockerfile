# Use the official lightweight Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install --legacy-peer-deps

# Copy local code to the container
COPY . .

# Build the app
RUN npm run build

# Start the app
CMD ["npm", "start"]