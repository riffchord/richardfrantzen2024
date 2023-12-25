# Use a specific version of Node.js (Alpine)
FROM node:19 AS runtime

WORKDIR /app

# Copy your project files into the container
COPY . .

# Install dependencies, respecting legacy peer dependencies
RUN npm install --legacy-peer-deps

# Build your application
RUN npm run build

# Set environment variables
ENV HOST=0.0.0.0
ENV PORT=4321

# Expose the port your app runs on
EXPOSE 4321

# Command to run your app
CMD node ./dist/server/entry.mjs