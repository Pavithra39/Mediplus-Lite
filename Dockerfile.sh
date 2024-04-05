# Use Node.js 16 slim as the base image
FROM node:16-slim

# Set the working directory in the container
WORKDIR /Usr/src/app

# Copy the package.json and package-lock.json to the current directory
COPY package*.json ./

# Install the Node.js dependencies
Run npm install 

# Copy the rest of the application code to the working directory
COPY ..

# Build the React app 
RUN npm run build

# Expose port 3000 to the ouside of the world
EXPOSE 3000

# start your Node.js server (assuming it serves the React app)
CMD ["npm", "start"]