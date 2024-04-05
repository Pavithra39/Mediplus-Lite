FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

# Expose port 3000
EXPOSE 3000

# Add your application files and set up your environment
COPY . /app
WORKDIR /app

# Install dependencies
RUN npm install

# Specify how to start your application
CMD ["npm", "start"]
