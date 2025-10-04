# Use official Node.js 22 Alpine image
FROM node:22-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port (default for this app is 8080)
EXPOSE 8080

# Start the server
CMD ["node", "server.js"]
